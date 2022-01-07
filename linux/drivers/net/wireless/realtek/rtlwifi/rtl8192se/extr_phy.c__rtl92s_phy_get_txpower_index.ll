; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_get_txpower_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c__rtl92s_phy_get_txpower_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64 }
%struct.rtl_efuse = type { i64**, i64**, i64** }

@RF_1T2R = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64, i64*, i64*)* @_rtl92s_phy_get_txpower_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92s_phy_get_txpower_index(%struct.ieee80211_hw* %0, i64 %1, i64* %2, i64* %3) #0 {
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
  %25 = getelementptr inbounds i64*, i64** %24, i64 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %33 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %32, i32 0, i32 0
  %34 = load i64**, i64*** %33, align 8
  %35 = getelementptr inbounds i64*, i64** %34, i64 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %43 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RF_1T2R, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %4
  %48 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %49 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RF_1T1R, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %47, %4
  %54 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %55 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %54, i32 0, i32 1
  %56 = load i64**, i64*** %55, align 8
  %57 = getelementptr inbounds i64*, i64** %56, i64 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %65 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %64, i32 0, i32 1
  %66 = load i64**, i64*** %65, align 8
  %67 = getelementptr inbounds i64*, i64** %66, i64 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  store i64 %71, i64* %73, align 8
  br label %107

74:                                               ; preds = %47
  %75 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %76 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RF_2T2R, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %74
  %81 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %82 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %81, i32 0, i32 2
  %83 = load i64**, i64*** %82, align 8
  %84 = getelementptr inbounds i64*, i64** %83, i64 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.rtl_efuse*, %struct.rtl_efuse** %11, align 8
  %92 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %91, i32 0, i32 2
  %93 = load i64**, i64*** %92, align 8
  %94 = getelementptr inbounds i64*, i64** %93, i64 1
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %12, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  store i64 %98, i64* %100, align 8
  br label %106

101:                                              ; preds = %74
  %102 = load i64*, i64** %8, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  store i64 0, i64* %103, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %80
  br label %107

107:                                              ; preds = %106, %53
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
