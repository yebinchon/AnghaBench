; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_unregister_task_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_unregister_task_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwrctrl_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwrctrl_priv*, i32)* @unregister_task_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unregister_task_alive(%struct.pwrctrl_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.pwrctrl_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.pwrctrl_priv* %0, %struct.pwrctrl_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %6 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
