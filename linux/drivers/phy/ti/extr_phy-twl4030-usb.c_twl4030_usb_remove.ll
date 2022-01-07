; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_usb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_usb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.twl4030_usb = type { i32, i32, i32, i32 }

@dev_attr_vbus = common dso_local global i32 0, align 4
@PHY_CLK_CTRL = common dso_local global i32 0, align 4
@PHY_CLK_CTRL_CLOCKGATING_EN = common dso_local global i32 0, align 4
@PHY_CLK_CTRL_CLK32K_EN = common dso_local global i32 0, align 4
@REQ_PHY_DPLL_CLK = common dso_local global i32 0, align 4
@POWER_CTRL = common dso_local global i32 0, align 4
@POWER_CTRL_OTG_ENAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_usb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_usb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.twl4030_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.twl4030_usb* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.twl4030_usb* %6, %struct.twl4030_usb** %3, align 8
  %7 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %8 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %7, i32 0, i32 3
  %9 = call i32 @usb_remove_phy(i32* %8)
  %10 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %11 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pm_runtime_get_sync(i32 %12)
  %14 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %15 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %14, i32 0, i32 2
  %16 = call i32 @cancel_delayed_work(i32* %15)
  %17 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %18 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_remove_file(i32 %19, i32* @dev_attr_vbus)
  %21 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %22 = call i32 @twl4030_usb_set_mode(%struct.twl4030_usb* %21, i32 -1)
  %23 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %24 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @cable_present(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %30 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pm_runtime_put_noidle(i32 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %35 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_runtime_mark_last_busy(i32 %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @pm_runtime_dont_use_autosuspend(i32* %39)
  %41 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %42 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_put_sync(i32 %43)
  %45 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %46 = getelementptr inbounds %struct.twl4030_usb, %struct.twl4030_usb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pm_runtime_disable(i32 %47)
  %49 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %50 = load i32, i32* @PHY_CLK_CTRL, align 4
  %51 = call i32 @twl4030_usb_read(%struct.twl4030_usb* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %33
  %55 = load i32, i32* @PHY_CLK_CTRL_CLOCKGATING_EN, align 4
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @PHY_CLK_CTRL_CLK32K_EN, align 4
  %59 = load i32, i32* @REQ_PHY_DPLL_CLK, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %65 = load i32, i32* @PHY_CLK_CTRL, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @twl4030_usb_write(%struct.twl4030_usb* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %54, %33
  %69 = load %struct.twl4030_usb*, %struct.twl4030_usb** %3, align 8
  %70 = load i32, i32* @POWER_CTRL, align 4
  %71 = load i32, i32* @POWER_CTRL_OTG_ENAB, align 4
  %72 = call i32 @twl4030_usb_clear_bits(%struct.twl4030_usb* %69, i32 %70, i32 %71)
  ret i32 0
}

declare dso_local %struct.twl4030_usb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_remove_phy(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @twl4030_usb_set_mode(%struct.twl4030_usb*, i32) #1

declare dso_local i64 @cable_present(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @twl4030_usb_read(%struct.twl4030_usb*, i32) #1

declare dso_local i32 @twl4030_usb_write(%struct.twl4030_usb*, i32, i32) #1

declare dso_local i32 @twl4030_usb_clear_bits(%struct.twl4030_usb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
