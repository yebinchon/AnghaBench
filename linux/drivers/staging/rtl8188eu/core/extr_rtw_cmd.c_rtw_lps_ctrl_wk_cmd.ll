; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_lps_ctrl_wk_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_lps_ctrl_wk_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.drvextra_cmd_parm = type { i32*, i64, i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i64 0, align 8
@LPS_CTRL_WK_CID = common dso_local global i32 0, align 4
@_Set_Drv_Extra_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_lps_ctrl_wk_cmd(%struct.adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cmd_obj*, align 8
  %8 = alloca %struct.drvextra_cmd_parm*, align 8
  %9 = alloca %struct.cmd_priv*, align 8
  %10 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.cmd_priv* %12, %struct.cmd_priv** %9, align 8
  %13 = load i64, i64* @_SUCCESS, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call i8* @kzalloc(i32 4, i32 %17)
  %19 = bitcast i8* %18 to %struct.cmd_obj*
  store %struct.cmd_obj* %19, %struct.cmd_obj** %7, align 8
  %20 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %21 = icmp ne %struct.cmd_obj* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @_FAIL, align 8
  store i64 %23, i64* %10, align 8
  br label %55

24:                                               ; preds = %16
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i8* @kzalloc(i32 24, i32 %25)
  %27 = bitcast i8* %26 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %27, %struct.drvextra_cmd_parm** %8, align 8
  %28 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %29 = icmp ne %struct.drvextra_cmd_parm* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %32 = call i32 @kfree(%struct.cmd_obj* %31)
  %33 = load i64, i64* @_FAIL, align 8
  store i64 %33, i64* %10, align 8
  br label %55

34:                                               ; preds = %24
  %35 = load i32, i32* @LPS_CTRL_WK_CID, align 4
  %36 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %37 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %40 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %42 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %44 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %45 = load i32, i32* @_Set_Drv_Extra_CMD_, align 4
  %46 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %43, %struct.drvextra_cmd_parm* %44, i32 %45)
  %47 = load %struct.cmd_priv*, %struct.cmd_priv** %9, align 8
  %48 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %49 = call i64 @rtw_enqueue_cmd(%struct.cmd_priv* %47, %struct.cmd_obj* %48)
  store i64 %49, i64* %10, align 8
  br label %54

50:                                               ; preds = %3
  %51 = load %struct.adapter*, %struct.adapter** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @lps_ctrl_wk_hdl(%struct.adapter* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %34
  br label %55

55:                                               ; preds = %54, %30, %22
  %56 = load i64, i64* %10, align 8
  ret i64 %56
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.drvextra_cmd_parm*, i32) #1

declare dso_local i64 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

declare dso_local i32 @lps_ctrl_wk_hdl(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
