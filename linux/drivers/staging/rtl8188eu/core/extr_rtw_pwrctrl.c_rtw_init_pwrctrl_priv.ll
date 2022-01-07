; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_pwrctrl.c_rtw_init_pwrctrl_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_pwrctrl.c_rtw_init_pwrctrl_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.pwrctrl_priv }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.pwrctrl_priv = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, i64, i32, i32, i32, i64, i64, i32, i32 }

@rf_on = common dso_local global i32 0, align 4
@RTW_PWR_STATE_CHK_INTERVAL = common dso_local global i32 0, align 4
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@PS_STATE_S4 = common dso_local global i32 0, align 4
@pwr_state_check_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_init_pwrctrl_priv(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 1
  store %struct.pwrctrl_priv* %5, %struct.pwrctrl_priv** %3, align 8
  %6 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %6, i32 0, i32 23
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load i32, i32* @rf_on, align 4
  %10 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %10, i32 0, i32 22
  store i32 %9, i32* %11, align 8
  %12 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %12, i32 0, i32 21
  store i64 0, i64* %13, align 8
  %14 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %14, i32 0, i32 20
  store i64 0, i64* %15, align 8
  %16 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %22, i32 0, i32 19
  store i32 %21, i32* %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %28, i32 0, i32 18
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @RTW_PWR_STATE_CHK_INTERVAL, align 4
  %31 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %31, i32 0, i32 17
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %33, i32 0, i32 16
  store i64 0, i64* %34, align 8
  %35 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %36 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %37, i32 0, i32 2
  store i32 0, i32* %38, align 8
  %39 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %39, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %41, i32 0, i32 15
  store i64 0, i64* %42, align 8
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %1
  %49 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %50 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  br label %59

52:                                               ; preds = %1
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %58 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %48
  %60 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %61 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %69, i32 0, i32 6
  store i32 0, i32* %70, align 4
  %71 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %72 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %71, i32 0, i32 14
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @PS_STATE_S4, align 4
  %74 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %75 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %74, i32 0, i32 13
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %77 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %78 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %77, i32 0, i32 12
  store i64 %76, i64* %78, align 8
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %84 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %83, i32 0, i32 11
  store i32 %82, i32* %84, align 8
  %85 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %86 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %85, i32 0, i32 10
  store i64 0, i64* %86, align 8
  %87 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %88 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %87, i32 0, i32 7
  store i32 128, i32* %88, align 8
  %89 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %90 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %89, i32 0, i32 8
  store i32 0, i32* %90, align 4
  %91 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %92 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %91, i32 0, i32 9
  %93 = load i32, i32* @pwr_state_check_handler, align 4
  %94 = call i32 @timer_setup(i32* %92, i32 %93, i32 0)
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
