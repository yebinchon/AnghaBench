; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_restructure_ht_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_restructure_ht_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.ht_priv, %struct.qos_priv }
%struct.ht_priv = type { i32 }
%struct.qos_priv = type { i32 }
%struct.ieee80211_ht_cap = type { i32, i32 }

@__const.r8712_restructure_ht_ie.WMM_IE = private unnamed_addr constant [7 x i8] c"\00P\F2\02\00\01\00", align 1
@_HT_CAPABILITY_IE_ = common dso_local global i32 0, align 4
@_VENDOR_SPECIFIC_IE_ = common dso_local global i32 0, align 4
@_WMM_IE_Length_ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_AMPDU_FACTOR = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_AMPDU_DENSITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_restructure_ht_ie(%struct._adapter* %0, i32* %1, i32* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct._adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.ieee80211_ht_cap, align 4
  %15 = alloca [7 x i8], align 1
  %16 = alloca %struct.mlme_priv*, align 8
  %17 = alloca %struct.qos_priv*, align 8
  %18 = alloca %struct.ht_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %19 = bitcast [7 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.r8712_restructure_ht_ie.WMM_IE, i32 0, i32 0), i64 7, i1 false)
  %20 = load %struct._adapter*, %struct._adapter** %6, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 0
  store %struct.mlme_priv* %21, %struct.mlme_priv** %16, align 8
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %16, align 8
  %23 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %22, i32 0, i32 1
  store %struct.qos_priv* %23, %struct.qos_priv** %17, align 8
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %16, align 8
  %25 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %24, i32 0, i32 0
  store %struct.ht_priv* %25, %struct.ht_priv** %18, align 8
  %26 = load %struct.ht_priv*, %struct.ht_priv** %18, align 8
  %27 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  %30 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %31 = load i64, i64* %9, align 8
  %32 = sub nsw i64 %31, 12
  %33 = call i8* @r8712_get_ie(i32* %29, i32 %30, i64* %11, i64 %32)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %89

36:                                               ; preds = %5
  %37 = load i64, i64* %11, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %36
  %40 = load %struct.qos_priv*, %struct.qos_priv** %17, align 8
  %41 = getelementptr inbounds %struct.qos_priv, %struct.qos_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* @_VENDOR_SPECIFIC_IE_, align 4
  %51 = load i32, i32* @_WMM_IE_Length_, align 4
  %52 = getelementptr inbounds [7 x i8], [7 x i8]* %15, i64 0, i64 0
  %53 = load i64*, i64** %10, align 8
  %54 = call i32 @r8712_set_ie(i32* %49, i32 %50, i32 %51, i8* %52, i64* %53)
  %55 = load %struct.qos_priv*, %struct.qos_priv** %17, align 8
  %56 = getelementptr inbounds %struct.qos_priv, %struct.qos_priv* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %44, %39
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %12, align 8
  %60 = call i32 @memset(%struct.ieee80211_ht_cap* %14, i32 0, i32 8)
  %61 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH, align 4
  %62 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @cpu_to_le16(i32 %71)
  %73 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %14, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @IEEE80211_HT_CAP_AMPDU_FACTOR, align 4
  %75 = and i32 %74, 3
  %76 = load i32, i32* @IEEE80211_HT_CAP_AMPDU_DENSITY, align 4
  %77 = and i32 %76, 0
  %78 = or i32 %75, %77
  %79 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %14, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %84 = bitcast %struct.ieee80211_ht_cap* %14 to i8*
  %85 = load i64*, i64** %10, align 8
  %86 = call i32 @r8712_set_ie(i32* %82, i32 %83, i32 8, i8* %84, i64* %85)
  %87 = load %struct.ht_priv*, %struct.ht_priv** %18, align 8
  %88 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %57, %36, %5
  %90 = load %struct.ht_priv*, %struct.ht_priv** %18, align 8
  %91 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @r8712_get_ie(i32*, i32, i64*, i64) #2

declare dso_local i32 @r8712_set_ie(i32*, i32, i32, i8*, i64*) #2

declare dso_local i32 @memset(%struct.ieee80211_ht_cap*, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
