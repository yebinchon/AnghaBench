; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_msi_setup_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_msi_setup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.pci_dev = type { i64, i32, i32 }
%struct.irq_affinity = type { i32 }
%struct.irq_affinity_desc = type { i32 }

@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_64BIT = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_MASKBIT = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_QMASK = common dso_local global i32 0, align 4
@PCI_MSI_MASK_64 = common dso_local global i64 0, align 8
@PCI_MSI_MASK_32 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.msi_desc* (%struct.pci_dev*, i32, %struct.irq_affinity*)* @msi_setup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.msi_desc* @msi_setup_entry(%struct.pci_dev* %0, i32 %1, %struct.irq_affinity* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_affinity*, align 8
  %7 = alloca %struct.irq_affinity_desc*, align 8
  %8 = alloca %struct.msi_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.irq_affinity* %2, %struct.irq_affinity** %6, align 8
  store %struct.irq_affinity_desc* null, %struct.irq_affinity_desc** %7, align 8
  %10 = load %struct.irq_affinity*, %struct.irq_affinity** %6, align 8
  %11 = icmp ne %struct.irq_affinity* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.irq_affinity*, %struct.irq_affinity** %6, align 8
  %15 = call %struct.irq_affinity_desc* @irq_create_affinity_masks(i32 %13, %struct.irq_affinity* %14)
  store %struct.irq_affinity_desc* %15, %struct.irq_affinity_desc** %7, align 8
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %7, align 8
  %21 = call %struct.msi_desc* @alloc_msi_entry(i32* %18, i32 %19, %struct.irq_affinity_desc* %20)
  store %struct.msi_desc* %21, %struct.msi_desc** %8, align 8
  %22 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %23 = icmp ne %struct.msi_desc* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %116

25:                                               ; preds = %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @pci_read_config_word(%struct.pci_dev* %26, i64 %31, i32* %9)
  %33 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %34 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PCI_MSI_FLAGS_64BIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %44 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %47 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  store i64 0, i64* %48, align 8
  %49 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %50 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PCI_MSI_FLAGS_MASKBIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %60 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %66 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @PCI_MSI_FLAGS_QMASK, align 4
  %70 = and i32 %68, %69
  %71 = ashr i32 %70, 1
  %72 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %73 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @__roundup_pow_of_two(i32 %75)
  %77 = call i32 @ilog2(i32 %76)
  %78 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %79 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @PCI_MSI_FLAGS_64BIT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %25
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PCI_MSI_MASK_64, align 8
  %90 = add nsw i64 %88, %89
  %91 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %92 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %101

93:                                               ; preds = %25
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @PCI_MSI_MASK_32, align 8
  %98 = add nsw i64 %96, %97
  %99 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %100 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %93, %85
  %102 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %103 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %109 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %110 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %113 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %112, i32 0, i32 0
  %114 = call i32 @pci_read_config_dword(%struct.pci_dev* %108, i64 %111, i32* %113)
  br label %115

115:                                              ; preds = %107, %101
  br label %116

116:                                              ; preds = %115, %24
  %117 = load %struct.irq_affinity_desc*, %struct.irq_affinity_desc** %7, align 8
  %118 = call i32 @kfree(%struct.irq_affinity_desc* %117)
  %119 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  ret %struct.msi_desc* %119
}

declare dso_local %struct.irq_affinity_desc* @irq_create_affinity_masks(i32, %struct.irq_affinity*) #1

declare dso_local %struct.msi_desc* @alloc_msi_entry(i32*, i32, %struct.irq_affinity_desc*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @kfree(%struct.irq_affinity_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
