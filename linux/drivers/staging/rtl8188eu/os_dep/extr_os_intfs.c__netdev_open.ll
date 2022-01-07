; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c__netdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c__netdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { i32, i32, i32, i32, %struct.pwrctrl_priv, %struct.TYPE_2__ }
%struct.pwrctrl_priv = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

@_module_os_intfs_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"+88eu_drv - dev_open\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"+88eu_drv - drv_open, bup =%d\0A\00", align 1
@_FAIL = common dso_local global i64 0, align 8
@_drv_err_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"rtl88eu_hal_init(): Can't init h/w!\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"MAC Address = %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Initialize driver software resource Failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"can't init mlme_ext_priv\0A\00", align 1
@LED_CTL_NO_LINK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"-88eu_drv - dev_open\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"-88eu_drv - drv_open, bup =%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"-88eu_drv - dev_open, fail!\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"-88eu_drv - drv_open fail, bup =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @_netdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_netdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.pwrctrl_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i64 @rtw_netdev_priv(%struct.net_device* %8)
  %10 = inttoptr i64 %9 to %struct.adapter*
  store %struct.adapter* %10, %struct.adapter** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %6, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 4
  store %struct.pwrctrl_priv* %12, %struct.pwrctrl_priv** %7, align 8
  %13 = load i32, i32* @_module_os_intfs_c_, align 4
  %14 = load i32, i32* @_drv_info_, align 4
  %15 = call i32 @RT_TRACE(i32 %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DBG_88E(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %7, align 8
  %21 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.adapter*, %struct.adapter** %6, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %98

27:                                               ; preds = %1
  %28 = load %struct.adapter*, %struct.adapter** %6, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %72, label %32

32:                                               ; preds = %27
  %33 = load %struct.adapter*, %struct.adapter** %6, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load %struct.adapter*, %struct.adapter** %6, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = call i64 @rtw_hal_init(%struct.adapter* %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @_FAIL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load i32, i32* @_module_os_intfs_c_, align 4
  %44 = load i32, i32* @_drv_err_, align 4
  %45 = call i32 @RT_TRACE(i32 %43, i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %106

46:                                               ; preds = %32
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %49)
  %51 = load %struct.adapter*, %struct.adapter** %6, align 8
  %52 = call i32 @rtw_start_drv_threads(%struct.adapter* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %106

57:                                               ; preds = %46
  %58 = load %struct.adapter*, %struct.adapter** %6, align 8
  %59 = call i64 @init_hw_mlme_ext(%struct.adapter* %58)
  %60 = load i64, i64* @_FAIL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %106

64:                                               ; preds = %57
  %65 = load %struct.adapter*, %struct.adapter** %6, align 8
  %66 = call i32 @rtw_hal_inirp_init(%struct.adapter* %65)
  %67 = load %struct.adapter*, %struct.adapter** %6, align 8
  %68 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %69 = call i32 @led_control_8188eu(%struct.adapter* %67, i32 %68)
  %70 = load %struct.adapter*, %struct.adapter** %6, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %64, %27
  %73 = load %struct.adapter*, %struct.adapter** %6, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.adapter*, %struct.adapter** %6, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* @jiffies, align 8
  %79 = call i64 @msecs_to_jiffies(i32 2000)
  %80 = add nsw i64 %78, %79
  %81 = call i32 @mod_timer(i32* %77, i64 %80)
  %82 = load %struct.adapter*, %struct.adapter** %6, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.adapter*, %struct.adapter** %6, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 4
  %87 = call i32 @rtw_set_pwr_state_check_timer(%struct.pwrctrl_priv* %86)
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = call i32 @rtw_netif_queue_stopped(%struct.net_device* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %72
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = call i32 @netif_tx_start_all_queues(%struct.net_device* %92)
  br label %97

94:                                               ; preds = %72
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %95)
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %24
  %99 = load i32, i32* @_module_os_intfs_c_, align 4
  %100 = load i32, i32* @_drv_info_, align 4
  %101 = call i32 @RT_TRACE(i32 %99, i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %102 = load %struct.adapter*, %struct.adapter** %6, align 8
  %103 = getelementptr inbounds %struct.adapter, %struct.adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @DBG_88E(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  store i32 0, i32* %2, align 4
  br label %120

106:                                              ; preds = %62, %55, %42
  %107 = load %struct.adapter*, %struct.adapter** %6, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @netif_carrier_off(%struct.net_device* %109)
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %111)
  %113 = load i32, i32* @_module_os_intfs_c_, align 4
  %114 = load i32, i32* @_drv_err_, align 4
  %115 = call i32 @RT_TRACE(i32 %113, i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %116 = load %struct.adapter*, %struct.adapter** %6, align 8
  %117 = getelementptr inbounds %struct.adapter, %struct.adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @DBG_88E(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %118)
  store i32 -1, i32* %2, align 4
  br label %120

120:                                              ; preds = %106, %98
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @DBG_88E(i8*, i32) #1

declare dso_local i64 @rtw_hal_init(%struct.adapter*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rtw_start_drv_threads(%struct.adapter*) #1

declare dso_local i64 @init_hw_mlme_ext(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_inirp_init(%struct.adapter*) #1

declare dso_local i32 @led_control_8188eu(%struct.adapter*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @rtw_set_pwr_state_check_timer(%struct.pwrctrl_priv*) #1

declare dso_local i32 @rtw_netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
