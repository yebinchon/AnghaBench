; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_dynamic_chk_wk_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_dynamic_chk_wk_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.drvextra_cmd_parm = type { i32*, i64, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@DYNAMIC_CHK_WK_CID = common dso_local global i32 0, align 4
@_Set_Drv_Extra_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_dynamic_chk_wk_cmd(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.cmd_obj*, align 8
  %4 = alloca %struct.drvextra_cmd_parm*, align 8
  %5 = alloca %struct.cmd_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.cmd_priv* %8, %struct.cmd_priv** %5, align 8
  %9 = load i32, i32* @_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i8* @kzalloc(i32 4, i32 %10)
  %12 = bitcast i8* %11 to %struct.cmd_obj*
  store %struct.cmd_obj* %12, %struct.cmd_obj** %3, align 8
  %13 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %14 = icmp ne %struct.cmd_obj* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @_FAIL, align 4
  store i32 %16, i32* %6, align 4
  br label %44

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i8* @kzalloc(i32 24, i32 %18)
  %20 = bitcast i8* %19 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %20, %struct.drvextra_cmd_parm** %4, align 8
  %21 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %22 = icmp ne %struct.drvextra_cmd_parm* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %25 = call i32 @kfree(%struct.cmd_obj* %24)
  %26 = load i32, i32* @_FAIL, align 4
  store i32 %26, i32* %6, align 4
  br label %44

27:                                               ; preds = %17
  %28 = load i32, i32* @DYNAMIC_CHK_WK_CID, align 4
  %29 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %30 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %32 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = bitcast %struct.adapter* %33 to i32*
  %35 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %36 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %38 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %39 = load i32, i32* @_Set_Drv_Extra_CMD_, align 4
  %40 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %37, %struct.drvextra_cmd_parm* %38, i32 %39)
  %41 = load %struct.cmd_priv*, %struct.cmd_priv** %5, align 8
  %42 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %43 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %41, %struct.cmd_obj* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %27, %23, %15
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.drvextra_cmd_parm*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
