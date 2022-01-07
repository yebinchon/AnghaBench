; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_msi_teardown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_msi_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i32, %struct.tegra_msi }
%struct.tegra_msi = type { i64, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i32 0, align 4
@INT_PCI_MSI_NR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcie*)* @tegra_pcie_msi_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcie_msi_teardown(%struct.tegra_pcie* %0) #0 {
  %2 = alloca %struct.tegra_pcie*, align 8
  %3 = alloca %struct.tegra_msi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %2, align 8
  %6 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %6, i32 0, i32 1
  store %struct.tegra_msi* %7, %struct.tegra_msi** %3, align 8
  %8 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = load %struct.tegra_msi*, %struct.tegra_msi** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.tegra_msi*, %struct.tegra_msi** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DMA_ATTR_NO_KERNEL_MAPPING, align 4
  %19 = call i32 @dma_free_attrs(i32 %10, i32 %11, i32 %14, i32 %17, i32 %18)
  %20 = load %struct.tegra_msi*, %struct.tegra_msi** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.tegra_msi*, %struct.tegra_msi** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tegra_pcie*, %struct.tegra_pcie** %2, align 8
  %29 = call i32 @free_irq(i64 %27, %struct.tegra_pcie* %28)
  br label %30

30:                                               ; preds = %24, %1
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @INT_PCI_MSI_NR, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.tegra_msi*, %struct.tegra_msi** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @irq_find_mapping(i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @irq_dispose_mapping(i32 %44)
  br label %46

46:                                               ; preds = %43, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load %struct.tegra_msi*, %struct.tegra_msi** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_msi, %struct.tegra_msi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @irq_domain_remove(i32 %53)
  ret void
}

declare dso_local i32 @dma_free_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.tegra_pcie*) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
