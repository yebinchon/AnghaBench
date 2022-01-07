; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_rtw_init_pwrctrl_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_rtw_init_pwrctrl_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.pwrctrl_priv = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, %struct.adapter*, i32, i64, i64, i64, i32, i64, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32 }

@rf_on = common dso_local global i32 0, align 4
@RTW_PWR_STATE_CHK_INTERVAL = common dso_local global i32 0, align 4
@PS_MODE_ACTIVE = common dso_local global i64 0, align 8
@PS_STATE_S4 = common dso_local global i32 0, align 4
@HW_VAR_SET_RPWM = common dso_local global i32 0, align 4
@cpwm_event_callback = common dso_local global i32 0, align 4
@rpwmtimeout_workitem_callback = common dso_local global i32 0, align 4
@pwr_rpwm_timeout_handler = common dso_local global i32 0, align 4
@pwr_state_check_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_init_pwrctrl_priv(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %4)
  store %struct.pwrctrl_priv* %5, %struct.pwrctrl_priv** %3, align 8
  %6 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %6, i32 0, i32 35
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load i32, i32* @rf_on, align 4
  %10 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %10, i32 0, i32 34
  store i32 %9, i32* %11, align 8
  %12 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %12, i32 0, i32 33
  store i64 0, i64* %13, align 8
  %14 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %15 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %14, i32 0, i32 32
  store i64 0, i64* %15, align 8
  %16 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %22, i32 0, i32 31
  store i32 %21, i32* %23, align 8
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %29 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %28, i32 0, i32 30
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @RTW_PWR_STATE_CHK_INTERVAL, align 4
  %31 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %31, i32 0, i32 29
  store i32 %30, i32* %32, align 8
  %33 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %34 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %33, i32 0, i32 28
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
  %42 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %41, i32 0, i32 27
  store i64 0, i64* %42, align 8
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %56 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %58 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %57, i32 0, i32 6
  store i32 0, i32* %58, align 4
  %59 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %59, i32 0, i32 21
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @PS_STATE_S4, align 4
  %62 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %63 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %62, i32 0, i32 26
  store i32 %61, i32* %63, align 8
  %64 = load i64, i64* @PS_MODE_ACTIVE, align 8
  %65 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %66 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %65, i32 0, i32 25
  store i64 %64, i64* %66, align 8
  %67 = load %struct.adapter*, %struct.adapter** %2, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %72 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %71, i32 0, i32 24
  store i32 %70, i32* %72, align 8
  %73 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %73, i32 0, i32 23
  store i64 0, i64* %74, align 8
  %75 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %76 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %75, i32 0, i32 22
  store i64 0, i64* %76, align 8
  %77 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %78 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %77, i32 0, i32 7
  store i32 128, i32* %78, align 8
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = load i32, i32* @HW_VAR_SET_RPWM, align 4
  %81 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %82 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %81, i32 0, i32 21
  %83 = bitcast i64* %82 to i32*
  %84 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %79, i32 %80, i32* %83)
  %85 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %86 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %85, i32 0, i32 20
  %87 = load i32, i32* @cpwm_event_callback, align 4
  %88 = call i32 @_init_workitem(i32* %86, i32 %87, i32* null)
  %89 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %90 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %89, i32 0, i32 8
  store i32 0, i32* %90, align 4
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %93 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %92, i32 0, i32 19
  store %struct.adapter* %91, %struct.adapter** %93, align 8
  %94 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %95 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %94, i32 0, i32 18
  %96 = load i32, i32* @rpwmtimeout_workitem_callback, align 4
  %97 = call i32 @_init_workitem(i32* %95, i32 %96, i32* null)
  %98 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %99 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %98, i32 0, i32 17
  %100 = load i32, i32* @pwr_rpwm_timeout_handler, align 4
  %101 = call i32 @timer_setup(i32* %99, i32 %100, i32 0)
  %102 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %103 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %102, i32 0, i32 16
  %104 = load i32, i32* @pwr_state_check_handler, align 4
  %105 = call i32 @timer_setup(i32* %103, i32 %104, i32 0)
  %106 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %107 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %106, i32 0, i32 9
  store i32 0, i32* %107, align 8
  %108 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %3, align 8
  %109 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %108, i32 0, i32 10
  store i32 0, i32* %109, align 4
  ret void
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @_init_workitem(i32*, i32, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
