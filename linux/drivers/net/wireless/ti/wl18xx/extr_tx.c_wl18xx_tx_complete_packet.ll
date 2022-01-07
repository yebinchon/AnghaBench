; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_tx.c_wl18xx_tx_complete_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_tx.c_wl18xx_tx_complete_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.sk_buff** }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_9__, %struct.TYPE_6__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.wl1271_tx_hw_descr = type { i32 }

@WL18XX_TX_STATUS_DESC_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"illegal id in tx completion: %d\00", align 1
@WL18XX_TX_STATUS_STAT_BIT_IDX = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@WLCORE_QUIRK_TKIP_HEADER_SPACE = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WL1271_EXTRA_SPACE_TKIP = common dso_local global i32 0, align 4
@DEBUG_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"tx status id %u skb 0x%p success %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, i32)* @wl18xx_tx_complete_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl18xx_tx_complete_packet(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_tx_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1271_tx_hw_descr*, align 8
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @WL18XX_TX_STATUS_DESC_ID_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %16 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 6
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %22, i64 %24
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %27 = icmp eq %struct.sk_buff* %26, null
  br label %28

28:                                               ; preds = %19, %2
  %29 = phi i1 [ true, %2 ], [ %27, %19 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @wl1271_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %176

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @WL18XX_TX_STATUS_STAT_BIT_IDX, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 6
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %46, i64 %48
  %50 = load %struct.sk_buff*, %struct.sk_buff** %49, align 8
  store %struct.sk_buff* %50, %struct.sk_buff** %6, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %51)
  store %struct.ieee80211_tx_info* %52, %struct.ieee80211_tx_info** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.wl1271_tx_hw_descr*
  store %struct.wl1271_tx_hw_descr* %56, %struct.wl1271_tx_hw_descr** %9, align 8
  %57 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i64 @wl12xx_is_dummy_packet(%struct.wl1271* %57, %struct.sk_buff* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %36
  %62 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @wl1271_free_tx_id(%struct.wl1271* %62, i32 %63)
  br label %176

65:                                               ; preds = %36
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %70 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %68, %65
  %82 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %83 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %91 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 0
  %95 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %9, align 8
  %96 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @wl18xx_get_last_tx_rate(%struct.wl1271* %82, i32 %86, i32 %89, %struct.TYPE_10__* %94, i32 %97)
  %99 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %100 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  %105 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %106 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %81
  %111 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %112 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %81
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = call i32 @skb_pull(%struct.sk_buff* %117, i32 4)
  %119 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %120 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @WLCORE_QUIRK_TKIP_HEADER_SPACE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %116
  %126 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %127 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = icmp ne %struct.TYPE_8__* %129, null
  br i1 %130, label %131, label %157

131:                                              ; preds = %125
  %132 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %5, align 8
  %133 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %131
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = call i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff* %141)
  store i32 %142, i32* %10, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @WL1271_EXTRA_SPACE_TKIP, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %145, %147
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @memmove(i64 %148, i64 %151, i32 %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = load i32, i32* @WL1271_EXTRA_SPACE_TKIP, align 4
  %156 = call i32 @skb_pull(%struct.sk_buff* %154, i32 %155)
  br label %157

157:                                              ; preds = %140, %131, %125, %116
  %158 = load i32, i32* @DEBUG_TX, align 4
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @wl1271_debug(i32 %158, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %159, %struct.sk_buff* %160, i32 %161)
  %163 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %164 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %163, i32 0, i32 4
  %165 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %166 = call i32 @skb_queue_tail(i32* %164, %struct.sk_buff* %165)
  %167 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %168 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %171 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %170, i32 0, i32 2
  %172 = call i32 @queue_work(i32 %169, i32* %171)
  %173 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @wl1271_free_tx_id(%struct.wl1271* %173, i32 %174)
  br label %176

176:                                              ; preds = %157, %61, %33
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @wl12xx_is_dummy_packet(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local i32 @wl1271_free_tx_id(%struct.wl1271*, i32) #1

declare dso_local i32 @wl18xx_get_last_tx_rate(%struct.wl1271*, i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_get_hdrlen_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
