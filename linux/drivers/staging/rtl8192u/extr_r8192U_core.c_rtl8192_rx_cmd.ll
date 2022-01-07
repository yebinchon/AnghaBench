; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_rx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_rx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.rtl8192_rx_info = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ieee80211_rx_stats = type { i32, i32, i32, i32 }

@IEEE80211_24GHZ_BAND = common dso_local global i32 0, align 4
@RX_URB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @rtl8192_rx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_rx_cmd(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rtl8192_rx_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee80211_rx_stats, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %9, %struct.rtl8192_rx_info** %3, align 8
  %10 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %3, align 8
  %11 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %5, i32 0, i32 0
  store i32 158, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %5, i32 0, i32 1
  %15 = load i32, i32* @IEEE80211_24GHZ_BAND, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %5, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %5, i32 0, i32 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %21, 24
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RX_URB_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %31 = call i32 @query_rx_cmdpkt_desc_status(%struct.sk_buff* %30, %struct.ieee80211_rx_stats* %5)
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @rtl819xusb_process_received_packet(%struct.net_device* %32, %struct.ieee80211_rx_stats* %5)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %35 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %34)
  br label %36

36:                                               ; preds = %29, %23, %1
  ret void
}

declare dso_local i32 @query_rx_cmdpkt_desc_status(%struct.sk_buff*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @rtl819xusb_process_received_packet(%struct.net_device*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
