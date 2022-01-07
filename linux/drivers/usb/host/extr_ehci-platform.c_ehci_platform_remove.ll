; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-platform.c_ehci_platform_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-platform.c_ehci_platform_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ehci_pdata = type { i32 (%struct.platform_device.0*)* }
%struct.platform_device.0 = type opaque
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.usb_hcd = type { i32 }
%struct.ehci_platform_priv = type { i64*, i32 }

@EHCI_MAX_CLKS = common dso_local global i32 0, align 4
@ehci_platform_defaults = common dso_local global %struct.usb_ehci_pdata zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehci_platform_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_platform_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_ehci_pdata*, align 8
  %5 = alloca %struct.ehci_platform_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.usb_ehci_pdata* @dev_get_platdata(%struct.TYPE_2__* %10)
  store %struct.usb_ehci_pdata* %11, %struct.usb_ehci_pdata** %4, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call %struct.ehci_platform_priv* @hcd_to_ehci_priv(%struct.usb_hcd* %12)
  store %struct.ehci_platform_priv* %13, %struct.ehci_platform_priv** %5, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = call i32 @usb_remove_hcd(%struct.usb_hcd* %14)
  %16 = load %struct.usb_ehci_pdata*, %struct.usb_ehci_pdata** %4, align 8
  %17 = getelementptr inbounds %struct.usb_ehci_pdata, %struct.usb_ehci_pdata* %16, i32 0, i32 0
  %18 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %17, align 8
  %19 = icmp ne i32 (%struct.platform_device.0*)* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.usb_ehci_pdata*, %struct.usb_ehci_pdata** %4, align 8
  %22 = getelementptr inbounds %struct.usb_ehci_pdata, %struct.usb_ehci_pdata* %21, i32 0, i32 0
  %23 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %22, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = bitcast %struct.platform_device* %24 to %struct.platform_device.0*
  %26 = call i32 %23(%struct.platform_device.0* %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.ehci_platform_priv*, %struct.ehci_platform_priv** %5, align 8
  %29 = getelementptr inbounds %struct.ehci_platform_priv, %struct.ehci_platform_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @reset_control_assert(i32 %30)
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %56, %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @EHCI_MAX_CLKS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.ehci_platform_priv*, %struct.ehci_platform_priv** %5, align 8
  %38 = getelementptr inbounds %struct.ehci_platform_priv, %struct.ehci_platform_priv* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %36, %32
  %46 = phi i1 [ false, %32 ], [ %44, %36 ]
  br i1 %46, label %47, label %59

47:                                               ; preds = %45
  %48 = load %struct.ehci_platform_priv*, %struct.ehci_platform_priv** %5, align 8
  %49 = getelementptr inbounds %struct.ehci_platform_priv, %struct.ehci_platform_priv* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @clk_put(i64 %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %32

59:                                               ; preds = %45
  %60 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %61 = call i32 @usb_put_hcd(%struct.usb_hcd* %60)
  %62 = load %struct.usb_ehci_pdata*, %struct.usb_ehci_pdata** %4, align 8
  %63 = icmp eq %struct.usb_ehci_pdata* %62, @ehci_platform_defaults
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %64, %59
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.usb_ehci_pdata* @dev_get_platdata(%struct.TYPE_2__*) #1

declare dso_local %struct.ehci_platform_priv* @hcd_to_ehci_priv(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
