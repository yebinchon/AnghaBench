; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setassocsta_cmdrsp_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setassocsta_cmdrsp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.sta_priv }
%struct.mlme_priv = type { i32 }
%struct.sta_priv = type { i32 }
%struct.cmd_obj = type { i64, i64 }
%struct.set_assocsta_parm = type { i32 }
%struct.set_assocsta_rsp = type { i32 }
%struct.sta_info = type { i32, i32 }

@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"\0AERROR: setassocsta_cmdrsp_callbac => can't get sta_info\0A\0A\00", align 1
@WIFI_MP_STATE = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_setassocsta_cmdrsp_callback(%struct.adapter* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca %struct.sta_priv*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.set_assocsta_parm*, align 8
  %8 = alloca %struct.set_assocsta_rsp*, align 8
  %9 = alloca %struct.sta_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.sta_priv* %11, %struct.sta_priv** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.mlme_priv* %13, %struct.mlme_priv** %6, align 8
  %14 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %15 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.set_assocsta_parm*
  store %struct.set_assocsta_parm* %17, %struct.set_assocsta_parm** %7, align 8
  %18 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %19 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.set_assocsta_rsp*
  store %struct.set_assocsta_rsp* %21, %struct.set_assocsta_rsp** %8, align 8
  %22 = load %struct.sta_priv*, %struct.sta_priv** %5, align 8
  %23 = load %struct.set_assocsta_parm*, %struct.set_assocsta_parm** %7, align 8
  %24 = getelementptr inbounds %struct.set_assocsta_parm, %struct.set_assocsta_parm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %22, i32 %25)
  store %struct.sta_info* %26, %struct.sta_info** %9, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %28 = icmp eq %struct.sta_info* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %31 = load i32, i32* @_drv_err_, align 4
  %32 = call i32 @RT_TRACE(i32 %30, i32 %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %64

33:                                               ; preds = %2
  %34 = load %struct.set_assocsta_rsp*, %struct.set_assocsta_rsp** %8, align 8
  %35 = getelementptr inbounds %struct.set_assocsta_rsp, %struct.set_assocsta_rsp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %42 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %45 = load i32, i32* @WIFI_MP_STATE, align 4
  %46 = call i32 @check_fwstate(%struct.mlme_priv* %44, i32 %45)
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %57

48:                                               ; preds = %33
  %49 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %50 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %51 = call i32 @check_fwstate(%struct.mlme_priv* %49, i32 %50)
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %55 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %56 = call i32 @_clr_fwstate_(%struct.mlme_priv* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48, %33
  %58 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %59 = load i32, i32* @_FW_LINKED, align 4
  %60 = call i32 @set_fwstate(%struct.mlme_priv* %58, i32 %59)
  %61 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %62 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_bh(i32* %62)
  br label %64

64:                                               ; preds = %57, %29
  %65 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %66 = call i32 @rtw_free_cmd_obj(%struct.cmd_obj* %65)
  ret void
}

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rtw_free_cmd_obj(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
