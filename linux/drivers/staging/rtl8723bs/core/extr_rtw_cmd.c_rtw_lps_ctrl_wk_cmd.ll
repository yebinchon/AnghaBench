; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_lps_ctrl_wk_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_lps_ctrl_wk_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.drvextra_cmd_parm = type { i32*, i64, i64, i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i64 0, align 8
@LPS_CTRL_WK_CID = common dso_local global i32 0, align 4
@_Set_Drv_Extra = common dso_local global i32 0, align 4

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
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  %17 = call i8* @rtw_zmalloc(i32 4)
  %18 = bitcast i8* %17 to %struct.cmd_obj*
  store %struct.cmd_obj* %18, %struct.cmd_obj** %7, align 8
  %19 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %20 = icmp eq %struct.cmd_obj* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i64, i64* @_FAIL, align 8
  store i64 %22, i64* %10, align 8
  br label %56

23:                                               ; preds = %16
  %24 = call i8* @rtw_zmalloc(i32 32)
  %25 = bitcast i8* %24 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %25, %struct.drvextra_cmd_parm** %8, align 8
  %26 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %27 = icmp eq %struct.drvextra_cmd_parm* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %30 = call i32 @kfree(%struct.cmd_obj* %29)
  %31 = load i64, i64* @_FAIL, align 8
  store i64 %31, i64* %10, align 8
  br label %56

32:                                               ; preds = %23
  %33 = load i32, i32* @LPS_CTRL_WK_CID, align 4
  %34 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %35 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %38 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %40 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %42 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %44 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %8, align 8
  %45 = load i32, i32* @_Set_Drv_Extra, align 4
  %46 = call i32 @GEN_CMD_CODE(i32 %45)
  %47 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %43, %struct.drvextra_cmd_parm* %44, i32 %46)
  %48 = load %struct.cmd_priv*, %struct.cmd_priv** %9, align 8
  %49 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %50 = call i64 @rtw_enqueue_cmd(%struct.cmd_priv* %48, %struct.cmd_obj* %49)
  store i64 %50, i64* %10, align 8
  br label %55

51:                                               ; preds = %3
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @lps_ctrl_wk_hdl(%struct.adapter* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %32
  br label %56

56:                                               ; preds = %55, %28, %21
  %57 = load i64, i64* %10, align 8
  ret i64 %57
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.drvextra_cmd_parm*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i64 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

declare dso_local i32 @lps_ctrl_wk_hdl(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
