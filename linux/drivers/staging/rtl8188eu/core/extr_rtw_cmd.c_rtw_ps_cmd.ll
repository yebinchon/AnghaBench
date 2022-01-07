; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_ps_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_ps_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32*, i32 }
%struct.drvextra_cmd_parm = type { i32*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@POWER_SAVING_CTRL_WK_CID = common dso_local global i32 0, align 4
@_Set_Drv_Extra_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_ps_cmd(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca %struct.drvextra_cmd_parm*, align 8
  %6 = alloca %struct.cmd_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.cmd_priv* %8, %struct.cmd_priv** %6, align 8
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.drvextra_cmd_parm* @kzalloc(i32 16, i32 %9)
  %11 = bitcast %struct.drvextra_cmd_parm* %10 to %struct.cmd_obj*
  store %struct.cmd_obj* %11, %struct.cmd_obj** %4, align 8
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.drvextra_cmd_parm* @kzalloc(i32 16, i32 %12)
  store %struct.drvextra_cmd_parm* %13, %struct.drvextra_cmd_parm** %5, align 8
  %14 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %15 = icmp ne %struct.cmd_obj* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %5, align 8
  %18 = icmp ne %struct.drvextra_cmd_parm* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %21 = bitcast %struct.cmd_obj* %20 to %struct.drvextra_cmd_parm*
  %22 = call i32 @kfree(%struct.drvextra_cmd_parm* %21)
  %23 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %5, align 8
  %24 = call i32 @kfree(%struct.drvextra_cmd_parm* %23)
  %25 = load i32, i32* @_FAIL, align 4
  store i32 %25, i32* %2, align 4
  br label %41

26:                                               ; preds = %16
  %27 = load i32, i32* @POWER_SAVING_CTRL_WK_CID, align 4
  %28 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %5, align 8
  %29 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %5, align 8
  %31 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %33 = bitcast %struct.cmd_obj* %32 to %struct.drvextra_cmd_parm*
  %34 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %5, align 8
  %35 = load i32, i32* @_Set_Drv_Extra_CMD_, align 4
  %36 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.drvextra_cmd_parm* %33, %struct.drvextra_cmd_parm* %34, i32 %35)
  %37 = load %struct.cmd_priv*, %struct.cmd_priv** %6, align 8
  %38 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %39 = bitcast %struct.cmd_obj* %38 to %struct.drvextra_cmd_parm*
  %40 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %37, %struct.drvextra_cmd_parm* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %26, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.drvextra_cmd_parm* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.drvextra_cmd_parm*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.drvextra_cmd_parm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
