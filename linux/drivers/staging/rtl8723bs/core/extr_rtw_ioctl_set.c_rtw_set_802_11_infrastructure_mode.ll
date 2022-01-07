; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_set_802_11_infrastructure_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_set_802_11_infrastructure_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32, %struct.wlan_network }
%struct.wlan_network = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_module_rtl871x_ioctl_set_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"+rtw_set_802_11_infrastructure_mode: old =%d new =%d fw_state = 0x%08x\0A\00", align 1
@_drv_info_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c" change mode!\00", align 1
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_NULL_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_set_802_11_infrastructure_mode(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.wlan_network*, align 8
  %7 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.mlme_priv* %9, %struct.mlme_priv** %5, align 8
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 1
  store %struct.wlan_network* %11, %struct.wlan_network** %6, align 8
  %12 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %13 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %16 = load i32, i32* @_drv_notice_, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %21 = call i32 @get_fwstate(%struct.mlme_priv* %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @RT_TRACE(i32 %15, i32 %16, i8* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %113

29:                                               ; preds = %2
  %30 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %31 = load i32, i32* @_drv_info_, align 4
  %32 = call i32 @RT_TRACE(i32 %30, i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 132
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %38 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 4
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = call i32 @stop_ap_mode(%struct.adapter* %39)
  br label %41

41:                                               ; preds = %36, %29
  %42 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %43 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %46 = load i32, i32* @_FW_LINKED, align 4
  %47 = call i32 @check_fwstate(%struct.mlme_priv* %45, i32 %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 130
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %41
  %54 = load %struct.adapter*, %struct.adapter** %3, align 8
  %55 = call i32 @rtw_disassoc_cmd(%struct.adapter* %54, i32 0, i32 1)
  br label %56

56:                                               ; preds = %53, %49
  %57 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %58 = load i32, i32* @_FW_LINKED, align 4
  %59 = call i32 @check_fwstate(%struct.mlme_priv* %57, i32 %58)
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %63 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %64 = call i32 @check_fwstate(%struct.mlme_priv* %62, i32 %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %56
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = call i32 @rtw_free_assoc_resources(%struct.adapter* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 130
  br i1 %76, label %77, label %86

77:                                               ; preds = %73, %69
  %78 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %79 = load i32, i32* @_FW_LINKED, align 4
  %80 = call i32 @check_fwstate(%struct.mlme_priv* %78, i32 %79)
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = call i32 @rtw_indicate_disconnect(%struct.adapter* %83)
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i32, i32* %4, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %90 = load i32, i32* @WIFI_NULL_STATE, align 4
  %91 = xor i32 %90, -1
  %92 = call i32 @_clr_fwstate_(%struct.mlme_priv* %89, i32 %91)
  %93 = load i32, i32* %4, align 4
  switch i32 %93, label %109 [
    i32 130, label %94
    i32 129, label %98
    i32 132, label %102
    i32 131, label %108
    i32 128, label %108
  ]

94:                                               ; preds = %86
  %95 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %96 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %97 = call i32 @set_fwstate(%struct.mlme_priv* %95, i32 %96)
  br label %109

98:                                               ; preds = %86
  %99 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %100 = load i32, i32* @WIFI_STATION_STATE, align 4
  %101 = call i32 @set_fwstate(%struct.mlme_priv* %99, i32 %100)
  br label %109

102:                                              ; preds = %86
  %103 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %104 = load i32, i32* @WIFI_AP_STATE, align 4
  %105 = call i32 @set_fwstate(%struct.mlme_priv* %103, i32 %104)
  %106 = load %struct.adapter*, %struct.adapter** %3, align 8
  %107 = call i32 @start_ap_mode(%struct.adapter* %106)
  br label %109

108:                                              ; preds = %86, %86
  br label %109

109:                                              ; preds = %86, %108, %102, %98, %94
  %110 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %111 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock_bh(i32* %111)
  br label %113

113:                                              ; preds = %109, %2
  ret i32 1
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @get_fwstate(%struct.mlme_priv*) #1

declare dso_local i32 @stop_ap_mode(%struct.adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_disassoc_cmd(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_free_assoc_resources(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_indicate_disconnect(%struct.adapter*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @start_ap_mode(%struct.adapter*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
