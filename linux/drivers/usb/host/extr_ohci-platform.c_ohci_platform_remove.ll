; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-platform.c_ohci_platform_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-platform.c_ohci_platform_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ohci_pdata = type { i32 (%struct.platform_device.0*)* }
%struct.platform_device.0 = type opaque
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.usb_hcd = type { i32 }
%struct.ohci_platform_priv = type { i64*, i32 }

@OHCI_MAX_CLKS = common dso_local global i32 0, align 4
@ohci_platform_defaults = common dso_local global %struct.usb_ohci_pdata zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ohci_platform_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_platform_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_ohci_pdata*, align 8
  %5 = alloca %struct.ohci_platform_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.usb_ohci_pdata* @dev_get_platdata(%struct.TYPE_5__* %10)
  store %struct.usb_ohci_pdata* %11, %struct.usb_ohci_pdata** %4, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call %struct.ohci_platform_priv* @hcd_to_ohci_priv(%struct.usb_hcd* %12)
  store %struct.ohci_platform_priv* %13, %struct.ohci_platform_priv** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_get_sync(%struct.TYPE_5__* %15)
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %18 = call i32 @usb_remove_hcd(%struct.usb_hcd* %17)
  %19 = load %struct.usb_ohci_pdata*, %struct.usb_ohci_pdata** %4, align 8
  %20 = getelementptr inbounds %struct.usb_ohci_pdata, %struct.usb_ohci_pdata* %19, i32 0, i32 0
  %21 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %20, align 8
  %22 = icmp ne i32 (%struct.platform_device.0*)* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.usb_ohci_pdata*, %struct.usb_ohci_pdata** %4, align 8
  %25 = getelementptr inbounds %struct.usb_ohci_pdata, %struct.usb_ohci_pdata* %24, i32 0, i32 0
  %26 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %25, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = bitcast %struct.platform_device* %27 to %struct.platform_device.0*
  %29 = call i32 %26(%struct.platform_device.0* %28)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.ohci_platform_priv*, %struct.ohci_platform_priv** %5, align 8
  %32 = getelementptr inbounds %struct.ohci_platform_priv, %struct.ohci_platform_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @reset_control_assert(i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %59, %30
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @OHCI_MAX_CLKS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.ohci_platform_priv*, %struct.ohci_platform_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ohci_platform_priv, %struct.ohci_platform_priv* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %39, %35
  %49 = phi i1 [ false, %35 ], [ %47, %39 ]
  br i1 %49, label %50, label %62

50:                                               ; preds = %48
  %51 = load %struct.ohci_platform_priv*, %struct.ohci_platform_priv** %5, align 8
  %52 = getelementptr inbounds %struct.ohci_platform_priv, %struct.ohci_platform_priv* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @clk_put(i64 %57)
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %35

62:                                               ; preds = %48
  %63 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %64 = call i32 @usb_put_hcd(%struct.usb_hcd* %63)
  %65 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @pm_runtime_put_sync(%struct.TYPE_5__* %66)
  %68 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @pm_runtime_disable(%struct.TYPE_5__* %69)
  %71 = load %struct.usb_ohci_pdata*, %struct.usb_ohci_pdata** %4, align 8
  %72 = icmp eq %struct.usb_ohci_pdata* %71, @ohci_platform_defaults
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %73, %62
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.usb_ohci_pdata* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local %struct.ohci_platform_priv* @hcd_to_ohci_priv(%struct.usb_hcd*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
