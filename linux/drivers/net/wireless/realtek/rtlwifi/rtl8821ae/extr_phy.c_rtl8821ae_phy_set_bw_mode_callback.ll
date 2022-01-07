; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_set_bw_mode_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c_rtl8821ae_phy_set_bw_mode_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32, i32, i32, i32 }

@COMP_SCAN = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Switch to %s bandwidth\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"20MHz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"40MHz\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"80MHz\00", align 1
@RRFMOD = common dso_local global i32 0, align 4
@RADC_BUF_CLK = common dso_local global i32 0, align 4
@RF_2T2R = common dso_local global i32 0, align 4
@RL1PEAKTH = common dso_local global i32 0, align 4
@RCCAONSEC = common dso_local global i32 0, align 4
@VHT_DATA_SC_20_UPPER_OF_80MHZ = common dso_local global i32 0, align 4
@RCCK_SYSTEM = common dso_local global i32 0, align 4
@BCCK_SYSTEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown bandwidth: %#X\0A\00", align 1
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_phy_set_bw_mode_callback(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 0
  store %struct.rtl_phy* %10, %struct.rtl_phy** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = load i32, i32* @COMP_SCAN, align 4
  %13 = load i32, i32* @DBG_TRACE, align 4
  %14 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 130
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 129
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  br label %26

26:                                               ; preds = %19, %18
  %27 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %18 ], [ %25, %19 ]
  %28 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %31 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @_rtl8821ae_phy_set_reg_bw(%struct.rtl_priv* %29, i32 %32)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = call i32 @_rtl8821ae_phy_get_secondary_chnl(%struct.rtl_priv* %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @rtl_write_byte(%struct.rtl_priv* %36, i32 1155, i32 %37)
  %39 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %40 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %152 [
    i32 130, label %42
    i32 129, label %64
    i32 128, label %115
  ]

42:                                               ; preds = %26
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %44 = load i32, i32* @RRFMOD, align 4
  %45 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %43, i32 %44, i32 3146691, i32 3146240)
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %47 = load i32, i32* @RADC_BUF_CLK, align 4
  %48 = call i32 @BIT(i32 30)
  %49 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %46, i32 %47, i32 %48, i32 0)
  %50 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %51 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @RF_2T2R, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %57 = load i32, i32* @RL1PEAKTH, align 4
  %58 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %56, i32 %57, i32 62914560, i32 7)
  br label %63

59:                                               ; preds = %42
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %61 = load i32, i32* @RL1PEAKTH, align 4
  %62 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %60, i32 %61, i32 62914560, i32 8)
  br label %63

63:                                               ; preds = %59, %55
  br label %157

64:                                               ; preds = %26
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = load i32, i32* @RRFMOD, align 4
  %67 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %65, i32 %66, i32 3146691, i32 3146241)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = load i32, i32* @RADC_BUF_CLK, align 4
  %70 = call i32 @BIT(i32 30)
  %71 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %68, i32 %69, i32 %70, i32 0)
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = load i32, i32* @RRFMOD, align 4
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %72, i32 %73, i32 60, i32 %74)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = load i32, i32* @RCCAONSEC, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %76, i32 %77, i32 -268435456, i32 %78)
  %80 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %81 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @BIT(i32 2)
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %64
  store i32 6, i32* %6, align 4
  br label %96

87:                                               ; preds = %64
  %88 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %89 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RF_2T2R, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 7, i32* %6, align 4
  br label %95

94:                                               ; preds = %87
  store i32 8, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %93
  br label %96

96:                                               ; preds = %95, %86
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %98 = load i32, i32* @RL1PEAKTH, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %97, i32 %98, i32 62914560, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @VHT_DATA_SC_20_UPPER_OF_80MHZ, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %106 = load i32, i32* @RCCK_SYSTEM, align 4
  %107 = load i32, i32* @BCCK_SYSTEM, align 4
  %108 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %105, i32 %106, i32 %107, i32 1)
  br label %114

109:                                              ; preds = %96
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %111 = load i32, i32* @RCCK_SYSTEM, align 4
  %112 = load i32, i32* @BCCK_SYSTEM, align 4
  %113 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %110, i32 %111, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %109, %104
  br label %157

115:                                              ; preds = %26
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = load i32, i32* @RRFMOD, align 4
  %118 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %116, i32 %117, i32 3146691, i32 3146242)
  %119 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %120 = load i32, i32* @RADC_BUF_CLK, align 4
  %121 = call i32 @BIT(i32 30)
  %122 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %119, i32 %120, i32 %121, i32 1)
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %124 = load i32, i32* @RRFMOD, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %123, i32 %124, i32 60, i32 %125)
  %127 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %128 = load i32, i32* @RCCAONSEC, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %127, i32 %128, i32 -268435456, i32 %129)
  %131 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %132 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @BIT(i32 2)
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %115
  store i32 5, i32* %6, align 4
  br label %147

138:                                              ; preds = %115
  %139 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %140 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @RF_2T2R, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 6, i32* %6, align 4
  br label %146

145:                                              ; preds = %138
  store i32 7, i32* %6, align 4
  br label %146

146:                                              ; preds = %145, %144
  br label %147

147:                                              ; preds = %146, %137
  %148 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %149 = load i32, i32* @RL1PEAKTH, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %148, i32 %149, i32 62914560, i32 %150)
  br label %157

152:                                              ; preds = %26
  %153 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %154 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %152, %147, %114, %63
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %159 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %160 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %163 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @rtl8812ae_fixspur(%struct.ieee80211_hw* %158, i32 %161, i32 %164)
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %167 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %168 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @rtl8821ae_phy_rf6052_set_bandwidth(%struct.ieee80211_hw* %166, i32 %169)
  %171 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %172 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %171, i32 0, i32 2
  store i32 0, i32* %172, align 4
  %173 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %174 = load i32, i32* @COMP_SCAN, align 4
  %175 = load i32, i32* @DBG_LOUD, align 4
  %176 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %173, i32 %174, i32 %175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @_rtl8821ae_phy_set_reg_bw(%struct.rtl_priv*, i32) #1

declare dso_local i32 @_rtl8821ae_phy_get_secondary_chnl(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @rtl8812ae_fixspur(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8821ae_phy_rf6052_set_bandwidth(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
