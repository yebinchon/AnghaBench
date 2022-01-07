; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_btcoex.c_rtw_btcoex_LPS_Enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_btcoex.c_rtw_btcoex_LPS_Enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pwrctrl_priv = type { i32 }

@PS_MODE_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"BTCOEX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_btcoex_LPS_Enter(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %5)
  store %struct.pwrctrl_priv* %6, %struct.pwrctrl_priv** %3, align 8
  %7 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = call i32 @hal_btcoex_LpsVal(%struct.adapter* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load i32, i32* @PS_MODE_MIN, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @rtw_set_ps_mode(%struct.adapter* %11, i32 %12, i32 0, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @hal_btcoex_LpsVal(%struct.adapter*) #1

declare dso_local i32 @rtw_set_ps_mode(%struct.adapter*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
