; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_unmap_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_unmap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pvscsi_ctx = type { i64, i64, i64, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64, i32 }

@SGL_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*, %struct.pvscsi_ctx*)* @pvscsi_unmap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_unmap_buffers(%struct.pvscsi_adapter* %0, %struct.pvscsi_ctx* %1) #0 {
  %3 = alloca %struct.pvscsi_adapter*, align 8
  %4 = alloca %struct.pvscsi_ctx*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %3, align 8
  store %struct.pvscsi_ctx* %1, %struct.pvscsi_ctx** %4, align 8
  %8 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %8, i32 0, i32 3
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %5, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %2
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %21)
  %23 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @SGL_SIZE, align 4
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  %37 = call i32 @dma_unmap_single(i32* %31, i64 %34, i32 %35, i32 %36)
  %38 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %27, %20
  br label %54

41:                                               ; preds = %15
  %42 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dma_unmap_single(i32* %45, i64 %48, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %41, %40
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.pvscsi_adapter, %struct.pvscsi_adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.pvscsi_ctx*, %struct.pvscsi_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.pvscsi_ctx, %struct.pvscsi_ctx* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = call i32 @dma_unmap_single(i32* %64, i64 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
