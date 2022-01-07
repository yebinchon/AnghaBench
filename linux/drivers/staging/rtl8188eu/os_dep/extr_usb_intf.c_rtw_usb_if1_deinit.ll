; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_usb_if1_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_usb_intf.c_rtw_usb_if1_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.mlme_priv, %struct.net_device* }
%struct.mlme_priv = type { i32 }
%struct.net_device = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"+r871xu_dev_remove, hw_init_completed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @rtw_usb_if1_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_usb_if1_deinit(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 3
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  store %struct.mlme_priv* %9, %struct.mlme_priv** %4, align 8
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %11 = load i32, i32* @_FW_LINKED, align 4
  %12 = call i64 @check_fwstate(%struct.mlme_priv* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = call i32 @rtw_disassoc_cmd(%struct.adapter* %15, i32 0, i32 0)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @unregister_netdev(%struct.net_device* %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rtl88eu_mon_deinit(i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = call i32 @rtw_cancel_all_timer(%struct.adapter* %28)
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = call i32 @rtw_dev_unload(%struct.adapter* %30)
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = call i32 @rtw_free_drv_sw(%struct.adapter* %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @rtw_free_netdev(%struct.net_device* %38)
  ret void
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_disassoc_cmd(%struct.adapter*, i32, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @rtl88eu_mon_deinit(i32) #1

declare dso_local i32 @rtw_cancel_all_timer(%struct.adapter*) #1

declare dso_local i32 @rtw_dev_unload(%struct.adapter*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @rtw_free_drv_sw(%struct.adapter*) #1

declare dso_local i32 @rtw_free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
