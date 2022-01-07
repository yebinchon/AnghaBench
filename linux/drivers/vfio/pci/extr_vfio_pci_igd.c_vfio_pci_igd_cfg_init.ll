; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_igd.c_vfio_pci_igd_cfg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci_igd.c_vfio_pci_igd_cfg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_pci_device = type { i32 }
%struct.pci_dev = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_HOST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VFIO_REGION_TYPE_PCI_VENDOR_TYPE = common dso_local global i32 0, align 4
@VFIO_REGION_SUBTYPE_INTEL_IGD_HOST_CFG = common dso_local global i32 0, align 4
@vfio_pci_igd_cfg_regops = common dso_local global i32 0, align 4
@VFIO_REGION_INFO_FLAG_READ = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_ISA = common dso_local global i32 0, align 4
@VFIO_REGION_SUBTYPE_INTEL_IGD_LPC_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_pci_device*)* @vfio_pci_igd_cfg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_igd_cfg_init(%struct.vfio_pci_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfio_pci_device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.vfio_pci_device* %0, %struct.vfio_pci_device** %3, align 8
  %7 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %8 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 0, i32 0, i32 %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = icmp ne %struct.pci_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %95

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCI_CLASS_BRIDGE_HOST, align 4
  %25 = shl i32 %24, 8
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20, %14
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_dev_put(%struct.pci_dev* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %95

32:                                               ; preds = %20
  %33 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %34 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %35 = load i32, i32* @VFIO_REGION_TYPE_PCI_VENDOR_TYPE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @VFIO_REGION_SUBTYPE_INTEL_IGD_HOST_CFG, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VFIO_REGION_INFO_FLAG_READ, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = call i32 @vfio_pci_register_dev_region(%struct.vfio_pci_device* %33, i32 %36, i32 %37, i32* @vfio_pci_igd_cfg_regops, i32 %40, i32 %41, %struct.pci_dev* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call i32 @pci_dev_put(%struct.pci_dev* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %95

50:                                               ; preds = %32
  %51 = call i32 @PCI_DEVFN(i32 31, i32 0)
  %52 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 0, i32 0, i32 %51)
  store %struct.pci_dev* %52, %struct.pci_dev** %5, align 8
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = icmp ne %struct.pci_dev* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %95

58:                                               ; preds = %50
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PCI_CLASS_BRIDGE_ISA, align 4
  %69 = shl i32 %68, 8
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64, %58
  %72 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %73 = call i32 @pci_dev_put(%struct.pci_dev* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %95

76:                                               ; preds = %64
  %77 = load %struct.vfio_pci_device*, %struct.vfio_pci_device** %3, align 8
  %78 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %79 = load i32, i32* @VFIO_REGION_TYPE_PCI_VENDOR_TYPE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @VFIO_REGION_SUBTYPE_INTEL_IGD_LPC_CFG, align 4
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @VFIO_REGION_INFO_FLAG_READ, align 4
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = call i32 @vfio_pci_register_dev_region(%struct.vfio_pci_device* %77, i32 %80, i32 %81, i32* @vfio_pci_igd_cfg_regops, i32 %84, i32 %85, %struct.pci_dev* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %76
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = call i32 @pci_dev_put(%struct.pci_dev* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %90, %71, %55, %46, %27, %11
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @vfio_pci_register_dev_region(%struct.vfio_pci_device*, i32, i32, i32*, i32, i32, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
