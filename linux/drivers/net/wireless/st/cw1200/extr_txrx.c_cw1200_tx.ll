; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i32, i32*, i64 }
%struct.ieee80211_tx_control = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.cw1200_txinfo = type { i32, %struct.TYPE_5__, %struct.sk_buff*, %struct.TYPE_4__*, %struct.cw1200_sta_priv*, %struct.ieee80211_hdr*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.cw1200_sta_priv = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.wsm_tx = type { i32 }

@CW1200_MAX_TID = common dso_local global i32 0, align 4
@CW1200_INVALID_RATE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"[TX] TX %d bytes (queue: %d, link_id: %d (%d)).\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.cw1200_common*, align 8
  %8 = alloca %struct.cw1200_txinfo, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.wsm_tx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %15, align 8
  store %struct.cw1200_common* %16, %struct.cw1200_common** %7, align 8
  %17 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 0
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %18)
  store i32 %19, i32* %17, align 8
  %20 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* @CW1200_MAX_TID, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %26 = load i32, i32* @CW1200_INVALID_RATE_ID, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %28, %struct.sk_buff** %27, align 8
  %29 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %29, align 8
  %30 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 4
  store %struct.cw1200_sta_priv* null, %struct.cw1200_sta_priv** %30, align 8
  %31 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 5
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %35, %struct.ieee80211_hdr** %31, align 8
  %36 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 6
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 7
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @IEEE80211_SKB_CB(%struct.sk_buff* %39)
  store i32 %40, i32* %38, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %41 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %42 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  br label %180

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 5
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %47, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ieee80211_hdrlen(i32 %50)
  %52 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 7
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 5
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %53, align 8
  %55 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %54)
  %56 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 6
  store i32 %55, i32* %56, align 8
  %57 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %58 = icmp ne %struct.ieee80211_tx_control* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %46
  %60 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 3
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %63, align 8
  %64 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = bitcast i32* %66 to %struct.cw1200_sta_priv*
  %68 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 4
  store %struct.cw1200_sta_priv* %67, %struct.cw1200_sta_priv** %68, align 8
  br label %69

69:                                               ; preds = %59, %46
  %70 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 4
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %180

77:                                               ; preds = %69
  %78 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %79 = call i32 @cw1200_tx_h_calc_link_ids(%struct.cw1200_common* %78, %struct.cw1200_txinfo* %8)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %180

83:                                               ; preds = %77
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %88, i32 %91, i32 %94)
  %96 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %97 = call i32 @cw1200_tx_h_pm(%struct.cw1200_common* %96, %struct.cw1200_txinfo* %8)
  %98 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %99 = call i32 @cw1200_tx_h_calc_tid(%struct.cw1200_common* %98, %struct.cw1200_txinfo* %8)
  %100 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %101 = call i32 @cw1200_tx_h_crypt(%struct.cw1200_common* %100, %struct.cw1200_txinfo* %8)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %83
  br label %180

105:                                              ; preds = %83
  %106 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %107 = call i32 @cw1200_tx_h_align(%struct.cw1200_common* %106, %struct.cw1200_txinfo* %8, i32* %12)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %180

111:                                              ; preds = %105
  %112 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %113 = call i32 @cw1200_tx_h_action(%struct.cw1200_common* %112, %struct.cw1200_txinfo* %8)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %180

117:                                              ; preds = %111
  %118 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %119 = call %struct.wsm_tx* @cw1200_tx_h_wsm(%struct.cw1200_common* %118, %struct.cw1200_txinfo* %8)
  store %struct.wsm_tx* %119, %struct.wsm_tx** %10, align 8
  %120 = load %struct.wsm_tx*, %struct.wsm_tx** %10, align 8
  %121 = icmp ne %struct.wsm_tx* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %13, align 4
  br label %180

