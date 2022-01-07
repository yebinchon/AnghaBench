; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_task_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_task_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.TYPE_6__*, %struct.scsi_cmnd*, %struct.beiscsi_io_task* }
%struct.TYPE_6__ = type { i64 }
%struct.scsi_cmnd = type { i64 }
%struct.beiscsi_io_task = type { i32, i32, %struct.TYPE_8__*, %struct.scsi_cmnd*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.beiscsi_hba* }
%struct.beiscsi_hba = type { i32 (%struct.iscsi_task*, %struct.scatterlist*, i32, i32, i32)* }
%struct.scatterlist = type { i32 }

@EIO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@BEISCSI_LOG_ISCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"BM_%d : scsi_dma_map Failed Driver_ITT : 0x%x ITT : 0x%x Xferlen : 0x%x\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @beiscsi_task_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_task_xmit(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.beiscsi_io_task*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 2
  %13 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %12, align 8
  store %struct.beiscsi_io_task* %13, %struct.beiscsi_io_task** %4, align 8
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %14, i32 0, i32 1
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %4, align 8
  %18 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %17, i32 0, i32 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %20, align 8
  store %struct.beiscsi_hba* %21, %struct.beiscsi_hba** %6, align 8
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %23 = call i32 @beiscsi_hba_is_online(%struct.beiscsi_hba* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %101

28:                                               ; preds = %1
  %29 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %4, align 8
  %30 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %29, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %37 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %42 = icmp ne %struct.scsi_cmnd* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %45 = call i32 @beiscsi_mtask(%struct.iscsi_task* %44)
  store i32 %45, i32* %2, align 4
  br label %101

46:                                               ; preds = %40
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %48 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %4, align 8
  %49 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %48, i32 0, i32 3
  store %struct.scsi_cmnd* %47, %struct.scsi_cmnd** %49, align 8
  %50 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %4, align 8
  %51 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %53 = call i32 @scsi_dma_map(%struct.scsi_cmnd* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %46
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %58 = load i32, i32* @KERN_ERR, align 4
  %59 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %60 = load i32, i32* @BEISCSI_LOG_ISCSI, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %4, align 8
  %63 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  %69 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %4, align 8
  %70 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %72)
  %74 = call i32 @beiscsi_log(%struct.beiscsi_hba* %57, i32 %58, i32 %61, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71, i32 %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %101

76:                                               ; preds = %46
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %4, align 8
  %79 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %81 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %80)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %83 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %82)
  store %struct.scatterlist* %83, %struct.scatterlist** %7, align 8
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DMA_TO_DEVICE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  store i32 1, i32* %9, align 4
  br label %91

90:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %93 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %92, i32 0, i32 0
  %94 = load i32 (%struct.iscsi_task*, %struct.scatterlist*, i32, i32, i32)*, i32 (%struct.iscsi_task*, %struct.scatterlist*, i32, i32, i32)** %93, align 8
  %95 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %96 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 %94(%struct.iscsi_task* %95, %struct.scatterlist* %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %91, %56, %43, %25
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @beiscsi_hba_is_online(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_mtask(%struct.iscsi_task*) #1

declare dso_local i32 @scsi_dma_map(%struct.scsi_cmnd*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
