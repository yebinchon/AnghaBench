; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_finish_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_finish_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wd719x_scb = type { i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wd719x = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wd719x_scb*, i32)* @wd719x_finish_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wd719x_finish_cmd(%struct.wd719x_scb* %0, i32 %1) #0 {
  %3 = alloca %struct.wd719x_scb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.wd719x*, align 8
  store %struct.wd719x_scb* %0, %struct.wd719x_scb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wd719x_scb*, %struct.wd719x_scb** %3, align 8
  %8 = getelementptr inbounds %struct.wd719x_scb, %struct.wd719x_scb* %7, i32 0, i32 2
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.wd719x* @shost_priv(i32 %14)
  store %struct.wd719x* %15, %struct.wd719x** %6, align 8
  %16 = load %struct.wd719x_scb*, %struct.wd719x_scb** %3, align 8
  %17 = getelementptr inbounds %struct.wd719x_scb, %struct.wd719x_scb* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.wd719x*, %struct.wd719x** %6, align 8
  %20 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.wd719x_scb*, %struct.wd719x_scb** %3, align 8
  %24 = getelementptr inbounds %struct.wd719x_scb, %struct.wd719x_scb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %27 = call i32 @dma_unmap_single(i32* %22, i32 %25, i32 16, i32 %26)
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %28)
  %30 = load %struct.wd719x*, %struct.wd719x** %6, align 8
  %31 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = call i32 @dma_unmap_single(i32* %33, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 16
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %46, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %49 = call i32 %47(%struct.scsi_cmnd* %48)
  ret void
}

declare dso_local %struct.wd719x* @shost_priv(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
