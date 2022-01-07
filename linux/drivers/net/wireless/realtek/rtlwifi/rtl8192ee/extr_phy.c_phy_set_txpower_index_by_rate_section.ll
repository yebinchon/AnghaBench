; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_set_txpower_index_by_rate_section.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_phy_set_txpower_index_by_rate_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_hal = type { i64 }

@CCK = common dso_local global i32 0, align 4
@DESC92C_RATE1M = common dso_local global i32 0, align 4
@DESC92C_RATE2M = common dso_local global i32 0, align 4
@DESC92C_RATE5_5M = common dso_local global i32 0, align 4
@DESC92C_RATE11M = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@OFDM = common dso_local global i32 0, align 4
@DESC92C_RATE6M = common dso_local global i32 0, align 4
@DESC92C_RATE9M = common dso_local global i32 0, align 4
@DESC92C_RATE12M = common dso_local global i32 0, align 4
@DESC92C_RATE18M = common dso_local global i32 0, align 4
@DESC92C_RATE24M = common dso_local global i32 0, align 4
@DESC92C_RATE36M = common dso_local global i32 0, align 4
@DESC92C_RATE48M = common dso_local global i32 0, align 4
@DESC92C_RATE54M = common dso_local global i32 0, align 4
@HT_MCS0_MCS7 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS0 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS1 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS2 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS3 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS4 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS5 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS6 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS7 = common dso_local global i32 0, align 4
@HT_MCS8_MCS15 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS8 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS9 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS10 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS11 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS12 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS13 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS14 = common dso_local global i32 0, align 4
@DESC92C_RATEMCS15 = common dso_local global i32 0, align 4
@FPHY = common dso_local global i32 0, align 4
@PHY_TXPWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid RateSection %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32)* @phy_set_txpower_index_by_rate_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_set_txpower_index_by_rate_section(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca %struct.rtl_phy*, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca [8 x i32], align 16
  %14 = alloca [8 x i32], align 16
  %15 = alloca [8 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %9, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %19 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %18)
  store %struct.rtl_hal* %19, %struct.rtl_hal** %10, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 0
  store %struct.rtl_phy* %21, %struct.rtl_phy** %11, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CCK, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %27 = load i32, i32* @DESC92C_RATE1M, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 1
  %29 = load i32, i32* @DESC92C_RATE2M, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %28, i64 1
  %31 = load i32, i32* @DESC92C_RATE5_5M, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @DESC92C_RATE11M, align 4
  store i32 %33, i32* %32, align 4
  %34 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %35 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BAND_ON_2_4G, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %25
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %43 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %47 = call i32 @phy_set_txpower_index_by_rate_array(%struct.ieee80211_hw* %40, i32 %41, i32 %44, i32 %45, i32* %46, i32 4)
  br label %48

48:                                               ; preds = %39, %25
  br label %145

49:                                               ; preds = %4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @OFDM, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %55 = load i32, i32* @DESC92C_RATE6M, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds i32, i32* %54, i64 1
  %57 = load i32, i32* @DESC92C_RATE9M, align 4
  store i32 %57, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %56, i64 1
  %59 = load i32, i32* @DESC92C_RATE12M, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds i32, i32* %58, i64 1
  %61 = load i32, i32* @DESC92C_RATE18M, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %60, i64 1
  %63 = load i32, i32* @DESC92C_RATE24M, align 4
  store i32 %63, i32* %62, align 4
  %64 = getelementptr inbounds i32, i32* %62, i64 1
  %65 = load i32, i32* @DESC92C_RATE36M, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds i32, i32* %64, i64 1
  %67 = load i32, i32* @DESC92C_RATE48M, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds i32, i32* %66, i64 1
  %69 = load i32, i32* @DESC92C_RATE54M, align 4
  store i32 %69, i32* %68, align 4
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %73 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %77 = call i32 @phy_set_txpower_index_by_rate_array(%struct.ieee80211_hw* %70, i32 %71, i32 %74, i32 %75, i32* %76, i32 8)
  br label %144

78:                                               ; preds = %49
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @HT_MCS0_MCS7, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %84 = load i32, i32* @DESC92C_RATEMCS0, align 4
  store i32 %84, i32* %83, align 4
  %85 = getelementptr inbounds i32, i32* %83, i64 1
  %86 = load i32, i32* @DESC92C_RATEMCS1, align 4
  store i32 %86, i32* %85, align 4
  %87 = getelementptr inbounds i32, i32* %85, i64 1
  %88 = load i32, i32* @DESC92C_RATEMCS2, align 4
  store i32 %88, i32* %87, align 4
  %89 = getelementptr inbounds i32, i32* %87, i64 1
  %90 = load i32, i32* @DESC92C_RATEMCS3, align 4
  store i32 %90, i32* %89, align 4
  %91 = getelementptr inbounds i32, i32* %89, i64 1
  %92 = load i32, i32* @DESC92C_RATEMCS4, align 4
  store i32 %92, i32* %91, align 4
  %93 = getelementptr inbounds i32, i32* %91, i64 1
  %94 = load i32, i32* @DESC92C_RATEMCS5, align 4
  store i32 %94, i32* %93, align 4
  %95 = getelementptr inbounds i32, i32* %93, i64 1
  %96 = load i32, i32* @DESC92C_RATEMCS6, align 4
  store i32 %96, i32* %95, align 4
  %97 = getelementptr inbounds i32, i32* %95, i64 1
  %98 = load i32, i32* @DESC92C_RATEMCS7, align 4
  store i32 %98, i32* %97, align 4
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %102 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %7, align 4
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %106 = call i32 @phy_set_txpower_index_by_rate_array(%struct.ieee80211_hw* %99, i32 %100, i32 %103, i32 %104, i32* %105, i32 8)
  br label %143

107:                                              ; preds = %78
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @HT_MCS8_MCS15, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %113 = load i32, i32* @DESC92C_RATEMCS8, align 4
  store i32 %113, i32* %112, align 4
  %114 = getelementptr inbounds i32, i32* %112, i64 1
  %115 = load i32, i32* @DESC92C_RATEMCS9, align 4
  store i32 %115, i32* %114, align 4
  %116 = getelementptr inbounds i32, i32* %114, i64 1
  %117 = load i32, i32* @DESC92C_RATEMCS10, align 4
  store i32 %117, i32* %116, align 4
  %118 = getelementptr inbounds i32, i32* %116, i64 1
  %119 = load i32, i32* @DESC92C_RATEMCS11, align 4
  store i32 %119, i32* %118, align 4
  %120 = getelementptr inbounds i32, i32* %118, i64 1
  %121 = load i32, i32* @DESC92C_RATEMCS12, align 4
  store i32 %121, i32* %120, align 4
  %122 = getelementptr inbounds i32, i32* %120, i64 1
  %123 = load i32, i32* @DESC92C_RATEMCS13, align 4
  store i32 %123, i32* %122, align 4
  %124 = getelementptr inbounds i32, i32* %122, i64 1
  %125 = load i32, i32* @DESC92C_RATEMCS14, align 4
  store i32 %125, i32* %124, align 4
  %126 = getelementptr inbounds i32, i32* %124, i64 1
  %127 = load i32, i32* @DESC92C_RATEMCS15, align 4
  store i32 %127, i32* %126, align 4
  %128 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %131 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %135 = call i32 @phy_set_txpower_index_by_rate_array(%struct.ieee80211_hw* %128, i32 %129, i32 %132, i32 %133, i32* %134, i32 8)
  br label %142

136:                                              ; preds = %107
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %138 = load i32, i32* @FPHY, align 4
  %139 = load i32, i32* @PHY_TXPWR, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @RT_TRACE(%struct.rtl_priv* %137, i32 %138, i32 %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %136, %111
  br label %143

143:                                              ; preds = %142, %82
  br label %144

144:                                              ; preds = %143, %53
  br label %145

145:                                              ; preds = %144, %48
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @phy_set_txpower_index_by_rate_array(%struct.ieee80211_hw*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
