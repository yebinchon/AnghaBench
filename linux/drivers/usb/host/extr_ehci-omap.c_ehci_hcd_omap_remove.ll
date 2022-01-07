; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-omap.c_ehci_hcd_omap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-omap.c_ehci_hcd_omap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.omap_hcd = type { i32, i64* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehci_hcd_omap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_hcd_omap_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.omap_hcd*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.usb_hcd* @dev_get_drvdata(%struct.device* %9)
  store %struct.usb_hcd* %10, %struct.usb_hcd** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %12 = call %struct.TYPE_2__* @hcd_to_ehci(%struct.usb_hcd* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.omap_hcd*
  store %struct.omap_hcd* %15, %struct.omap_hcd** %5, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %17 = call i32 @usb_remove_hcd(%struct.usb_hcd* %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %43, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.omap_hcd*, %struct.omap_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.omap_hcd, %struct.omap_hcd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.omap_hcd*, %struct.omap_hcd** %5, align 8
  %26 = getelementptr inbounds %struct.omap_hcd, %struct.omap_hcd* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load %struct.omap_hcd*, %struct.omap_hcd** %5, align 8
  %35 = getelementptr inbounds %struct.omap_hcd, %struct.omap_hcd* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @usb_phy_shutdown(i64 %40)
  br label %42

42:                                               ; preds = %33, %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %48 = call i32 @usb_put_hcd(%struct.usb_hcd* %47)
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @pm_runtime_put_sync(%struct.device* %49)
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = call i32 @pm_runtime_disable(%struct.device* %51)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @usb_phy_shutdown(i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
