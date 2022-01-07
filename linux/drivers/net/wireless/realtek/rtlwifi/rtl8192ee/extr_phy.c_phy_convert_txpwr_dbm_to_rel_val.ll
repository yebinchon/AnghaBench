; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_convert_txpwr_dbm_to_rel_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_convert_txpwr_dbm_to_rel_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32**** }

@BAND_ON_2_4G = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@RF_1TX = common dso_local global i64 0, align 8
@CCK = common dso_local global i32 0, align 4
@OFDM = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i64 0, align 8
@HT_MCS8_MCS15 = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"<==phy_convert_txpwr_dbm_to_rel_val()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @phy_convert_txpwr_dbm_to_rel_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_convert_txpwr_dbm_to_rel_val(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  store %struct.rtl_phy* %11, %struct.rtl_phy** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i64, i64* @BAND_ON_2_4G, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %210, %1
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @RF90_PATH_B, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %213

18:                                               ; preds = %14
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @RF90_PATH_A, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @RF_1TX, align 8
  %27 = load i32, i32* @CCK, align 4
  %28 = call i64 @_rtl92ee_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %23, i64 %24, i64 %25, i64 %26, i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %29, i32 0, i32 0
  %31 = load i32****, i32***** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32***, i32**** %31, i64 %32
  %34 = load i32***, i32**** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32**, i32*** %34, i64 %35
  %37 = load i32**, i32*** %36, align 8
  %38 = load i64, i64* @RF_1TX, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %41, i32 1, i32 1, i64 %42)
  %44 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %45 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %44, i32 0, i32 0
  %46 = load i32****, i32***** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32***, i32**** %46, i64 %47
  %49 = load i32***, i32**** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32**, i32*** %49, i64 %50
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @RF_1TX, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 3
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %56, i32 1, i32 3, i64 %57)
  br label %101

59:                                               ; preds = %18
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @RF90_PATH_B, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @RF_1TX, align 8
  %68 = load i32, i32* @CCK, align 4
  %69 = call i64 @_rtl92ee_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %64, i64 %65, i64 %66, i64 %67, i32 %68)
  store i64 %69, i64* %5, align 8
  %70 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %70, i32 0, i32 0
  %72 = load i32****, i32***** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i32***, i32**** %72, i64 %73
  %75 = load i32***, i32**** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i32**, i32*** %75, i64 %76
  %78 = load i32**, i32*** %77, align 8
  %79 = load i64, i64* @RF_1TX, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %82, i32 0, i32 0, i64 %83)
  %85 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %86 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %85, i32 0, i32 0
  %87 = load i32****, i32***** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds i32***, i32**** %87, i64 %88
  %90 = load i32***, i32**** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds i32**, i32*** %90, i64 %91
  %93 = load i32**, i32*** %92, align 8
  %94 = load i64, i64* @RF_1TX, align 8
  %95 = getelementptr inbounds i32*, i32** %93, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i64, i64* %5, align 8
  %99 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %97, i32 1, i32 3, i64 %98)
  br label %100

100:                                              ; preds = %63, %59
  br label %101

