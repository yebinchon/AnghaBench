; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl12xx_tx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl12xx_tx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32, %struct.sk_buff**, i64* }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"freeing skb 0x%p\00", align 1
@WLCORE_QUIRK_TKIP_HEADER_SPACE = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WL1271_EXTRA_SPACE_TKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl12xx_tx_reset(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %8 = call i64 @wl1271_tx_total_queue_count(%struct.wl1271* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %14 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @wl1271_tx_reset_link_queues(%struct.wl1271* %18, i32 %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %11

24:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @NUM_TX_QUEUES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 5
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %25

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %42 = call i32 @wl1271_handle_tx_low_watermark(%struct.wl1271* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %139, %40
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %142

49:                                               ; preds = %43
  %50 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 4
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %52, i64 %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  %57 = icmp eq %struct.sk_buff* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %139

59:                                               ; preds = %49
  %60 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %61 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %60, i32 0, i32 4
  %62 = load %struct.sk_buff**, %struct.sk_buff*** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %62, i64 %64
  %66 = load %struct.sk_buff*, %struct.sk_buff** %65, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %4, align 8
  %67 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @wl1271_free_tx_id(%struct.wl1271* %67, i32 %68)
  %70 = load i32, i32* @DEBUG_TX, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @wl1271_debug(i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %71)
  %73 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call i32 @wl12xx_is_dummy_packet(%struct.wl1271* %73, %struct.sk_buff* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %138, label %77

77:                                               ; preds = %59
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %78)
  store %struct.ieee80211_tx_info* %79, %struct.ieee80211_tx_info** %5, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @skb_pull(%struct.sk_buff* %80, i32 4)
  %82 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @WLCORE_QUIRK_TKIP_HEADER_SPACE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %120

88:                                               ; preds = %77
  %89 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %90 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = icmp ne %struct.TYPE_5__* %92, null
  br i1 %93, label %94, label %120

94:                                               ; preds = %88
  %95 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %96 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %94
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %104)
  store i32 %105, i32* %6, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @WL1271_EXTRA_SPACE_TKIP, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @memmove(i64 %111, i64 %114, i32 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %118 = load i32, i32* @WL1271_EXTRA_SPACE_TKIP, align 4
  %119 = call i32 @skb_pull(%struct.sk_buff* %117, i32 %118)
  br label %120

120:                                              ; preds = %103, %94, %88, %77
  %121 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %122 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32 -1, i32* %126, align 8
  %127 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %134 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = call i32 @ieee80211_tx_status_ni(i32 %135, %struct.sk_buff* %136)
  br label %138

138:                                              ; preds = %120, %59
  br label %139

139:                                              ; preds = %138, %58
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %3, align 4
  br label %43

142:                                              ; preds = %43
  ret void
}

declare dso_local i64 @wl1271_tx_total_queue_count(%struct.wl1271*) #1

declare dso_local i32 @wl1271_tx_reset_link_queues(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_handle_tx_low_watermark(%struct.wl1271*) #1

declare dso_local i32 @wl1271_free_tx_id(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, %struct.sk_buff*) #1

declare dso_local i32 @wl12xx_is_dummy_packet(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @ieee80211_tx_status_ni(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
