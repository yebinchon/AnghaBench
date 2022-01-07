; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_survey_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_survey_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wlan_bssid_ex = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64*, i64 }
%struct.wlan_network = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rtw_survey_event_callback, ssid =%s\0A\00", align 1
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"\0A ****rtw_survey_event_callback: return a wrong bss ***\0A\00", align 1
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_survey_event_callback(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca %struct.wlan_network*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.mlme_priv* %10, %struct.mlme_priv** %7, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = bitcast i32* %11 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %12, %struct.wlan_bssid_ex** %6, align 8
  %13 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %14 = load i32, i32* @_drv_info_, align 4
  %15 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %16 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = bitcast i64* %18 to i8*
  %20 = call i32 @RT_TRACE(i32 %13, i32 %14, i8* %19)
  %21 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %22 = call i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %24, 24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %28 = load i32, i32* @_drv_err_, align 4
  %29 = call i32 @RT_TRACE(i32 %27, i32 %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %116

30:                                               ; preds = %2
  %31 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %32 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %35 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %36 = call i32 @check_fwstate(%struct.mlme_priv* %34, i32 %35)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %90

38:                                               ; preds = %30
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %40 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %44 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = call i32 @memcmp(i32* %42, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %89, label %49

49:                                               ; preds = %38
  store %struct.wlan_network* null, %struct.wlan_network** %8, align 8
  %50 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %51 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %56 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memcpy(i32 %54, i32 %57, i32 8)
  %59 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %60 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %64 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %63, i32 0, i32 1
  %65 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %66 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.wlan_network* @rtw_find_network(%struct.TYPE_10__* %64, i32 %67)
  store %struct.wlan_network* %68, %struct.wlan_network** %8, align 8
  %69 = load %struct.wlan_network*, %struct.wlan_network** %8, align 8
  %70 = icmp ne %struct.wlan_network* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %49
  %72 = load %struct.wlan_network*, %struct.wlan_network** %8, align 8
  %73 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %77 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i32 %75, i32 %78, i32 8)
  %80 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %81 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_bh(i32* %82)
  br label %112

84:                                               ; preds = %49
  %85 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %86 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_bh(i32* %87)
  br label %89

89:                                               ; preds = %84, %38
  br label %90

90:                                               ; preds = %89, %30
  %91 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %92 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %93 = call i32 @check_fwstate(%struct.mlme_priv* %91, i32 %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %97 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %105 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %95
  %108 = load %struct.adapter*, %struct.adapter** %3, align 8
  %109 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %110 = call i32 @rtw_add_network(%struct.adapter* %108, %struct.wlan_bssid_ex* %109)
  br label %111

111:                                              ; preds = %107, %90
  br label %112

112:                                              ; preds = %111, %71
  %113 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %114 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %113, i32 0, i32 0
  %115 = call i32 @spin_unlock_bh(i32* %114)
  br label %116

116:                                              ; preds = %112, %26
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.wlan_network* @rtw_find_network(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rtw_add_network(%struct.adapter*, %struct.wlan_bssid_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
