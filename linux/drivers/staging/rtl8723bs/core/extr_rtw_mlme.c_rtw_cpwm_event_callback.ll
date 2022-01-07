; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_cpwm_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_cpwm_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.reportpwrstate_parm = type { i32 }
%struct.TYPE_2__ = type { i64 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"+rtw_cpwm_event_callback !!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_cpwm_event_callback(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.reportpwrstate_parm*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %7 = load i32, i32* @_drv_err_, align 4
  %8 = call i32 @RT_TRACE(i32 %6, i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.reportpwrstate_parm*
  store %struct.reportpwrstate_parm* %10, %struct.reportpwrstate_parm** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = call %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 128
  %16 = trunc i64 %15 to i32
  %17 = load %struct.reportpwrstate_parm*, %struct.reportpwrstate_parm** %5, align 8
  %18 = getelementptr inbounds %struct.reportpwrstate_parm, %struct.reportpwrstate_parm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = load %struct.reportpwrstate_parm*, %struct.reportpwrstate_parm** %5, align 8
  %23 = call i32 @cpwm_int_hdl(%struct.adapter* %21, %struct.reportpwrstate_parm* %22)
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @cpwm_int_hdl(%struct.adapter*, %struct.reportpwrstate_parm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
