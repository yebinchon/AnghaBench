; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_log_q_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_main.c_fnic_log_q_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"WQ[%d] error_status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"RQ[%d] error_status %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"CWQ[%d] error_status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_log_q_error(%struct.fnic* %0) #0 {
  %2 = alloca %struct.fnic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.fnic* %0, %struct.fnic** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.fnic*, %struct.fnic** %2, align 8
  %8 = getelementptr inbounds %struct.fnic, %struct.fnic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %5
  %12 = load %struct.fnic*, %struct.fnic** %2, align 8
  %13 = getelementptr inbounds %struct.fnic, %struct.fnic* %12, i32 0, i32 6
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = call i64 @ioread32(i32* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %11
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load %struct.fnic*, %struct.fnic** %2, align 8
  %27 = getelementptr inbounds %struct.fnic, %struct.fnic* %26, i32 0, i32 3
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @shost_printk(i32 %25, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %24, %11
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %5

38:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %69, %38
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.fnic*, %struct.fnic** %2, align 8
  %42 = getelementptr inbounds %struct.fnic, %struct.fnic* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %39
  %46 = load %struct.fnic*, %struct.fnic** %2, align 8
  %47 = getelementptr inbounds %struct.fnic, %struct.fnic* %46, i32 0, i32 5
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = call i64 @ioread32(i32* %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %45
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = load %struct.fnic*, %struct.fnic** %2, align 8
  %61 = getelementptr inbounds %struct.fnic, %struct.fnic* %60, i32 0, i32 3
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @shost_printk(i32 %59, i32 %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %58, %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %39

72:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %103, %72
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.fnic*, %struct.fnic** %2, align 8
  %76 = getelementptr inbounds %struct.fnic, %struct.fnic* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = load %struct.fnic*, %struct.fnic** %2, align 8
  %81 = getelementptr inbounds %struct.fnic, %struct.fnic* %80, i32 0, i32 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = call i64 @ioread32(i32* %88)
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %79
  %93 = load i32, i32* @KERN_ERR, align 4
  %94 = load %struct.fnic*, %struct.fnic** %2, align 8
  %95 = getelementptr inbounds %struct.fnic, %struct.fnic* %94, i32 0, i32 3
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %3, align 4
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @shost_printk(i32 %93, i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %92, %79
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %3, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %73

106:                                              ; preds = %73
  ret void
}

declare dso_local i64 @ioread32(i32*) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
