; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_mgmt_tx_cancel_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_mgmt_tx_cancel_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.wilc_vif = type { %struct.wilc_priv }
%struct.wilc_priv = type { %struct.wilc_wfi_p2p_listen_params, i32, %struct.host_if_drv* }
%struct.wilc_wfi_p2p_listen_params = type { i32, i32 }
%struct.host_if_drv = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, i32)* @mgmt_tx_cancel_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgmt_tx_cancel_wait(%struct.wiphy* %0, %struct.wireless_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wilc_vif*, align 8
  %8 = alloca %struct.wilc_priv*, align 8
  %9 = alloca %struct.host_if_drv*, align 8
  %10 = alloca %struct.wilc_wfi_p2p_listen_params*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.wilc_vif* @netdev_priv(i32 %13)
  store %struct.wilc_vif* %14, %struct.wilc_vif** %7, align 8
  %15 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %16 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %15, i32 0, i32 0
  store %struct.wilc_priv* %16, %struct.wilc_priv** %8, align 8
  %17 = load %struct.wilc_priv*, %struct.wilc_priv** %8, align 8
  %18 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %17, i32 0, i32 2
  %19 = load %struct.host_if_drv*, %struct.host_if_drv** %18, align 8
  store %struct.host_if_drv* %19, %struct.host_if_drv** %9, align 8
  %20 = load i32, i32* @jiffies, align 4
  %21 = load %struct.host_if_drv*, %struct.host_if_drv** %9, align 8
  %22 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wilc_priv*, %struct.wilc_priv** %8, align 8
  %24 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %3
  %28 = load %struct.wilc_priv*, %struct.wilc_priv** %8, align 8
  %29 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %28, i32 0, i32 0
  store %struct.wilc_wfi_p2p_listen_params* %29, %struct.wilc_wfi_p2p_listen_params** %10, align 8
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %31 = load %struct.wilc_wfi_p2p_listen_params*, %struct.wilc_wfi_p2p_listen_params** %10, align 8
  %32 = getelementptr inbounds %struct.wilc_wfi_p2p_listen_params, %struct.wilc_wfi_p2p_listen_params* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wilc_wfi_p2p_listen_params*, %struct.wilc_wfi_p2p_listen_params** %10, align 8
  %35 = getelementptr inbounds %struct.wilc_wfi_p2p_listen_params, %struct.wilc_wfi_p2p_listen_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @cfg80211_remain_on_channel_expired(%struct.wireless_dev* %30, i32 %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %27, %3
  ret i32 0
}

declare dso_local %struct.wilc_vif* @netdev_priv(i32) #1

declare dso_local i32 @cfg80211_remain_on_channel_expired(%struct.wireless_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
