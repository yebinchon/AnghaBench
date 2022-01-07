; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_ips_enter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_ips_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.pwrctrl_priv = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ips_enter(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %4)
  store %struct.pwrctrl_priv* %5, %struct.pwrctrl_priv** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %8 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hal_btcoex_IpsNotify(%struct.adapter* %6, i32 %9)
  %11 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = call i32 @_ips_enter(%struct.adapter* %14)
  %16 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  ret void
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @hal_btcoex_IpsNotify(%struct.adapter*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_ips_enter(%struct.adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
