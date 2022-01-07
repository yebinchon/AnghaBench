; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.xhci_hcd = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hc_driver = type { i32 }
%struct.usb_hcd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@XHCI_BROKEN_STREAMS = common dso_local global i32 0, align 4
@XHCI_PME_STUCK_QUIRK = common dso_local global i32 0, align 4
@XHCI_DEFAULT_PM_RUNTIME_ALLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @xhci_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.hc_driver*, align 8
  %9 = alloca %struct.usb_hcd*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.hc_driver*
  store %struct.hc_driver* %13, %struct.hc_driver** %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_get_noresume(i32* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %19 = call i32 @usb_hcd_pci_probe(%struct.pci_dev* %17, %struct.pci_device_id* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %114

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call %struct.usb_hcd* @dev_get_drvdata(i32* %25)
  store %struct.usb_hcd* %26, %struct.usb_hcd** %9, align 8
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %28 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %27)
  store %struct.xhci_hcd* %28, %struct.xhci_hcd** %7, align 8
  %29 = load %struct.hc_driver*, %struct.hc_driver** %8, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pci_name(%struct.pci_dev* %32)
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  %35 = call %struct.TYPE_4__* @usb_create_shared_hcd(%struct.hc_driver* %29, i32* %31, i32 %33, %struct.usb_hcd* %34)
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 1
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %39 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %111

45:                                               ; preds = %23
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %47 = call i32 @xhci_ext_cap_init(%struct.xhci_hcd* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %106

51:                                               ; preds = %45
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %53 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IRQF_SHARED, align 4
  %59 = call i32 @usb_add_hcd(%struct.TYPE_4__* %54, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %106

63:                                               ; preds = %51
  %64 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %65 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @XHCI_BROKEN_STREAMS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %63
  %71 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %72 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @HCC_MAX_PSA(i32 %73)
  %75 = icmp sge i32 %74, 4
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %78 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %70, %63
  %82 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %83 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @XHCI_PME_STUCK_QUIRK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = call i32 @xhci_pme_acpi_rtd3_enable(%struct.pci_dev* %89)
  br label %91

91:                                               ; preds = %88, %81
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = call i32 @pm_runtime_put_noidle(i32* %93)
  %95 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %96 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @XHCI_DEFAULT_PM_RUNTIME_ALLOW, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = call i32 @pm_runtime_allow(i32* %103)
  br label %105

105:                                              ; preds = %101, %91
  store i32 0, i32* %3, align 4
  br label %119

106:                                              ; preds = %62, %50
  %107 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %108 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = call i32 @usb_put_hcd(%struct.TYPE_4__* %109)
  br label %111

111:                                              ; preds = %106, %42
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = call i32 @usb_hcd_pci_remove(%struct.pci_dev* %112)
  br label %114

114:                                              ; preds = %111, %22
  %115 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 0
  %117 = call i32 @pm_runtime_put_noidle(i32* %116)
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %105
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @usb_hcd_pci_probe(%struct.pci_dev*, %struct.pci_device_id*) #1

declare dso_local %struct.usb_hcd* @dev_get_drvdata(i32*) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local %struct.TYPE_4__* @usb_create_shared_hcd(%struct.hc_driver*, i32*, i32, %struct.usb_hcd*) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @xhci_ext_cap_init(%struct.xhci_hcd*) #1

declare dso_local i32 @usb_add_hcd(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @HCC_MAX_PSA(i32) #1

declare dso_local i32 @xhci_pme_acpi_rtd3_enable(%struct.pci_dev*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

declare dso_local i32 @usb_put_hcd(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_hcd_pci_remove(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
