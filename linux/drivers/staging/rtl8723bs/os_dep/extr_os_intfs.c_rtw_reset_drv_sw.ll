; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_reset_drv_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_rtw_reset_drv_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__, i64, %struct.mlme_priv }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.mlme_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.pwrctrl_priv = type { i64 }

@DF_RX_BIT = common dso_local global i32 0, align 4
@DF_TX_BIT = common dso_local global i32 0, align 4
@_FW_UNDER_SURVEY = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@SCAN_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_reset_drv_sw(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  %4 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 4
  store %struct.mlme_priv* %6, %struct.mlme_priv** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %7)
  store %struct.pwrctrl_priv* %8, %struct.pwrctrl_priv** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = call i64 @is_primary_adapter(%struct.adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = call i32 @rtw_hal_def_value_init(%struct.adapter* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i32, i32* @DF_RX_BIT, align 4
  %18 = call i32 @RTW_ENABLE_FUNC(%struct.adapter* %16, i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = load i32, i32* @DF_TX_BIT, align 4
  %21 = call i32 @RTW_ENABLE_FUNC(%struct.adapter* %19, i32 %20)
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %37 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %40 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %41 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @_clr_fwstate_(%struct.mlme_priv* %39, i32 %42)
  %44 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %45 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @SCAN_DISABLE, align 4
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 0
  %53 = call i32 @rtw_set_signal_stat_timer(%struct.TYPE_10__* %52)
  ret void
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i64 @is_primary_adapter(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_def_value_init(%struct.adapter*) #1

declare dso_local i32 @RTW_ENABLE_FUNC(%struct.adapter*, i32) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_set_signal_stat_timer(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
