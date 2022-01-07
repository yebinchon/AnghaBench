; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_convert_txpower_dbm_to_relative_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_convert_txpower_dbm_to_relative_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32**** }

@RF90_PATH_A = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@RF_1TX = common dso_local global i64 0, align 8
@CCK = common dso_local global i32 0, align 4
@OFDM = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i64 0, align 8
@HT_MCS8_MCS15 = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"<===_rtl8723be_phy_convert_txpower_dbm_to_relative_value()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8723be_phy_convert_txpower_dbm_to_relative_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_phy_convert_txpower_dbm_to_relative_value(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  store %struct.rtl_phy* %10, %struct.rtl_phy** %4, align 8
  store i64 0, i64* %5, align 8
  %11 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %13 = load i64, i64* @BAND_ON_2_4G, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @RF_1TX, align 8
  %16 = load i32, i32* @CCK, align 4
  %17 = call i64 @_rtl8723be_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %12, i64 %13, i64 %14, i64 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %19 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %18, i32 0, i32 0
  %20 = load i32****, i32***** %19, align 8
  %21 = load i64, i64* @BAND_ON_2_4G, align 8
  %22 = getelementptr inbounds i32***, i32**** %20, i64 %21
  %23 = load i32***, i32**** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32**, i32*** %23, i64 %24
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* @RF_1TX, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %30, i32 1, i32 1, i64 %31)
  %33 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %34 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %33, i32 0, i32 0
  %35 = load i32****, i32***** %34, align 8
  %36 = load i64, i64* @BAND_ON_2_4G, align 8
  %37 = getelementptr inbounds i32***, i32**** %35, i64 %36
  %38 = load i32***, i32**** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32**, i32*** %38, i64 %39
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* @RF_1TX, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %45, i32 1, i32 3, i64 %46)
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %49 = load i64, i64* @BAND_ON_2_4G, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @RF_1TX, align 8
  %52 = load i32, i32* @OFDM, align 4
  %53 = call i64 @_rtl8723be_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %48, i64 %49, i64 %50, i64 %51, i32 %52)
  store i64 %53, i64* %5, align 8
  %54 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %55 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %54, i32 0, i32 0
  %56 = load i32****, i32***** %55, align 8
  %57 = load i64, i64* @BAND_ON_2_4G, align 8
  %58 = getelementptr inbounds i32***, i32**** %56, i64 %57
  %59 = load i32***, i32**** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds i32**, i32*** %59, i64 %60
  %62 = load i32**, i32*** %61, align 8
  %63 = load i64, i64* @RF_1TX, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %66, i32 0, i32 3, i64 %67)
  %69 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %70 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %69, i32 0, i32 0
  %71 = load i32****, i32***** %70, align 8
  %72 = load i64, i64* @BAND_ON_2_4G, align 8
  %73 = getelementptr inbounds i32***, i32**** %71, i64 %72
  %74 = load i32***, i32**** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds i32**, i32*** %74, i64 %75
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* @RF_1TX, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %81, i32 0, i32 3, i64 %82)
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %85 = load i64, i64* @BAND_ON_2_4G, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @RF_1TX, align 8
  %88 = load i32, i32* @HT_MCS0_MCS7, align 4
  %89 = call i64 @_rtl8723be_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %84, i64 %85, i64 %86, i64 %87, i32 %88)
  store i64 %89, i64* %5, align 8
  %90 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %91 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %90, i32 0, i32 0
  %92 = load i32****, i32***** %91, align 8
  %93 = load i64, i64* @BAND_ON_2_4G, align 8
  %94 = getelementptr inbounds i32***, i32**** %92, i64 %93
  %95 = load i32***, i32**** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds i32**, i32*** %95, i64 %96
  %98 = load i32**, i32*** %97, align 8
  %99 = load i64, i64* @RF_1TX, align 8
  %100 = getelementptr inbounds i32*, i32** %98, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %102, i32 0, i32 3, i64 %103)
  %105 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %106 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %105, i32 0, i32 0
  %107 = load i32****, i32***** %106, align 8
  %108 = load i64, i64* @BAND_ON_2_4G, align 8
  %109 = getelementptr inbounds i32***, i32**** %107, i64 %108
  %110 = load i32***, i32**** %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds i32**, i32*** %110, i64 %111
  %113 = load i32**, i32*** %112, align 8
  %114 = load i64, i64* @RF_1TX, align 8
  %115 = getelementptr inbounds i32*, i32** %113, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 5
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %117, i32 0, i32 3, i64 %118)
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %121 = load i64, i64* @BAND_ON_2_4G, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @RF_2TX, align 8
  %124 = load i32, i32* @HT_MCS8_MCS15, align 4
  %125 = call i64 @_rtl8723be_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %120, i64 %121, i64 %122, i64 %123, i32 %124)
  store i64 %125, i64* %5, align 8
  %126 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %127 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %126, i32 0, i32 0
  %128 = load i32****, i32***** %127, align 8
  %129 = load i64, i64* @BAND_ON_2_4G, align 8
  %130 = getelementptr inbounds i32***, i32**** %128, i64 %129
  %131 = load i32***, i32**** %130, align 8
  %132 = load i64, i64* %6, align 8
  %133 = getelementptr inbounds i32**, i32*** %131, i64 %132
  %134 = load i32**, i32*** %133, align 8
  %135 = load i64, i64* @RF_2TX, align 8
  %136 = getelementptr inbounds i32*, i32** %134, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  %139 = load i64, i64* %5, align 8
  %140 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %138, i32 0, i32 3, i64 %139)
  %141 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %142 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %141, i32 0, i32 0
  %143 = load i32****, i32***** %142, align 8
  %144 = load i64, i64* @BAND_ON_2_4G, align 8
  %145 = getelementptr inbounds i32***, i32**** %143, i64 %144
  %146 = load i32***, i32**** %145, align 8
  %147 = load i64, i64* %6, align 8
  %148 = getelementptr inbounds i32**, i32*** %146, i64 %147
  %149 = load i32**, i32*** %148, align 8
  %150 = load i64, i64* @RF_2TX, align 8
  %151 = getelementptr inbounds i32*, i32** %149, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 7
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %153, i32 0, i32 3, i64 %154)
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %157 = load i32, i32* @COMP_POWER, align 4
  %158 = load i32, i32* @DBG_TRACE, align 4
  %159 = call i32 @RT_TRACE(%struct.rtl_priv* %156, i32 %157, i32 %158, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @_rtl8723be_phy_get_txpower_by_rate_base(%struct.ieee80211_hw*, i64, i64, i64, i32) #1

declare dso_local i32 @_phy_convert_txpower_dbm_to_relative_value(i32*, i32, i32, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