125:                                              ; preds = %117
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.wsm_tx*, %struct.wsm_tx** %10, align 8
  %128 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %132 = load %struct.wsm_tx*, %struct.wsm_tx** %10, align 8
  %133 = call i32 @cw1200_tx_h_bt(%struct.cw1200_common* %131, %struct.cw1200_txinfo* %8, %struct.wsm_tx* %132)
  %134 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %135 = load %struct.wsm_tx*, %struct.wsm_tx** %10, align 8
  %136 = call i32 @cw1200_tx_h_rate_policy(%struct.cw1200_common* %134, %struct.cw1200_txinfo* %8, %struct.wsm_tx* %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  br label %180

140:                                              ; preds = %125
  %141 = call i32 (...) @rcu_read_lock()
  %142 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = call %struct.ieee80211_sta* @rcu_dereference(%struct.TYPE_4__* %143)
  store %struct.ieee80211_sta* %144, %struct.ieee80211_sta** %9, align 8
  %145 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %146 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %145, i32 0, i32 0
  %147 = call i32 @spin_lock_bh(i32* %146)
  %148 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %149 = call i32 @cw1200_tx_h_pm_state(%struct.cw1200_common* %148, %struct.cw1200_txinfo* %8)
  store i32 %149, i32* %11, align 4
  %150 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %151 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 2
  %158 = load %struct.sk_buff*, %struct.sk_buff** %157, align 8
  %159 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 1
  %160 = call i32 @cw1200_queue_put(i32* %156, %struct.sk_buff* %158, %struct.TYPE_5__* %159)
  %161 = call i32 @BUG_ON(i32 %160)
  %162 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %163 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %162, i32 0, i32 0
  %164 = call i32 @spin_unlock_bh(i32* %163)
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %140
  %168 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %169 = icmp ne %struct.ieee80211_sta* %168, null
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %172 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ieee80211_sta_set_buffered(%struct.ieee80211_sta* %171, i32 %174, i32 1)
  br label %176

176:                                              ; preds = %170, %167, %140
  %177 = call i32 (...) @rcu_read_unlock()
  %178 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %179 = call i32 @cw1200_bh_wakeup(%struct.cw1200_common* %178)
  br label %185

180:                                              ; preds = %139, %122, %116, %110, %104, %82, %76, %45
  %181 = load %struct.cw1200_common*, %struct.cw1200_common** %7, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %183 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %8, i32 0, i32 1
  %184 = call i32 @cw1200_skb_dtor(%struct.cw1200_common* %181, %struct.sk_buff* %182, %struct.TYPE_5__* %183)
  br label %185

185:                                              ; preds = %180, %176
  ret void
}

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cw1200_tx_h_calc_link_ids(%struct.cw1200_common*, %struct.cw1200_txinfo*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cw1200_tx_h_pm(%struct.cw1200_common*, %struct.cw1200_txinfo*) #1

declare dso_local i32 @cw1200_tx_h_calc_tid(%struct.cw1200_common*, %struct.cw1200_txinfo*) #1

declare dso_local i32 @cw1200_tx_h_crypt(%struct.cw1200_common*, %struct.cw1200_txinfo*) #1

declare dso_local i32 @cw1200_tx_h_align(%struct.cw1200_common*, %struct.cw1200_txinfo*, i32*) #1

declare dso_local i32 @cw1200_tx_h_action(%struct.cw1200_common*, %struct.cw1200_txinfo*) #1

declare dso_local %struct.wsm_tx* @cw1200_tx_h_wsm(%struct.cw1200_common*, %struct.cw1200_txinfo*) #1

declare dso_local i32 @cw1200_tx_h_bt(%struct.cw1200_common*, %struct.cw1200_txinfo*, %struct.wsm_tx*) #1

declare dso_local i32 @cw1200_tx_h_rate_policy(%struct.cw1200_common*, %struct.cw1200_txinfo*, %struct.wsm_tx*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cw1200_tx_h_pm_state(%struct.cw1200_common*, %struct.cw1200_txinfo*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cw1200_queue_put(i32*, %struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_sta_set_buffered(%struct.ieee80211_sta*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cw1200_bh_wakeup(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_skb_dtor(%struct.cw1200_common*, %struct.sk_buff*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
