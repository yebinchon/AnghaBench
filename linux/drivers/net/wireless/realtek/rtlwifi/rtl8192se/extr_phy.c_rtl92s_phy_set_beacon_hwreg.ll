; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_beacon_hwreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_set_beacon_hwreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@WFM5 = common dso_local global i64 0, align 8
@WFM3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_phy_set_beacon_hwreg(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = call i32 @hal_get_firmwareversion(%struct.rtl_priv* %9)
  %11 = icmp sge i32 %10, 51
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %14 = load i64, i64* @WFM5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 -251658240, %16
  %18 = call i32 @rtl_write_dword(%struct.rtl_priv* %13, i64 %14, i32 %17)
  br label %31

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = mul nsw i32 %20, 32
  %22 = sub nsw i32 %21, 64
  store i32 %22, i32* %6, align 4
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %24 = load i64, i64* @WFM3, align 8
  %25 = add nsw i64 %24, 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @rtl_write_dword(%struct.rtl_priv* %23, i64 %25, i32 %26)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = load i64, i64* @WFM3, align 8
  %30 = call i32 @rtl_write_dword(%struct.rtl_priv* %28, i64 %29, i32 -1339686788)
  br label %31

31:                                               ; preds = %19, %12
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @hal_get_firmwareversion(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
