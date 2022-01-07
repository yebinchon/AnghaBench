; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_rtw_reset_drv_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_rtw_reset_drv_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__, %struct.pwrctrl_priv, %struct.mlme_priv }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.pwrctrl_priv = type { i64 }
%struct.mlme_priv = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@SCAN_INTERVAL = common dso_local global i32 0, align 4
@_FW_UNDER_SURVEY = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@SCAN_DISABLE = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_reset_drv_sw(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  %4 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 6
  store %struct.mlme_priv* %6, %struct.mlme_priv** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 5
  store %struct.pwrctrl_priv* %8, %struct.pwrctrl_priv** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = call i32 @rtw_hal_def_value_init(%struct.adapter* %9)
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @SCAN_INTERVAL, align 4
  %16 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %28 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %29 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @_clr_fwstate_(%struct.mlme_priv* %27, i32 %30)
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = call i32 @rtw_hal_sreset_init(%struct.adapter* %32)
  %34 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %35 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @SCAN_DISABLE, align 4
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 2
  %43 = call i32 @rtw_set_signal_stat_timer(%struct.TYPE_10__* %42)
  %44 = load i32, i32* @_SUCCESS, align 4
  ret i32 %44
}

declare dso_local i32 @rtw_hal_def_value_init(%struct.adapter*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_hal_sreset_init(%struct.adapter*) #1

declare dso_local i32 @rtw_set_signal_stat_timer(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
