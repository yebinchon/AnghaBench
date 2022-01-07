; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_set_chplan_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_set_chplan_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.cmd_priv }
%struct.TYPE_2__ = type { i64 }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }
%struct.SetChannelPlan_param = type { i64 }

@_SUCCESS = common dso_local global i64 0, align 8
@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"+rtw_set_chplan_cmd\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@_SetChannelPlan = common dso_local global i32 0, align 4
@H2C_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_set_chplan_cmd(%struct.adapter* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cmd_obj*, align 8
  %10 = alloca %struct.SetChannelPlan_param*, align 8
  %11 = alloca %struct.cmd_priv*, align 8
  %12 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.adapter*, %struct.adapter** %5, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 1
  store %struct.cmd_priv* %14, %struct.cmd_priv** %11, align 8
  %15 = load i64, i64* @_SUCCESS, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %17 = load i32, i32* @_drv_notice_, align 4
  %18 = call i32 @RT_TRACE(i32 %16, i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.adapter*, %struct.adapter** %5, align 8
  %23 = call i32 @rtw_hal_is_disable_sw_channel_plan(%struct.adapter* %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @_FAIL, align 8
  store i64 %26, i64* %12, align 8
  br label %86

27:                                               ; preds = %21, %4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @rtw_is_channel_plan_valid(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @_FAIL, align 8
  store i64 %32, i64* %12, align 8
  br label %86

33:                                               ; preds = %27
  %34 = call i8* @rtw_zmalloc(i32 8)
  %35 = bitcast i8* %34 to %struct.SetChannelPlan_param*
  store %struct.SetChannelPlan_param* %35, %struct.SetChannelPlan_param** %10, align 8
  %36 = load %struct.SetChannelPlan_param*, %struct.SetChannelPlan_param** %10, align 8
  %37 = icmp eq %struct.SetChannelPlan_param* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @_FAIL, align 8
  store i64 %39, i64* %12, align 8
  br label %86

40:                                               ; preds = %33
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.SetChannelPlan_param*, %struct.SetChannelPlan_param** %10, align 8
  %43 = getelementptr inbounds %struct.SetChannelPlan_param, %struct.SetChannelPlan_param* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = call i8* @rtw_zmalloc(i32 4)
  %48 = bitcast i8* %47 to %struct.cmd_obj*
  store %struct.cmd_obj* %48, %struct.cmd_obj** %9, align 8
  %49 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %50 = icmp eq %struct.cmd_obj* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.SetChannelPlan_param*, %struct.SetChannelPlan_param** %10, align 8
  %53 = call i32 @kfree(%struct.SetChannelPlan_param* %52)
  %54 = load i64, i64* @_FAIL, align 8
  store i64 %54, i64* %12, align 8
  br label %86

55:                                               ; preds = %46
  %56 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %57 = load %struct.SetChannelPlan_param*, %struct.SetChannelPlan_param** %10, align 8
  %58 = load i32, i32* @_SetChannelPlan, align 4
  %59 = call i32 @GEN_CMD_CODE(i32 %58)
  %60 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %56, %struct.SetChannelPlan_param* %57, i32 %59)
  %61 = load %struct.cmd_priv*, %struct.cmd_priv** %11, align 8
  %62 = load %struct.cmd_obj*, %struct.cmd_obj** %9, align 8
  %63 = call i64 @rtw_enqueue_cmd(%struct.cmd_priv* %61, %struct.cmd_obj* %62)
  store i64 %63, i64* %12, align 8
  br label %76

64:                                               ; preds = %40
  %65 = load i64, i64* @H2C_SUCCESS, align 8
  %66 = load %struct.adapter*, %struct.adapter** %5, align 8
  %67 = load %struct.SetChannelPlan_param*, %struct.SetChannelPlan_param** %10, align 8
  %68 = bitcast %struct.SetChannelPlan_param* %67 to i8*
  %69 = call i64 @set_chplan_hdl(%struct.adapter* %66, i8* %68)
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i64, i64* @_FAIL, align 8
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %71, %64
  %74 = load %struct.SetChannelPlan_param*, %struct.SetChannelPlan_param** %10, align 8
  %75 = call i32 @kfree(%struct.SetChannelPlan_param* %74)
  br label %76

76:                                               ; preds = %73, %55
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* @_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.adapter*, %struct.adapter** %5, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %76
  br label %86

86:                                               ; preds = %85, %51, %38, %31, %25
  %87 = load i64, i64* %12, align 8
  ret i64 %87
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_hal_is_disable_sw_channel_plan(%struct.adapter*) #1

declare dso_local i32 @rtw_is_channel_plan_valid(i64) #1

declare dso_local i8* @rtw_zmalloc(i32) #1

declare dso_local i32 @kfree(%struct.SetChannelPlan_param*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.SetChannelPlan_param*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i64 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

declare dso_local i64 @set_chplan_hdl(%struct.adapter*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
