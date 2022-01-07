; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_disassoc_cmd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_disassoc_cmd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }
%struct.cmd_obj = type { i64 }

@H2C_SUCCESS = common dso_local global i64 0, align 8
@_FW_LINKED = common dso_local global i32 0, align 4
@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"\0A ***Error: disconnect_cmd_callback Fail ***\0A.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_disassoc_cmd_callback(%struct.adapter* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.mlme_priv* %7, %struct.mlme_priv** %5, align 8
  %8 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %9 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @H2C_SUCCESS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %18 = load i32, i32* @_FW_LINKED, align 4
  %19 = call i32 @set_fwstate(%struct.mlme_priv* %17, i32 %18)
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock_bh(i32* %21)
  %23 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %24 = load i32, i32* @_drv_err_, align 4
  %25 = call i32 @RT_TRACE(i32 %23, i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %28 = call i32 @rtw_free_cmd_obj(%struct.cmd_obj* %27)
  br label %29

29:                                               ; preds = %26, %13
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_free_cmd_obj(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
