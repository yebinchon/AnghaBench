; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_tx_rts_cts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_tx_rts_cts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.data_queue = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_cts = type { i32 }
%struct.ieee80211_rts = type { i32 }

@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to create RTS/CTS frame\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to send RTS/CTS frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.data_queue*, %struct.sk_buff*)* @rt2x00mac_tx_rts_cts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00mac_tx_rts_cts(%struct.rt2x00_dev* %0, %struct.data_queue* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.data_queue*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.data_queue* %1, %struct.data_queue** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %13)
  store %struct.ieee80211_tx_info* %14, %struct.ieee80211_tx_info** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 4, i32* %11, align 4
  br label %27

26:                                               ; preds = %3
  store i32 4, i32* %11, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %29, %34
  %36 = call %struct.sk_buff* @dev_alloc_skb(i64 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %10, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %27
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %45 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %181

48:                                               ; preds = %27
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %51 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @skb_reserve(%struct.sk_buff* %49, i64 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @skb_put(%struct.sk_buff* %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i32 %61, i32 %64, i32 4)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %66)
  store %struct.ieee80211_tx_info* %67, %struct.ieee80211_tx_info** %9, align 8
  %68 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %71 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %69
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %81 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %79
  store i32 %87, i32* %85, align 4
  %88 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %48
  %99 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %100 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %101 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %111

104:                                              ; preds = %48
  %105 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %98
  %112 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %113 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  store i32* null, i32** %114, align 8
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = call i64 @rt2x00crypto_tx_overhead(%struct.rt2x00_dev* %115, %struct.sk_buff* %116)
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %11, align 4
  %122 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %123 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %150

132:                                              ; preds = %111
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %134 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %137 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to %struct.ieee80211_cts*
  %149 = call i32 @ieee80211_ctstoself_get(%struct.TYPE_7__* %135, i32 %139, i64 %142, i32 %143, %struct.ieee80211_tx_info* %144, %struct.ieee80211_cts* %148)
  br label %168

150:                                              ; preds = %111
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %152 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %155 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to %struct.ieee80211_rts*
  %167 = call i32 @ieee80211_rts_get(%struct.TYPE_7__* %153, i32 %157, i64 %160, i32 %161, %struct.ieee80211_tx_info* %162, %struct.ieee80211_rts* %166)
  br label %168

168:                                              ; preds = %150, %132
  %169 = load %struct.data_queue*, %struct.data_queue** %6, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %171 = call i32 @rt2x00queue_write_tx_frame(%struct.data_queue* %169, %struct.sk_buff* %170, i32* null, i32 1)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %176 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %175)
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %178 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %177, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %179

179:                                              ; preds = %174, %168
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %43
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @rt2x00crypto_tx_overhead(%struct.rt2x00_dev*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_ctstoself_get(%struct.TYPE_7__*, i32, i64, i32, %struct.ieee80211_tx_info*, %struct.ieee80211_cts*) #1

declare dso_local i32 @ieee80211_rts_get(%struct.TYPE_7__*, i32, i64, i32, %struct.ieee80211_tx_info*, %struct.ieee80211_rts*) #1

declare dso_local i32 @rt2x00queue_write_tx_frame(%struct.data_queue*, %struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
