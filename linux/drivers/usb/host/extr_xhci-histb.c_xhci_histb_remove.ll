; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xhci_hcd_histb = type { %struct.usb_hcd* }
%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { %struct.usb_hcd*, i32 }

@XHCI_STATE_REMOVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @xhci_histb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_histb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.xhci_hcd_histb*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.xhci_hcd_histb* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.xhci_hcd_histb* %8, %struct.xhci_hcd_histb** %3, align 8
  %9 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %9, i32 0, i32 0
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %10, align 8
  store %struct.usb_hcd* %11, %struct.usb_hcd** %4, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %13 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %12)
  store %struct.xhci_hcd* %13, %struct.xhci_hcd** %5, align 8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  store %struct.usb_hcd* %16, %struct.usb_hcd** %6, align 8
  %17 = load i32, i32* @XHCI_STATE_REMOVING, align 4
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %19 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %23 = call i32 @usb_remove_hcd(%struct.usb_hcd* %22)
  %24 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %25 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %24, i32 0, i32 0
  store %struct.usb_hcd* null, %struct.usb_hcd** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @device_wakeup_disable(i32* %27)
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %30 = call i32 @usb_remove_hcd(%struct.usb_hcd* %29)
  %31 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %32 = call i32 @usb_put_hcd(%struct.usb_hcd* %31)
  %33 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %34 = call i32 @xhci_histb_host_disable(%struct.xhci_hcd_histb* %33)
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %36 = call i32 @usb_put_hcd(%struct.usb_hcd* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @pm_runtime_put_sync(i32* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @pm_runtime_disable(i32* %41)
  ret i32 0
}

declare dso_local %struct.xhci_hcd_histb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @device_wakeup_disable(i32*) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_histb_host_disable(%struct.xhci_hcd_histb*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
