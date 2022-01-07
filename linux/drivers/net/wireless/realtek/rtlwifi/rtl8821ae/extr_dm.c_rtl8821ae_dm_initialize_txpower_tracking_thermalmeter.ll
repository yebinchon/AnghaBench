; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_initialize_txpower_tracking_thermalmeter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_initialize_txpower_tracking_thermalmeter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_dm = type { i32, i32, i32, i32, i32*, i32*, i64*, i64*, i64*, i32, i32, i32 }
%struct.rtl_efuse = type { i32 }

@TXSCALE_TABLE_SIZE = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@MAX_RF_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_dm_initialize_txpower_tracking_thermalmeter(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_dm*, align 8
  %5 = alloca %struct.rtl_efuse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %10)
  store %struct.rtl_dm* %11, %struct.rtl_dm** %4, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %12)
  store %struct.rtl_efuse* %13, %struct.rtl_efuse** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %18 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 8
  %22 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %28 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %31 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = call i32 @rtl8821ae_dm_get_swing_index(%struct.ieee80211_hw* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @TXSCALE_TABLE_SIZE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 24, %37 ], [ %39, %38 ]
  %42 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %43 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %44, i32 0, i32 1
  store i32 24, i32* %45, align 4
  %46 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %47 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %50 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %55 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @RF90_PATH_A, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %98, %40
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @MAX_RF_PATH, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %57
  %62 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %63 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %66 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %72 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %75 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %81 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %80, i32 0, i32 8
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 0, i64* %85, align 8
  %86 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %87 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %86, i32 0, i32 7
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  %92 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %93 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %92, i32 0, i32 6
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %61
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %57

101:                                              ; preds = %57
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8821ae_dm_get_swing_index(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
