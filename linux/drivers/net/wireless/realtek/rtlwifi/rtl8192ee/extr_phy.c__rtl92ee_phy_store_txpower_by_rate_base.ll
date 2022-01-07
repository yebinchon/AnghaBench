; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_store_txpower_by_rate_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c__rtl92ee_phy_store_txpower_by_rate_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32**** }

@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_B = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@RF_1TX = common dso_local global i64 0, align 8
@CCK = common dso_local global i32 0, align 4
@OFDM = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@RF_2TX = common dso_local global i64 0, align 8
@HT_MCS8_MCS15 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92ee_phy_store_txpower_by_rate_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_phy_store_txpower_by_rate_base(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  store %struct.rtl_phy* %11, %struct.rtl_phy** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %179, %1
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @RF90_PATH_B, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %182

17:                                               ; preds = %13
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @RF90_PATH_A, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %23 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %22, i32 0, i32 0
  %24 = load i32****, i32***** %23, align 8
  %25 = load i64, i64* @BAND_ON_2_4G, align 8
  %26 = getelementptr inbounds i32***, i32**** %24, i64 %25
  %27 = load i32***, i32**** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32**, i32*** %27, i64 %28
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* @RF_1TX, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 24
  %37 = and i32 %36, 255
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 4
  %40 = mul nsw i32 %39, 10
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 15
  %43 = add nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %6, align 8
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %46 = load i64, i64* @BAND_ON_2_4G, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* @CCK, align 4
  %49 = load i64, i64* @RF_1TX, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @_rtl92ee_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %45, i64 %46, i64 %47, i32 %48, i64 %49, i64 %50)
  br label %88

52:                                               ; preds = %17
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @RF90_PATH_B, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %58 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %57, i32 0, i32 0
  %59 = load i32****, i32***** %58, align 8
  %60 = load i64, i64* @BAND_ON_2_4G, align 8
  %61 = getelementptr inbounds i32***, i32**** %59, i64 %60
  %62 = load i32***, i32**** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i32**, i32*** %62, i64 %63
  %65 = load i32**, i32*** %64, align 8
  %66 = load i64, i64* @RF_1TX, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 0
  %72 = and i32 %71, 255
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = ashr i32 %73, 4
  %75 = mul nsw i32 %74, 10
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 15
  %78 = add nsw i32 %75, %77
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %6, align 8
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = load i64, i64* @BAND_ON_2_4G, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* @CCK, align 4
  %84 = load i64, i64* @RF_1TX, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @_rtl92ee_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %80, i64 %81, i64 %82, i32 %83, i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %56, %52
  br label %88

88:                                               ; preds = %87, %21
  %89 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %90 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %89, i32 0, i32 0
  %91 = load i32****, i32***** %90, align 8
  %92 = load i64, i64* @BAND_ON_2_4G, align 8
  %93 = getelementptr inbounds i32***, i32**** %91, i64 %92
  %94 = load i32***, i32**** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds i32**, i32*** %94, i64 %95
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* @RF_1TX, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 24
  %104 = and i32 %103, 255
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = ashr i32 %105, 4
  %107 = mul nsw i32 %106, 10
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, 15
  %110 = add nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %6, align 8
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %113 = load i64, i64* @BAND_ON_2_4G, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i32, i32* @OFDM, align 4
  %116 = load i64, i64* @RF_1TX, align 8
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @_rtl92ee_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %112, i64 %113, i64 %114, i32 %115, i64 %116, i64 %117)
  %119 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %120 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %119, i32 0, i32 0
  %121 = load i32****, i32***** %120, align 8
  %122 = load i64, i64* @BAND_ON_2_4G, align 8
  %123 = getelementptr inbounds i32***, i32**** %121, i64 %122
  %124 = load i32***, i32**** %123, align 8
  %125 = load i64, i64* %7, align 8
  %126 = getelementptr inbounds i32**, i32*** %124, i64 %125
  %127 = load i32**, i32*** %126, align 8
  %128 = load i64, i64* @RF_1TX, align 8
  %129 = getelementptr inbounds i32*, i32** %127, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 5
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 24
  %134 = and i32 %133, 255
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = ashr i32 %135, 4
  %137 = mul nsw i32 %136, 10
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, 15
  %140 = add nsw i32 %137, %139
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %6, align 8
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %143 = load i64, i64* @BAND_ON_2_4G, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i32, i32* @HT_MCS0_MCS7, align 4
  %146 = load i64, i64* @RF_1TX, align 8
  %147 = load i64, i64* %6, align 8
  %148 = call i32 @_rtl92ee_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %142, i64 %143, i64 %144, i32 %145, i64 %146, i64 %147)
  %149 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %150 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %149, i32 0, i32 0
  %151 = load i32****, i32***** %150, align 8
  %152 = load i64, i64* @BAND_ON_2_4G, align 8
  %153 = getelementptr inbounds i32***, i32**** %151, i64 %152
  %154 = load i32***, i32**** %153, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds i32**, i32*** %154, i64 %155
  %157 = load i32**, i32*** %156, align 8
  %158 = load i64, i64* @RF_2TX, align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 7
  %162 = load i32, i32* %161, align 4
  %163 = ashr i32 %162, 24
  %164 = and i32 %163, 255
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = ashr i32 %165, 4
  %167 = mul nsw i32 %166, 10
  %168 = load i32, i32* %5, align 4
  %169 = and i32 %168, 15
  %170 = add nsw i32 %167, %169
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %6, align 8
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %173 = load i64, i64* @BAND_ON_2_4G, align 8
  %174 = load i64, i64* %7, align 8
  %175 = load i32, i32* @HT_MCS8_MCS15, align 4
  %176 = load i64, i64* @RF_2TX, align 8
  %177 = load i64, i64* %6, align 8
  %178 = call i32 @_rtl92ee_phy_set_txpower_by_rate_base(%struct.ieee80211_hw* %172, i64 %173, i64 %174, i32 %175, i64 %176, i64 %177)
  br label %179

179:                                              ; preds = %88
  %180 = load i64, i64* %7, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %7, align 8
  br label %13

182:                                              ; preds = %13
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ee_phy_set_txpower_by_rate_base(%struct.ieee80211_hw*, i64, i64, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
