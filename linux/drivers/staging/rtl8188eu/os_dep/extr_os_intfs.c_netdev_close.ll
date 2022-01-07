; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_netdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_netdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }

@_module_os_intfs_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"+88eu_drv - drv_close\0A\00", align 1
@rf_off = common dso_local global i64 0, align 8
@rf_on = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"(2)88eu_drv - drv_close, bup =%d, hw_init_completed =%d\0A\00", align 1
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"-88eu_drv - drv_close\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"-88eu_drv - drv_close, bup =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call i64 @rtw_netdev_priv(%struct.net_device* %4)
  %6 = inttoptr i64 %5 to %struct.adapter*
  store %struct.adapter* %6, %struct.adapter** %3, align 8
  %7 = load i32, i32* @_module_os_intfs_c_, align 4
  %8 = load i32, i32* @_drv_info_, align 4
  %9 = call i32 @RT_TRACE(i32 %7, i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @rf_off, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %15
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @rf_on, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %27
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i32, ...) @DBG_88E(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = icmp ne %struct.net_device* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %36
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @rtw_netif_queue_stopped(%struct.net_device* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %51)
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = call i32 @LeaveAllPowerSaveMode(%struct.adapter* %55)
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = call i32 @rtw_disassoc_cmd(%struct.adapter* %57, i32 500, i32 0)
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = call i32 @rtw_indicate_disconnect(%struct.adapter* %59)
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = call i32 @rtw_free_assoc_resources(%struct.adapter* %61)
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = call i32 @rtw_free_network_queue(%struct.adapter* %63, i32 1)
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %67 = call i32 @led_control_8188eu(%struct.adapter* %65, i32 %66)
  br label %68

68:                                               ; preds = %54, %27
  %69 = load i32, i32* @_module_os_intfs_c_, align 4
  %70 = load i32, i32* @_drv_info_, align 4
  %71 = call i32 @RT_TRACE(i32 %69, i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = getelementptr inbounds %struct.adapter, %struct.adapter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, i32, ...) @DBG_88E(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  ret i32 0
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @DBG_88E(i8*, i32, ...) #1

declare dso_local i32 @rtw_netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @LeaveAllPowerSaveMode(%struct.adapter*) #1

declare dso_local i32 @rtw_disassoc_cmd(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_indicate_disconnect(%struct.adapter*) #1

declare dso_local i32 @rtw_free_assoc_resources(%struct.adapter*) #1

declare dso_local i32 @rtw_free_network_queue(%struct.adapter*, i32) #1

declare dso_local i32 @led_control_8188eu(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
