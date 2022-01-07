; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_init_pwrctrl_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_init_pwrctrl_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.pwrctrl_priv }
%struct.pwrctrl_priv = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@PS_STATE_S4 = common dso_local global i32 0, align 4
@PS_MODE_ACTIVE = common dso_local global i32 0, align 4
@SetPSModeWorkItemCallback = common dso_local global i32 0, align 4
@rpwm_workitem_callback = common dso_local global i32 0, align 4
@rpwm_check_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_init_pwrctrl_priv(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %4 = load %struct._adapter*, %struct._adapter** %2, align 8
  %5 = getelementptr inbounds %struct._adapter, %struct._adapter* %4, i32 0, i32 0
  store %struct.pwrctrl_priv* %5, %struct.pwrctrl_priv** %3, align 8
  %6 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %7 = bitcast %struct.pwrctrl_priv* %6 to i8*
  %8 = call i32 @memset(i8* %7, i32 0, i32 40)
  %9 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %9, i32 0, i32 7
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load i32, i32* @PS_STATE_S4, align 4
  %13 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @PS_MODE_ACTIVE, align 4
  %16 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %20, i32 0, i32 0
  store i32 128, i32* %21, align 8
  %22 = load %struct._adapter*, %struct._adapter** %2, align 8
  %23 = call i32 @r8712_write8(%struct._adapter* %22, i32 270925400, i32 0)
  %24 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %24, i32 0, i32 3
  %26 = load i32, i32* @SetPSModeWorkItemCallback, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %28, i32 0, i32 2
  %30 = load i32, i32* @rpwm_workitem_callback, align 4
  %31 = call i32 @INIT_WORK(i32* %29, i32 %30)
  %32 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %32, i32 0, i32 1
  %34 = load i32, i32* @rpwm_check_handler, align 4
  %35 = call i32 @timer_setup(i32* %33, i32 %34, i32 0)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
