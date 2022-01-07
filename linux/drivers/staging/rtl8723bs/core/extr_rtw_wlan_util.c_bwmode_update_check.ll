; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_bwmode_update_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_bwmode_update_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sta_priv, %struct.registry_priv, %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.sta_priv = type { i32 }
%struct.registry_priv = type { i32 }
%struct.mlme_ext_priv = type { i8, i32, i8, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32 }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i32, i8 }
%struct.ndis_80211_var_ie = type { i32, i64 }
%struct.HT_info_element = type { i32* }
%struct.sta_info = type { i8, %struct.ht_priv }

@CHANNEL_WIDTH_80 = common dso_local global i8 0, align 1
@CHANNEL_WIDTH_40 = common dso_local global i8 0, align 1
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i8 0, align 1
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i8 0, align 1
@CHANNEL_WIDTH_20 = common dso_local global i8* null, align 8
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.ndis_80211_var_ie*)* @bwmode_update_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwmode_update_check(%struct.adapter* %0, %struct.ndis_80211_var_ie* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ndis_80211_var_ie*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.HT_info_element*, align 8
  %8 = alloca %struct.mlme_priv*, align 8
  %9 = alloca %struct.mlme_ext_priv*, align 8
  %10 = alloca %struct.mlme_ext_info*, align 8
  %11 = alloca %struct.registry_priv*, align 8
  %12 = alloca %struct.ht_priv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sta_info*, align 8
  %15 = alloca %struct.wlan_bssid_ex*, align 8
  %16 = alloca %struct.sta_priv*, align 8
  %17 = alloca %struct.ht_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.ndis_80211_var_ie* %1, %struct.ndis_80211_var_ie** %4, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 3
  store %struct.mlme_priv* %19, %struct.mlme_priv** %8, align 8
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 2
  store %struct.mlme_ext_priv* %21, %struct.mlme_ext_priv** %9, align 8
  %22 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %23 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %22, i32 0, i32 3
  store %struct.mlme_ext_info* %23, %struct.mlme_ext_info** %10, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  store %struct.registry_priv* %25, %struct.registry_priv** %11, align 8
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 0
  store %struct.ht_priv* %27, %struct.ht_priv** %12, align 8
  store i32 0, i32* %13, align 4
  %28 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %29 = icmp ne %struct.ndis_80211_var_ie* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %194

31:                                               ; preds = %2
  %32 = load %struct.ht_priv*, %struct.ht_priv** %12, align 8
  %33 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %194

37:                                               ; preds = %31
  %38 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %39 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 4
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @CHANNEL_WIDTH_80, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %194

46:                                               ; preds = %37
  %47 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %48 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = icmp ugt i64 %50, 8
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %194

53:                                               ; preds = %46
  %54 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %55 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.HT_info_element*
  store %struct.HT_info_element* %57, %struct.HT_info_element** %7, align 8
  %58 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %59 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 14
  br i1 %61, label %62, label %70

62:                                               ; preds = %53
  %63 = load %struct.registry_priv*, %struct.registry_priv** %11, align 8
  %64 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 240
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %62
  br label %78

70:                                               ; preds = %53
  %71 = load %struct.registry_priv*, %struct.registry_priv** %11, align 8
  %72 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 15
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %13, align 4
  br label %77

77:                                               ; preds = %76, %70
  br label %78

78:                                               ; preds = %77, %69
  %79 = load %struct.HT_info_element*, %struct.HT_info_element** %7, align 8
  %80 = getelementptr inbounds %struct.HT_info_element, %struct.HT_info_element* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @BIT(i32 2)
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %78
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load i8, i8* @CHANNEL_WIDTH_40, align 1
  store i8 %91, i8* %5, align 1
  %92 = load %struct.HT_info_element*, %struct.HT_info_element** %7, align 8
  %93 = getelementptr inbounds %struct.HT_info_element, %struct.HT_info_element* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 3
  switch i32 %97, label %102 [
    i32 1, label %98
    i32 3, label %100
  ]

98:                                               ; preds = %90
  %99 = load i8, i8* @HAL_PRIME_CHNL_OFFSET_LOWER, align 1
  store i8 %99, i8* %6, align 1
  br label %107

100:                                              ; preds = %90
  %101 = load i8, i8* @HAL_PRIME_CHNL_OFFSET_UPPER, align 1
  store i8 %101, i8* %6, align 1
  br label %107

102:                                              ; preds = %90
  %103 = load i8*, i8** @CHANNEL_WIDTH_20, align 8
  %104 = ptrtoint i8* %103 to i8
  store i8 %104, i8* %5, align 1
  %105 = load i8*, i8** @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %106 = ptrtoint i8* %105 to i8
  store i8 %106, i8* %6, align 1
  br label %107

107:                                              ; preds = %102, %100, %98
  br label %113

108:                                              ; preds = %87, %78
  %109 = load i8*, i8** @CHANNEL_WIDTH_20, align 8
  %110 = ptrtoint i8* %109 to i8
  store i8 %110, i8* %5, align 1
  %111 = load i8*, i8** @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %112 = ptrtoint i8* %111 to i8
  store i8 %112, i8* %6, align 1
  br label %113

113:                                              ; preds = %108, %107
  %114 = load i8, i8* %5, align 1
  %115 = zext i8 %114 to i32
  %116 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %117 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 4
  %119 = zext i8 %118 to i32
  %120 = icmp ne i32 %115, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load i8, i8* %6, align 1
  %123 = zext i8 %122 to i32
  %124 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %125 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %124, i32 0, i32 2
  %126 = load i8, i8* %125, align 4
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %123, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %121, %113
  %130 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %131 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  %132 = load i8, i8* %5, align 1
  %133 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %134 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %133, i32 0, i32 0
  store i8 %132, i8* %134, align 4
  %135 = load i8, i8* %6, align 1
  %136 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %137 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %136, i32 0, i32 2
  store i8 %135, i8* %137, align 4
  %138 = load %struct.adapter*, %struct.adapter** %3, align 8
  %139 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %140 = call i32 @HT_info_handler(%struct.adapter* %138, %struct.ndis_80211_var_ie* %139)
  br label %144

141:                                              ; preds = %121
  %142 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %143 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %142, i32 0, i32 0
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %129
  %145 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %146 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 1, %147
  br i1 %148, label %149, label %194

149:                                              ; preds = %144
  %150 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %151 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %150, i32 0, i32 1
  store %struct.wlan_bssid_ex* %151, %struct.wlan_bssid_ex** %15, align 8
  %152 = load %struct.adapter*, %struct.adapter** %3, align 8
  %153 = getelementptr inbounds %struct.adapter, %struct.adapter* %152, i32 0, i32 0
  store %struct.sta_priv* %153, %struct.sta_priv** %16, align 8
  %154 = load %struct.sta_priv*, %struct.sta_priv** %16, align 8
  %155 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %15, align 8
  %156 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %154, i32 %157)
  store %struct.sta_info* %158, %struct.sta_info** %14, align 8
  %159 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %160 = icmp ne %struct.sta_info* %159, null
  br i1 %160, label %161, label %193

