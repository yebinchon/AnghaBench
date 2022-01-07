; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mxc.c_ehci_mxc_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mxc.c_ehci_mxc_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mxc_usbh_platform_data = type { i64, i32 (%struct.platform_device*)* }
%struct.usb_hcd = type { i32 }
%struct.ehci_hcd = type { i64 }
%struct.ehci_mxc_priv = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehci_mxc_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_mxc_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mxc_usbh_platform_data*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca %struct.ehci_mxc_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.mxc_usbh_platform_data* @dev_get_platdata(i32* %8)
  store %struct.mxc_usbh_platform_data* %9, %struct.mxc_usbh_platform_data** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.usb_hcd* %11, %struct.usb_hcd** %4, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %13 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %12)
  store %struct.ehci_hcd* %13, %struct.ehci_hcd** %5, align 8
  %14 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %15 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ehci_mxc_priv*
  store %struct.ehci_mxc_priv* %17, %struct.ehci_mxc_priv** %6, align 8
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %19 = call i32 @usb_remove_hcd(%struct.usb_hcd* %18)
  %20 = load %struct.mxc_usbh_platform_data*, %struct.mxc_usbh_platform_data** %3, align 8
  %21 = icmp ne %struct.mxc_usbh_platform_data* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.mxc_usbh_platform_data*, %struct.mxc_usbh_platform_data** %3, align 8
  %24 = getelementptr inbounds %struct.mxc_usbh_platform_data, %struct.mxc_usbh_platform_data* %23, i32 0, i32 1
  %25 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %24, align 8
  %26 = icmp ne i32 (%struct.platform_device*)* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.mxc_usbh_platform_data*, %struct.mxc_usbh_platform_data** %3, align 8
  %29 = getelementptr inbounds %struct.mxc_usbh_platform_data, %struct.mxc_usbh_platform_data* %28, i32 0, i32 1
  %30 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %29, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %32 = call i32 %30(%struct.platform_device* %31)
  br label %33

33:                                               ; preds = %27, %22, %1
  %34 = load %struct.mxc_usbh_platform_data*, %struct.mxc_usbh_platform_data** %3, align 8
  %35 = icmp ne %struct.mxc_usbh_platform_data* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.mxc_usbh_platform_data*, %struct.mxc_usbh_platform_data** %3, align 8
  %38 = getelementptr inbounds %struct.mxc_usbh_platform_data, %struct.mxc_usbh_platform_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.mxc_usbh_platform_data*, %struct.mxc_usbh_platform_data** %3, align 8
  %43 = getelementptr inbounds %struct.mxc_usbh_platform_data, %struct.mxc_usbh_platform_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @usb_phy_shutdown(i64 %44)
  br label %46

46:                                               ; preds = %41, %36, %33
  %47 = load %struct.ehci_mxc_priv*, %struct.ehci_mxc_priv** %6, align 8
  %48 = getelementptr inbounds %struct.ehci_mxc_priv, %struct.ehci_mxc_priv* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @clk_disable_unprepare(i64 %49)
  %51 = load %struct.ehci_mxc_priv*, %struct.ehci_mxc_priv** %6, align 8
  %52 = getelementptr inbounds %struct.ehci_mxc_priv, %struct.ehci_mxc_priv* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @clk_disable_unprepare(i64 %53)
  %55 = load %struct.ehci_mxc_priv*, %struct.ehci_mxc_priv** %6, align 8
  %56 = getelementptr inbounds %struct.ehci_mxc_priv, %struct.ehci_mxc_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.ehci_mxc_priv*, %struct.ehci_mxc_priv** %6, align 8
  %61 = getelementptr inbounds %struct.ehci_mxc_priv, %struct.ehci_mxc_priv* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @clk_disable_unprepare(i64 %62)
  br label %64

64:                                               ; preds = %59, %46
  %65 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %66 = call i32 @usb_put_hcd(%struct.usb_hcd* %65)
  ret i32 0
}

declare dso_local %struct.mxc_usbh_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_phy_shutdown(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
