; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_chk_bmc_sleepq_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_chk_bmc_sleepq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.cmd_priv }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_ChkBMCSleepq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chk_bmc_sleepq_cmd(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.cmd_obj*, align 8
  %4 = alloca %struct.cmd_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.cmd_priv* %7, %struct.cmd_priv** %4, align 8
  %8 = load i32, i32* @_SUCCESS, align 4
  store i32 %8, i32* %5, align 4
  %9 = call %struct.cmd_obj* @rtw_zmalloc(i32 4)
  store %struct.cmd_obj* %9, %struct.cmd_obj** %3, align 8
  %10 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %11 = icmp eq %struct.cmd_obj* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @_FAIL, align 4
  store i32 %13, i32* %5, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %16 = load i32, i32* @_ChkBMCSleepq, align 4
  %17 = call i32 @GEN_CMD_CODE(i32 %16)
  %18 = call i32 @init_h2fwcmd_w_parm_no_parm_rsp(%struct.cmd_obj* %15, i32 %17)
  %19 = load %struct.cmd_priv*, %struct.cmd_priv** %4, align 8
  %20 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %21 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %19, %struct.cmd_obj* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %14, %12
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local %struct.cmd_obj* @rtw_zmalloc(i32) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_parm_rsp(%struct.cmd_obj*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
