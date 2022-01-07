; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_set_txpower_level_by_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_set_txpower_level_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32 }

@DESC_RATE1M = common dso_local global i32 0, align 4
@DESC_RATE2M = common dso_local global i32 0, align 4
@DESC_RATE5_5M = common dso_local global i32 0, align 4
@DESC_RATE11M = common dso_local global i32 0, align 4
@DESC_RATE6M = common dso_local global i32 0, align 4
@DESC_RATE9M = common dso_local global i32 0, align 4
@DESC_RATE12M = common dso_local global i32 0, align 4
@DESC_RATE18M = common dso_local global i32 0, align 4
@DESC_RATE24M = common dso_local global i32 0, align 4
@DESC_RATE36M = common dso_local global i32 0, align 4
@DESC_RATE48M = common dso_local global i32 0, align 4
@DESC_RATE54M = common dso_local global i32 0, align 4
@DESC_RATEMCS0 = common dso_local global i32 0, align 4
@DESC_RATEMCS1 = common dso_local global i32 0, align 4
@DESC_RATEMCS2 = common dso_local global i32 0, align 4
@DESC_RATEMCS3 = common dso_local global i32 0, align 4
@DESC_RATEMCS4 = common dso_local global i32 0, align 4
@DESC_RATEMCS5 = common dso_local global i32 0, align 4
@DESC_RATEMCS6 = common dso_local global i32 0, align 4
@DESC_RATEMCS7 = common dso_local global i32 0, align 4
@DESC_RATEMCS8 = common dso_local global i32 0, align 4
@DESC_RATEMCS9 = common dso_local global i32 0, align 4
@DESC_RATEMCS10 = common dso_local global i32 0, align 4
@DESC_RATEMCS11 = common dso_local global i32 0, align 4
@DESC_RATEMCS12 = common dso_local global i32 0, align 4
@DESC_RATEMCS13 = common dso_local global i32 0, align 4
@DESC_RATEMCS14 = common dso_local global i32 0, align 4
@DESC_RATEMCS15 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS0 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS1 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS2 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS3 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS4 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS5 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS6 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS7 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS8 = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS9 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS0 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS1 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS2 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS3 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS4 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS5 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS6 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS7 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS8 = common dso_local global i32 0, align 4
@DESC_RATEVHT2SS_MCS9 = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.rtl_phy*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca [8 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca [10 x i32], align 16
  %19 = alloca [10 x i32], align 16
  %20 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %22)
  store %struct.rtl_hal* %23, %struct.rtl_hal** %7, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  store %struct.rtl_priv* %25, %struct.rtl_priv** %8, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
  store %struct.rtl_phy* %27, %struct.rtl_phy** %9, align 8
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %29 = load i32, i32* @DESC_RATE1M, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @DESC_RATE2M, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @DESC_RATE5_5M, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @DESC_RATE11M, align 4
  store i32 %35, i32* %34, align 4
  store i32 4, i32* %11, align 4
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %37 = load i32, i32* @DESC_RATE6M, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @DESC_RATE9M, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @DESC_RATE12M, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %40, i64 1
  %43 = load i32, i32* @DESC_RATE18M, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  %45 = load i32, i32* @DESC_RATE24M, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @DESC_RATE36M, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* @DESC_RATE48M, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds i32, i32* %48, i64 1
  %51 = load i32, i32* @DESC_RATE54M, align 4
  store i32 %51, i32* %50, align 4
  store i32 8, i32* %13, align 4
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %53 = load i32, i32* @DESC_RATEMCS0, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %52, i64 1
  %55 = load i32, i32* @DESC_RATEMCS1, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds i32, i32* %54, i64 1
  %57 = load i32, i32* @DESC_RATEMCS2, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  %59 = load i32, i32* @DESC_RATEMCS3, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 1
  %61 = load i32, i32* @DESC_RATEMCS4, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %60, i64 1
  %63 = load i32, i32* @DESC_RATEMCS5, align 4
  store i32 %63, i32* %62, align 4
  %64 = getelementptr inbounds i32, i32* %62, i64 1
  %65 = load i32, i32* @DESC_RATEMCS6, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds i32, i32* %64, i64 1
  %67 = load i32, i32* @DESC_RATEMCS7, align 4
  store i32 %67, i32* %66, align 4
  store i32 8, i32* %15, align 4
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %69 = load i32, i32* @DESC_RATEMCS8, align 4
  store i32 %69, i32* %68, align 4
  %70 = getelementptr inbounds i32, i32* %68, i64 1
  %71 = load i32, i32* @DESC_RATEMCS9, align 4
  store i32 %71, i32* %70, align 4
  %72 = getelementptr inbounds i32, i32* %70, i64 1
  %73 = load i32, i32* @DESC_RATEMCS10, align 4
  store i32 %73, i32* %72, align 4
  %74 = getelementptr inbounds i32, i32* %72, i64 1
  %75 = load i32, i32* @DESC_RATEMCS11, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds i32, i32* %74, i64 1
  %77 = load i32, i32* @DESC_RATEMCS12, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds i32, i32* %76, i64 1
  %79 = load i32, i32* @DESC_RATEMCS13, align 4
  store i32 %79, i32* %78, align 4
  %80 = getelementptr inbounds i32, i32* %78, i64 1
  %81 = load i32, i32* @DESC_RATEMCS14, align 4
  store i32 %81, i32* %80, align 4
  %82 = getelementptr inbounds i32, i32* %80, i64 1
  %83 = load i32, i32* @DESC_RATEMCS15, align 4
  store i32 %83, i32* %82, align 4
  store i32 8, i32* %17, align 4
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i64 0, i64 0
  %85 = load i32, i32* @DESC_RATEVHT1SS_MCS0, align 4
  store i32 %85, i32* %84, align 4
  %86 = getelementptr inbounds i32, i32* %84, i64 1
  %87 = load i32, i32* @DESC_RATEVHT1SS_MCS1, align 4
  store i32 %87, i32* %86, align 4
  %88 = getelementptr inbounds i32, i32* %86, i64 1
  %89 = load i32, i32* @DESC_RATEVHT1SS_MCS2, align 4
  store i32 %89, i32* %88, align 4
  %90 = getelementptr inbounds i32, i32* %88, i64 1
  %91 = load i32, i32* @DESC_RATEVHT1SS_MCS3, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds i32, i32* %90, i64 1
  %93 = load i32, i32* @DESC_RATEVHT1SS_MCS4, align 4
  store i32 %93, i32* %92, align 4
  %94 = getelementptr inbounds i32, i32* %92, i64 1
  %95 = load i32, i32* @DESC_RATEVHT1SS_MCS5, align 4
  store i32 %95, i32* %94, align 4
  %96 = getelementptr inbounds i32, i32* %94, i64 1
  %97 = load i32, i32* @DESC_RATEVHT1SS_MCS6, align 4
  store i32 %97, i32* %96, align 4
  %98 = getelementptr inbounds i32, i32* %96, i64 1
  %99 = load i32, i32* @DESC_RATEVHT1SS_MCS7, align 4
  store i32 %99, i32* %98, align 4
  %100 = getelementptr inbounds i32, i32* %98, i64 1
  %101 = load i32, i32* @DESC_RATEVHT1SS_MCS8, align 4
  store i32 %101, i32* %100, align 4
  %102 = getelementptr inbounds i32, i32* %100, i64 1
  %103 = load i32, i32* @DESC_RATEVHT1SS_MCS9, align 4
  store i32 %103, i32* %102, align 4
  %104 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 0
  %105 = load i32, i32* @DESC_RATEVHT2SS_MCS0, align 4
  store i32 %105, i32* %104, align 4
  %106 = getelementptr inbounds i32, i32* %104, i64 1
  %107 = load i32, i32* @DESC_RATEVHT2SS_MCS1, align 4
  store i32 %107, i32* %106, align 4
  %108 = getelementptr inbounds i32, i32* %106, i64 1
  %109 = load i32, i32* @DESC_RATEVHT2SS_MCS2, align 4
  store i32 %109, i32* %108, align 4
  %110 = getelementptr inbounds i32, i32* %108, i64 1
  %111 = load i32, i32* @DESC_RATEVHT2SS_MCS3, align 4
  store i32 %111, i32* %110, align 4
  %112 = getelementptr inbounds i32, i32* %110, i64 1
  %113 = load i32, i32* @DESC_RATEVHT2SS_MCS4, align 4
  store i32 %113, i32* %112, align 4
  %114 = getelementptr inbounds i32, i32* %112, i64 1
  %115 = load i32, i32* @DESC_RATEVHT2SS_MCS5, align 4
  store i32 %115, i32* %114, align 4
  %116 = getelementptr inbounds i32, i32* %114, i64 1
  %117 = load i32, i32* @DESC_RATEVHT2SS_MCS6, align 4
  store i32 %117, i32* %116, align 4
  %118 = getelementptr inbounds i32, i32* %116, i64 1
  %119 = load i32, i32* @DESC_RATEVHT2SS_MCS7, align 4
  store i32 %119, i32* %118, align 4
  %120 = getelementptr inbounds i32, i32* %118, i64 1
  %121 = load i32, i32* @DESC_RATEVHT2SS_MCS8, align 4
  store i32 %121, i32* %120, align 4
  %122 = getelementptr inbounds i32, i32* %120, i64 1
  %123 = load i32, i32* @DESC_RATEVHT2SS_MCS9, align 4
  store i32 %123, i32* %122, align 4
  store i32 10, i32* %20, align 4
  %124 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %125 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @BAND_ON_2_4G, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %3
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @_rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %130, i32* %131, i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %129, %3
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @_rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %137, i32* %138, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @_rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %143, i32* %144, i32 %145, i32 %146, i32 %147)
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i64 0, i64 0
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %20, align 4
  %154 = call i32 @_rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %149, i32* %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.rtl_phy*, %struct.rtl_phy** %9, align 8
  %156 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp sge i32 %157, 2
  br i1 %158, label %159, label %172

159:                                              ; preds = %136
  %160 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %17, align 4
  %165 = call i32 @_rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %160, i32* %161, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %167 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 0
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %20, align 4
  %171 = call i32 @_rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %166, i32* %167, i32 %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %159, %136
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %174 = load %struct.rtl_phy*, %struct.rtl_phy** %9, align 8
  %175 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @_rtl8821ae_phy_txpower_training_by_path(%struct.ieee80211_hw* %173, i32 %176, i32 %177, i32 %178)
  ret void
}

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw*, i32*, i32, i32, i32) #1

declare dso_local i32 @_rtl8821ae_phy_txpower_training_by_path(%struct.ieee80211_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
