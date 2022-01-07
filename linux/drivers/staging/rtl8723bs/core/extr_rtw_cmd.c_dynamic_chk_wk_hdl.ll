; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_dynamic_chk_wk_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_dynamic_chk_wk_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@WIFI_AP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @dynamic_chk_wk_hdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dynamic_chk_wk_hdl(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  store %struct.mlme_priv* %5, %struct.mlme_priv** %3, align 8
  %6 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %7 = load i32, i32* @WIFI_AP_STATE, align 4
  %8 = call i32 @check_fwstate(%struct.mlme_priv* %6, i32 %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call i32 @expire_timeout_chk(%struct.adapter* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = call i32 @_linked_info_dump(%struct.adapter* %14)
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = call i32 @linked_status_chk(%struct.adapter* %16)
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = call i32 @traffic_status_watchdog(%struct.adapter* %18, i32 0)
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = call i32 @rtw_hal_dm_watchdog(%struct.adapter* %20)
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = call i32 @hal_btcoex_Handler(%struct.adapter* %22)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = call i64 @is_primary_adapter(%struct.adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %13
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = call i32 @rtw_ps_processor(%struct.adapter* %28)
  br label %30

30:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @expire_timeout_chk(%struct.adapter*) #1

declare dso_local i32 @_linked_info_dump(%struct.adapter*) #1

declare dso_local i32 @linked_status_chk(%struct.adapter*) #1

declare dso_local i32 @traffic_status_watchdog(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_hal_dm_watchdog(%struct.adapter*) #1

declare dso_local i32 @hal_btcoex_Handler(%struct.adapter*) #1

declare dso_local i64 @is_primary_adapter(%struct.adapter*) #1

declare dso_local i32 @rtw_ps_processor(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
