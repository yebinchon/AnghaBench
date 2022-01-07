; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_get_cur_max_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_get_cur_max_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32* }
%struct.sta_info = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@HW_VAR_RF_TYPE = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_get_cur_max_rate(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca %struct.wlan_bssid_ex*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.mlme_priv* %13, %struct.mlme_priv** %7, align 8
  %14 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %15 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.wlan_bssid_ex* %16, %struct.wlan_bssid_ex** %8, align 8
  store %struct.sta_info* null, %struct.sta_info** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %18 = load i32, i32* @_FW_LINKED, align 4
  %19 = call i32 @check_fwstate(%struct.mlme_priv* %17, i32 %18)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %23 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %24 = call i32 @check_fwstate(%struct.mlme_priv* %22, i32 %23)
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %107

27:                                               ; preds = %21, %1
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %31 = call i32 @get_bssid(%struct.mlme_priv* %30)
  %32 = call %struct.sta_info* @rtw_get_stainfo(i32* %29, i32 %31)
  store %struct.sta_info* %32, %struct.sta_info** %9, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %34 = icmp eq %struct.sta_info* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %107

36:                                               ; preds = %27
  %37 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %38 = call i64 @query_ra_short_GI(%struct.sta_info* %37)
  store i64 %38, i64* %10, align 8
  %39 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IsSupportedHT(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %36
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = load i32, i32* @HW_VAR_RF_TYPE, align 4
  %47 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %45, i32 %46, i64* %11)
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @rtw_mcs_rate(i64 %48, i32 %55, i64 %56, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %105

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %98, %63
  %65 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %66 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %75 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 255
  br label %82

82:                                               ; preds = %73, %64
  %83 = phi i1 [ false, %64 ], [ %81, %73 ]
  br i1 %83, label %84, label %101

84:                                               ; preds = %82
  %85 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %86 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 127
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %84
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %64

101:                                              ; preds = %82
  %102 = load i32, i32* %6, align 4
  %103 = mul nsw i32 %102, 10
  %104 = sdiv i32 %103, 2
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %101, %44
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %35, %26
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(i32*, i32) #1

declare dso_local i32 @get_bssid(%struct.mlme_priv*) #1

declare dso_local i64 @query_ra_short_GI(%struct.sta_info*) #1

declare dso_local i64 @IsSupportedHT(i32) #1

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i64*) #1

declare dso_local i32 @rtw_mcs_rate(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
