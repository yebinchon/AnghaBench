; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_disassoc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_disassoc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.disconnect_parm = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"+rtw_disassoc_cmd\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@_DisConnect_CMD_ = common dso_local global i32 0, align 4
@H2C_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_disassoc_cmd(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_obj*, align 8
  %8 = alloca %struct.disconnect_parm*, align 8
  %9 = alloca %struct.cmd_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.cmd_obj* null, %struct.cmd_obj** %7, align 8
  store %struct.disconnect_parm* null, %struct.disconnect_parm** %8, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  store %struct.cmd_priv* %12, %struct.cmd_priv** %9, align 8
  %13 = load i32, i32* @_SUCCESS, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %15 = load i32, i32* @_drv_notice_, align 4
  %16 = call i32 @RT_TRACE(i32 %14, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = call i8* @rtw_zmalloc(i32 4)
  %18 = bitcast i8* %17 to %struct.disconnect_parm*
  store %struct.disconnect_parm* %18, %struct.disconnect_parm** %8, align 8
  %19 = load %struct.disconnect_parm*, %struct.disconnect_parm** %8, align 8
  %20 = icmp eq %struct.disconnect_parm* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @_FAIL, align 4
  store i32 %22, i32* %10, align 4
  br label %59

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.disconnect_parm*, %struct.disconnect_parm** %8, align 8
  %26 = getelementptr inbounds %struct.disconnect_parm, %struct.disconnect_parm* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = call i8* @rtw_zmalloc(i32 4)
  %31 = bitcast i8* %30 to %struct.cmd_obj*
  store %struct.cmd_obj* %31, %struct.cmd_obj** %7, align 8
  %32 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %33 = icmp eq %struct.cmd_obj* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @_FAIL, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.disconnect_parm*, %struct.disconnect_parm** %8, align 8
  %37 = call i32 @kfree(%struct.disconnect_parm* %36)
  br label %59

38:                                               ; preds = %29
  %39 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %40 = load %struct.disconnect_parm*, %struct.disconnect_parm** %8, align 8
  %41 = load i32, i32* @_DisConnect_CMD_, align 4
  %42 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %39, %struct.disconnect_parm* %40, i32 %41)
  %43 = load %struct.cmd_priv*, %struct.cmd_priv** %9, align 8
  %44 = load %struct.cmd_obj*, %struct.cmd_obj** %7, align 8
  %45 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %43, %struct.cmd_obj* %44)
  store i32 %45, i32* %10, align 4
  br label %58

46:                                               ; preds = %23
  %47 = load i64, i64* @H2C_SUCCESS, align 8
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load %struct.disconnect_parm*, %struct.disconnect_parm** %8, align 8
  %50 = bitcast %struct.disconnect_parm* %49 to i32*
  %51 = call i64 @disconnect_hdl(%struct.adapter* %48, i32* %50)
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @_FAIL, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %46
  %56 = load %struct.disconnect_parm*, %struct.disconnect_parm** %8, align 8
  %57 = call i32 @kfree(%struct.disconnect_parm* %56)
  br label %58

58:                                               ; preds = %55, %38
  br label %59

59:                                               ; preds = %58, %34, %21
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.disconnect_parm*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.disconnect_parm*, i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

declare dso_local i64 @disconnect_hdl(%struct.adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
