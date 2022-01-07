; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_rx_process_noagg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_rx_process_noagg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64, i32* }
%struct.rtl_priv = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, %struct.rtl_stats*, %struct.ieee80211_rx_status*, i32*, %struct.sk_buff*)* }
%struct.rtl_stats = type { i32, i64, i64, i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@RTL_RX_DESC_SIZE = common dso_local global i64 0, align 8
@LED_CTL_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*)* @_rtl_usb_rx_process_noagg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_usb_rx_process_noagg(%struct.ieee80211_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_rx_status, align 4
  %11 = alloca %struct.rtl_stats, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = bitcast %struct.ieee80211_rx_status* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = bitcast %struct.rtl_stats* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i64, i64* @RTL_RX_DESC_SIZE, align 8
  %21 = call i32 @skb_pull(%struct.sk_buff* %19, i64 %20)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32 (%struct.ieee80211_hw*, %struct.rtl_stats*, %struct.ieee80211_rx_status*, i32*, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw*, %struct.rtl_stats*, %struct.ieee80211_rx_status*, i32*, %struct.sk_buff*)** %27, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 %28(%struct.ieee80211_hw* %29, %struct.rtl_stats* %11, %struct.ieee80211_rx_status* %10, i32* %30, %struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %11, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %11, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %35, %37
  %39 = call i32 @skb_pull(%struct.sk_buff* %33, i64 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %43, %struct.ieee80211_hdr** %7, align 8
  %44 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %120, label %50

50:                                               ; preds = %2
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %51)
  %53 = call i32 @memcpy(i32 %52, %struct.ieee80211_rx_status* %10, i32 4)
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @is_broadcast_ether_addr(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %79

60:                                               ; preds = %50
  %61 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @is_multicast_ether_addr(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %78

67:                                               ; preds = %60
  store i32 1, i32* %8, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %72 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %70
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  br label %78

78:                                               ; preds = %67, %66
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @ieee80211_is_data(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %85 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %89, align 8
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %92 = load i32, i32* @LED_CTL_RX, align 4
  %93 = call i32 %90(%struct.ieee80211_hw* %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %83
  br label %103

103:                                              ; preds = %102, %79
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call i32 @rtl_beacon_statistic(%struct.ieee80211_hw* %104, %struct.sk_buff* %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = call i32 @rtl_action_proc(%struct.ieee80211_hw* %107, %struct.sk_buff* %108, i32 0)
  %110 = call i64 @likely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %103
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = call i32 @ieee80211_rx(%struct.ieee80211_hw* %113, %struct.sk_buff* %114)
  br label %119

116:                                              ; preds = %103
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %117)
  br label %119

119:                                              ; preds = %116, %112
  br label %123

120:                                              ; preds = %2
  %121 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %122 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %121)
  br label %123

123:                                              ; preds = %120, %119
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @rtl_beacon_statistic(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rtl_action_proc(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_rx(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
