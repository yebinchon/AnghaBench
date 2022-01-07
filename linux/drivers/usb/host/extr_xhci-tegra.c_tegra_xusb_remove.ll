; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.tegra_xusb = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.xhci_hcd = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@TEGRA_POWERGATE_XUSBC = common dso_local global i32 0, align 4
@TEGRA_POWERGATE_XUSBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_xusb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tegra_xusb*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.tegra_xusb* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.tegra_xusb* %6, %struct.tegra_xusb** %3, align 8
  %7 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = call %struct.xhci_hcd* @hcd_to_xhci(i32* %9)
  store %struct.xhci_hcd* %10, %struct.xhci_hcd** %4, align 8
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @usb_remove_hcd(i32* %13)
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @usb_put_hcd(i32* %17)
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %20 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @usb_remove_hcd(i32* %23)
  %25 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @usb_put_hcd(i32* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dma_free_coherent(%struct.TYPE_7__* %30, i32 %34, i32 %38, i32 %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @pm_runtime_put_sync(%struct.TYPE_7__* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @pm_runtime_disable(%struct.TYPE_7__* %48)
  %50 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @of_property_read_bool(i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %1
  %57 = load i32, i32* @TEGRA_POWERGATE_XUSBC, align 4
  %58 = call i32 @tegra_powergate_power_off(i32 %57)
  %59 = load i32, i32* @TEGRA_POWERGATE_XUSBA, align 4
  %60 = call i32 @tegra_powergate_power_off(i32 %59)
  br label %66

61:                                               ; preds = %1
  %62 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %65 = call i32 @tegra_xusb_powerdomain_remove(%struct.TYPE_7__* %63, %struct.tegra_xusb* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.tegra_xusb*, %struct.tegra_xusb** %3, align 8
  %68 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @tegra_xusb_padctl_put(i32 %69)
  ret i32 0
}

declare dso_local %struct.tegra_xusb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(i32*) #1

declare dso_local i32 @usb_remove_hcd(i32*) #1

declare dso_local i32 @usb_put_hcd(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_7__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_7__*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local i32 @tegra_xusb_powerdomain_remove(%struct.TYPE_7__*, %struct.tegra_xusb*) #1

declare dso_local i32 @tegra_xusb_padctl_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
