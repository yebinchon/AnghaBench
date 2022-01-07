; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_pwr_state_check_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_pwr_state_check_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwrctrl_priv = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.timer_list = type { i32 }

@pwr_state_check_timer = common dso_local global i32 0, align 4
@pwrctrlpriv = common dso_local global %struct.pwrctrl_priv* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pwr_state_check_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwr_state_check_handler(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  %4 = alloca %struct.adapter*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %6 = ptrtoint %struct.pwrctrl_priv* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @pwr_state_check_timer, align 4
  %9 = call %struct.pwrctrl_priv* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.pwrctrl_priv* %9, %struct.pwrctrl_priv** %3, align 8
  %10 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %10, i32 0, i32 0
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = call i32 @rtw_ps_cmd(%struct.adapter* %13)
  ret void
}

declare dso_local %struct.pwrctrl_priv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @rtw_ps_cmd(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
