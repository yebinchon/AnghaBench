; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-plat.c_xhci_plat_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-plat.c_xhci_plat_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { %struct.usb_hcd*, i32, %struct.clk*, %struct.clk* }
%struct.clk = type { i32 }

@XHCI_STATE_REMOVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xhci_plat_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_plat_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.usb_hcd* %9, %struct.usb_hcd** %3, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %10)
  store %struct.xhci_hcd* %11, %struct.xhci_hcd** %4, align 8
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %12, i32 0, i32 3
  %14 = load %struct.clk*, %struct.clk** %13, align 8
  store %struct.clk* %14, %struct.clk** %5, align 8
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 2
  %17 = load %struct.clk*, %struct.clk** %16, align 8
  store %struct.clk* %17, %struct.clk** %6, align 8
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %19 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %18, i32 0, i32 0
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %19, align 8
  store %struct.usb_hcd* %20, %struct.usb_hcd** %7, align 8
  %21 = load i32, i32* @XHCI_STATE_REMOVING, align 4
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %27 = call i32 @usb_remove_hcd(%struct.usb_hcd* %26)
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %29 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %28, i32 0, i32 0
  store %struct.usb_hcd* null, %struct.usb_hcd** %29, align 8
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %31 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_phy_shutdown(i32 %32)
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %35 = call i32 @usb_remove_hcd(%struct.usb_hcd* %34)
  %36 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %37 = call i32 @usb_put_hcd(%struct.usb_hcd* %36)
  %38 = load %struct.clk*, %struct.clk** %5, align 8
  %39 = call i32 @clk_disable_unprepare(%struct.clk* %38)
  %40 = load %struct.clk*, %struct.clk** %6, align 8
  %41 = call i32 @clk_disable_unprepare(%struct.clk* %40)
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %43 = call i32 @usb_put_hcd(%struct.usb_hcd* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @pm_runtime_set_suspended(i32* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @pm_runtime_disable(i32* %48)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_phy_shutdown(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
