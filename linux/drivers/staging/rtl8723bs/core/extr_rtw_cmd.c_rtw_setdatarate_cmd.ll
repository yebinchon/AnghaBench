; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setdatarate_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_setdatarate_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.setdatarate_parm = type { i32, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SetDataRate = common dso_local global i32 0, align 4
@NumRates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_setdatarate_cmd(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cmd_obj*, align 8
  %6 = alloca %struct.setdatarate_parm*, align 8
  %7 = alloca %struct.cmd_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.cmd_priv* %10, %struct.cmd_priv** %7, align 8
  %11 = load i32, i32* @_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = call i8* @rtw_zmalloc(i32 4)
  %13 = bitcast i8* %12 to %struct.cmd_obj*
  store %struct.cmd_obj* %13, %struct.cmd_obj** %5, align 8
  %14 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %15 = icmp eq %struct.cmd_obj* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @_FAIL, align 4
  store i32 %17, i32* %8, align 4
  br label %44

18:                                               ; preds = %2
  %19 = call i8* @rtw_zmalloc(i32 8)
  %20 = bitcast i8* %19 to %struct.setdatarate_parm*
  store %struct.setdatarate_parm* %20, %struct.setdatarate_parm** %6, align 8
  %21 = load %struct.setdatarate_parm*, %struct.setdatarate_parm** %6, align 8
  %22 = icmp eq %struct.setdatarate_parm* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %25 = call i32 @kfree(%struct.cmd_obj* %24)
  %26 = load i32, i32* @_FAIL, align 4
  store i32 %26, i32* %8, align 4
  br label %44

27:                                               ; preds = %18
  %28 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %29 = load %struct.setdatarate_parm*, %struct.setdatarate_parm** %6, align 8
  %30 = load i32, i32* @_SetDataRate, align 4
  %31 = call i32 @GEN_CMD_CODE(i32 %30)
  %32 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %28, %struct.setdatarate_parm* %29, i32 %31)
  %33 = load %struct.setdatarate_parm*, %struct.setdatarate_parm** %6, align 8
  %34 = getelementptr inbounds %struct.setdatarate_parm, %struct.setdatarate_parm* %33, i32 0, i32 0
  store i32 5, i32* %34, align 4
  %35 = load %struct.setdatarate_parm*, %struct.setdatarate_parm** %6, align 8
  %36 = getelementptr inbounds %struct.setdatarate_parm, %struct.setdatarate_parm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @NumRates, align 4
  %40 = call i32 @memcpy(i32 %37, i32* %38, i32 %39)
  %41 = load %struct.cmd_priv*, %struct.cmd_priv** %7, align 8
  %42 = load %struct.cmd_obj*, %struct.cmd_obj** %5, align 8
  %43 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %41, %struct.cmd_obj* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %27, %23, %16
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.setdatarate_parm*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
