; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_get_wireless_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_get_wireless_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.ks_wlan_private = type { i64, %struct.iw_statistics }

@update_phyinfo = common dso_local global i32 0, align 4
@DEVICE_STATE_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iw_statistics* (%struct.net_device*)* @ks_get_wireless_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iw_statistics* @ks_get_wireless_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.iw_statistics*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ks_wlan_private*, align 8
  %5 = alloca %struct.iw_statistics*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ks_wlan_private* @netdev_priv(%struct.net_device* %6)
  store %struct.ks_wlan_private* %7, %struct.ks_wlan_private** %4, align 8
  %8 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %9 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %8, i32 0, i32 1
  store %struct.iw_statistics* %9, %struct.iw_statistics** %5, align 8
  %10 = call i32 @atomic_read(i32* @update_phyinfo)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %1
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %14 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DEVICE_STATE_READY, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %21

19:                                               ; preds = %12
  %20 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi %struct.iw_statistics* [ null, %18 ], [ %20, %19 ]
  store %struct.iw_statistics* %22, %struct.iw_statistics** %2, align 8
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %25 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %28 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %31 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %34 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %37 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %40 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  store %struct.iw_statistics* %42, %struct.iw_statistics** %2, align 8
  br label %43

43:                                               ; preds = %23, %21
  %44 = load %struct.iw_statistics*, %struct.iw_statistics** %2, align 8
  ret %struct.iw_statistics* %44
}

declare dso_local %struct.ks_wlan_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
