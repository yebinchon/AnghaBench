; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_bwmode_update_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_bwmode_update_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sta_priv, %struct.registry_priv, %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.sta_priv = type { i32 }
%struct.registry_priv = type { i64 }
%struct.mlme_ext_priv = type { i8, i8, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32 }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i8, i8, i64 }
%struct.ndis_802_11_var_ie = type { i32, i64 }
%struct.HT_info_element = type { i32* }
%struct.sta_info = type { %struct.ht_priv }

@HT_CHANNEL_WIDTH_40 = common dso_local global i8 0, align 1
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i8 0, align 1
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i8 0, align 1
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i8* null, align 8
@HT_CHANNEL_WIDTH_20 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.ndis_802_11_var_ie*)* @bwmode_update_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwmode_update_check(%struct.adapter* %0, %struct.ndis_802_11_var_ie* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ndis_802_11_var_ie*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.HT_info_element*, align 8
  %8 = alloca %struct.mlme_priv*, align 8
  %9 = alloca %struct.mlme_ext_priv*, align 8
  %10 = alloca %struct.mlme_ext_info*, align 8
  %11 = alloca %struct.registry_priv*, align 8
  %12 = alloca %struct.ht_priv*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca %struct.wlan_bssid_ex*, align 8
  %15 = alloca %struct.sta_priv*, align 8
  %16 = alloca %struct.ht_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.ndis_802_11_var_ie* %1, %struct.ndis_802_11_var_ie** %4, align 8
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 3
  store %struct.mlme_priv* %18, %struct.mlme_priv** %8, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 2
  store %struct.mlme_ext_priv* %20, %struct.mlme_ext_priv** %9, align 8
  %21 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %22 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %21, i32 0, i32 2
  store %struct.mlme_ext_info* %22, %struct.mlme_ext_info** %10, align 8
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 1
  store %struct.registry_priv* %24, %struct.registry_priv** %11, align 8
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %26 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %25, i32 0, i32 0
  store %struct.ht_priv* %26, %struct.ht_priv** %12, align 8
  %27 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %28 = icmp ne %struct.ndis_802_11_var_ie* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %157

30:                                               ; preds = %2
  %31 = load %struct.ht_priv*, %struct.ht_priv** %12, align 8
  %32 = icmp ne %struct.ht_priv* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %157

34:                                               ; preds = %30
  %35 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %36 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp ugt i64 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %157

41:                                               ; preds = %34
  %42 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %43 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.HT_info_element*
  store %struct.HT_info_element* %45, %struct.HT_info_element** %7, align 8
  %46 = load %struct.HT_info_element*, %struct.HT_info_element** %7, align 8
  %47 = getelementptr inbounds %struct.HT_info_element, %struct.HT_info_element* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @BIT(i32 2)
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %41
  %55 = load %struct.registry_priv*, %struct.registry_priv** %11, align 8
  %56 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load i8, i8* @HT_CHANNEL_WIDTH_40, align 1
  store i8 %60, i8* %5, align 1
  %61 = load %struct.HT_info_element*, %struct.HT_info_element** %7, align 8
  %62 = getelementptr inbounds %struct.HT_info_element, %struct.HT_info_element* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 3
  switch i32 %66, label %71 [
    i32 1, label %67
    i32 3, label %69
  ]

67:                                               ; preds = %59
  %68 = load i8, i8* @HAL_PRIME_CHNL_OFFSET_LOWER, align 1
  store i8 %68, i8* %6, align 1
  br label %74

69:                                               ; preds = %59
  %70 = load i8, i8* @HAL_PRIME_CHNL_OFFSET_UPPER, align 1
  store i8 %70, i8* %6, align 1
  br label %74

71:                                               ; preds = %59
  %72 = load i8*, i8** @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %73 = ptrtoint i8* %72 to i8
  store i8 %73, i8* %6, align 1
  br label %74

74:                                               ; preds = %71, %69, %67
  br label %80

75:                                               ; preds = %54, %41
  %76 = load i8*, i8** @HT_CHANNEL_WIDTH_20, align 8
  %77 = ptrtoint i8* %76 to i8
  store i8 %77, i8* %5, align 1
  %78 = load i8*, i8** @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %79 = ptrtoint i8* %78 to i8
  store i8 %79, i8* %6, align 1
  br label %80

80:                                               ; preds = %75, %74
  %81 = load i8, i8* %5, align 1
  %82 = zext i8 %81 to i32
  %83 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %84 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %83, i32 0, i32 0
  %85 = load i8, i8* %84, align 4
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %82, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i32
  %91 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %92 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %91, i32 0, i32 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp ne i32 %90, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %88, %80
  %97 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %98 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  %99 = load i8, i8* %5, align 1
  %100 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %101 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %100, i32 0, i32 0
  store i8 %99, i8* %101, align 4
  %102 = load i8, i8* %6, align 1
  %103 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %104 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %103, i32 0, i32 1
  store i8 %102, i8* %104, align 1
  %105 = load %struct.adapter*, %struct.adapter** %3, align 8
  %106 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %4, align 8
  %107 = call i32 @HT_info_handler(%struct.adapter* %105, %struct.ndis_802_11_var_ie* %106)
  br label %111

108:                                              ; preds = %88
  %109 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %110 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %109, i32 0, i32 0
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %96
  %112 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %113 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %157

116:                                              ; preds = %111
  %117 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %118 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %117, i32 0, i32 1
  store %struct.wlan_bssid_ex* %118, %struct.wlan_bssid_ex** %14, align 8
  %119 = load %struct.adapter*, %struct.adapter** %3, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 0
  store %struct.sta_priv* %120, %struct.sta_priv** %15, align 8
  %121 = load %struct.sta_priv*, %struct.sta_priv** %15, align 8
  %122 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %123 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %121, i32 %124)
  store %struct.sta_info* %125, %struct.sta_info** %13, align 8
  %126 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %127 = icmp ne %struct.sta_info* %126, null
  br i1 %127, label %128, label %156

