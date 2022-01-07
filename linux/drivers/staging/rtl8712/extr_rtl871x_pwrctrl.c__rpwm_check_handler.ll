; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c__rpwm_check_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c__rpwm_check_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i64, i64, %struct.pwrctrl_priv }
%struct.pwrctrl_priv = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*)* @_rpwm_check_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rpwm_check_handler(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %4 = load %struct._adapter*, %struct._adapter** %2, align 8
  %5 = getelementptr inbounds %struct._adapter, %struct._adapter* %4, i32 0, i32 2
  store %struct.pwrctrl_priv* %5, %struct.pwrctrl_priv** %3, align 8
  %6 = load %struct._adapter*, %struct._adapter** %2, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct._adapter*, %struct._adapter** %2, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %28

16:                                               ; preds = %10
  %17 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %21 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %25, i32 0, i32 2
  %27 = call i32 @schedule_work(i32* %26)
  br label %28

28:                                               ; preds = %15, %24, %16
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