101:                                              ; preds = %100, %22
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @RF_1TX, align 8
  %106 = load i32, i32* @OFDM, align 4
  %107 = call i64 @_rtl92ee_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %102, i64 %103, i64 %104, i64 %105, i32 %106)
  store i64 %107, i64* %5, align 8
  %108 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %109 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %108, i32 0, i32 0
  %110 = load i32****, i32***** %109, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds i32***, i32**** %110, i64 %111
  %113 = load i32***, i32**** %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds i32**, i32*** %113, i64 %114
  %116 = load i32**, i32*** %115, align 8
  %117 = load i64, i64* @RF_1TX, align 8
  %118 = getelementptr inbounds i32*, i32** %116, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i64, i64* %5, align 8
  %122 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %120, i32 0, i32 3, i64 %121)
  %123 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %124 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %123, i32 0, i32 0
  %125 = load i32****, i32***** %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds i32***, i32**** %125, i64 %126
  %128 = load i32***, i32**** %127, align 8
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds i32**, i32*** %128, i64 %129
  %131 = load i32**, i32*** %130, align 8
  %132 = load i64, i64* @RF_1TX, align 8
  %133 = getelementptr inbounds i32*, i32** %131, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i64, i64* %5, align 8
  %137 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %135, i32 0, i32 3, i64 %136)
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* @RF_1TX, align 8
  %142 = load i32, i32* @HT_MCS0_MCS7, align 4
  %143 = call i64 @_rtl92ee_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %138, i64 %139, i64 %140, i64 %141, i32 %142)
  store i64 %143, i64* %5, align 8
  %144 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %145 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %144, i32 0, i32 0
  %146 = load i32****, i32***** %145, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds i32***, i32**** %146, i64 %147
  %149 = load i32***, i32**** %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = getelementptr inbounds i32**, i32*** %149, i64 %150
  %152 = load i32**, i32*** %151, align 8
  %153 = load i64, i64* @RF_1TX, align 8
  %154 = getelementptr inbounds i32*, i32** %152, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  %157 = load i64, i64* %5, align 8
  %158 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %156, i32 0, i32 3, i64 %157)
  %159 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %160 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %159, i32 0, i32 0
  %161 = load i32****, i32***** %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = getelementptr inbounds i32***, i32**** %161, i64 %162
  %164 = load i32***, i32**** %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds i32**, i32*** %164, i64 %165
  %167 = load i32**, i32*** %166, align 8
  %168 = load i64, i64* @RF_1TX, align 8
  %169 = getelementptr inbounds i32*, i32** %167, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 5
  %172 = load i64, i64* %5, align 8
  %173 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %171, i32 0, i32 3, i64 %172)
  %174 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* %6, align 8
  %177 = load i64, i64* @RF_2TX, align 8
  %178 = load i32, i32* @HT_MCS8_MCS15, align 4
  %179 = call i64 @_rtl92ee_phy_get_txpower_by_rate_base(%struct.ieee80211_hw* %174, i64 %175, i64 %176, i64 %177, i32 %178)
  store i64 %179, i64* %5, align 8
  %180 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %181 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %180, i32 0, i32 0
  %182 = load i32****, i32***** %181, align 8
  %183 = load i64, i64* %7, align 8
  %184 = getelementptr inbounds i32***, i32**** %182, i64 %183
  %185 = load i32***, i32**** %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = getelementptr inbounds i32**, i32*** %185, i64 %186
  %188 = load i32**, i32*** %187, align 8
  %189 = load i64, i64* @RF_2TX, align 8
  %190 = getelementptr inbounds i32*, i32** %188, i64 %189
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 6
  %193 = load i64, i64* %5, align 8
  %194 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %192, i32 0, i32 3, i64 %193)
  %195 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %196 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %195, i32 0, i32 0
  %197 = load i32****, i32***** %196, align 8
  %198 = load i64, i64* %7, align 8
  %199 = getelementptr inbounds i32***, i32**** %197, i64 %198
  %200 = load i32***, i32**** %199, align 8
  %201 = load i64, i64* %6, align 8
  %202 = getelementptr inbounds i32**, i32*** %200, i64 %201
  %203 = load i32**, i32*** %202, align 8
  %204 = load i64, i64* @RF_2TX, align 8
  %205 = getelementptr inbounds i32*, i32** %203, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 7
  %208 = load i64, i64* %5, align 8
  %209 = call i32 @_phy_convert_txpower_dbm_to_relative_value(i32* %207, i32 0, i32 3, i64 %208)
  br label %210

210:                                              ; preds = %101
  %211 = load i64, i64* %6, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %6, align 8
  br label %14

213:                                              ; preds = %14
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %215 = load i32, i32* @COMP_POWER, align 4
  %216 = load i32, i32* @DBG_TRACE, align 4
  %217 = call i32 @RT_TRACE(%struct.rtl_priv* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @_rtl92ee_phy_get_txpower_by_rate_base(%struct.ieee80211_hw*, i64, i64, i64, i32) #1

declare dso_local i32 @_phy_convert_txpower_dbm_to_relative_value(i32*, i32, i32, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
