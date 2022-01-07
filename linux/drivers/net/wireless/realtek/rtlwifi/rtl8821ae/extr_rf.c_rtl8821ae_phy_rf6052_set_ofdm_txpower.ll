; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c_rtl8821ae_phy_rf6052_set_ofdm_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_rf.c_rtl8821ae_phy_rf6052_set_ofdm_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_phy_rf6052_set_ofdm_txpower(%struct.ieee80211_hw* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i64], align 16
  %12 = alloca [2 x i64], align 16
  %13 = alloca [2 x i64], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %24 = call i32 @rtl8821ae_phy_get_power_base(%struct.ieee80211_hw* %17, i32* %18, i32* %19, i32* %20, i32 %21, i64* %22, i64* %23)
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %26 = call i32 @rtl8821ae_dm_txpower_track_adjust(%struct.ieee80211_hw* %25, i32 1, i32* %15, i64* %16)
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %67, %5
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %30, label %70

30:                                               ; preds = %27
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %14, align 4
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %13, i64 0, i64 0
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %37 = call i32 @get_txpower_writeval_by_regulatory(%struct.ieee80211_hw* %31, i32 %32, i32 %33, i64* %34, i64* %35, i64* %36)
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %43 = load i64, i64* %42, align 16
  %44 = add nsw i64 %43, %41
  store i64 %44, i64* %42, align 16
  %45 = load i64, i64* %16, align 8
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %45
  store i64 %48, i64* %46, align 8
  br label %62

49:                                               ; preds = %30
  %50 = load i32, i32* %15, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i64, i64* %16, align 8
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %55 = load i64, i64* %54, align 16
  %56 = sub nsw i64 %55, %53
  store i64 %56, i64* %54, align 16
  %57 = load i64, i64* %16, align 8
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %57
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %52, %49
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %64 = load i32, i32* %14, align 4
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %66 = call i32 @_rtl8821ae_write_ofdm_power_reg(%struct.ieee80211_hw* %63, i32 %64, i64* %65)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %27

70:                                               ; preds = %27
  ret void
}

declare dso_local i32 @rtl8821ae_phy_get_power_base(%struct.ieee80211_hw*, i32*, i32*, i32*, i32, i64*, i64*) #1

declare dso_local i32 @rtl8821ae_dm_txpower_track_adjust(%struct.ieee80211_hw*, i32, i32*, i64*) #1

declare dso_local i32 @get_txpower_writeval_by_regulatory(%struct.ieee80211_hw*, i32, i32, i64*, i64*, i64*) #1

declare dso_local i32 @_rtl8821ae_write_ofdm_power_reg(%struct.ieee80211_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
