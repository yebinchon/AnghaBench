; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211netdev_rx_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211netdev.c_p80211netdev_rx_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32, i32, i32, %struct.net_device* }

@WLAN_DEVICE_OPEN = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@ETH_P_80211_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @p80211netdev_rx_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p80211netdev_rx_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.wlandevice*
  store %struct.wlandevice* %7, %struct.wlandevice** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  %8 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %9 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  br label %11

11:                                               ; preds = %69, %66, %28, %1
  %12 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %13 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %12, i32 0, i32 1
  %14 = call %struct.sk_buff* @skb_dequeue(i32* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %4, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %72

16:                                               ; preds = %11
  %17 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %18 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WLAN_DEVICE_OPEN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %16
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ARPHRD_ETHER, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 4
  store %struct.net_device* %29, %struct.net_device** %31, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @skb_reset_mac_header(%struct.sk_buff* %32)
  %34 = load i32, i32* @CHECKSUM_NONE, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @PACKET_OTHERHOST, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ETH_P_80211_RAW, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %51
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @netif_rx_ni(%struct.sk_buff* %59)
  br label %11

61:                                               ; preds = %22
  %62 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @p80211_convert_to_ether(%struct.wlandevice* %62, %struct.sk_buff* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %11

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %16
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @dev_kfree_skb(%struct.sk_buff* %70)
  br label %11

72:                                               ; preds = %11
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @p80211_convert_to_ether(%struct.wlandevice*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
