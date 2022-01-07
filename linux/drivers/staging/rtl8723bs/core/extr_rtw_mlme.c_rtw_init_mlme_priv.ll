; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_init_mlme_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_init_mlme_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32, i32, i32, i32, %struct.TYPE_6__, i32*, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wlan_network = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@Ndis802_11AutoUnknown = common dso_local global i32 0, align 4
@SCAN_ACTIVE = common dso_local global i32 0, align 4
@MAX_BSS_CNT = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@RTW_ROAM_ON_EXPIRED = common dso_local global i32 0, align 4
@RTW_ROAM_ON_RESUME = common dso_local global i32 0, align 4
@RTW_ROAM_ACTIVE = common dso_local global i32 0, align 4
@RTW_ROAM_RSSI_DIFF_TH = common dso_local global i32 0, align 4
@RTW_ROAM_SCAN_INTERVAL_MS = common dso_local global i32 0, align 4
@RTW_ROAM_SCAN_RESULT_EXP_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_init_mlme_priv(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wlan_network*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.mlme_priv* %9, %struct.mlme_priv** %6, align 8
  %10 = load i32, i32* @_SUCCESS, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = bitcast %struct.adapter* %11 to i32*
  %13 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %13, i32 0, i32 13
  store i32* %12, i32** %14, align 8
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 12
  store i32* null, i32** %16, align 8
  %17 = load i32, i32* @WIFI_STATION_STATE, align 4
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %19 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @Ndis802_11AutoUnknown, align 4
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %22 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load i32, i32* @SCAN_ACTIVE, align 4
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 8
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %32 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %31, i32 0, i32 4
  %33 = call i32 @_rtw_init_queue(%struct.TYPE_6__* %32)
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %35 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %34, i32 0, i32 7
  %36 = call i32 @_rtw_init_queue(%struct.TYPE_6__* %35)
  %37 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %38 = call i32 @set_scanned_network_val(%struct.mlme_priv* %37, i32 0)
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %40 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %39, i32 0, i32 6
  %41 = call i32 @memset(i32* %40, i32 0, i32 4)
  %42 = load i32, i32* @MAX_BSS_CNT, align 4
  %43 = call i32 @array_size(i32 %42, i32 4)
  %44 = call i32* @vzalloc(i32 %43)
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @_FAIL, align 4
  store i32 %48, i32* %7, align 4
  br label %91

49:                                               ; preds = %1
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %52 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %51, i32 0, i32 5
  store i32* %50, i32** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = bitcast i32* %53 to %struct.wlan_network*
  store %struct.wlan_network* %54, %struct.wlan_network** %5, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %71, %49
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @MAX_BSS_CNT, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %61 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %60, i32 0, i32 0
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %64 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %63, i32 0, i32 0
  %65 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %66 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @list_add_tail(i32* %64, i32* %67)
  %69 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %70 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %69, i32 1
  store %struct.wlan_network* %70, %struct.wlan_network** %5, align 8
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %55

74:                                               ; preds = %55
  %75 = load %struct.adapter*, %struct.adapter** %2, align 8
  %76 = call i32 @rtw_clear_scan_deny(%struct.adapter* %75)
  %77 = load i32, i32* @RTW_ROAM_ON_EXPIRED, align 4
  %78 = or i32 0, %77
  %79 = load i32, i32* @RTW_ROAM_ON_RESUME, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %82 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %84 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %83, i32 0, i32 3
  store i32 5000, i32* %84, align 4
  %85 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %86 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %85, i32 0, i32 2
  store i32 10, i32* %86, align 8
  %87 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %88 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %87, i32 0, i32 1
  store i32 10000, i32* %88, align 4
  %89 = load %struct.adapter*, %struct.adapter** %2, align 8
  %90 = call i32 @rtw_init_mlme_timer(%struct.adapter* %89)
  br label %91

91:                                               ; preds = %74, %47
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_rtw_init_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @set_scanned_network_val(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rtw_clear_scan_deny(%struct.adapter*) #1

declare dso_local i32 @rtw_init_mlme_timer(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
