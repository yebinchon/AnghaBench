; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_free_assoc_resources_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_free_assoc_resources_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sta_priv, %struct.mlme_priv }
%struct.sta_priv = type { i32, i32 }
%struct.mlme_priv = type { i64, i32, %struct.wlan_network }
%struct.wlan_network = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sta_info = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"+rtw_free_assoc_resources\0A\00", align 1
@_drv_info_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"tgt_network->network.MacAddress=%pM ssid=%s\0A\00", align 1
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"rtw_free_assoc_resources:pwlan==NULL\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_free_assoc_resources_locked(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.wlan_network*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.sta_priv*, align 8
  %6 = alloca %struct.wlan_network*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.sta_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.mlme_priv* %10, %struct.mlme_priv** %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.sta_priv* %12, %struct.sta_priv** %5, align 8
  %13 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %13, i32 0, i32 2
  store %struct.wlan_network* %14, %struct.wlan_network** %6, align 8
  %15 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %16 = load i32, i32* @_drv_notice_, align 4
  %17 = call i32 @RT_TRACE(i32 %15, i32 %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %19 = load i32, i32* @_drv_info_, align 4
  %20 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %21 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %25 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @RT_TRACE(i32 %18, i32 %19, i8* %30)
  %32 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %33 = load i32, i32* @WIFI_STATION_STATE, align 4
  %34 = load i32, i32* @WIFI_AP_STATE, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @check_fwstate(%struct.mlme_priv* %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %1
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %42 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %40, i32 %44)
  store %struct.sta_info* %45, %struct.sta_info** %7, align 8
  %46 = load %struct.sta_priv*, %struct.sta_priv** %5, align 8
  %47 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %46, i32 0, i32 1
  %48 = call i32 @spin_lock_bh(i32* %47)
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %51 = call i32 @rtw_free_stainfo(%struct.adapter* %49, %struct.sta_info* %50)
  %52 = load %struct.sta_priv*, %struct.sta_priv** %5, align 8
  %53 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock_bh(i32* %53)
  br label %55

55:                                               ; preds = %38, %1
  %56 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %57 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %58 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @WIFI_AP_STATE, align 4
  %61 = or i32 %59, %60
  %62 = call i64 @check_fwstate(%struct.mlme_priv* %56, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %55
  %65 = load %struct.adapter*, %struct.adapter** %2, align 8
  %66 = call i32 @rtw_free_all_stainfo(%struct.adapter* %65)
  %67 = load %struct.adapter*, %struct.adapter** %2, align 8
  %68 = call %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter* %67)
  store %struct.sta_info* %68, %struct.sta_info** %8, align 8
  %69 = load %struct.sta_priv*, %struct.sta_priv** %5, align 8
  %70 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %69, i32 0, i32 1
  %71 = call i32 @spin_lock_bh(i32* %70)
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %74 = call i32 @rtw_free_stainfo(%struct.adapter* %72, %struct.sta_info* %73)
  %75 = load %struct.sta_priv*, %struct.sta_priv** %5, align 8
  %76 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock_bh(i32* %76)
  %78 = load %struct.adapter*, %struct.adapter** %2, align 8
  %79 = call i32 @rtw_init_bcmc_stainfo(%struct.adapter* %78)
  br label %80

80:                                               ; preds = %64, %55
  %81 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %82 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %81, i32 0, i32 1
  %83 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %84 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.wlan_network* @rtw_find_network(i32* %82, i32 %86)
  store %struct.wlan_network* %87, %struct.wlan_network** %3, align 8
  %88 = load %struct.wlan_network*, %struct.wlan_network** %3, align 8
  %89 = icmp ne %struct.wlan_network* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load %struct.wlan_network*, %struct.wlan_network** %3, align 8
  %92 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  br label %97

93:                                               ; preds = %80
  %94 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %95 = load i32, i32* @_drv_err_, align 4
  %96 = call i32 @RT_TRACE(i32 %94, i32 %95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %90
  %98 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %99 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %100 = call i64 @check_fwstate(%struct.mlme_priv* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.adapter*, %struct.adapter** %2, align 8
  %104 = getelementptr inbounds %struct.adapter, %struct.adapter* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %110 = load %struct.wlan_network*, %struct.wlan_network** %3, align 8
  %111 = call i32 @rtw_free_network_nolock(%struct.mlme_priv* %109, %struct.wlan_network* %110)
  br label %112

112:                                              ; preds = %108, %102, %97
  %113 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %114 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rtw_free_stainfo(%struct.adapter*, %struct.sta_info*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rtw_free_all_stainfo(%struct.adapter*) #1

declare dso_local %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter*) #1

declare dso_local i32 @rtw_init_bcmc_stainfo(%struct.adapter*) #1

declare dso_local %struct.wlan_network* @rtw_find_network(i32*, i32) #1

declare dso_local i32 @rtw_free_network_nolock(%struct.mlme_priv*, %struct.wlan_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
