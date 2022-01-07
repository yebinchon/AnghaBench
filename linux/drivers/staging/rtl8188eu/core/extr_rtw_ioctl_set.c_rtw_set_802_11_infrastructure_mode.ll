; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ioctl_set.c_rtw_set_802_11_infrastructure_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ioctl_set.c_rtw_set_802_11_infrastructure_mode.c"
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
  br i1 %28, label %29, label %109

29:                                               ; preds = %2
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %34 = load i32, i32* @_drv_info_, align 4
  %35 = call i32 @RT_TRACE(i32 %33, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 132
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load %struct.wlan_network*, %struct.wlan_network** %6, align 8
  %41 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %29
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %44 = load i32, i32* @_FW_LINKED, align 4
  %45 = call i64 @check_fwstate(%struct.mlme_priv* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 130
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %42
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = call i32 @rtw_disassoc_cmd(%struct.adapter* %52, i32 0, i32 1)
  br label %54

54:                                               ; preds = %51, %47
  %55 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %56 = load i32, i32* @_FW_LINKED, align 4
  %57 = call i64 @check_fwstate(%struct.mlme_priv* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %61 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %62 = call i64 @check_fwstate(%struct.mlme_priv* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %54
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = call i32 @rtw_free_assoc_resources(%struct.adapter* %65)
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 130
  br i1 %74, label %75, label %84

75:                                               ; preds = %71, %67
  %76 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %77 = load i32, i32* @_FW_LINKED, align 4
  %78 = call i64 @check_fwstate(%struct.mlme_priv* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.adapter*, %struct.adapter** %3, align 8
  %82 = call i32 @rtw_indicate_disconnect(%struct.adapter* %81)
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* %4, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %88 = load i32, i32* @WIFI_NULL_STATE, align 4
  %89 = xor i32 %88, -1
  %90 = call i32 @_clr_fwstate_(%struct.mlme_priv* %87, i32 %89)
  %91 = load i32, i32* %4, align 4
  switch i32 %91, label %105 [
    i32 130, label %92
    i32 129, label %96
    i32 132, label %100
    i32 131, label %104
    i32 128, label %104
  ]

92:                                               ; preds = %84
  %93 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %94 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %95 = call i32 @set_fwstate(%struct.mlme_priv* %93, i32 %94)
  br label %105

96:                                               ; preds = %84
  %97 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %98 = load i32, i32* @WIFI_STATION_STATE, align 4
  %99 = call i32 @set_fwstate(%struct.mlme_priv* %97, i32 %98)
  br label %105

100:                                              ; preds = %84
  %101 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %102 = load i32, i32* @WIFI_AP_STATE, align 4
  %103 = call i32 @set_fwstate(%struct.mlme_priv* %101, i32 %102)
  br label %105

104:                                              ; preds = %84, %84
  br label %105

105:                                              ; preds = %84, %104, %100, %96, %92
  %106 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %107 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock_bh(i32* %107)
  br label %109

109:                                              ; preds = %105, %2
  ret i32 1
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @get_fwstate(%struct.mlme_priv*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_disassoc_cmd(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_free_assoc_resources(%struct.adapter*) #1

declare dso_local i32 @rtw_indicate_disconnect(%struct.adapter*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
