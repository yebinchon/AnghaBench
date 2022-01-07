; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8xxxu_priv* }
%struct.rtl8xxxu_priv = type { i32 }
%struct.ieee80211_vif = type { i32 }

@REG_BEACON_CTRL = common dso_local global i32 0, align 4
@BEACON_ATIM = common dso_local global i32 0, align 4
@BEACON_FUNCTION_ENABLE = common dso_local global i32 0, align 4
@BEACON_DISABLE_TSF_UPDATE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rtl8xxxu_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rtl8xxxu_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %9, align 8
  store %struct.rtl8xxxu_priv* %10, %struct.rtl8xxxu_priv** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %31 [
    i32 128, label %14
  ]

14:                                               ; preds = %2
  %15 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %16 = call i32 @rtl8xxxu_stop_tx_beacon(%struct.rtl8xxxu_priv* %15)
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %18 = load i32, i32* @REG_BEACON_CTRL, align 4
  %19 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @BEACON_ATIM, align 4
  %21 = load i32, i32* @BEACON_FUNCTION_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @BEACON_DISABLE_TSF_UPDATE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %28 = load i32, i32* @REG_BEACON_CTRL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %27, i32 %28, i32 %29)
  store i32 0, i32* %6, align 4
  br label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %14
  %35 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %5, align 8
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rtl8xxxu_set_linktype(%struct.rtl8xxxu_priv* %35, i32 %38)
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @rtl8xxxu_stop_tx_beacon(%struct.rtl8xxxu_priv*) #1

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_set_linktype(%struct.rtl8xxxu_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
