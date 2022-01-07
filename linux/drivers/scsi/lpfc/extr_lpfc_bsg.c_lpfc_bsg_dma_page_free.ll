; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_dma_page_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_dma_page_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.lpfc_dmabuf = type { i32, i64 }

@BSG_MBOX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_dmabuf*)* @lpfc_bsg_dma_page_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_bsg_dma_page_free(%struct.lpfc_hba* %0, %struct.lpfc_dmabuf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_dmabuf*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_dmabuf* %1, %struct.lpfc_dmabuf** %4, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %10 = icmp ne %struct.lpfc_dmabuf* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %21 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %25 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dma_free_coherent(i32* %19, i32 %20, i64 %23, i32 %26)
  br label %28

28:                                               ; preds = %17, %12
  %29 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %30 = call i32 @kfree(%struct.lpfc_dmabuf* %29)
  br label %31

31:                                               ; preds = %28, %11
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
