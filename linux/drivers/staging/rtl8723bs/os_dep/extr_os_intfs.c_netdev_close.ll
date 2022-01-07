; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_netdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_os_intfs.c_netdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32, i32, i32, i32 }
%struct.pwrctrl_priv = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@_module_os_intfs_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"+871x_drv - drv_close\0A\00", align 1
@rf_off = common dso_local global i64 0, align 8
@rf_on = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"(2)871x_drv - drv_close, bup =%d, hw_init_completed =%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"-871x_drv - drv_close\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"-871x_drv - drv_close, bup =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i64 @rtw_netdev_priv(%struct.net_device* %5)
  %7 = inttoptr i64 %6 to %struct.adapter*
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %8)
  store %struct.pwrctrl_priv* %9, %struct.pwrctrl_priv** %4, align 8
  %10 = load i32, i32* @_module_os_intfs_c_, align 4
  %11 = load i32, i32* @_drv_info_, align 4
  %12 = call i32 @RT_TRACE(i32 %10, i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %14 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %19 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @rf_off, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %25 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %17
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %4, align 8
  %33 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @rf_on, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %27
  %38 = load %struct.adapter*, %struct.adapter** %3, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i32, ...) @DBG_871X(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @rtw_netif_queue_stopped(%struct.net_device* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @rtw_netif_stop_queue(%struct.net_device* %52)
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = call i32 @LeaveAllPowerSaveMode(%struct.adapter* %56)
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = call i32 @rtw_disassoc_cmd(%struct.adapter* %58, i32 500, i32 0)
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = call i32 @rtw_indicate_disconnect(%struct.adapter* %60)
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = call i32 @rtw_free_assoc_resources(%struct.adapter* %62, i32 1)
  %64 = load %struct.adapter*, %struct.adapter** %3, align 8
  %65 = call i32 @rtw_free_network_queue(%struct.adapter* %64, i32 1)
  br label %66

66:                                               ; preds = %55, %27
  %67 = load %struct.adapter*, %struct.adapter** %3, align 8
  %68 = call i32 @rtw_scan_abort(%struct.adapter* %67)
  %69 = load %struct.adapter*, %struct.adapter** %3, align 8
  %70 = call %struct.TYPE_2__* @adapter_wdev_data(%struct.adapter* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* @_module_os_intfs_c_, align 4
  %73 = load i32, i32* @_drv_info_, align 4
  %74 = call i32 @RT_TRACE(i32 %72, i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, ...) @DBG_871X(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  ret i32 0
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @DBG_871X(i8*, i32, ...) #1

declare dso_local i32 @rtw_netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @rtw_netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @LeaveAllPowerSaveMode(%struct.adapter*) #1

declare dso_local i32 @rtw_disassoc_cmd(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_indicate_disconnect(%struct.adapter*) #1

declare dso_local i32 @rtw_free_assoc_resources(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_free_network_queue(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_scan_abort(%struct.adapter*) #1

declare dso_local %struct.TYPE_2__* @adapter_wdev_data(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
