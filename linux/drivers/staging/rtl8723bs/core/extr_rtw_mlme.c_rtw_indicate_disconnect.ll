; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_indicate_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_indicate_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"+rtw_indicate_disconnect\0A\00", align 1
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@WIFI_UNDER_WPS = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@LPS_CTRL_DISCONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_indicate_disconnect(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  store %struct.mlme_priv* %5, %struct.mlme_priv** %3, align 8
  %6 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %7 = load i32, i32* @_drv_err_, align 4
  %8 = call i32 @RT_TRACE(i32 %6, i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %10 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %11 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @_clr_fwstate_(%struct.mlme_priv* %9, i32 %12)
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = call i64 @rtw_to_roam(%struct.adapter* %14)
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %19 = load i32, i32* @_FW_LINKED, align 4
  %20 = call i32 @_clr_fwstate_(%struct.mlme_priv* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 0
  %24 = load i32, i32* @_FW_LINKED, align 4
  %25 = call i64 @check_fwstate(%struct.mlme_priv* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = call i64 @rtw_to_roam(%struct.adapter* %28)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27, %21
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = call i32 @rtw_os_indicate_disconnect(%struct.adapter* %32)
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = call i32 @rtw_set_ips_deny(%struct.adapter* %34, i32 3000)
  %36 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %37 = load i32, i32* @_FW_LINKED, align 4
  %38 = call i32 @_clr_fwstate_(%struct.mlme_priv* %36, i32 %37)
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = call i32 @rtw_clear_scan_deny(%struct.adapter* %39)
  br label %41

41:                                               ; preds = %31, %27
  %42 = load %struct.adapter*, %struct.adapter** %2, align 8
  %43 = load i32, i32* @LPS_CTRL_DISCONNECT, align 4
  %44 = call i32 @rtw_lps_ctrl_wk_cmd(%struct.adapter* %42, i32 %43, i32 1)
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i64 @rtw_to_roam(%struct.adapter*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_os_indicate_disconnect(%struct.adapter*) #1

declare dso_local i32 @rtw_set_ips_deny(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_clear_scan_deny(%struct.adapter*) #1

declare dso_local i32 @rtw_lps_ctrl_wk_cmd(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
