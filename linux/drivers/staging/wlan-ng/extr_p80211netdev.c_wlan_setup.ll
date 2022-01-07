; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_wlan_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_wlan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { %struct.net_device*, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32, i32, %struct.wireless_dev*, i32*, %struct.wlandevice* }
%struct.wireless_dev = type { i32, %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.device = type { i32 }

@WLAN_DEVICE_CLOSED = common dso_local global i32 0, align 4
@WLAN_ETHCONV_8021h = common dso_local global i32 0, align 4
@WLAN_MACMODE_NONE = common dso_local global i32 0, align 4
@p80211netdev_rx_bh = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to alloc wiphy.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ether_setup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to alloc netdev.\0A\00", align 1
@p80211_netdev_ops = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_setup(%struct.wlandevice* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlandevice*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.wireless_dev*, align 8
  store %struct.wlandevice* %0, %struct.wlandevice** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @WLAN_DEVICE_CLOSED, align 4
  %11 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %12 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @WLAN_ETHCONV_8021h, align 4
  %14 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %15 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @WLAN_MACMODE_NONE, align 4
  %17 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %18 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %20 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %19, i32 0, i32 2
  %21 = call i32 @skb_queue_head_init(i32* %20)
  %22 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %23 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %22, i32 0, i32 1
  %24 = load i32, i32* @p80211netdev_rx_bh, align 4
  %25 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %26 = ptrtoint %struct.wlandevice* %25 to i64
  %27 = call i32 @tasklet_init(i32* %23, i32 %24, i64 %26)
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %30 = call %struct.wiphy* @wlan_create_wiphy(%struct.device* %28, %struct.wlandevice* %29)
  store %struct.wiphy* %30, %struct.wiphy** %8, align 8
  %31 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %32 = icmp ne %struct.wiphy* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %77

36:                                               ; preds = %2
  %37 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %38 = load i32, i32* @ether_setup, align 4
  %39 = call %struct.net_device* @alloc_netdev(i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  store %struct.net_device* %39, %struct.net_device** %7, align 8
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %46 = call i32 @wlan_free_wiphy(%struct.wiphy* %45)
  store i32 1, i32* %6, align 4
  br label %75

47:                                               ; preds = %36
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %50 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %49, i32 0, i32 0
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 4
  store %struct.wlandevice* %51, %struct.wlandevice** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %7, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 3
  store i32* @p80211_netdev_ops, i32** %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %7, align 8
  %57 = call %struct.wireless_dev* @netdev_priv(%struct.net_device* %56)
  store %struct.wireless_dev* %57, %struct.wireless_dev** %9, align 8
  %58 = load %struct.wiphy*, %struct.wiphy** %8, align 8
  %59 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %60 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %59, i32 0, i32 1
  store %struct.wiphy* %58, %struct.wiphy** %60, align 8
  %61 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %62 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %63 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 2
  store %struct.wireless_dev* %64, %struct.wireless_dev** %66, align 8
  %67 = load %struct.net_device*, %struct.net_device** %7, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  store i32 68, i32* %68, align 8
  %69 = load %struct.net_device*, %struct.net_device** %7, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  store i32 2284, i32* %70, align 4
  %71 = load %struct.net_device*, %struct.net_device** %7, align 8
  %72 = call i32 @netif_stop_queue(%struct.net_device* %71)
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = call i32 @netif_carrier_off(%struct.net_device* %73)
  br label %75

75:                                               ; preds = %47, %42
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %33
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local %struct.wiphy* @wlan_create_wiphy(%struct.device*, %struct.wlandevice*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @wlan_free_wiphy(%struct.wiphy*) #1

declare dso_local %struct.wireless_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
