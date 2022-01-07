; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_start_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.scsi_cmnd* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.scsi_cmnd = type { i64*, %struct.TYPE_13__*, i64, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@PHASE_SELECTION = common dso_local global i32 0, align 4
@fasdma_none = common dso_local global i32 0, align 4
@REG_CNTL1 = common dso_local global i32 0, align 4
@CNTL1_PTE = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i64 0, align 8
@SIMPLE_QUEUE_TAG = common dso_local global i32 0, align 4
@EXTENDED_MESSAGE = common dso_local global i32 0, align 4
@EXTENDED_SDTR = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@neg_complete = common dso_local global i64 0, align 8
@neg_inprogress = common dso_local global i64 0, align 8
@neg_wait = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.scsi_cmnd*)* @fas216_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_start_command(%struct.TYPE_16__* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %6 = load i32, i32* @PHASE_SELECTION, align 4
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  store i32 %6, i32* %9, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i32 %12, i32* %15, align 4
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %18, align 8
  %19 = load i32, i32* @fasdma_none, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @parity_test(%struct.TYPE_16__* %23, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = load i32, i32* @REG_CNTL1, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CNTL1_PTE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @fas216_writeb(%struct.TYPE_16__* %32, i32 %33, i32 %41)
  br label %53

43:                                               ; preds = %2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = load i32, i32* @REG_CNTL1, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @fas216_writeb(%struct.TYPE_16__* %44, i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %43, %31
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @REQUEST_SENSE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %53
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %61, %53
  %75 = phi i1 [ false, %53 ], [ %73, %61 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %5, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = call i32 @msgqueue_flush(i32* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @IDENTIFY(i32 %84, i32 %89)
  %91 = call i32 (i32*, i32, i32, ...) @msgqueue_addmsg(i32* %83, i32 1, i32 %90)
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %74
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* @SIMPLE_QUEUE_TAG, align 4
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i32*, i32, i32, ...) @msgqueue_addmsg(i32* %99, i32 2, i32 %100, i64 %103)
  br label %105

105:                                              ; preds = %96, %74
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %110 = call i32 @__fas216_start_command(%struct.TYPE_16__* %108, %struct.scsi_cmnd* %109)
  ret void
}

declare dso_local i64 @parity_test(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @fas216_writeb(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @msgqueue_flush(i32*) #1

declare dso_local i32 @msgqueue_addmsg(i32*, i32, i32, ...) #1

declare dso_local i32 @IDENTIFY(i32, i32) #1

declare dso_local i32 @__fas216_start_command(%struct.TYPE_16__*, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
