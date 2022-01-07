; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_get_txpower_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_get_txpower_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_hal, %struct.rtl_phy }
%struct.rtl_hal = type { i64 }
%struct.rtl_phy = type { i64 }
%struct.rtl_efuse = type { i64**, i64**, i64** }

@BAND_ON_2_4G = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64*, i64*)* @_rtl92d_get_txpower_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_get_txpower_index(%struct.ieee80211_hw* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca %struct.rtl_hal*, align 8
  %12 = alloca %struct.rtl_efuse*, align 8
  %13 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %9, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 1
  store %struct.rtl_phy* %17, %struct.rtl_phy** %10, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  store %struct.rtl_hal* %19, %struct.rtl_hal** %11, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %21)
  store %struct.rtl_efuse* %22, %struct.rtl_efuse** %12, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, 1
  store i64 %24, i64* %13, align 8
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %11, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BAND_ON_2_4G, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %4
  %31 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %32 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %31, i32 0, i32 0
  %33 = load i64**, i64*** %32, align 8
  %34 = load i64, i64* @RF90_PATH_A, align 8
  %35 = getelementptr inbounds i64*, i64** %33, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* @RF90_PATH_A, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %39, i64* %42, align 8
  %43 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %44 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %43, i32 0, i32 0
  %45 = load i64**, i64*** %44, align 8
  %46 = load i64, i64* @RF90_PATH_B, align 8
  %47 = getelementptr inbounds i64*, i64** %45, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* @RF90_PATH_B, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %51, i64* %54, align 8
  br label %62

55:                                               ; preds = %4
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* @RF90_PATH_A, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* @RF90_PATH_B, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %55, %30
  %63 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %64 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @RF_1T2R, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %70 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RF_1T1R, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %68, %62
  %75 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %76 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %75, i32 0, i32 1
  %77 = load i64**, i64*** %76, align 8
  %78 = load i64, i64* @RF90_PATH_A, align 8
  %79 = getelementptr inbounds i64*, i64** %77, i64 %78
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %13, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* @RF90_PATH_A, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 %83, i64* %86, align 8
  %87 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %88 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %87, i32 0, i32 1
  %89 = load i64**, i64*** %88, align 8
  %90 = load i64, i64* @RF90_PATH_B, align 8
  %91 = getelementptr inbounds i64*, i64** %89, i64 %90
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %8, align 8
  %97 = load i64, i64* @RF90_PATH_B, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %95, i64* %98, align 8
  br label %131

99:                                               ; preds = %68
  %100 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %101 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @RF_2T2R, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %99
  %106 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %107 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %106, i32 0, i32 2
  %108 = load i64**, i64*** %107, align 8
  %109 = load i64, i64* @RF90_PATH_A, align 8
  %110 = getelementptr inbounds i64*, i64** %108, i64 %109
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64*, i64** %8, align 8
  %116 = load i64, i64* @RF90_PATH_A, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64 %114, i64* %117, align 8
  %118 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %119 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %118, i32 0, i32 2
  %120 = load i64**, i64*** %119, align 8
  %121 = load i64, i64* @RF90_PATH_B, align 8
  %122 = getelementptr inbounds i64*, i64** %120, i64 %121
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %8, align 8
  %128 = load i64, i64* @RF90_PATH_B, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %126, i64* %129, align 8
  br label %130

130:                                              ; preds = %105, %99
  br label %131

131:                                              ; preds = %130, %74
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