161:                                              ; preds = %149
  %162 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %163 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %162, i32 0, i32 1
  store %struct.ht_priv* %163, %struct.ht_priv** %17, align 8
  %164 = load %struct.ht_priv*, %struct.ht_priv** %17, align 8
  %165 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %161
  %169 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %170 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %169, i32 0, i32 0
  %171 = load i8, i8* %170, align 4
  %172 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %173 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %172, i32 0, i32 0
  store i8 %171, i8* %173, align 4
  %174 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %175 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %174, i32 0, i32 2
  %176 = load i8, i8* %175, align 4
  %177 = load %struct.ht_priv*, %struct.ht_priv** %17, align 8
  %178 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %177, i32 0, i32 1
  store i8 %176, i8* %178, align 4
  br label %188

179:                                              ; preds = %161
  %180 = load i8*, i8** @CHANNEL_WIDTH_20, align 8
  %181 = ptrtoint i8* %180 to i8
  %182 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %183 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %182, i32 0, i32 0
  store i8 %181, i8* %183, align 4
  %184 = load i8*, i8** @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %185 = ptrtoint i8* %184 to i8
  %186 = load %struct.ht_priv*, %struct.ht_priv** %17, align 8
  %187 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %186, i32 0, i32 1
  store i8 %185, i8* %187, align 4
  br label %188

188:                                              ; preds = %179, %168
  %189 = load %struct.adapter*, %struct.adapter** %3, align 8
  %190 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %191 = bitcast %struct.sta_info* %190 to i32*
  %192 = call i32 @rtw_dm_ra_mask_wk_cmd(%struct.adapter* %189, i32* %191)
  br label %193

193:                                              ; preds = %188, %149
  br label %194

194:                                              ; preds = %30, %36, %45, %52, %193, %144
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @HT_info_handler(%struct.adapter*, %struct.ndis_80211_var_ie*) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @rtw_dm_ra_mask_wk_cmd(%struct.adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
