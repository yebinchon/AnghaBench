; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_init_priv_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_init_priv_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@_rtl92e_restart = common dso_local global i64 0, align 8
@rtl92e_ips_leave_wq = common dso_local global i64 0, align 8
@_rtl92e_watchdog_wq_cb = common dso_local global i64 0, align 8
@rtl92e_dm_txpower_tracking_wq = common dso_local global i64 0, align 8
@rtl92e_dm_rf_pathcheck_wq = common dso_local global i64 0, align 8
@_rtl92e_update_beacon = common dso_local global i64 0, align 8
@_rtl92e_qos_activate = common dso_local global i64 0, align 8
@rtl92e_hw_wakeup_wq = common dso_local global i64 0, align 8
@rtl92e_hw_sleep_wq = common dso_local global i64 0, align 8
@_rtl92e_irq_rx_tasklet = common dso_local global i64 0, align 8
@_rtl92e_irq_tx_tasklet = common dso_local global i64 0, align 8
@_rtl92e_prepare_beacon = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_init_priv_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_init_priv_task(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 9
  %8 = load i64, i64* @_rtl92e_restart, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @INIT_WORK_RSL(i32* %7, i8* %9, %struct.net_device* %10)
  %12 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %13 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* @rtl92e_ips_leave_wq, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @INIT_WORK_RSL(i32* %15, i8* %17, %struct.net_device* %18)
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 8
  %22 = load i64, i64* @_rtl92e_watchdog_wq_cb, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @INIT_DELAYED_WORK_RSL(i32* %21, i8* %23, %struct.net_device* %24)
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 7
  %28 = load i64, i64* @rtl92e_dm_txpower_tracking_wq, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @INIT_DELAYED_WORK_RSL(i32* %27, i8* %29, %struct.net_device* %30)
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 6
  %34 = load i64, i64* @rtl92e_dm_rf_pathcheck_wq, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @INIT_DELAYED_WORK_RSL(i32* %33, i8* %35, %struct.net_device* %36)
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 5
  %40 = load i64, i64* @_rtl92e_update_beacon, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @INIT_DELAYED_WORK_RSL(i32* %39, i8* %41, %struct.net_device* %42)
  %44 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %45 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %44, i32 0, i32 4
  %46 = load i64, i64* @_rtl92e_qos_activate, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @INIT_WORK_RSL(i32* %45, i8* %47, %struct.net_device* %48)
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* @rtl92e_hw_wakeup_wq, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @INIT_DELAYED_WORK_RSL(i32* %53, i8* %55, %struct.net_device* %56)
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* @rtl92e_hw_sleep_wq, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = call i32 @INIT_DELAYED_WORK_RSL(i32* %61, i8* %63, %struct.net_device* %64)
  %66 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %67 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %66, i32 0, i32 2
  %68 = load i64, i64* @_rtl92e_irq_rx_tasklet, align 8
  %69 = inttoptr i64 %68 to void (i64)*
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = ptrtoint %struct.r8192_priv* %70 to i64
  %72 = call i32 @tasklet_init(i32* %67, void (i64)* %69, i64 %71)
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 1
  %75 = load i64, i64* @_rtl92e_irq_tx_tasklet, align 8
  %76 = inttoptr i64 %75 to void (i64)*
  %77 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %78 = ptrtoint %struct.r8192_priv* %77 to i64
  %79 = call i32 @tasklet_init(i32* %74, void (i64)* %76, i64 %78)
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 0
  %82 = load i64, i64* @_rtl92e_prepare_beacon, align 8
  %83 = inttoptr i64 %82 to void (i64)*
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %85 = ptrtoint %struct.r8192_priv* %84 to i64
  %86 = call i32 @tasklet_init(i32* %81, void (i64)* %83, i64 %85)
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_WORK_RSL(i32*, i8*, %struct.net_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK_RSL(i32*, i8*, %struct.net_device*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
