; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_alloc_dummy_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_alloc_dummy_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.wl1271 = type { i32 }
%struct.ieee80211_hdr_3addr = type { i32 }

@TOTAL_TX_DUMMY_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate a dummy packet skb\00", align 1
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@WL1271_TID_MGMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.wl1271*)* @wl12xx_alloc_dummy_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @wl12xx_alloc_dummy_packet(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %7 = load i32, i32* @TOTAL_TX_DUMMY_PACKET_SIZE, align 4
  %8 = sext i32 %7 to i64
  %9 = sub i64 %8, 4
  %10 = sub i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @TOTAL_TX_DUMMY_PACKET_SIZE, align 4
  %13 = call %struct.sk_buff* @dev_alloc_skb(i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @wl1271_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @skb_reserve(%struct.sk_buff* %19, i32 4)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.ieee80211_hdr_3addr* @skb_put_zero(%struct.sk_buff* %21, i32 4)
  store %struct.ieee80211_hdr_3addr* %22, %struct.ieee80211_hdr_3addr** %5, align 8
  %23 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %24 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.ieee80211_hdr_3addr* @skb_put_zero(%struct.sk_buff* %31, i32 %32)
  %34 = load i32, i32* @WL1271_TID_MGMT, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %37, i32 0)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @IEEE80211_SKB_CB(%struct.sk_buff* %39)
  %41 = call i32 @memset(i32 %40, i32 0, i32 4)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %2, align 8
  br label %43

43:                                               ; preds = %18, %16
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %44
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_hdr_3addr* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IEEE80211_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
