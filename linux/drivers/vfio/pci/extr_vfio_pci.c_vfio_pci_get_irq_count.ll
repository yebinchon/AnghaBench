; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_get_irq_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_get_irq_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@VFIO_PCI_INTX_IRQ_INDEX = common dso_local global i32 0, align 4
@CONFIG_VFIO_PCI_INTX = common dso_local global i32 0, align 4
@PCI_INTERRUPT_PIN = common dso_local global i32 0, align 4
@VFIO_PCI_MSI_IRQ_INDEX = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS_QMASK = common dso_local global i32 0, align 4
@VFIO_PCI_MSIX_IRQ_INDEX = common dso_local global i32 0, align 4
@PCI_MSIX_FLAGS = common dso_local global i64 0, align 8
@PCI_MSIX_FLAGS_QSIZE = common dso_local global i32 0, align 4
@VFIO_PCI_ERR_IRQ_INDEX = common dso_local global i32 0, align 4
@VFIO_PCI_REQ_IRQ_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*, i32)* @vfio_pci_get_irq_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_get_irq_count(%struct.vfio_pci_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_pci_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VFIO_PCI_INTX_IRQ_INDEX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load i32, i32* @CONFIG_VFIO_PCI_INTX, align 4
  %16 = call i32 @IS_ENABLED(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %20 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %25 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %18, %14
  store i32 0, i32* %3, align 4
  br label %114

31:                                               ; preds = %23
  %32 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %33 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* @PCI_INTERRUPT_PIN, align 4
  %36 = call i32 @pci_read_config_byte(%struct.TYPE_4__* %34, i32 %35, i64* %6)
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %3, align 4
  br label %114

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @VFIO_PCI_MSI_IRQ_INDEX, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %47 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  %54 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %55 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @PCI_MSI_FLAGS, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @pci_read_config_word(%struct.TYPE_4__* %56, i64 %59, i32* %8)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PCI_MSI_FLAGS_QMASK, align 4
  %63 = and i32 %61, %62
  %64 = ashr i32 %63, 1
  %65 = shl i32 1, %64
  store i32 %65, i32* %3, align 4
  br label %114

66:                                               ; preds = %45
  br label %112

67:                                               ; preds = %41
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @VFIO_PCI_MSIX_IRQ_INDEX, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %73 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %71
  %80 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %81 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @pci_read_config_word(%struct.TYPE_4__* %82, i64 %85, i32* %10)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @PCI_MSIX_FLAGS_QSIZE, align 4
  %89 = and i32 %87, %88
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %114

91:                                               ; preds = %71
  br label %111

92:                                               ; preds = %67
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @VFIO_PCI_ERR_IRQ_INDEX, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %4, align 8
  %98 = getelementptr inbounds %struct.vfio_pci_device, %struct.vfio_pci_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = call i64 @pci_is_pcie(%struct.TYPE_4__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 1, i32* %3, align 4
  br label %114

103:                                              ; preds = %96
  br label %110

104:                                              ; preds = %92
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @VFIO_PCI_REQ_IRQ_INDEX, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %114

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %103
  br label %111

111:                                              ; preds = %110, %91
  br label %112

112:                                              ; preds = %111, %66
  br label %113

113:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %108, %102, %79, %53, %31, %30
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_4__*, i32, i64*) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_4__*, i64, i32*) #1

declare dso_local i64 @pci_is_pcie(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
