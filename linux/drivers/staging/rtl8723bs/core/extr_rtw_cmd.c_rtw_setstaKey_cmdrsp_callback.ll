; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setstaKey_cmdrsp_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setstaKey_cmdrsp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sta_priv }
%struct.sta_priv = type { i32 }
%struct.cmd_obj = type { i64 }
%struct.set_stakey_rsp = type { i32 }
%struct.sta_info = type { i32 }

@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"\0AERROR: rtw_setstaKey_cmdrsp_callback => can't get sta_info\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_setstaKey_cmdrsp_callback(%struct.adapter* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca %struct.sta_priv*, align 8
  %6 = alloca %struct.set_stakey_rsp*, align 8
  %7 = alloca %struct.sta_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.sta_priv* %9, %struct.sta_priv** %5, align 8
  %10 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %11 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.set_stakey_rsp*
  store %struct.set_stakey_rsp* %13, %struct.set_stakey_rsp** %6, align 8
  %14 = load %struct.sta_priv*, %struct.sta_priv** %5, align 8
  %15 = load %struct.set_stakey_rsp*, %struct.set_stakey_rsp** %6, align 8
  %16 = getelementptr inbounds %struct.set_stakey_rsp, %struct.set_stakey_rsp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %14, i32 %17)
  store %struct.sta_info* %18, %struct.sta_info** %7, align 8
  %19 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %20 = icmp eq %struct.sta_info* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %23 = load i32, i32* @_drv_err_, align 4
  %24 = call i32 @RT_TRACE(i32 %22, i32 %23, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %21
  %27 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %28 = call i32 @rtw_free_cmd_obj(%struct.cmd_obj* %27)
  ret void
}

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_free_cmd_obj(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