128:                                              ; preds = %116
  %129 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %130 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %129, i32 0, i32 0
  store %struct.ht_priv* %130, %struct.ht_priv** %16, align 8
  %131 = load %struct.ht_priv*, %struct.ht_priv** %16, align 8
  %132 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %128
  %136 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %137 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %136, i32 0, i32 0
  %138 = load i8, i8* %137, align 4
  %139 = load %struct.ht_priv*, %struct.ht_priv** %16, align 8
  %140 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %139, i32 0, i32 0
  store i8 %138, i8* %140, align 8
  %141 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %142 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %141, i32 0, i32 1
  %143 = load i8, i8* %142, align 1
  %144 = load %struct.ht_priv*, %struct.ht_priv** %16, align 8
  %145 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %144, i32 0, i32 1
  store i8 %143, i8* %145, align 1
  br label %155

146:                                              ; preds = %128
  %147 = load i8*, i8** @HT_CHANNEL_WIDTH_20, align 8
  %148 = ptrtoint i8* %147 to i8
  %149 = load %struct.ht_priv*, %struct.ht_priv** %16, align 8
  %150 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %149, i32 0, i32 0
  store i8 %148, i8* %150, align 8
  %151 = load i8*, i8** @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 8
  %152 = ptrtoint i8* %151 to i8
  %153 = load %struct.ht_priv*, %struct.ht_priv** %16, align 8
  %154 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %153, i32 0, i32 1
  store i8 %152, i8* %154, align 1
  br label %155

155:                                              ; preds = %146, %135
  br label %156

156:                                              ; preds = %155, %116
  br label %157

157:                                              ; preds = %29, %33, %40, %156, %111
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @HT_info_handler(%struct.adapter*, %struct.ndis_802_11_var_ie*) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
