; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_pci_unmap_srb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_pci_unmap_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ScsiReqBlk = type { i64, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }

@PCI_DMA_NONE = common dso_local global i32 0, align 4
@DBG_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"pci_unmap_srb: list=%08x(%05x)\0A\00", align 1
@SEGMENTX_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"pci_unmap_srb: segs=%i buffer=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*)* @pci_unmap_srb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_unmap_srb(%struct.AdapterCtlBlk* %0, %struct.ScsiReqBlk* %1) #0 {
  %3 = alloca %struct.AdapterCtlBlk*, align 8
  %4 = alloca %struct.ScsiReqBlk*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %3, align 8
  store %struct.ScsiReqBlk* %1, %struct.ScsiReqBlk** %4, align 8
  %7 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %8 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %7, i32 0, i32 1
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PCI_DMA_NONE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32, i32* @DBG_SG, align 4
  %22 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %23 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @SEGMENTX_LEN, align 4
  %26 = call i32 @dprintkdbg(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  %27 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %3, align 8
  %28 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %32 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @SEGMENTX_LEN, align 4
  %35 = load i32, i32* @DMA_TO_DEVICE, align 4
  %36 = call i32 @dma_unmap_single(i32* %30, i64 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @DBG_SG, align 4
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %39 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %38)
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %40)
  %42 = call i32 @dprintkdbg(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %39, i32 %41)
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %44 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %43)
  br label %45

45:                                               ; preds = %20, %16, %2
  ret void
}

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dprintkdbg(i32, i8*, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i64, i32, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
