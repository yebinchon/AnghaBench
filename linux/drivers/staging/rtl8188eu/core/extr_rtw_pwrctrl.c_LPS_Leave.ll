; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_pwrctrl.c_LPS_Leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_pwrctrl.c_LPS_Leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.pwrctrl_priv }
%struct.pwrctrl_priv = type { i64, i32, i64 }

@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@LPS_LEAVE_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LPS_Leave(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  store %struct.pwrctrl_priv* %5, %struct.pwrctrl_priv** %3, align 8
  %6 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %19 = call i32 @rtw_set_ps_mode(%struct.adapter* %17, i64 %18, i32 0, i32 0)
  %20 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = load i32, i32* @LPS_LEAVE_TIMEOUT_MS, align 4
  %28 = call i32 @LPS_RF_ON_check(%struct.adapter* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %16
  br label %30

30:                                               ; preds = %29, %10
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %33 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  ret void
}

declare dso_local i32 @rtw_set_ps_mode(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @LPS_RF_ON_check(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
