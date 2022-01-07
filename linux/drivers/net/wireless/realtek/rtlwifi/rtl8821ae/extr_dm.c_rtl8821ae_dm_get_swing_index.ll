; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_get_swing_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_get_swing_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i32 }

@RF90_PATH_A = common dso_local global i32 0, align 4
@TXSCALE_TABLE_SIZE = common dso_local global i64 0, align 8
@rtl8821ae_txscaling_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*)* @rtl8821ae_dm_get_swing_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtl8821ae_dm_get_swing_index(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call i32 @rtl_priv(%struct.ieee80211_hw* %6)
  %8 = call %struct.rtl_hal* @rtl_hal(i32 %7)
  store %struct.rtl_hal* %8, %struct.rtl_hal** %3, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = load %struct.rtl_hal*, %struct.rtl_hal** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RF90_PATH_A, align 4
  %14 = call i64 @phy_get_tx_swing_8812A(%struct.ieee80211_hw* %9, i32 %12, i32 %13)
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @TXSCALE_TABLE_SIZE, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64*, i64** @rtl8821ae_txscaling_table, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %15

31:                                               ; preds = %26, %15
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @phy_get_tx_swing_8812A(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
