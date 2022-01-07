; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_write_dig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_write_dig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i64 }
%struct.dig_t = type { i64, i64, i64 }

@ROFDM0_XAAGCCORE1 = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i64 0, align 8
@ROFDM0_XBAGCCORE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_dm_write_dig(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.dig_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 1
  store %struct.dig_t* %10, %struct.dig_t** %6, align 8
  %11 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %12 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %18 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %24 = load i32, i32* @ROFDM0_XAAGCCORE1, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %23, i32 %24, i32 127, i64 %25)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RF_1T1R, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %35 = load i32, i32* @ROFDM0_XBAGCCORE1, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %34, i32 %35, i32 127, i64 %36)
  br label %38

38:                                               ; preds = %33, %22
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %41 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %44 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.dig_t*, %struct.dig_t** %6, align 8
  %47 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %39, %15
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
