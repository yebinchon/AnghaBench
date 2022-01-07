; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_reload_imr_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c__rtl92d_phy_reload_imr_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@MAX_RF_IMR_INDEX = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"====>path %d\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"====>5G\0A\00", align 1
@RFPGA0_RFMOD = common dso_local global i32 0, align 4
@RFPGA0_ANALOGPARAMETER4 = common dso_local global i32 0, align 4
@ROFDM1_CFOTRACKING = common dso_local global i32 0, align 4
@MAX_RF_IMR_INDEX_NORMAL = common dso_local global i32 0, align 4
@rf_reg_for_5g_swchnl_normal = common dso_local global i32* null, align 8
@rf_imr_param_normal = common dso_local global i32*** null, align 8
@BOFDMEN = common dso_local global i32 0, align 4
@COMP_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Load RF IMR parameters for G band. IMR already setting %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"====>2.4G\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Load RF IMR parameters for G band. %d\0A\00", align 1
@BCCKEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"<====\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32)* @_rtl92d_phy_reload_imr_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92d_phy_reload_imr_setting(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %7, align 8
  %15 = load i32, i32* @MAX_RF_IMR_INDEX, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  store i32 %16, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %18 = load i32, i32* @COMP_CMD, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BAND_ON_5G, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %100

28:                                               ; preds = %3
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %30 = load i32, i32* @COMP_CMD, align 4
  %31 = load i32, i32* @DBG_LOUD, align 4
  %32 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %34 = load i32, i32* @RFPGA0_RFMOD, align 4
  %35 = call i32 @BIT(i32 25)
  %36 = call i32 @BIT(i32 24)
  %37 = or i32 %35, %36
  %38 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %33, i32 %34, i32 %37, i32 0)
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %40 = load i32, i32* @RFPGA0_ANALOGPARAMETER4, align 4
  %41 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %39, i32 %40, i32 15728640, i32 15)
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 99
  br i1 %43, label %44, label %51

44:                                               ; preds = %28
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %46 = load i32, i32* @ROFDM1_CFOTRACKING, align 4
  %47 = call i32 @BIT(i32 13)
  %48 = call i32 @BIT(i32 14)
  %49 = or i32 %47, %48
  %50 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %45, i32 %46, i32 %49, i32 2)
  br label %58

51:                                               ; preds = %28
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %53 = load i32, i32* @ROFDM1_CFOTRACKING, align 4
  %54 = call i32 @BIT(i32 13)
  %55 = call i32 @BIT(i32 14)
  %56 = or i32 %54, %55
  %57 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %52, i32 %53, i32 %56, i32 1)
  br label %58

58:                                               ; preds = %51, %44
  %59 = load i32, i32* %5, align 4
  %60 = icmp sle i32 %59, 64
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 2
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @MAX_RF_IMR_INDEX_NORMAL, align 4
  store i32 %63, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %89, %58
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32*, i32** @rf_reg_for_5g_swchnl_normal, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32***, i32**** @rf_imr_param_normal, align 8
  %78 = getelementptr inbounds i32**, i32*** %77, i64 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %69, i32 %70, i32 %75, i32 %76, i32 %87)
  br label %89

89:                                               ; preds = %68
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %64

92:                                               ; preds = %64
  %93 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %94 = load i32, i32* @RFPGA0_ANALOGPARAMETER4, align 4
  %95 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %93, i32 %94, i32 15728640, i32 0)
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %97 = load i32, i32* @RFPGA0_RFMOD, align 4
  %98 = load i32, i32* @BOFDMEN, align 4
  %99 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %96, i32 %97, i32 %98, i32 1)
  br label %175

100:                                              ; preds = %3
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %102 = load i32, i32* @COMP_SCAN, align 4
  %103 = load i32, i32* @DBG_LOUD, align 4
  %104 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %105 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %101, i32 %102, i32 %103, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %110 = load i32, i32* @COMP_CMD, align 4
  %111 = load i32, i32* @DBG_LOUD, align 4
  %112 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %114 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %174, label %118

118:                                              ; preds = %100
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %120 = load i32, i32* @COMP_SCAN, align 4
  %121 = load i32, i32* @DBG_LOUD, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %119, i32 %120, i32 %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %125 = call i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw* %124, i64* %12)
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %127 = load i32, i32* @RFPGA0_RFMOD, align 4
  %128 = call i32 @BIT(i32 25)
  %129 = call i32 @BIT(i32 24)
  %130 = or i32 %128, %129
  %131 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %126, i32 %127, i32 %130, i32 0)
  %132 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %133 = load i32, i32* @RFPGA0_ANALOGPARAMETER4, align 4
  %134 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %132, i32 %133, i32 15728640, i32 15)
  %135 = load i32, i32* @MAX_RF_IMR_INDEX_NORMAL, align 4
  store i32 %135, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %159, %118
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %162

140:                                              ; preds = %136
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32*, i32** @rf_reg_for_5g_swchnl_normal, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %149 = load i32***, i32**** @rf_imr_param_normal, align 8
  %150 = getelementptr inbounds i32**, i32*** %149, i64 0
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %141, i32 %142, i32 %147, i32 %148, i32 %157)
  br label %159

159:                                              ; preds = %140
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %136

162:                                              ; preds = %136
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %164 = load i32, i32* @RFPGA0_ANALOGPARAMETER4, align 4
  %165 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %163, i32 %164, i32 15728640, i32 0)
  %166 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %167 = load i32, i32* @RFPGA0_RFMOD, align 4
  %168 = load i32, i32* @BOFDMEN, align 4
  %169 = load i32, i32* @BCCKEN, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %166, i32 %167, i32 %170, i32 3)
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %173 = call i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw* %172, i64* %12)
  br label %174

174:                                              ; preds = %162, %100
  br label %175

175:                                              ; preds = %174, %92
  %176 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %177 = load i32, i32* @COMP_CMD, align 4
  %178 = load i32, i32* @DBG_LOUD, align 4
  %179 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %176, i32 %177, i32 %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl92d_acquire_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

declare dso_local i32 @rtl92d_release_cckandrw_pagea_ctl(%struct.ieee80211_hw*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
