; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_cpwm_int_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_cpwm_int_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.pwrctrl_priv, %struct.cmd_priv }
%struct.pwrctrl_priv = type { i32, i32, i32, i32, i32 }
%struct.cmd_priv = type { i32 }
%struct.reportpwrstate_parm = type { i32 }

@PS_STATE_S2 = common dso_local global i32 0, align 4
@CMD_ALIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_cpwm_int_hdl(%struct._adapter* %0, %struct.reportpwrstate_parm* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.reportpwrstate_parm*, align 8
  %5 = alloca %struct.pwrctrl_priv*, align 8
  %6 = alloca %struct.cmd_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.reportpwrstate_parm* %1, %struct.reportpwrstate_parm** %4, align 8
  %7 = load %struct._adapter*, %struct._adapter** %3, align 8
  %8 = getelementptr inbounds %struct._adapter, %struct._adapter* %7, i32 0, i32 0
  store %struct.pwrctrl_priv* %8, %struct.pwrctrl_priv** %5, align 8
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 1
  store %struct.cmd_priv* %10, %struct.cmd_priv** %6, align 8
  %11 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %12 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.reportpwrstate_parm*, %struct.reportpwrstate_parm** %4, align 8
  %15 = getelementptr inbounds %struct.reportpwrstate_parm, %struct.reportpwrstate_parm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 128
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %61

20:                                               ; preds = %2
  %21 = load %struct._adapter*, %struct._adapter** %3, align 8
  %22 = getelementptr inbounds %struct._adapter, %struct._adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %22, i32 0, i32 4
  %24 = call i32 @del_timer(i32* %23)
  %25 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %25, i32 0, i32 3
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.reportpwrstate_parm*, %struct.reportpwrstate_parm** %4, align 8
  %29 = getelementptr inbounds %struct.reportpwrstate_parm, %struct.reportpwrstate_parm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 15
  %32 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %33 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %35 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PS_STATE_S2, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %20
  %40 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %41 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CMD_ALIVE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.cmd_priv*, %struct.cmd_priv** %6, align 8
  %48 = getelementptr inbounds %struct.cmd_priv, %struct.cmd_priv* %47, i32 0, i32 0
  %49 = call i32 @complete(i32* %48)
  br label %50

50:                                               ; preds = %46, %39
  br label %51

51:                                               ; preds = %50, %20
  %52 = load %struct.reportpwrstate_parm*, %struct.reportpwrstate_parm** %4, align 8
  %53 = getelementptr inbounds %struct.reportpwrstate_parm, %struct.reportpwrstate_parm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 128
  %56 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %57 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %59 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %58, i32 0, i32 3
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %61

61:                                               ; preds = %51, %19
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
