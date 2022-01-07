; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setassocsta_cmdrsp_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_setassocsta_cmdrsp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv, %struct.sta_priv }
%struct.mlme_priv = type { i32, i32 }
%struct.sta_priv = type { i32 }
%struct.cmd_obj = type { i64, i64 }
%struct.set_assocsta_parm = type { i32 }
%struct.set_assocsta_rsp = type { i32 }
%struct.sta_info = type { i32, i32 }

@WIFI_MP_STATE = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_setassocsta_cmdrsp_callback(%struct._adapter* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sta_priv*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  %8 = alloca %struct.set_assocsta_parm*, align 8
  %9 = alloca %struct.set_assocsta_rsp*, align 8
  %10 = alloca %struct.sta_info*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  %11 = load %struct._adapter*, %struct._adapter** %3, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 1
  store %struct.sta_priv* %12, %struct.sta_priv** %6, align 8
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 0
  store %struct.mlme_priv* %14, %struct.mlme_priv** %7, align 8
  %15 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %16 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.set_assocsta_parm*
  store %struct.set_assocsta_parm* %18, %struct.set_assocsta_parm** %8, align 8
  %19 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %20 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.set_assocsta_rsp*
  store %struct.set_assocsta_rsp* %22, %struct.set_assocsta_rsp** %9, align 8
  %23 = load %struct.sta_priv*, %struct.sta_priv** %6, align 8
  %24 = load %struct.set_assocsta_parm*, %struct.set_assocsta_parm** %8, align 8
  %25 = getelementptr inbounds %struct.set_assocsta_parm, %struct.set_assocsta_parm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %23, i32 %26)
  store %struct.sta_info* %27, %struct.sta_info** %10, align 8
  %28 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %29 = icmp ne %struct.sta_info* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %68

31:                                               ; preds = %2
  %32 = load %struct.set_assocsta_rsp*, %struct.set_assocsta_rsp** %9, align 8
  %33 = getelementptr inbounds %struct.set_assocsta_rsp, %struct.set_assocsta_rsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %40 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %44 = load i32, i32* @WIFI_MP_STATE, align 4
  %45 = call i64 @check_fwstate(%struct.mlme_priv* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %31
  %48 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %49 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %50 = call i64 @check_fwstate(%struct.mlme_priv* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %54 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %55 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %47, %31
  %59 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %60 = load i32, i32* @_FW_LINKED, align 4
  %61 = call i32 @set_fwstate(%struct.mlme_priv* %59, i32 %60)
  %62 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %63 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %67 = call i32 @r8712_free_cmd_obj(%struct.cmd_obj* %66)
  br label %68

68:                                               ; preds = %58, %30
  ret void
}

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @r8712_free_cmd_obj(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
