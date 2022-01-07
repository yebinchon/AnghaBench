; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_setopmode_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_setopmode_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.setopmode_parm = type { i64 }

@Ndis802_11APMode = common dso_local global i64 0, align 8
@WIFI_FW_AP_STATE = common dso_local global i32 0, align 4
@_HW_STATE_AP_ = common dso_local global i32 0, align 4
@Ndis802_11Infrastructure = common dso_local global i64 0, align 8
@WIFI_FW_STATION_STATE = common dso_local global i32 0, align 4
@_HW_STATE_STATION_ = common dso_local global i32 0, align 4
@Ndis802_11IBSS = common dso_local global i64 0, align 8
@_HW_STATE_ADHOC_ = common dso_local global i32 0, align 4
@_HW_STATE_NOLINK_ = common dso_local global i32 0, align 4
@HW_VAR_SET_OPMODE = common dso_local global i32 0, align 4
@H2C_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setopmode_hdl(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  %8 = alloca %struct.setopmode_parm*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.mlme_ext_priv* %10, %struct.mlme_ext_priv** %6, align 8
  %11 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %11, i32 0, i32 0
  store %struct.mlme_ext_info* %12, %struct.mlme_ext_info** %7, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.setopmode_parm*
  store %struct.setopmode_parm* %14, %struct.setopmode_parm** %8, align 8
  %15 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %16 = getelementptr inbounds %struct.setopmode_parm, %struct.setopmode_parm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @Ndis802_11APMode, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @WIFI_FW_AP_STATE, align 4
  %22 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %23 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @_HW_STATE_AP_, align 4
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %2
  %26 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %27 = getelementptr inbounds %struct.setopmode_parm, %struct.setopmode_parm* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @Ndis802_11Infrastructure, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = call i32 @BIT(i32 0)
  %33 = call i32 @BIT(i32 1)
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %37 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @WIFI_FW_STATION_STATE, align 4
  %41 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %42 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @_HW_STATE_STATION_, align 4
  store i32 %45, i32* %5, align 4
  br label %57

46:                                               ; preds = %25
  %47 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %48 = getelementptr inbounds %struct.setopmode_parm, %struct.setopmode_parm* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @Ndis802_11IBSS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @_HW_STATE_ADHOC_, align 4
  store i32 %53, i32* %5, align 4
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @_HW_STATE_NOLINK_, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57, %20
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = load i32, i32* @HW_VAR_SET_OPMODE, align 4
  %61 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %59, i32 %60, i32* %5)
  %62 = load %struct.setopmode_parm*, %struct.setopmode_parm** %8, align 8
  %63 = getelementptr inbounds %struct.setopmode_parm, %struct.setopmode_parm* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @Ndis802_11APMode, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.adapter*, %struct.adapter** %3, align 8
  %69 = call i32 @rtw_btcoex_MediaStatusNotify(%struct.adapter* %68, i32 1)
  br label %70

70:                                               ; preds = %67, %58
  %71 = load i32, i32* @H2C_SUCCESS, align 4
  ret i32 %71
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @rtw_btcoex_MediaStatusNotify(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
