; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_rockchip_usb3_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_rockchip_usb3_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rockchip_typec_phy = type { i64, i32 }

@MODE_DISCONNECT = common dso_local global i64 0, align 8
@MODE_UFP_USB = common dso_local global i32 0, align 4
@MODE_DFP_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_usb3_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb3_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.rockchip_typec_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.rockchip_typec_phy* @phy_get_drvdata(%struct.phy* %4)
  store %struct.rockchip_typec_phy* %5, %struct.rockchip_typec_phy** %3, align 8
  %6 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %10 = call i32 @tcphy_cfg_usb3_to_usb2_only(%struct.rockchip_typec_phy* %9, i32 0)
  %11 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %12 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MODE_DISCONNECT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %36

17:                                               ; preds = %1
  %18 = load i32, i32* @MODE_UFP_USB, align 4
  %19 = load i32, i32* @MODE_DFP_USB, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = sext i32 %21 to i64
  %23 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %24 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = and i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %28 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MODE_DISCONNECT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %34 = call i32 @tcphy_phy_deinit(%struct.rockchip_typec_phy* %33)
  br label %35

35:                                               ; preds = %32, %17
  br label %36

36:                                               ; preds = %35, %16
  %37 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %38 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  ret i32 0
}

declare dso_local %struct.rockchip_typec_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tcphy_cfg_usb3_to_usb2_only(%struct.rockchip_typec_phy*, i32) #1

declare dso_local i32 @tcphy_phy_deinit(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
