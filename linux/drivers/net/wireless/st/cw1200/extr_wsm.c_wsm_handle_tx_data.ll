; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_handle_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_handle_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.wsm_tx = type { i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.cw1200_txpriv = type { i64, i32 }
%struct.cw1200_queue = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@CW1200_JOIN_STATUS_MONITOR = common dso_local global i32 0, align 4
@CW1200_JOIN_STATUS_PRE_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"A frame with expired link id is dropped.\0A\00", align 1
@CW1200_MAX_REQUEUE_ATTEMPTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Too many attempts to requeue a frame; dropped.\0A\00", align 1
@CW1200_JOIN_STATUS_IBSS = common dso_local global i32 0, align 4
@WSM_QUEUE_VOICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"[WSM] Issue unjoin command due to tx deauth.\0A\00", align 1
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"[WSM] Convert probe request to scan.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"[WSM] Drop frame (0x%.4X).\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"[WSM] Issue set_default_wep_key.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"[WSM] Transmit frame.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.wsm_tx*, %struct.ieee80211_tx_info*, %struct.cw1200_txpriv*, %struct.cw1200_queue*)* @wsm_handle_tx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_handle_tx_data(%struct.cw1200_common* %0, %struct.wsm_tx* %1, %struct.ieee80211_tx_info* %2, %struct.cw1200_txpriv* %3, %struct.cw1200_queue* %4) #0 {
  %6 = alloca %struct.cw1200_common*, align 8
  %7 = alloca %struct.wsm_tx*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.cw1200_txpriv*, align 8
  %10 = alloca %struct.cw1200_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %6, align 8
  store %struct.wsm_tx* %1, %struct.wsm_tx** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.cw1200_txpriv* %3, %struct.cw1200_txpriv** %9, align 8
  store %struct.cw1200_queue* %4, %struct.cw1200_queue** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %16 = bitcast %struct.wsm_tx* %15 to i32*
  %17 = load %struct.cw1200_txpriv*, %struct.cw1200_txpriv** %9, align 8
  %18 = getelementptr inbounds %struct.cw1200_txpriv, %struct.cw1200_txpriv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = bitcast i32* %20 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %21, %struct.ieee80211_hdr** %12, align 8
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  store i32 3, i32* %14, align 4
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %26 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %95 [
    i32 128, label %28
    i32 131, label %44
    i32 132, label %85
    i32 130, label %93
    i32 129, label %94
  ]

28:                                               ; preds = %5
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CW1200_JOIN_STATUS_MONITOR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 3, i32* %14, align 4
  br label %43

35:                                               ; preds = %28
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %37 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @CW1200_JOIN_STATUS_PRE_STA, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42, %34
  br label %96

44:                                               ; preds = %5
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %46 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 1, i32* %14, align 4
  br label %70

