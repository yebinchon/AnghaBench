; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-meson-g12a.c_dwc3_meson_g12a_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dwc3_meson_g12a = type { i32*, i32 }

@PHY_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc3_meson_g12a_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_meson_g12a_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dwc3_meson_g12a*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.dwc3_meson_g12a* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.dwc3_meson_g12a* %7, %struct.dwc3_meson_g12a** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @usb_role_switch_unregister(i32 %12)
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @of_platform_depopulate(%struct.device* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %37, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PHY_COUNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @phy_power_off(i32 %27)
  %29 = load %struct.dwc3_meson_g12a*, %struct.dwc3_meson_g12a** %3, align 8
  %30 = getelementptr inbounds %struct.dwc3_meson_g12a, %struct.dwc3_meson_g12a* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @phy_exit(i32 %35)
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @pm_runtime_disable(%struct.device* %41)
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @pm_runtime_put_noidle(%struct.device* %43)
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @pm_runtime_set_suspended(%struct.device* %45)
  ret i32 0
}

declare dso_local %struct.dwc3_meson_g12a* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_role_switch_unregister(i32) #1

declare dso_local i32 @of_platform_depopulate(%struct.device*) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
