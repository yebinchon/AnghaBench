; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_init_priv_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_init_priv_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@rtl8192_restart = common dso_local global i32 0, align 4
@rtl819x_watchdog_wqcallback = common dso_local global i32 0, align 4
@dm_txpower_trackingcallback = common dso_local global i32 0, align 4
@dm_rf_pathcheck_workitemcallback = common dso_local global i32 0, align 4
@rtl8192_update_beacon = common dso_local global i32 0, align 4
@InitialGainOperateWorkItemCallBack = common dso_local global i32 0, align 4
@rtl8192_qos_activate = common dso_local global i32 0, align 4
@rtl8192_irq_rx_tasklet = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rtl8192_init_priv_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_init_priv_task(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 7
  %8 = load i32, i32* @rtl8192_restart, align 4
  %9 = call i32 @INIT_WORK(i32* %7, i32 %8)
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 6
  %12 = load i32, i32* @rtl819x_watchdog_wqcallback, align 4
  %13 = call i32 @INIT_DELAYED_WORK(i32* %11, i32 %12)
  %14 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %15 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %14, i32 0, i32 5
  %16 = load i32, i32* @dm_txpower_trackingcallback, align 4
  %17 = call i32 @INIT_DELAYED_WORK(i32* %15, i32 %16)
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 4
  %20 = load i32, i32* @dm_rf_pathcheck_workitemcallback, align 4
  %21 = call i32 @INIT_DELAYED_WORK(i32* %19, i32 %20)
  %22 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %23 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %22, i32 0, i32 3
  %24 = load i32, i32* @rtl8192_update_beacon, align 4
  %25 = call i32 @INIT_DELAYED_WORK(i32* %23, i32 %24)
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 2
  %28 = load i32, i32* @InitialGainOperateWorkItemCallBack, align 4
  %29 = call i32 @INIT_DELAYED_WORK(i32* %27, i32 %28)
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 1
  %32 = load i32, i32* @rtl8192_qos_activate, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 0
  %36 = load i64, i64* @rtl8192_irq_rx_tasklet, align 8
  %37 = inttoptr i64 %36 to void (i64)*
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %39 = ptrtoint %struct.r8192_priv* %38 to i64
  %40 = call i32 @tasklet_init(i32* %35, void (i64)* %37, i64 %39)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
