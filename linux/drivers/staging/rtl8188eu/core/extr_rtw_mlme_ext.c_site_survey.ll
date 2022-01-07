; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_site_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_site_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { i32, i8, %struct.TYPE_3__, i32, i32, %struct.mlme_ext_info }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i64, %struct.TYPE_4__*, %struct.rtw_ieee80211_channel* }
%struct.TYPE_4__ = type { i64 }
%struct.rtw_ieee80211_channel = type { i8, i32 }
%struct.mlme_ext_info = type { i32 }

@SCAN_PASSIVE = common dso_local global i32 0, align 4
@RTW_IEEE80211_CHAN_PASSIVE_SCAN = common dso_local global i32 0, align 4
@SCAN_ACTIVE = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@RTW_SSID_SCAN_AMOUNT = common dso_local global i32 0, align 4
@SURVEY_TO = common dso_local global i32 0, align 4
@SCAN_COMPLETE = common dso_local global i32 0, align 4
@HW_VAR_INITIAL_GAIN = common dso_local global i32 0, align 4
@HW_VAR_MLME_SITESURVEY = common dso_local global i32 0, align 4
@SCAN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @site_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @site_survey(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i8 0, i8* %3, align 1
  %11 = load i32, i32* @SCAN_PASSIVE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %6, align 8
  %14 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %14, i32 0, i32 5
  store %struct.mlme_ext_info* %15, %struct.mlme_ext_info** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %21 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %1
  %26 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  %29 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %28, align 8
  %30 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %29, i64 %33
  store %struct.rtw_ieee80211_channel* %34, %struct.rtw_ieee80211_channel** %9, align 8
  %35 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %9, align 8
  %36 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 4
  store i8 %37, i8* %3, align 1
  %38 = load %struct.rtw_ieee80211_channel*, %struct.rtw_ieee80211_channel** %9, align 8
  %39 = getelementptr inbounds %struct.rtw_ieee80211_channel, %struct.rtw_ieee80211_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RTW_IEEE80211_CHAN_PASSIVE_SCAN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %25
  %45 = load i32, i32* @SCAN_PASSIVE, align 4
  br label %48

46:                                               ; preds = %25
  %47 = load i32, i32* @SCAN_ACTIVE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %1
  %51 = load i8, i8* %3, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %144

54:                                               ; preds = %50
  %55 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %56 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = load i8, i8* %3, align 1
  %63 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %64 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %65 = call i32 @set_channel_bwmode(%struct.adapter* %61, i8 zeroext %62, i32 %63, i32 %64)
  br label %70

66:                                               ; preds = %54
  %67 = load %struct.adapter*, %struct.adapter** %2, align 8
  %68 = load i8, i8* %3, align 1
  %69 = call i32 @SelectChannel(%struct.adapter* %67, i8 zeroext %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @SCAN_ACTIVE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %138

74:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %110, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @RTW_SSID_SCAN_AMOUNT, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %75
  %80 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %81 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %79
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %93 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = call i32 @issue_probereq(%struct.adapter* %91, %struct.TYPE_4__* %98, i32* null, i32 0)
  %100 = load %struct.adapter*, %struct.adapter** %2, align 8
  %101 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %102 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = call i32 @issue_probereq(%struct.adapter* %100, %struct.TYPE_4__* %107, i32* null, i32 0)
  br label %109

109:                                              ; preds = %90, %79
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %75

113:                                              ; preds = %75
  %114 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %115 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SCAN_ACTIVE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load %struct.adapter*, %struct.adapter** %2, align 8
  %122 = call i32 @issue_probereq(%struct.adapter* %121, %struct.TYPE_4__* null, i32* null, i32 0)
  %123 = load %struct.adapter*, %struct.adapter** %2, align 8
  %124 = call i32 @issue_probereq(%struct.adapter* %123, %struct.TYPE_4__* null, i32* null, i32 0)
  br label %125

125:                                              ; preds = %120, %113
  %126 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %127 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SCAN_ACTIVE, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load %struct.adapter*, %struct.adapter** %2, align 8
  %134 = call i32 @issue_probereq(%struct.adapter* %133, %struct.TYPE_4__* null, i32* null, i32 0)
  %135 = load %struct.adapter*, %struct.adapter** %2, align 8
  %136 = call i32 @issue_probereq(%struct.adapter* %135, %struct.TYPE_4__* null, i32* null, i32 0)
  br label %137

137:                                              ; preds = %132, %125
  br label %138

138:                                              ; preds = %137, %70
  %139 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %140 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %141 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @set_survey_timer(%struct.mlme_ext_priv* %139, i32 %142)
  br label %217

144:                                              ; preds = %50
  %145 = load %struct.adapter*, %struct.adapter** %2, align 8
  %146 = call i64 @rtw_hal_antdiv_before_linked(%struct.adapter* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %150 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 4
  store i64 0, i64* %151, align 8
  %152 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %153 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i64 -1, i64* %154, align 8
  %155 = load i32, i32* @SURVEY_TO, align 4
  %156 = sdiv i32 %155, 2
  %157 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %158 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %160 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %161 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @set_survey_timer(%struct.mlme_ext_priv* %159, i32 %162)
  br label %217

164:                                              ; preds = %144
  %165 = load i32, i32* @SCAN_COMPLETE, align 4
  %166 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %167 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 3
  store i32 %165, i32* %168, align 4
  %169 = load %struct.adapter*, %struct.adapter** %2, align 8
  %170 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %171 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %170, i32 0, i32 1
  %172 = load i8, i8* %171, align 4
  %173 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %174 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %177 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @set_channel_bwmode(%struct.adapter* %169, i8 zeroext %172, i32 %175, i32 %178)
  %180 = load %struct.adapter*, %struct.adapter** %2, align 8
  %181 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %182 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 3
  %185 = call i32 @Set_MSR(%struct.adapter* %180, i32 %184)
  store i32 255, i32* %8, align 4
  %186 = load %struct.adapter*, %struct.adapter** %2, align 8
  %187 = load i32, i32* @HW_VAR_INITIAL_GAIN, align 4
  %188 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %186, i32 %187, i32* %8)
  %189 = load %struct.adapter*, %struct.adapter** %2, align 8
  %190 = call i32 @Restore_DM_Func_Flag(%struct.adapter* %189)
  %191 = load %struct.adapter*, %struct.adapter** %2, align 8
  %192 = call i64 @is_client_associated_to_ap(%struct.adapter* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %164
  %195 = load %struct.adapter*, %struct.adapter** %2, align 8
  %196 = call i32 @issue_nulldata(%struct.adapter* %195, i32* null, i32 0, i32 3, i32 500)
  br label %197

197:                                              ; preds = %194, %164
  store i8 0, i8* %4, align 1
  %198 = load %struct.adapter*, %struct.adapter** %2, align 8
  %199 = load i32, i32* @HW_VAR_MLME_SITESURVEY, align 4
  %200 = bitcast i8* %4 to i32*
  %201 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %198, i32 %199, i32* %200)
  %202 = load %struct.adapter*, %struct.adapter** %2, align 8
  %203 = call i32 @report_surveydone_event(%struct.adapter* %202)
  %204 = load i32, i32* @SURVEY_TO, align 4
  %205 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %206 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* @SCAN_DISABLE, align 4
  %208 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %209 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  store i32 %207, i32* %210, align 4
  %211 = load %struct.adapter*, %struct.adapter** %2, align 8
  %212 = call i32 @issue_action_BSSCoexistPacket(%struct.adapter* %211)
  %213 = load %struct.adapter*, %struct.adapter** %2, align 8
  %214 = call i32 @issue_action_BSSCoexistPacket(%struct.adapter* %213)
  %215 = load %struct.adapter*, %struct.adapter** %2, align 8
  %216 = call i32 @issue_action_BSSCoexistPacket(%struct.adapter* %215)
  br label %217

217:                                              ; preds = %148, %197, %138
  ret void
}

declare dso_local i32 @set_channel_bwmode(%struct.adapter*, i8 zeroext, i32, i32) #1

declare dso_local i32 @SelectChannel(%struct.adapter*, i8 zeroext) #1

declare dso_local i32 @issue_probereq(%struct.adapter*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @set_survey_timer(%struct.mlme_ext_priv*, i32) #1

declare dso_local i64 @rtw_hal_antdiv_before_linked(%struct.adapter*) #1

declare dso_local i32 @Set_MSR(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @Restore_DM_Func_Flag(%struct.adapter*) #1

declare dso_local i64 @is_client_associated_to_ap(%struct.adapter*) #1

declare dso_local i32 @issue_nulldata(%struct.adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @report_surveydone_event(%struct.adapter*) #1

declare dso_local i32 @issue_action_BSSCoexistPacket(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
