; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_mac_and_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_set_mac_and_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32*, %struct.wl18xx_priv* }
%struct.wl18xx_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wl18xx_mac_and_phy_params = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PART_PHY_INIT = common dso_local global i64 0, align 8
@WL18XX_PHY_INIT_MEM_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_set_mac_and_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_set_mac_and_phy(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl18xx_priv*, align 8
  %4 = alloca %struct.wl18xx_mac_and_phy_params*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 1
  %8 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %7, align 8
  store %struct.wl18xx_priv* %8, %struct.wl18xx_priv** %3, align 8
  %9 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wl18xx_mac_and_phy_params* @kmemdup(i32* %11, i32 4, i32 %12)
  store %struct.wl18xx_mac_and_phy_params* %13, %struct.wl18xx_mac_and_phy_params** %4, align 8
  %14 = load %struct.wl18xx_mac_and_phy_params*, %struct.wl18xx_mac_and_phy_params** %4, align 8
  %15 = icmp ne %struct.wl18xx_mac_and_phy_params* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %21 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @PART_PHY_INIT, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = call i32 @wlcore_set_partition(%struct.wl1271* %20, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %19
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = load i32, i32* @WL18XX_PHY_INIT_MEM_ADDR, align 4
  %33 = load %struct.wl18xx_mac_and_phy_params*, %struct.wl18xx_mac_and_phy_params** %4, align 8
  %34 = call i32 @wlcore_write(%struct.wl1271* %31, i32 %32, %struct.wl18xx_mac_and_phy_params* %33, i32 4, i32 0)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %29, %16
  %36 = load %struct.wl18xx_mac_and_phy_params*, %struct.wl18xx_mac_and_phy_params** %4, align 8
  %37 = call i32 @kfree(%struct.wl18xx_mac_and_phy_params* %36)
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.wl18xx_mac_and_phy_params* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i32 @wlcore_write(%struct.wl1271*, i32, %struct.wl18xx_mac_and_phy_params*, i32, i32) #1

declare dso_local i32 @kfree(%struct.wl18xx_mac_and_phy_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
