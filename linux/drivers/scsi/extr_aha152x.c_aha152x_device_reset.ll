; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_aha152x_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_aha152x.c_aha152x_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8, i32*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_6__ = type { i32 }

@done = common dso_local global i32 0, align 4
@CURRENT_SC = common dso_local global %struct.scsi_cmnd* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot reset current device\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@ISSUE_SC = common dso_local global i32 0, align 4
@DISCONNECTED_SC = common dso_local global i32 0, align 4
@resetting = common dso_local global i32 0, align 4
@reset_done = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@resetted = common dso_local global i32 0, align 4
@PORTA = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @aha152x_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aha152x_device_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %14, align 8
  store %struct.Scsi_Host* %15, %struct.Scsi_Host** %4, align 8
  %16 = load i32, i32* @done, align 4
  %17 = call i32 @DECLARE_COMPLETION(i32 %16)
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  store i8 %20, i8* %8, align 1
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @CURRENT_SC, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %23 = icmp eq %struct.scsi_cmnd* %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %27 = call i32 @scmd_printk(i32 %25, %struct.scsi_cmnd* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @FAILED, align 4
  store i32 %28, i32* %2, align 4
  br label %119

29:                                               ; preds = %1
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @DO_LOCK(i64 %30)
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = call i32* @remove_SC(i32* @ISSUE_SC, %struct.scsi_cmnd* %32)
  %34 = icmp eq i32* %33, null
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = call i32* @remove_SC(i32* @DISCONNECTED_SC, %struct.scsi_cmnd* %39)
  %41 = icmp ne i32* %40, null
  br label %42

42:                                               ; preds = %38, %29
  %43 = phi i1 [ false, %29 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @DO_UNLOCK(i64 %45)
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  store i8 0, i8* %48, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = load i32, i32* @resetting, align 4
  %51 = load i32, i32* @reset_done, align 4
  %52 = call i32 @aha152x_internal_queue(%struct.scsi_cmnd* %49, i32* @done, i32 %50, i32 %51)
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 100, %53
  %55 = call i64 @wait_for_completion_timeout(i32* @done, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %42
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @DO_LOCK(i64 %59)
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %62 = call i32* @remove_SC(i32* @ISSUE_SC, %struct.scsi_cmnd* %61)
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @DO_UNLOCK(i64 %63)
  br label %65

65:                                               ; preds = %58, %42
  %66 = load i8, i8* %8, align 1
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  store i8 %66, i8* %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @DO_LOCK(i64 %69)
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @resetted, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %65
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %80 = call %struct.TYPE_6__* @HOSTDATA(%struct.Scsi_Host* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %85 = call %struct.TYPE_6__* @HOSTDATA(%struct.Scsi_Host* %84)
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %78
  %90 = load i32, i32* @PORTA, align 4
  %91 = call i32 @SETPORT(i32 %90, i32 0)
  br label %92

92:                                               ; preds = %89, %78
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 1
  store i32* null, i32** %98, align 8
  %99 = load i32, i32* @SUCCESS, align 4
  store i32 %99, i32* %5, align 4
  br label %115

100:                                              ; preds = %65
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %105 = call i32 @append_SC(i32* @ISSUE_SC, %struct.scsi_cmnd* %104)
  br label %113

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %111 = call i32 @append_SC(i32* @DISCONNECTED_SC, %struct.scsi_cmnd* %110)
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %103
  %114 = load i32, i32* @FAILED, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %92
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @DO_UNLOCK(i64 %116)
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %24
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @DECLARE_COMPLETION(i32) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

declare dso_local i32 @DO_LOCK(i64) #1

declare dso_local i32* @remove_SC(i32*, %struct.scsi_cmnd*) #1

declare dso_local i32 @DO_UNLOCK(i64) #1

declare dso_local i32 @aha152x_internal_queue(%struct.scsi_cmnd*, i32*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @HOSTDATA(%struct.Scsi_Host*) #1

declare dso_local i32 @SETPORT(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @append_SC(i32*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
