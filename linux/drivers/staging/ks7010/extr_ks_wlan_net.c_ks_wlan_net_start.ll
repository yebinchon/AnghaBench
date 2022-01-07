; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_net_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_net_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32*, i32 }
%struct.ks_wlan_private = type { i32, i32, i32, i64 }

@update_phyinfo = common dso_local global i32 0, align 4
@update_phyinfo_timer = common dso_local global i32 0, align 4
@ks_wlan_update_phyinfo_timeout = common dso_local global i32 0, align 4
@dummy_addr = common dso_local global i32 0, align 4
@ks_wlan_netdev_ops = common dso_local global i32 0, align 4
@ks_wlan_handler_def = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ks_wlan_net_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ks_wlan_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %4)
  store %struct.ks_wlan_private* %5, %struct.ks_wlan_private** %3, align 8
  %6 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %7 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %9 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %8, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %11 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = call i32 @atomic_set(i32* @update_phyinfo, i32 0)
  %13 = load i32, i32* @ks_wlan_update_phyinfo_timeout, align 4
  %14 = call i32 @timer_setup(i32* @update_phyinfo_timer, i32 %13, i32 0)
  %15 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %16 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @dummy_addr, align 4
  %19 = call i32 @ether_addr_copy(i32 %17, i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %3, align 8
  %24 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ether_addr_copy(i32 %22, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  store i32* @ks_wlan_netdev_ops, i32** %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  store i32* @ks_wlan_handler_def, i32** %30, align 8
  %31 = load i32, i32* @TX_TIMEOUT, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @netif_carrier_off(%struct.net_device* %34)
  ret i32 0
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
