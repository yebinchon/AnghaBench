; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_free_assoc_resources_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_free_assoc_resources_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.drvextra_cmd_parm = type { i32*, i64, i64, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@FREE_ASSOC_RESOURCES = common dso_local global i32 0, align 4
@_Set_Drv_Extra = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_free_assoc_resources_cmd(%struct.adapter* %0) #0 {
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
  %10 = call i8* @rtw_zmalloc(i32 4)
  %11 = bitcast i8* %10 to %struct.cmd_obj*
  store %struct.cmd_obj* %11, %struct.cmd_obj** %3, align 8
  %12 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %13 = icmp eq %struct.cmd_obj* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @_FAIL, align 4
  store i32 %15, i32* %6, align 4
  br label %43

16:                                               ; preds = %1
  %17 = call i8* @rtw_zmalloc(i32 32)
  %18 = bitcast i8* %17 to %struct.drvextra_cmd_parm*
  store %struct.drvextra_cmd_parm* %18, %struct.drvextra_cmd_parm** %4, align 8
  %19 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %20 = icmp eq %struct.drvextra_cmd_parm* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %23 = call i32 @kfree(%struct.cmd_obj* %22)
  %24 = load i32, i32* @_FAIL, align 4
  store i32 %24, i32* %6, align 4
  br label %43

25:                                               ; preds = %16
  %26 = load i32, i32* @FREE_ASSOC_RESOURCES, align 4
  %27 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %28 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %30 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %32 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %34 = getelementptr inbounds %struct.drvextra_cmd_parm, %struct.drvextra_cmd_parm* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %36 = load %struct.drvextra_cmd_parm*, %struct.drvextra_cmd_parm** %4, align 8
  %37 = load i32, i32* @_Set_Drv_Extra, align 4
  %38 = call i32 @GEN_CMD_CODE(i32 %37)
  %39 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %35, %struct.drvextra_cmd_parm* %36, i32 %38)
  %40 = load %struct.cmd_priv*, %struct.cmd_priv** %5, align 8
  %41 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %42 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %40, %struct.cmd_obj* %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %25, %21, %14
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.drvextra_cmd_parm*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
