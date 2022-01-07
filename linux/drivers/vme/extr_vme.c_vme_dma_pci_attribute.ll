; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/extr_vme.c_vme_dma_pci_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/extr_vme.c_vme_dma_pci_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vme_dma_attr = type { i8*, i32 }
%struct.vme_dma_pci = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VME_DMA_PCI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vme_dma_attr* @vme_dma_pci_attribute(i32 %0) #0 {
  %2 = alloca %struct.vme_dma_attr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vme_dma_attr*, align 8
  %5 = alloca %struct.vme_dma_pci*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmalloc(i32 16, i32 %6)
  %8 = bitcast i8* %7 to %struct.vme_dma_attr*
  store %struct.vme_dma_attr* %8, %struct.vme_dma_attr** %4, align 8
  %9 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  %10 = icmp ne %struct.vme_dma_attr* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 4, i32 %13)
  %15 = bitcast i8* %14 to %struct.vme_dma_pci*
  store %struct.vme_dma_pci* %15, %struct.vme_dma_pci** %5, align 8
  %16 = load %struct.vme_dma_pci*, %struct.vme_dma_pci** %5, align 8
  %17 = icmp ne %struct.vme_dma_pci* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %31

19:                                               ; preds = %12
  %20 = load i32, i32* @VME_DMA_PCI, align 4
  %21 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  %22 = getelementptr inbounds %struct.vme_dma_attr, %struct.vme_dma_attr* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vme_dma_pci*, %struct.vme_dma_pci** %5, align 8
  %24 = bitcast %struct.vme_dma_pci* %23 to i8*
  %25 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  %26 = getelementptr inbounds %struct.vme_dma_attr, %struct.vme_dma_attr* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.vme_dma_pci*, %struct.vme_dma_pci** %5, align 8
  %29 = getelementptr inbounds %struct.vme_dma_pci, %struct.vme_dma_pci* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  store %struct.vme_dma_attr* %30, %struct.vme_dma_attr** %2, align 8
  br label %35

31:                                               ; preds = %18
  %32 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %4, align 8
  %33 = call i32 @kfree(%struct.vme_dma_attr* %32)
  br label %34

34:                                               ; preds = %31, %11
  store %struct.vme_dma_attr* null, %struct.vme_dma_attr** %2, align 8
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.vme_dma_attr*, %struct.vme_dma_attr** %2, align 8
  ret %struct.vme_dma_attr* %36
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.vme_dma_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
