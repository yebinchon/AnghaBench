; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_unregister_cmd_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_unregister_cmd_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.pwrctrl_priv }
%struct.pwrctrl_priv = type { i64, i64, i64, i32 }

@CMD_ALIVE = common dso_local global i32 0, align 4
@PS_STATE_S2 = common dso_local global i64 0, align 8
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@PS_STATE_S0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_unregister_cmd_alive(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %4 = load %struct._adapter*, %struct._adapter** %2, align 8
  %5 = getelementptr inbounds %struct._adapter, %struct._adapter* %4, i32 0, i32 1
  store %struct.pwrctrl_priv* %5, %struct.pwrctrl_priv** %3, align 8
  %6 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %6, i32 0, i32 3
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %10 = load i32, i32* @CMD_ALIVE, align 4
  %11 = call i32 @unregister_task_alive(%struct.pwrctrl_priv* %9, i32 %10)
  %12 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PS_STATE_S2, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct._adapter*, %struct._adapter** %2, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 0
  %31 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %32 = call i32 @check_fwstate(i32* %30, i32 %31)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct._adapter*, %struct._adapter** %2, align 8
  %36 = load i32, i32* @PS_STATE_S0, align 4
  %37 = call i32 @r8712_set_rpwm(%struct._adapter* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %28, %23
  br label %39

39:                                               ; preds = %38, %17, %1
  %40 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %41 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %40, i32 0, i32 3
  %42 = call i32 @mutex_unlock(i32* %41)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unregister_task_alive(%struct.pwrctrl_priv*, i32) #1

declare dso_local i32 @check_fwstate(i32*, i32) #1

declare dso_local i32 @r8712_set_rpwm(%struct._adapter*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
