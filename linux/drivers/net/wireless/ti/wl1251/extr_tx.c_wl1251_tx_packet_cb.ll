; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_packet_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_packet_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.sk_buff**, i32, %struct.TYPE_8__ }
%struct.sk_buff = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.tx_result = type { i64, i32, i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"SKB for packet %d is NULL\00", align 1
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_INJECTED = common dso_local global i32 0, align 4
@TX_SUCCESS = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WL1251_TKIP_IV_SPACE = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"tx status id %u skb 0x%p failures %u rate 0x%x status 0x%x (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1251*, %struct.tx_result*)* @wl1251_tx_packet_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_tx_packet_cb(%struct.wl1251* %0, %struct.tx_result* %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.tx_result*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store %struct.tx_result* %1, %struct.tx_result** %4, align 8
  %9 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %10 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %9, i32 0, i32 0
  %11 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %12 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %13 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %11, i64 %14
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %21 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @wl1251_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %133

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %25)
  store %struct.ieee80211_tx_info* %26, %struct.ieee80211_tx_info** %5, align 8
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %24
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IEEE80211_TX_CTL_INJECTED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %33
  %41 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %42 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TX_SUCCESS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %48 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %40, %33, %24
  %53 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %54 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i64 %57, i64* %63, align 8
  %64 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %65 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %68 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i32* @skb_pull(%struct.sk_buff* %72, i32 4)
  store i32* %73, i32** %8, align 8
  %74 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %79, label %101

79:                                               ; preds = %52
  %80 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %81 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %79
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @memmove(i32* %94, i32* %95, i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = load i32, i32* @WL1251_TKIP_IV_SPACE, align 4
  %100 = call i32* @skb_pull(%struct.sk_buff* %98, i32 %99)
  br label %101

101:                                              ; preds = %88, %79, %52
  %102 = load i32, i32* @DEBUG_TX, align 4
  %103 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %104 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %107 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %108 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %111 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %114 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %117 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @wl1251_tx_parse_status(i32 %118)
  %120 = call i32 @wl1251_debug(i32 %102, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %105, %struct.sk_buff* %106, i32 %109, i32 %112, i32 %115, i32 %119)
  %121 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %122 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = call i32 @ieee80211_tx_status(i32 %123, %struct.sk_buff* %124)
  %126 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %127 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %126, i32 0, i32 0
  %128 = load %struct.sk_buff**, %struct.sk_buff*** %127, align 8
  %129 = load %struct.tx_result*, %struct.tx_result** %4, align 8
  %130 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %128, i64 %131
  store %struct.sk_buff* null, %struct.sk_buff** %132, align 8
  br label %133

133:                                              ; preds = %101, %19
  ret void
}

declare dso_local i32 @wl1251_error(i8*, i64) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i64, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @wl1251_tx_parse_status(i32) #1

declare dso_local i32 @ieee80211_tx_status(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
