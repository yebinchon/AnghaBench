; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_get_txpower_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_get_txpower_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_efuse = type { i64**, i64**, i64** }

@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@RF_1T2R = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64*, i64*)* @_rtl8723e_get_txpower_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723e_get_txpower_index(%struct.ieee80211_hw* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca %struct.rtl_efuse*, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %9, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  store %struct.rtl_phy* %16, %struct.rtl_phy** %10, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %18)
  store %struct.rtl_efuse* %19, %struct.rtl_efuse** %11, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  store i64 %21, i64* %12, align 8
  %22 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %23 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %22, i32 0, i32 0
  %24 = load i64**, i64*** %23, align 8
  %25 = load i64, i64* @RF90_PATH_A, align 8
  %26 = getelementptr inbounds i64*, i64** %24, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* @RF90_PATH_A, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %30, i64* %33, align 8
  %34 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %35 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %34, i32 0, i32 0
  %36 = load i64**, i64*** %35, align 8
  %37 = load i64, i64* @RF90_PATH_B, align 8
  %38 = getelementptr inbounds i64*, i64** %36, i64 %37
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* @RF90_PATH_B, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %42, i64* %45, align 8
  %46 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %47 = call i64 @get_rf_type(%struct.rtl_phy* %46)
  %48 = load i64, i64* @RF_1T2R, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %4
  %51 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %52 = call i64 @get_rf_type(%struct.rtl_phy* %51)
  %53 = load i64, i64* @RF_1T1R, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %50, %4
  %56 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %57 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %56, i32 0, i32 1
  %58 = load i64**, i64*** %57, align 8
  %59 = load i64, i64* @RF90_PATH_A, align 8
  %60 = getelementptr inbounds i64*, i64** %58, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* @RF90_PATH_A, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %64, i64* %67, align 8
  %68 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %69 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %68, i32 0, i32 1
  %70 = load i64**, i64*** %69, align 8
  %71 = load i64, i64* @RF90_PATH_B, align 8
  %72 = getelementptr inbounds i64*, i64** %70, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* @RF90_PATH_B, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %79, align 8
  br label %111

80:                                               ; preds = %50
  %81 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %82 = call i64 @get_rf_type(%struct.rtl_phy* %81)
  %83 = load i64, i64* @RF_2T2R, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %87 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %86, i32 0, i32 2
  %88 = load i64**, i64*** %87, align 8
  %89 = load i64, i64* @RF90_PATH_A, align 8
  %90 = getelementptr inbounds i64*, i64** %88, i64 %89
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = load i64, i64* @RF90_PATH_A, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %94, i64* %97, align 8
  %98 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %99 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %98, i32 0, i32 2
  %100 = load i64**, i64*** %99, align 8
  %101 = load i64, i64* @RF90_PATH_B, align 8
  %102 = getelementptr inbounds i64*, i64** %100, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* @RF90_PATH_B, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %106, i64* %109, align 8
  br label %110

110:                                              ; preds = %85, %80
  br label %111

111:                                              ; preds = %110, %55
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i64 @get_rf_type(%struct.rtl_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
