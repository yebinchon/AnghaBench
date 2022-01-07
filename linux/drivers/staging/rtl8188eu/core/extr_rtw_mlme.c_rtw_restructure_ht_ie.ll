; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_restructure_ht_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_restructure_ht_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_priv }
%struct.TYPE_2__ = type { i64 }
%struct.mlme_priv = type { %struct.ht_priv, %struct.qos_priv }
%struct.ht_priv = type { i32 }
%struct.qos_priv = type { i32 }
%struct.ieee80211_ht_cap = type { i32, i32 }

@__const.rtw_restructure_ht_ie.WMM_IE = private unnamed_addr constant [7 x i8] c"\00P\F2\02\00\01\00", align 1
@_HT_CAPABILITY_IE_ = common dso_local global i32 0, align 4
@_VENDOR_SPECIFIC_IE_ = common dso_local global i32 0, align 4
@_WMM_IE_Length_ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@HAL_DEF_RX_PACKET_OFFSET = common dso_local global i32 0, align 4
@HAL_DEF_MAX_RECVBUF_SZ = common dso_local global i32 0, align 4
@HW_VAR_MAX_RX_AMPDU_FACTOR = common dso_local global i32 0, align 4
@_AES_ = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_AMPDU_DENSITY = common dso_local global i32 0, align 4
@_HT_ADD_INFO_IE_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_restructure_ht_ie(%struct.adapter* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [7 x i8], align 1
  %16 = alloca %struct.mlme_priv*, align 8
  %17 = alloca %struct.qos_priv*, align 8
  %18 = alloca %struct.ht_priv*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ieee80211_ht_cap, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %22 = bitcast [7 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %22, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.rtw_restructure_ht_ie.WMM_IE, i32 0, i32 0), i64 7, i1 false)
  %23 = load %struct.adapter*, %struct.adapter** %6, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 1
  store %struct.mlme_priv* %24, %struct.mlme_priv** %16, align 8
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %16, align 8
  %26 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %25, i32 0, i32 1
  store %struct.qos_priv* %26, %struct.qos_priv** %17, align 8
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %16, align 8
  %28 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %27, i32 0, i32 0
  store %struct.ht_priv* %28, %struct.ht_priv** %18, align 8
  %29 = load %struct.ht_priv*, %struct.ht_priv** %18, align 8
  %30 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 12
  %33 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 12
  %36 = call i8* @rtw_get_ie(i32* %32, i32 %33, i32* %11, i32 %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %143

39:                                               ; preds = %5
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %143

42:                                               ; preds = %39
  %43 = load %struct.qos_priv*, %struct.qos_priv** %17, align 8
  %44 = getelementptr inbounds %struct.qos_priv, %struct.qos_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* @_VENDOR_SPECIFIC_IE_, align 4
  %55 = load i32, i32* @_WMM_IE_Length_, align 4
  %56 = getelementptr inbounds [7 x i8], [7 x i8]* %15, i64 0, i64 0
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @rtw_set_ie(i32* %53, i32 %54, i32 %55, i8* %56, i32* %57)
  %59 = load %struct.qos_priv*, %struct.qos_priv** %17, align 8
  %60 = getelementptr inbounds %struct.qos_priv, %struct.qos_priv* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %47, %42
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = call i32 @memset(%struct.ieee80211_ht_cap* %21, i32 0, i32 8)
  %65 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH, align 4
  %66 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @cpu_to_le16(i32 %73)
  %75 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %21, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.adapter*, %struct.adapter** %6, align 8
  %77 = load i32, i32* @HAL_DEF_RX_PACKET_OFFSET, align 4
  %78 = call i32 @rtw_hal_get_def_var(%struct.adapter* %76, i32 %77, i32* %19)
  %79 = load %struct.adapter*, %struct.adapter** %6, align 8
  %80 = load i32, i32* @HAL_DEF_MAX_RECVBUF_SZ, align 4
  %81 = call i32 @rtw_hal_get_def_var(%struct.adapter* %79, i32 %80, i32* %20)
  %82 = load %struct.adapter*, %struct.adapter** %6, align 8
  %83 = load i32, i32* @HW_VAR_MAX_RX_AMPDU_FACTOR, align 4
  %84 = call i32 @rtw_hal_get_def_var(%struct.adapter* %82, i32 %83, i32* %13)
  %85 = load i32, i32* %13, align 4
  %86 = and i32 %85, 3
  %87 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %21, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load %struct.adapter*, %struct.adapter** %6, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @_AES_, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %61
  %95 = load i32, i32* @IEEE80211_HT_CAP_AMPDU_DENSITY, align 4
  %96 = and i32 %95, 28
  %97 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %21, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %106

100:                                              ; preds = %61
  %101 = load i32, i32* @IEEE80211_HT_CAP_AMPDU_DENSITY, align 4
  %102 = and i32 %101, 0
  %103 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %21, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %94
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %112 = bitcast %struct.ieee80211_ht_cap* %21 to i8*
  %113 = load i32*, i32** %10, align 8
  %114 = call i32 @rtw_set_ie(i32* %110, i32 %111, i32 8, i8* %112, i32* %113)
  %115 = load %struct.ht_priv*, %struct.ht_priv** %18, align 8
  %116 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 12
  %119 = load i32, i32* @_HT_ADD_INFO_IE_, align 4
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %120, 12
  %122 = call i8* @rtw_get_ie(i32* %118, i32 %119, i32* %11, i32 %121)
  store i8* %122, i8** %14, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %142

125:                                              ; preds = %106
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp eq i64 %127, 4
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %12, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* @_HT_ADD_INFO_IE_, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i8*, i8** %14, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = load i32*, i32** %10, align 8
  %141 = call i32 @rtw_set_ie(i32* %135, i32 %136, i32 %137, i8* %139, i32* %140)
  br label %142

142:                                              ; preds = %129, %125, %106
  br label %143

143:                                              ; preds = %142, %39, %5
  %144 = load %struct.ht_priv*, %struct.ht_priv** %18, align 8
  %145 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  ret i32 %146
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @rtw_get_ie(i32*, i32, i32*, i32) #2

declare dso_local i32 @rtw_set_ie(i32*, i32, i32, i8*, i32*) #2

declare dso_local i32 @memset(%struct.ieee80211_ht_cap*, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @rtw_hal_get_def_var(%struct.adapter*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
