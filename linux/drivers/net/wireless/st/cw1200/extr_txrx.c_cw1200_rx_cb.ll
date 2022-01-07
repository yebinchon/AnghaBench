; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_rx_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_rx_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, i32, i64, i32, %struct.TYPE_12__*, i32, i32, i32, i32, %struct.TYPE_9__*, i32, i32, i64*, %struct.cw1200_link_entry* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.cw1200_link_entry = type { i64, i32, i32 }
%struct.wsm_rx = type { i64, i32, i32, i32, i64 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_rx_status = type { i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_10__ = type { i64 }
%struct.ieee80211_tim_ie = type { i64 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@CW1200_MAX_STA_IN_AP_MODE = common dso_local global i32 0, align 4
@CW1200_LINK_SOFT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@WLAN_CATEGORY_PUBLIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"[RX] Going to MAP&RESET link ID\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WSM_STATUS_MICFAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"[RX] MIC failure.\0A\00", align 1
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@WSM_STATUS_NO_KEY_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"[RX] No key found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"[RX] Receive failure: %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Malformed SDU rx'ed. Size is lesser than IEEE header.\0A\00", align 1
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Unknown encryption type %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Malformed SDU rx'ed. Size is lesser than crypto headers.\0A\00", align 1
@WSM_RX_STATUS_TSF_INCLUDED = common dso_local global i32 0, align 4
@WSM_RX_STATUS_AGGREGATE = common dso_local global i32 0, align 4
@WSM_RX_STATUS_ADDRESS1 = common dso_local global i32 0, align 4
@WLAN_EID_TIM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_rx_cb(%struct.cw1200_common* %0, %struct.wsm_rx* %1, i32 %2, %struct.sk_buff** %3) #0 {
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.wsm_rx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca %struct.ieee80211_mgmt*, align 8
  %13 = alloca %struct.cw1200_link_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.ieee80211_tim_ie*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.wsm_rx* %1, %struct.wsm_rx** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff** %3, %struct.sk_buff*** %8, align 8
  %24 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %9, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %27 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %26)
  store %struct.ieee80211_rx_status* %27, %struct.ieee80211_rx_status** %10, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %31, %struct.ieee80211_hdr** %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %35, %struct.ieee80211_mgmt** %12, align 8
  store %struct.cw1200_link_entry* null, %struct.cw1200_link_entry** %13, align 8
  store i32 0, i32* %15, align 4
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %37 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %36, i32 0, i32 9
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %4
  %41 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %42 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %41, i32 0, i32 9
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %40, %4
  %48 = phi i1 [ false, %4 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %51 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %53 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %626

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @CW1200_MAX_STA_IN_AP_MODE, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %67 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %66, i32 0, i32 13
  %68 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %68, i64 %71
  store %struct.cw1200_link_entry* %72, %struct.cw1200_link_entry** %13, align 8
  %73 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %13, align 8
  %74 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CW1200_LINK_SOFT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %65
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ieee80211_is_data(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %15, align 4
  br label %85

85:                                               ; preds = %84, %78, %65
  %86 = load i32, i32* @jiffies, align 4
  %87 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %13, align 8
  %88 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  br label %126

89:                                               ; preds = %61, %58
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %89
  %93 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %94 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @ieee80211_is_action(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %92
  %99 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %100 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @WLAN_CATEGORY_PUBLIC, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %98
  %107 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %109 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %108, i32 0, i32 11
  %110 = call i32 @work_pending(i32* %109)
  %111 = call i32 @WARN_ON(i32 %110)
  %112 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %113 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %112, i32 0, i32 12
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  %116 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %117 = call i64 @ieee80211_get_SA(%struct.ieee80211_hdr* %116)
  %118 = load i32, i32* @ETH_ALEN, align 4
  %119 = call i32 @memcpy(i64* %115, i64 %117, i32 %118)
  %120 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %121 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %120, i32 0, i32 1
  store i32 0, i32* %121, align 8
  %122 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %123 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %122, i32 0, i32 11
  %124 = call i32 @schedule_work(i32* %123)
  br label %125

125:                                              ; preds = %106, %98, %92, %89
  br label %126

126:                                              ; preds = %125, %85
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %165

129:                                              ; preds = %126
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %165

132:                                              ; preds = %129
  %133 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %134 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @ieee80211_is_action(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %165

138:                                              ; preds = %132
  %139 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %12, align 8
  %140 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @WLAN_CATEGORY_PUBLIC, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %138
  %147 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %148 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %147, i32 0, i32 11
  %149 = call i32 @work_pending(i32* %148)
  %150 = call i32 @WARN_ON(i32 %149)
  %151 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %152 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %151, i32 0, i32 12
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %156 = call i64 @ieee80211_get_SA(%struct.ieee80211_hdr* %155)
  %157 = load i32, i32* @ETH_ALEN, align 4
  %158 = call i32 @memcpy(i64* %154, i64 %156, i32 %157)
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %161 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  %162 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %163 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %162, i32 0, i32 11
  %164 = call i32 @schedule_work(i32* %163)
  br label %165

165:                                              ; preds = %146, %138, %132, %129, %126
  %166 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %167 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %197

170:                                              ; preds = %165
  %171 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %172 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @WSM_STATUS_MICFAILURE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %178 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %179 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %180 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %196

183:                                              ; preds = %170
  %184 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %185 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @WSM_STATUS_NO_KEY_FOUND, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %626

191:                                              ; preds = %183
  %192 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %193 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %194)
  br label %626

196:                                              ; preds = %176
  br label %197

197:                                              ; preds = %196, %165
  %198 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = icmp ult i64 %201, 4
  br i1 %202, label %203, label %210

203:                                              ; preds = %197
  %204 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %205 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %204, i32 0, i32 4
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @wiphy_warn(i32 %208, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %626

210:                                              ; preds = %197
  %211 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %212 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @ieee80211_is_pspoll(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %210
  %217 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %219 = call i64 @cw1200_handle_pspoll(%struct.cw1200_common* %217, %struct.sk_buff* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %626

222:                                              ; preds = %216
  br label %223

223:                                              ; preds = %222, %210
  %224 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %225 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, 65280
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %234, label %229

229:                                              ; preds = %223
  %230 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %231 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = icmp sgt i32 %232, 14
  br i1 %233, label %234, label %236

234:                                              ; preds = %229, %223
  %235 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  br label %238

236:                                              ; preds = %229
  %237 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi i32 [ %235, %234 ], [ %237, %236 ]
  %240 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %241 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %240, i32 0, i32 6
  store i32 %239, i32* %241, align 4
  %242 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %243 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %246 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ieee80211_channel_to_frequency(i32 %244, i32 %247)
  %249 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %250 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %249, i32 0, i32 7
  store i32 %248, i32* %250, align 8
  %251 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %252 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = icmp sge i32 %253, 14
  br i1 %254, label %255, label %265

255:                                              ; preds = %238
  %256 = load i32, i32* @RX_ENC_HT, align 4
  %257 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %258 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %257, i32 0, i32 5
  store i32 %256, i32* %258, align 8
  %259 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %260 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %261, 14
  %263 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %264 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  br label %284

265:                                              ; preds = %238
  %266 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %267 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = icmp sge i32 %268, 4
  br i1 %269, label %270, label %277

270:                                              ; preds = %265
  %271 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %272 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = sub nsw i32 %273, 2
  %275 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %276 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 4
  br label %283

277:                                              ; preds = %265
  %278 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %279 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %282 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %277, %270
  br label %284

284:                                              ; preds = %283, %255
  %285 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %286 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %289 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %288, i32 0, i32 4
  store i64 %287, i64* %289, align 8
  %290 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %291 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %290, i32 0, i32 3
  store i64 0, i64* %291, align 8
  %292 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %293 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i64 @ieee80211_hdrlen(i32 %294)
  store i64 %295, i64* %17, align 8
  %296 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %297 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @WSM_RX_STATUS_ENCRYPTION(i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %377

301:                                              ; preds = %284
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %302 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %303 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %306 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = or i32 %307, %304
  store i32 %308, i32* %306, align 8
  %309 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %310 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @WSM_RX_STATUS_ENCRYPTION(i32 %311)
  switch i32 %312, label %322 [
    i32 128, label %313
    i32 130, label %314
    i32 131, label %320
    i32 129, label %321
  ]

313:                                              ; preds = %301
  store i64 4, i64* %18, align 8
  store i64 4, i64* %19, align 8
  br label %328

314:                                              ; preds = %301
  store i64 8, i64* %18, align 8
  store i64 12, i64* %19, align 8
  %315 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %316 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %317 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 8
  br label %328

320:                                              ; preds = %301
  store i64 8, i64* %18, align 8
  store i64 8, i64* %19, align 8
  br label %328

321:                                              ; preds = %301
  store i64 18, i64* %18, align 8
  store i64 16, i64* %19, align 8
  br label %328

322:                                              ; preds = %301
  %323 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %324 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @WSM_RX_STATUS_ENCRYPTION(i32 %325)
  %327 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %326)
  br label %626

328:                                              ; preds = %321, %320, %314, %313
  %329 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %330 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @WSM_STATUS_MICFAILURE, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %328
  store i64 0, i64* %19, align 8
  br label %335

335:                                              ; preds = %334, %328
  %336 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %337 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = sext i32 %338 to i64
  %340 = load i64, i64* %17, align 8
  %341 = load i64, i64* %18, align 8
  %342 = add i64 %340, %341
  %343 = load i64, i64* %19, align 8
  %344 = add i64 %342, %343
  %345 = icmp ult i64 %339, %344
  br i1 %345, label %346, label %353

346:                                              ; preds = %335
  %347 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %348 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %347, i32 0, i32 4
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @wiphy_warn(i32 %351, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  br label %626

353:                                              ; preds = %335
  %354 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %355 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %356 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = sext i32 %357 to i64
  %359 = load i64, i64* %19, align 8
  %360 = sub i64 %358, %359
  %361 = trunc i64 %360 to i32
  %362 = call i32 @skb_trim(%struct.sk_buff* %354, i32 %361)
  %363 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %364 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* %18, align 8
  %367 = add i64 %365, %366
  %368 = trunc i64 %367 to i32
  %369 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %370 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %369, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* %17, align 8
  %373 = call i32 @memmove(i32 %368, i64 %371, i64 %372)
  %374 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %375 = load i64, i64* %18, align 8
  %376 = call i32 @skb_pull(%struct.sk_buff* %374, i64 %375)
  br label %377

377:                                              ; preds = %353, %284
  %378 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %379 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @WSM_RX_STATUS_TSF_INCLUDED, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %415

384:                                              ; preds = %377
  %385 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %386 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %385, i32 0, i32 2
  %387 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %388 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %391 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = add nsw i64 %389, %393
  %395 = sub nsw i64 %394, 8
  %396 = call i32 @memcpy(i64* %386, i64 %395, i32 8)
  %397 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %398 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %397, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = call i64 @le64_to_cpu(i64 %399)
  %401 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %402 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %401, i32 0, i32 2
  store i64 %400, i64* %402, align 8
  %403 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %404 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = icmp sge i32 %405, 8
  br i1 %406, label %407, label %414

407:                                              ; preds = %384
  %408 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %409 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %410 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = sub nsw i32 %411, 8
  %413 = call i32 @skb_trim(%struct.sk_buff* %408, i32 %412)
  br label %414

414:                                              ; preds = %407, %384
  br label %418

415:                                              ; preds = %377
  %416 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %417 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %416, i32 0, i32 2
  store i64 0, i64* %417, align 8
  br label %418

418:                                              ; preds = %415, %414
  %419 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %420 = call i32 @cw1200_debug_rxed(%struct.cw1200_common* %419)
  %421 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %422 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @WSM_RX_STATUS_AGGREGATE, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %430

427:                                              ; preds = %418
  %428 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %429 = call i32 @cw1200_debug_rxed_agg(%struct.cw1200_common* %428)
  br label %430

430:                                              ; preds = %427, %418
  %431 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %432 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = call i64 @ieee80211_is_action(i32 %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %450

436:                                              ; preds = %430
  %437 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %438 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @WSM_RX_STATUS_ADDRESS1, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %450

443:                                              ; preds = %436
  %444 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %445 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %446 = call i64 @cw1200_handle_action_rx(%struct.cw1200_common* %444, %struct.sk_buff* %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %443
  br label %627

449:                                              ; preds = %443
  br label %562

450:                                              ; preds = %436, %430
  %451 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %452 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i64 @ieee80211_is_beacon(i32 %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %561

456:                                              ; preds = %450
  %457 = load %struct.wsm_rx*, %struct.wsm_rx** %6, align 8
  %458 = getelementptr inbounds %struct.wsm_rx, %struct.wsm_rx* %457, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %561, label %461

461:                                              ; preds = %456
  %462 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %463 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %462, i32 0, i32 9
  %464 = load %struct.TYPE_9__*, %struct.TYPE_9__** %463, align 8
  %465 = icmp ne %struct.TYPE_9__* %464, null
  br i1 %465, label %466, label %561

466:                                              ; preds = %461
  %467 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %468 = call i64 @ieee80211_get_SA(%struct.ieee80211_hdr* %467)
  %469 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %470 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %469, i32 0, i32 9
  %471 = load %struct.TYPE_9__*, %struct.TYPE_9__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 8
  %475 = call i64 @ether_addr_equal(i64 %468, i32 %474)
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %561

477:                                              ; preds = %466
  %478 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %479 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %478, i32 0, i32 1
  %480 = load i64, i64* %479, align 8
  %481 = inttoptr i64 %480 to %struct.ieee80211_mgmt*
  %482 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i32 0, i32 0
  %485 = load i32*, i32** %484, align 8
  store i32* %485, i32** %21, align 8
  %486 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %487 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = sext i32 %488 to i64
  %490 = load i32*, i32** %21, align 8
  %491 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %492 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %491, i32 0, i32 1
  %493 = load i64, i64* %492, align 8
  %494 = inttoptr i64 %493 to i32*
  %495 = ptrtoint i32* %490 to i64
  %496 = ptrtoint i32* %494 to i64
  %497 = sub i64 %495, %496
  %498 = sdiv exact i64 %497, 4
  %499 = sub nsw i64 %489, %498
  store i64 %499, i64* %22, align 8
  %500 = load i32, i32* @WLAN_EID_TIM, align 4
  %501 = load i32*, i32** %21, align 8
  %502 = load i64, i64* %22, align 8
  %503 = call i32* @cfg80211_find_ie(i32 %500, i32* %501, i64 %502)
  store i32* %503, i32** %20, align 8
  %504 = load i32*, i32** %20, align 8
  %505 = icmp ne i32* %504, null
  br i1 %505, label %506, label %530

506:                                              ; preds = %477
  %507 = load i32*, i32** %20, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 2
  %509 = bitcast i32* %508 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %509, %struct.ieee80211_tim_ie** %23, align 8
  %510 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %511 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %510, i32 0, i32 2
  %512 = load i64, i64* %511, align 8
  %513 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %23, align 8
  %514 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 %512, %515
  br i1 %516, label %517, label %529

517:                                              ; preds = %506
  %518 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %23, align 8
  %519 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %522 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %521, i32 0, i32 2
  store i64 %520, i64* %522, align 8
  %523 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %524 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %523, i32 0, i32 8
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %527 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %526, i32 0, i32 10
  %528 = call i32 @queue_work(i32 %525, i32* %527)
  br label %529

529:                                              ; preds = %517, %506
  br label %530

530:                                              ; preds = %529, %477
  %531 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %532 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %531, i32 0, i32 3
  %533 = load i32, i32* %532, align 8
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %560

535:                                              ; preds = %530
  %536 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %537 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %536, i32 0, i32 9
  %538 = load %struct.TYPE_9__*, %struct.TYPE_9__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %539, i32 0, i32 1
  %541 = load i64, i64* %540, align 8
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %551, label %543

543:                                              ; preds = %535
  %544 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %545 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %544, i32 0, i32 9
  %546 = load %struct.TYPE_9__*, %struct.TYPE_9__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %560

551:                                              ; preds = %543, %535
  %552 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %553 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %552, i32 0, i32 3
  store i32 0, i32* %553, align 8
  %554 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %555 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %554, i32 0, i32 8
  %556 = load i32, i32* %555, align 4
  %557 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %558 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %557, i32 0, i32 7
  %559 = call i32 @queue_work(i32 %556, i32* %558)
  br label %560

560:                                              ; preds = %551, %543, %530
  br label %561

561:                                              ; preds = %560, %466, %461, %456, %450
  br label %562

562:                                              ; preds = %561, %449
  %563 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %564 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 4
  %566 = call i64 @ieee80211_is_auth(i32 %565)
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %572

568:                                              ; preds = %562
  %569 = load i32, i32* @HZ, align 4
  %570 = mul nsw i32 5, %569
  %571 = sext i32 %570 to i64
  store i64 %571, i64* %14, align 8
  br label %587

572:                                              ; preds = %562
  %573 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %574 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 4
  %576 = call i64 @ieee80211_is_deauth(i32 %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %582

578:                                              ; preds = %572
  %579 = load i32, i32* @HZ, align 4
  %580 = mul nsw i32 5, %579
  %581 = sext i32 %580 to i64
  store i64 %581, i64* %14, align 8
  br label %586

582:                                              ; preds = %572
  %583 = load i32, i32* @HZ, align 4
  %584 = mul nsw i32 1, %583
  %585 = sext i32 %584 to i64
  store i64 %585, i64* %14, align 8
  br label %586

586:                                              ; preds = %582, %578
  br label %587

587:                                              ; preds = %586, %568
  %588 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %589 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %588, i32 0, i32 6
  %590 = load i64, i64* %14, align 8
  %591 = call i32 @cw1200_pm_stay_awake(i32* %589, i64 %590)
  %592 = load i32, i32* %15, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %618

594:                                              ; preds = %587
  %595 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %596 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %595, i32 0, i32 5
  %597 = call i32 @spin_lock_bh(i32* %596)
  %598 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %13, align 8
  %599 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %598, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = load i64, i64* @CW1200_LINK_SOFT, align 8
  %602 = icmp eq i64 %600, %601
  br i1 %602, label %603, label %608

603:                                              ; preds = %594
  %604 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %13, align 8
  %605 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %604, i32 0, i32 1
  %606 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %607 = call i32 @skb_queue_tail(i32* %605, %struct.sk_buff* %606)
  br label %614

608:                                              ; preds = %594
  %609 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %610 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %609, i32 0, i32 4
  %611 = load %struct.TYPE_12__*, %struct.TYPE_12__** %610, align 8
  %612 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %613 = call i32 @ieee80211_rx_irqsafe(%struct.TYPE_12__* %611, %struct.sk_buff* %612)
  br label %614

614:                                              ; preds = %608, %603
  %615 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %616 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %615, i32 0, i32 5
  %617 = call i32 @spin_unlock_bh(i32* %616)
  br label %624

618:                                              ; preds = %587
  %619 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %620 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %619, i32 0, i32 4
  %621 = load %struct.TYPE_12__*, %struct.TYPE_12__** %620, align 8
  %622 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %623 = call i32 @ieee80211_rx_irqsafe(%struct.TYPE_12__* %621, %struct.sk_buff* %622)
  br label %624

624:                                              ; preds = %618, %614
  %625 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %625, align 8
  br label %627

626:                                              ; preds = %346, %322, %221, %203, %191, %189, %57
  br label %627

627:                                              ; preds = %626, %624, %448
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @work_pending(i32*) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i64 @ieee80211_get_SA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wiphy_warn(i32, i8*) #1

declare dso_local i64 @ieee80211_is_pspoll(i32) #1

declare dso_local i64 @cw1200_handle_pspoll(%struct.cw1200_common*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i64 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @WSM_RX_STATUS_ENCRYPTION(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i32, i64, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i32 @cw1200_debug_rxed(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_debug_rxed_agg(%struct.cw1200_common*) #1

declare dso_local i64 @cw1200_handle_action_rx(%struct.cw1200_common*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ether_addr_equal(i64, i32) #1

declare dso_local i32* @cfg80211_find_ie(i32, i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i32 @cw1200_pm_stay_awake(i32*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.TYPE_12__*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
