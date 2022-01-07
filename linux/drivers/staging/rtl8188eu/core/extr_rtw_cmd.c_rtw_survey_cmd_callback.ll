; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_survey_cmd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_survey_cmd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }
%struct.cmd_obj = type { i64 }

@H2C_DROPPED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@H2C_SUCCESS = common dso_local global i64 0, align 8
@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"\0A ********Error: MgntActrtw_set_802_11_bssid_LIST_SCAN Fail ************\0A\0A.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_survey_cmd_callback(%struct.adapter* %0, %struct.cmd_obj* %1) #0 {
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
  %11 = load i64, i64* @H2C_DROPPED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %14, i32 0, i32 0
  %16 = load i64, i64* @jiffies, align 8
  %17 = call i64 @msecs_to_jiffies(i32 1)
  %18 = add nsw i64 %16, %17
  %19 = call i32 @mod_timer(i32* %15, i64 %18)
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %22 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @H2C_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %27, i32 0, i32 0
  %29 = load i64, i64* @jiffies, align 8
  %30 = call i64 @msecs_to_jiffies(i32 1)
  %31 = add nsw i64 %29, %30
  %32 = call i32 @mod_timer(i32* %28, i64 %31)
  %33 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %34 = load i32, i32* @_drv_err_, align 4
  %35 = call i32 @RT_TRACE(i32 %33, i32 %34, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %26, %20
  br label %37

37:                                               ; preds = %36, %13
  %38 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %39 = call i32 @rtw_free_cmd_obj(%struct.cmd_obj* %38)
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_free_cmd_obj(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
