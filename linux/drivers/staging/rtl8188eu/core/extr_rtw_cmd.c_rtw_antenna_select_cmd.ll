; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_antenna_select_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_antenna_select_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.drvextra_cmd_parm = type { i32*, i64, i32 }

@_SUCCESS = common dso_local global i64 0, align 8
@HAL_DEF_IS_SUPPORT_ANT_DIV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i64 0, align 8
@ANT_SELECT_WK_CID = common dso_local global i32 0, align 4
@_Set_Drv_Extra_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_antenna_select_cmd(%struct.adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cmd_obj*, align 8
  %9 = alloca %struct.drvextra_cmd_parm*, align 8
  %10 = alloca %struct.cmd_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  store %struct.cmd_priv* %14, %struct.cmd_priv** %10, align 8
  %15 = load i64, i64* @_SUCCESS, align 8
  store i64 %15, i64* %12, align 8
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = load i32, i32* @HAL_DEF_IS_SUPPORT_ANT_DIV, align 4
  %18 = call i32 @rtw_hal_get_def_var(%struct.adapter* %16, i32 %17, i64* %11)
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %12, align 8
  store i64 %22, i64* %4, align 8
  br label %67

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 4, i32 %27)
  %29 = bitcast i8* %28 to %struct.cmd_obj*
  store %struct.cmd_obj* %29, %struct.cmd_obj** %8, align 8
  %30 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %31 = icmp ne %struct.cmd_obj* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* @_FAIL, align 8
  store i64 %33, i64* %12, align 8
  br label %65

34:                                               ; preds = %26
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 24, i32 %35)
  %37 = bitcast i8* %36 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %37, %struct.drvextra_cmd_parm** %9, align 8
  %38 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %9, align 8
  %39 = icmp ne %struct.drvextra_cmd_parm* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %42 = call i32 @kfree(%struct.cmd_obj* %41)
  %43 = load i64, i64* @_FAIL, align 8
  store i64 %43, i64* %12, align 8
  br label %65

44:                                               ; preds = %34
  %45 = load i32, i32* @ANT_SELECT_WK_CID, align 4
  %46 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %9, align 8
  %47 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %9, align 8
  %50 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %9, align 8
  %52 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %54 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %9, align 8
  %55 = load i32, i32* @_Set_Drv_Extra_CMD_, align 4
  %56 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %53, %struct.drvextra_cmd_parm* %54, i32 %55)
  %57 = load %struct.cmd_priv*, %struct.cmd_priv** %10, align 8
  %58 = load %struct.cmd_obj*, %struct.cmd_obj** %8, align 8
  %59 = call i64 @rtw_enqueue_cmd(%struct.cmd_priv* %57, %struct.cmd_obj* %58)
  store i64 %59, i64* %12, align 8
  br label %64

60:                                               ; preds = %23
  %61 = load %struct.adapter*, %struct.adapter** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @antenna_select_wk_hdl(%struct.adapter* %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %44
  br label %65

65:                                               ; preds = %64, %40, %32
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %21
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @rtw_hal_get_def_var(%struct.adapter*, i32, i64*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.drvextra_cmd_parm*, i32) #1

declare dso_local i64 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

declare dso_local i32 @antenna_select_wk_hdl(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
