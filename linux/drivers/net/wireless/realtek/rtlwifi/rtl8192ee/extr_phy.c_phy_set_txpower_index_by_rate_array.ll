; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_set_txpower_index_by_rate_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_set_txpower_index_by_rate_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i64, i64, i64*, i64)* @phy_set_txpower_index_by_rate_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_set_txpower_index_by_rate_array(%struct.ieee80211_hw* %0, i32 %1, i64 %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca %struct.ieee80211_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %15

15:                                               ; preds = %37, %6
  %16 = load i64, i64* %13, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64*, i64** %11, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @_rtl92ee_get_txpower_index(%struct.ieee80211_hw* %20, i32 %21, i64 %25, i64 %26, i64 %27)
  store i64 %28, i64* %14, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i64*, i64** %11, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @_rtl92ee_set_txpower_index(%struct.ieee80211_hw* %29, i64 %30, i32 %31, i64 %35)
  br label %37

37:                                               ; preds = %19
  %38 = load i64, i64* %13, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %13, align 8
  br label %15

40:                                               ; preds = %15
  ret void
}

declare dso_local i64 @_rtl92ee_get_txpower_index(%struct.ieee80211_hw*, i32, i64, i64, i64) #1

declare dso_local i32 @_rtl92ee_set_txpower_index(%struct.ieee80211_hw*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
