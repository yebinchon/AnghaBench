; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_confirm_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_confirm_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, i32, i64, i32, i64, i32, i32, i32, i32, i64, %struct.TYPE_6__*, %struct.cw1200_queue* }
%struct.TYPE_6__ = type { i32 }
%struct.cw1200_queue = type { i32 }
%struct.wsm_tx_confirm = type { i64, i64, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.cw1200_txpriv = type { i32 }
%struct.wsm_suspend_resume = type { i32, i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"[TX] TX confirm: %d, %d.\0A\00", align 1
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"TX failed: %d.\0A\00", align 1
@WSM_REQUEUE = common dso_local global i64 0, align 8
@WSM_TX_STATUS_REQUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Requeue for link_id %d (try %d). STAs asleep: 0x%.8X\0A\00", align 1
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i64 0, align 8
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@WSM_TX_STATUS_AGGREGATION = common dso_local global i32 0, align 4
@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_tx_confirm_cb(%struct.cw1200_common* %0, i32 %1, %struct.wsm_tx_confirm* %2) #0 {
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wsm_tx_confirm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cw1200_queue*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.cw1200_txpriv*, align 8
  %11 = alloca %struct.wsm_suspend_resume, align 4
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wsm_tx_confirm* %2, %struct.wsm_tx_confirm** %6, align 8
  %16 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %17 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @cw1200_queue_get_queue_id(i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %21 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %20, i32 0, i32 11
  %22 = load %struct.cw1200_queue*, %struct.cw1200_queue** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %22, i64 %23
  store %struct.cw1200_queue* %24, %struct.cw1200_queue** %8, align 8
  %25 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %26 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %29 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %30)
  %32 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %33 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %348

38:                                               ; preds = %3
  %39 = load i64, i64* %7, align 8
  %40 = icmp uge i64 %39, 4
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %348

45:                                               ; preds = %38
  %46 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %47 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %52 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %57 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WSM_REQUEUE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %123

61:                                               ; preds = %55
  %62 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %63 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @WSM_TX_STATUS_REQUEUE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %123

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %11, i32 0, i32 0
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %69, align 4
  %71 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %11, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %11, i32 0, i32 2
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %78 = call i32 @cw1200_suspend_resume(%struct.cw1200_common* %77, %struct.wsm_suspend_resume* %11)
  %79 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %80 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %79, i32 0, i32 10
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %86 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @cw1200_queue_get_generation(i64 %87)
  %89 = add nsw i64 %88, 1
  %90 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %91 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %90, i32 0, i32 9
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @wiphy_warn(i32 %83, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %84, i64 %89, i64 %92)
  %94 = load %struct.cw1200_queue*, %struct.cw1200_queue** %8, align 8
  %95 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %96 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @cw1200_queue_requeue(%struct.cw1200_queue* %94, i64 %97)
  %99 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %100 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %99, i32 0, i32 6
  %101 = call i32 @spin_lock_bh(i32* %100)
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %119, label %104

104:                                              ; preds = %68
  %105 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %106 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  %107 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %108 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %107, i32 0, i32 9
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %113 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %116 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %115, i32 0, i32 7
  %117 = call i32 @queue_work(i32 %114, i32* %116)
  br label %118

118:                                              ; preds = %111, %104
  br label %119

119:                                              ; preds = %118, %68
  %120 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %121 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %120, i32 0, i32 6
  %122 = call i32 @spin_unlock_bh(i32* %121)
  br label %345

123:                                              ; preds = %61, %55
  %124 = load %struct.cw1200_queue*, %struct.cw1200_queue** %8, align 8
  %125 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %126 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @cw1200_queue_get_skb(%struct.cw1200_queue* %124, i64 %127, %struct.sk_buff** %9, %struct.cw1200_txpriv** %10)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %344, label %130

130:                                              ; preds = %123
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %132 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %131)
  store %struct.ieee80211_tx_info* %132, %struct.ieee80211_tx_info** %12, align 8
  %133 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %134 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %136 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %137 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %136, i32 0, i32 5
  %138 = call i64 @cw1200_ht_greenfield(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = load i64, i64* @IEEE80211_TX_RC_GREEN_FIELD, align 8
  %142 = load i64, i64* %14, align 8
  %143 = or i64 %142, %141
  store i64 %143, i64* %14, align 8
  br label %144

144:                                              ; preds = %140, %130
  %145 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %146 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %145, i32 0, i32 3
  %147 = call i32 @spin_lock(i32* %146)
  %148 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %149 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %172

152:                                              ; preds = %144
  %153 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %154 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %157 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %152
  %161 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %162 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %167 = call i32 @__cw1200_cqm_bssloss_sm(%struct.cw1200_common* %166, i32 0, i32 0, i32 1)
  br label %171

168:                                              ; preds = %160
  %169 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %170 = call i32 @__cw1200_cqm_bssloss_sm(%struct.cw1200_common* %169, i32 0, i32 1, i32 0)
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %152, %144
  %173 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %174 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %173, i32 0, i32 3
  %175 = call i32 @spin_unlock(i32* %174)
  %176 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %177 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %200, label %180

180:                                              ; preds = %172
  %181 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %182 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %183 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %13, align 4
  %188 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %189 = call i32 @cw1200_debug_txed(%struct.cw1200_common* %188)
  %190 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %191 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @WSM_TX_STATUS_AGGREGATION, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %180
  %197 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %198 = call i32 @cw1200_debug_txed_agg(%struct.cw1200_common* %197)
  br label %199

199:                                              ; preds = %196, %180
  br label %207

200:                                              ; preds = %172
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %199
  store i32 0, i32* %15, align 4
  br label %208

208:                                              ; preds = %273, %207
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %276

212:                                              ; preds = %208
  %213 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %214 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp sge i32 %221, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %212
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %227 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = load i32, i32* %15, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  store i32 %225, i32* %233, align 4
  br label %276

234:                                              ; preds = %212
  %235 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %236 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %13, align 4
  %245 = sub nsw i32 %244, %243
  store i32 %245, i32* %13, align 4
  %246 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %247 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = load i32, i32* %15, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %234
  %259 = load i64, i64* %14, align 8
  %260 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %261 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = or i64 %269, %259
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %267, align 4
  br label %272

272:                                              ; preds = %258, %234
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  br label %208

276:                                              ; preds = %224, %208
  %277 = load i32, i32* %15, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %15, align 4
  br label %279

279:                                              ; preds = %300, %276
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %303

283:                                              ; preds = %279
  %284 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %285 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = load i32, i32* %15, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  store i32 0, i32* %291, align 4
  %292 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %293 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = load i32, i32* %15, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 2
  store i32 -1, i32* %299, align 4
  br label %300

300:                                              ; preds = %283
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %15, align 4
  br label %279

303:                                              ; preds = %279
  %304 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %305 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %306, align 8
  %308 = icmp ne %struct.TYPE_9__* %307, null
  br i1 %308, label %309, label %338

309:                                              ; preds = %303
  %310 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %311 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %312 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %315 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = sub nsw i64 %313, %319
  %321 = call i32 @skb_trim(%struct.sk_buff* %310, i64 %320)
  %322 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %323 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %309
  %331 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %332 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %333 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = sub nsw i64 %334, 8
  %336 = call i32 @skb_trim(%struct.sk_buff* %331, i64 %335)
  br label %337

337:                                              ; preds = %330, %309
  br label %338

338:                                              ; preds = %337, %303
  %339 = load %struct.cw1200_queue*, %struct.cw1200_queue** %8, align 8
  %340 = load %struct.wsm_tx_confirm*, %struct.wsm_tx_confirm** %6, align 8
  %341 = getelementptr inbounds %struct.wsm_tx_confirm, %struct.wsm_tx_confirm* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @cw1200_queue_remove(%struct.cw1200_queue* %339, i64 %342)
  br label %344

344:                                              ; preds = %338, %123
  br label %345

345:                                              ; preds = %344, %119
  %346 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %347 = call i32 @cw1200_bh_wakeup(%struct.cw1200_common* %346)
  br label %348

348:                                              ; preds = %345, %44, %37
  ret void
}

declare dso_local i64 @cw1200_queue_get_queue_id(i64) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cw1200_suspend_resume(%struct.cw1200_common*, %struct.wsm_suspend_resume*) #1

declare dso_local i32 @wiphy_warn(i32, i8*, i32, i64, i64) #1

declare dso_local i64 @cw1200_queue_get_generation(i64) #1

declare dso_local i32 @cw1200_queue_requeue(%struct.cw1200_queue*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cw1200_queue_get_skb(%struct.cw1200_queue*, i64, %struct.sk_buff**, %struct.cw1200_txpriv**) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @cw1200_ht_greenfield(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__cw1200_cqm_bssloss_sm(%struct.cw1200_common*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cw1200_debug_txed(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_debug_txed_agg(%struct.cw1200_common*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @cw1200_queue_remove(%struct.cw1200_queue*, i64) #1

declare dso_local i32 @cw1200_bh_wakeup(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
