; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.sun4i_usb_phy_data = type { i64, i64, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun4i_usb_phy_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_usb_phy_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sun4i_usb_phy_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sun4i_usb_phy_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.sun4i_usb_phy_data* %8, %struct.sun4i_usb_phy_data** %4, align 8
  %9 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %10 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %15 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %14, i32 0, i32 3
  %16 = call i32 @power_supply_unreg_notifier(i32* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %19 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %25 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %28 = call i32 @devm_free_irq(%struct.device* %23, i64 %26, %struct.sun4i_usb_phy_data* %27)
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %31 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %37 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %40 = call i32 @devm_free_irq(%struct.device* %35, i64 %38, %struct.sun4i_usb_phy_data* %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %4, align 8
  %43 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %42, i32 0, i32 2
  %44 = call i32 @cancel_delayed_work_sync(i32* %43)
  ret i32 0
}

declare dso_local %struct.sun4i_usb_phy_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @power_supply_unreg_notifier(i32*) #1

declare dso_local i32 @devm_free_irq(%struct.device*, i64, %struct.sun4i_usb_phy_data*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
