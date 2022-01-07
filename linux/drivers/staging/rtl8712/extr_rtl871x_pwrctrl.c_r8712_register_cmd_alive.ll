; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_register_cmd_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_register_cmd_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.pwrctrl_priv }
%struct.pwrctrl_priv = type { i64, i32 }

@CMD_ALIVE = common dso_local global i32 0, align 4
@PS_STATE_S2 = common dso_local global i64 0, align 8
@PS_STATE_S3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_register_cmd_alive(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwrctrl_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct._adapter*, %struct._adapter** %2, align 8
  %6 = getelementptr inbounds %struct._adapter, %struct._adapter* %5, i32 0, i32 0
  store %struct.pwrctrl_priv* %6, %struct.pwrctrl_priv** %4, align 8
  %7 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %8 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %11 = load i32, i32* @CMD_ALIVE, align 4
  %12 = call i32 @register_task_alive(%struct.pwrctrl_priv* %10, i32 %11)
  %13 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %14 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PS_STATE_S2, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct._adapter*, %struct._adapter** %2, align 8
  %20 = load i32, i32* @PS_STATE_S3, align 4
  %21 = call i32 @r8712_set_rpwm(%struct._adapter* %19, i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %26 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @register_task_alive(%struct.pwrctrl_priv*, i32) #1

declare dso_local i32 @r8712_set_rpwm(%struct._adapter*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
