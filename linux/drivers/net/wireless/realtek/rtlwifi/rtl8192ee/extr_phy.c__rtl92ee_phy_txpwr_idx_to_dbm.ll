; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_txpwr_idx_to_dbm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_txpwr_idx_to_dbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_hw*, i32, i32)* @_rtl92ee_phy_txpwr_idx_to_dbm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_rtl92ee_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %12 [
    i32 130, label %10
    i32 129, label %11
    i32 128, label %11
  ]

10:                                               ; preds = %3
  store i64 -7, i64* %7, align 8
  br label %13

11:                                               ; preds = %3, %3
  store i64 -8, i64* %7, align 8
  br label %13

12:                                               ; preds = %3
  store i64 -8, i64* %7, align 8
  br label %13

13:                                               ; preds = %12, %11, %10
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  ret i64 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
