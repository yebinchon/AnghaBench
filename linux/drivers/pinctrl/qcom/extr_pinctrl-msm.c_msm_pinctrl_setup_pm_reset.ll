; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_pinctrl_setup_pm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_pinctrl_setup_pm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_pinctrl = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.msm_function* }
%struct.msm_function = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"ps_hold\00", align 1
@msm_ps_hold_restart = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to setup restart handler.\0A\00", align 1
@poweroff_pctrl = common dso_local global %struct.msm_pinctrl* null, align 8
@msm_ps_hold_poweroff = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_pinctrl*)* @msm_pinctrl_setup_pm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_pinctrl_setup_pm_reset(%struct.msm_pinctrl* %0) #0 {
  %2 = alloca %struct.msm_pinctrl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_function*, align 8
  store %struct.msm_pinctrl* %0, %struct.msm_pinctrl** %2, align 8
  %5 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %2, align 8
  %6 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.msm_function*, %struct.msm_function** %8, align 8
  store %struct.msm_function* %9, %struct.msm_function** %4, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %48, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %2, align 8
  %13 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %10
  %19 = load %struct.msm_function*, %struct.msm_function** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.msm_function, %struct.msm_function* %19, i64 %21
  %23 = getelementptr inbounds %struct.msm_function, %struct.msm_function* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @msm_ps_hold_restart, align 4
  %29 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %2, align 8
  %30 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %2, align 8
  %33 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 128, i32* %34, align 4
  %35 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %2, align 8
  %36 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %35, i32 0, i32 1
  %37 = call i64 @register_restart_handler(%struct.TYPE_4__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %2, align 8
  %41 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %27
  %45 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %2, align 8
  store %struct.msm_pinctrl* %45, %struct.msm_pinctrl** @poweroff_pctrl, align 8
  %46 = load i32, i32* @msm_ps_hold_poweroff, align 4
  store i32 %46, i32* @pm_power_off, align 4
  br label %51

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %10

51:                                               ; preds = %44, %10
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @register_restart_handler(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