50:                                               ; preds = %44
  %51 = load %struct.cw1200_txpriv*, %struct.cw1200_txpriv** %9, align 8
  %52 = getelementptr inbounds %struct.cw1200_txpriv, %struct.cw1200_txpriv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @BIT(i32 %53)
  %55 = call i32 @BIT(i32 0)
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %57 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %50
  %63 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %64 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %63, i32 0, i32 12
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @wiphy_warn(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %69

69:                                               ; preds = %62, %50
  br label %70

70:                                               ; preds = %69, %49
  %71 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %72 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cw1200_queue_get_generation(i32 %73)
  %75 = load i32, i32* @CW1200_MAX_REQUEUE_ATTEMPTS, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %79 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %78, i32 0, i32 12
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @wiphy_warn(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %84

84:                                               ; preds = %77, %70
  br label %96

85:                                               ; preds = %5
  %86 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %87 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CW1200_JOIN_STATUS_IBSS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 1, i32* %14, align 4
  br label %92

92:                                               ; preds = %91, %85
  br label %96

93:                                               ; preds = %5
  store i32 3, i32* %14, align 4
  br label %96

94:                                               ; preds = %5
  br label %95

95:                                               ; preds = %5, %94
  store i32 1, i32* %14, align 4
  br label %96

96:                                               ; preds = %95, %93, %92, %84, %43
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %197

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = call i64 @ieee80211_is_nullfunc(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %105 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %104, i32 0, i32 8
  %106 = call i32 @spin_lock(i32* %105)
  %107 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %108 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %107, i32 0, i32 10
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %113 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %116 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @WSM_QUEUE_VOICE, align 4
  %118 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %119 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %111, %103
  %121 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %122 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %121, i32 0, i32 8
  %123 = call i32 @spin_unlock(i32* %122)
  br label %196

124:                                              ; preds = %99
  %125 = load i32, i32* %13, align 4
  %126 = call i64 @ieee80211_is_probe_req(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 0, i32* %14, align 4
  br label %195

129:                                              ; preds = %124
  %130 = load i32, i32* %13, align 4
  %131 = call i64 @ieee80211_is_deauth(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %129
  %134 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %135 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 131
  br i1 %137, label %138, label %153

138:                                              ; preds = %133
  %139 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %140 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %141 = call i32 @wsm_lock_tx_async(%struct.cw1200_common* %140)
  %142 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %143 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %146 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %145, i32 0, i32 7
  %147 = call i64 @queue_work(i32 %144, i32* %146)
  %148 = icmp sle i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %138
  %150 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %151 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %150)
  br label %152

152:                                              ; preds = %149, %138
  br label %194

153:                                              ; preds = %133, %129
  %154 = load i32, i32* %13, align 4
  %155 = call i64 @ieee80211_has_protected(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %193

157:                                              ; preds = %153
  %158 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %159 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = icmp ne %struct.TYPE_7__* %161, null
  br i1 %162, label %163, label %193

163:                                              ; preds = %157
  %164 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %165 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %171 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %193

174:                                              ; preds = %163
  %175 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %176 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %192, label %183

183:                                              ; preds = %174
  %184 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %185 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %183, %174
  store i32 2, i32* %14, align 4
  br label %193

193:                                              ; preds = %192, %183, %163, %157, %153
  br label %194

194:                                              ; preds = %193, %152
  br label %195

195:                                              ; preds = %194, %128
  br label %196

196:                                              ; preds = %195, %120
  br label %197

197:                                              ; preds = %196, %96
  %198 = load i32, i32* %14, align 4
  switch i32 %198, label %259 [
    i32 0, label %199
    i32 1, label %220
    i32 2, label %229
    i32 3, label %257
  ]

199:                                              ; preds = %197
  %200 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %201 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %202 = call i32 @wsm_lock_tx_async(%struct.cw1200_common* %201)
  %203 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %204 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %207 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 8
  %208 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %209 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %212 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %211, i32 0, i32 6
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = call i32 @queue_delayed_work(i32 %210, i32* %213, i32 0)
  %215 = icmp sle i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %199
  %217 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %218 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %217)
  br label %219

219:                                              ; preds = %216, %199
  store i32 1, i32* %11, align 4
  br label %260

220:                                              ; preds = %197
  %221 = load i32, i32* %13, align 4
  %222 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %221)
  %223 = load %struct.cw1200_queue*, %struct.cw1200_queue** %10, align 8
  %224 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %225 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @cw1200_queue_remove(%struct.cw1200_queue* %223, i32 %226)
  %228 = call i32 @BUG_ON(i32 %227)
  store i32 1, i32* %11, align 4
  br label %260

229:                                              ; preds = %197
  %230 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %231 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %232 = call i32 @wsm_lock_tx_async(%struct.cw1200_common* %231)
  %233 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %234 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %240 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %239, i32 0, i32 2
  store i64 %238, i64* %240, align 8
  %241 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %242 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %245 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %244, i32 0, i32 5
  store i32 %243, i32* %245, align 8
  %246 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %247 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %250 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %249, i32 0, i32 3
  %251 = call i64 @queue_work(i32 %248, i32* %250)
  %252 = icmp sle i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %229
  %254 = load %struct.cw1200_common*, %struct.cw1200_common** %6, align 8
  %255 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %254)
  br label %256

256:                                              ; preds = %253, %229
  store i32 1, i32* %11, align 4
  br label %260

257:                                              ; preds = %197
  %258 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %260

259:                                              ; preds = %197
  br label %260

260:                                              ; preds = %259, %257, %256, %220, %219
  %261 = load i32, i32* %11, align 4
  ret i32 %261
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wiphy_warn(i32, i8*) #1

declare dso_local i32 @cw1200_queue_get_generation(i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @ieee80211_is_probe_req(i32) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @wsm_lock_tx_async(%struct.cw1200_common*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cw1200_queue_remove(%struct.cw1200_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
