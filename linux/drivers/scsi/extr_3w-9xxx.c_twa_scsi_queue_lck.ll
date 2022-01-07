; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_scsi_queue_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-9xxx.c_twa_scsi_queue_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32*, %struct.scsi_cmnd**, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }

@TW_IN_RESET = common dso_local global i32 0, align 4
@TW_FW_SRL_LUNS_SUPPORTED = common dso_local global i64 0, align 8
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@TW_S_COMPLETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @twa_scsi_queue_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_scsi_queue_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca void (%struct.scsi_cmnd*)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %4, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %7, align 8
  %16 = load i32, i32* @TW_IN_RESET, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 3
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 128, i32* %6, align 4
  br label %96

22:                                               ; preds = %2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TW_FW_SRL_LUNS_SUPPORTED, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* @DID_BAD_TARGET, align 4
  %38 = shl i32 %37, 16
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  call void %41(%struct.scsi_cmnd* %42)
  store i32 0, i32* %6, align 4
  br label %96

43:                                               ; preds = %29, %22
  %44 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %44, void (%struct.scsi_cmnd*)** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = call i32 @twa_get_request_id(%struct.TYPE_11__* %47, i32* %5)
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %52, i64 %54
  store %struct.scsi_cmnd* %49, %struct.scsi_cmnd** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @twa_scsiop_execute_scsi(%struct.TYPE_11__* %56, i32 %57, i32* null, i32 0, i32* null)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %95 [
    i32 128, label %60
    i32 1, label %71
  ]

60:                                               ; preds = %43
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %62 = call i32 @twa_command_mapped(%struct.scsi_cmnd* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %66 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %65)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @twa_free_request_id(%struct.TYPE_11__* %68, i32 %69)
  br label %95

71:                                               ; preds = %43
  %72 = load i32, i32* @DID_ERROR, align 4
  %73 = shl i32 %72, 16
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %77 = call i32 @twa_command_mapped(%struct.scsi_cmnd* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %81 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %80)
  br label %82

82:                                               ; preds = %79, %71
  %83 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  call void %83(%struct.scsi_cmnd* %84)
  %85 = load i32, i32* @TW_S_COMPLETED, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @twa_free_request_id(%struct.TYPE_11__* %92, i32 %93)
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %82, %43, %67
  br label %96

96:                                               ; preds = %95, %36, %21
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @twa_get_request_id(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @twa_scsiop_execute_scsi(%struct.TYPE_11__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @twa_command_mapped(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @twa_free_request_id(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
