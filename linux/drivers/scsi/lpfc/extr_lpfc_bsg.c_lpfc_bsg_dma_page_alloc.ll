; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_dma_page_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_dma_page_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_dmabuf = type { i32, i32, i32 }
%struct.lpfc_hba = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BSG_MBOX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_dmabuf* (%struct.lpfc_hba*)* @lpfc_bsg_dma_page_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_dmabuf* @lpfc_bsg_dma_page_alloc(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_dmabuf*, align 8
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_dmabuf*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lpfc_dmabuf* @kmalloc(i32 12, i32 %9)
  store %struct.lpfc_dmabuf* %10, %struct.lpfc_dmabuf** %4, align 8
  %11 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %12 = icmp ne %struct.lpfc_dmabuf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %2, align 8
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %16 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %15, i32 0, i32 2
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %21 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @dma_alloc_coherent(i32* %19, i32 %20, i32* %22, i32 %23)
  %25 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %14
  %32 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  %33 = call i32 @kfree(%struct.lpfc_dmabuf* %32)
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %2, align 8
  br label %36

34:                                               ; preds = %14
  %35 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %4, align 8
  store %struct.lpfc_dmabuf* %35, %struct.lpfc_dmabuf** %2, align 8
  br label %36

36:                                               ; preds = %34, %31, %13
  %37 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %2, align 8
  ret %struct.lpfc_dmabuf* %37
}

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
