; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32 }
%struct.net_device = type { i32 }
%struct.ks_wlan_private = type { i64, %struct.net_device_stats }

@DEVICE_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @ks_wlan_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @ks_wlan_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device_stats*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ks_wlan_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %5)
  store %struct.ks_wlan_private* %6, %struct.ks_wlan_private** %4, align 8
  %7 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %8 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DEVICE_STATE_READY, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.net_device_stats* null, %struct.net_device_stats** %2, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %15 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %14, i32 0, i32 1
  store %struct.net_device_stats* %15, %struct.net_device_stats** %2, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  ret %struct.net_device_stats* %17
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
