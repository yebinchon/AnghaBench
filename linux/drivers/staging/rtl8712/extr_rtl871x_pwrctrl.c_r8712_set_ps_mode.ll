; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_set_ps_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_pwrctrl.c_r8712_set_ps_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.pwrctrl_priv }
%struct.pwrctrl_priv = type { i64, i64, i32, i32 }

@PM_Card_Disable = common dso_local global i64 0, align 8
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_set_ps_mode(%struct._adapter* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pwrctrl_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct._adapter*, %struct._adapter** %4, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 0
  store %struct.pwrctrl_priv* %9, %struct.pwrctrl_priv** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @PM_Card_Disable, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %53

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %7, align 8
  %21 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %7, align 8
  %27 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %25, %19
  %32 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %7, align 8
  %33 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %7, align 8
  %39 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %38, i32 0, i32 2
  store i32 1, i32* %39, align 8
  br label %43

40:                                               ; preds = %31
  %41 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %7, align 8
  %42 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %7, align 8
  %46 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %7, align 8
  %49 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %7, align 8
  %51 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %50, i32 0, i32 3
  %52 = call i32 @schedule_work(i32* %51)
  br label %53

53:                                               ; preds = %13, %43, %25
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
