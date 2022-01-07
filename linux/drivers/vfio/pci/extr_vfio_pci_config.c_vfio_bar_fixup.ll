; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_bar_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_config.c_vfio_bar_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32, i32*, %struct.pci_dev* }
%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_BASE_ADDRESS_0 = common dso_local global i64 0, align 8
@PCI_STD_RESOURCES = common dso_local global i32 0, align 4
@PCI_STD_RESOURCE_END = common dso_local global i32 0, align 4
@PCI_BASE_ADDRESS_MEM_TYPE_64 = common dso_local global i32 0, align 4
@PCI_ROM_ADDRESS = common dso_local global i64 0, align 8
@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@PCI_ROM_ADDRESS_ENABLE = common dso_local global i32 0, align 4
@IORESOURCE_ROM_SHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_pci_device*)* @vfio_bar_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_bar_fixup(%struct.vfio_pci_device* %0) #0 {
  %2 = alloca %struct.vfio_pci_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %2, align 8
  %7 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %8 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %7, i32 0, i32 2
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %11 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @PCI_BASE_ADDRESS_0, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* @PCI_STD_RESOURCES, align 4
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %64, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PCI_STD_RESOURCE_END, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = call i64 @pci_resource_start(%struct.pci_dev* %21, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  store i32 0, i32* %27, align 4
  br label %64

28:                                               ; preds = %20
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = call i32 @pci_resource_len(%struct.pci_dev* %29, i64 %31)
  %33 = sub nsw i32 %32, 1
  %34 = xor i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @cpu_to_le32(i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @vfio_generate_bar_flags(%struct.pci_dev* %40, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PCI_BASE_ADDRESS_MEM_TYPE_64, align 4
  %49 = call i32 @cpu_to_le32(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %28
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 32
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %52, %28
  br label %64

64:                                               ; preds = %63, %26
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %5, align 8
  br label %16

69:                                               ; preds = %16
  %70 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %71 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @PCI_ROM_ADDRESS, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %5, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %77 = call i64 @pci_resource_start(%struct.pci_dev* %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %69
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %82 = call i32 @pci_resource_len(%struct.pci_dev* %80, i64 %81)
  %83 = sub nsw i32 %82, 1
  %84 = xor i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @PCI_ROM_ADDRESS_ENABLE, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @cpu_to_le32(i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %116

93:                                               ; preds = %69
  %94 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* @PCI_ROM_RESOURCE, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IORESOURCE_ROM_SHADOW, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %93
  store i32 -131072, i32* %6, align 4
  %105 = load i32, i32* @PCI_ROM_ADDRESS_ENABLE, align 4
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @cpu_to_le32(i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %115

113:                                              ; preds = %93
  %114 = load i32*, i32** %5, align 8
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %113, %104
  br label %116

116:                                              ; preds = %115, %79
  %117 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %2, align 8
  %118 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %117, i32 0, i32 0
  store i32 0, i32* %118, align 8
  ret void
}

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @vfio_generate_bar_flags(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
