; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_pwrctrl.c_rtw_pm_set_lps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_pwrctrl.c_rtw_pm_set_lps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.pwrctrl_priv }
%struct.pwrctrl_priv = type { i64, i32, i32 }

@PS_MODE_NUM = common dso_local global i64 0, align 8
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_pm_set_lps(%struct.adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.pwrctrl_priv* %8, %struct.pwrctrl_priv** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @PS_MODE_NUM, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %2
  %13 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %14 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = call i32 @LeaveAllPowerSaveMode(%struct.adapter* %23)
  br label %28

25:                                               ; preds = %18
  %26 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %27 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %26, i32 0, i32 1
  store i32 2, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %31 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %33 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %40 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %28, %12
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %41
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @LeaveAllPowerSaveMode(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
