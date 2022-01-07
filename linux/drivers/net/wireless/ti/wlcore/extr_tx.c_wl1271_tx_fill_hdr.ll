; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_fill_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_tx.c_wl1271_tx_fill_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64*, i32, i64 }
%struct.wl12xx_vif = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i32, i64 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.wl1271_tx_hw_descr = type { i64, i8*, i32, i8*, i32 }
%struct.ieee80211_hdr = type { i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@TX_HW_MGMT_PKT_LIFETIME_TU = common dso_local global i32 0, align 4
@TX_HW_AP_MODE_PKT_LIFETIME_TU = common dso_local global i32 0, align 4
@SESSION_COUNTER_INVALID = common dso_local global i64 0, align 8
@TX_HW_ATTR_OFST_SESSION_COUNTER = common dso_local global i64 0, align 8
@TX_HW_ATTR_SESSION_COUNTER = common dso_local global i64 0, align 8
@TX_HW_ATTR_TX_DUMMY_REQ = common dso_local global i32 0, align 4
@WLCORE_QUIRK_AP_ZERO_SESSION_ID = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_CCK_RATE = common dso_local global i32 0, align 4
@TX_HW_ATTR_OFST_RATE_POLICY = common dso_local global i32 0, align 4
@TX_HW_ATTR_HOST_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTRL_PORT_CTRL_PROTO = common dso_local global i32 0, align 4
@TX_HW_ATTR_EAPOL_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, %struct.sk_buff*, i32, %struct.ieee80211_tx_info*, i64)* @wl1271_tx_fill_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_tx_fill_hdr(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.sk_buff* %2, i32 %3, %struct.ieee80211_tx_info* %4, i64 %5) #0 {
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.wl1271_tx_hw_descr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ieee80211_hdr*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32 0, i32* %17, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.wl1271_tx_hw_descr*
  store %struct.wl1271_tx_hw_descr* %27, %struct.wl1271_tx_hw_descr** %13, align 8
  %28 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %13, align 8
  %29 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %28, i64 1
  %30 = bitcast %struct.wl1271_tx_hw_descr* %29 to i64*
  store i64* %30, i64** %20, align 8
  %31 = load i64*, i64** %20, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = bitcast i64* %34 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %35, %struct.ieee80211_hdr** %19, align 8
  %36 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %6
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @ieee80211_hdrlen(i32 %42)
  store i32 %43, i32* %22, align 4
  %44 = load i64*, i64** %20, align 8
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %19, align 8
  %46 = load i32, i32* %22, align 4
  %47 = call i32 @memmove(i64* %44, %struct.ieee80211_hdr* %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i32 @skb_network_offset(%struct.sk_buff* %49)
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @skb_set_network_header(%struct.sk_buff* %48, i32 %52)
  br label %54

54:                                               ; preds = %41, %6
  %55 = call i32 (...) @ktime_get_boottime_ns()
  %56 = ashr i32 %55, 10
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = call i32 @cpu_to_le32(i64 %62)
  %64 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %13, align 8
  %65 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = call i32 @wl12xx_is_dummy_packet(%struct.wl1271* %66, %struct.sk_buff* %67)
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* %21, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %54
  %72 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %73 = icmp ne %struct.wl12xx_vif* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %76 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74, %71, %54
  %81 = load i32, i32* @TX_HW_MGMT_PKT_LIFETIME_TU, align 4
  %82 = call i8* @cpu_to_le16(i32 %81)
  %83 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %13, align 8
  %84 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  br label %90

85:                                               ; preds = %74
  %86 = load i32, i32* @TX_HW_AP_MODE_PKT_LIFETIME_TU, align 4
  %87 = call i8* @cpu_to_le16(i32 %86)
  %88 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %13, align 8
  %89 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %91)
  %93 = call i32 @wl1271_tx_get_queue(i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %13, align 8
  %98 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %21, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %90
  %102 = load i64, i64* @SESSION_COUNTER_INVALID, align 8
  %103 = load i64, i64* @TX_HW_ATTR_OFST_SESSION_COUNTER, align 8
  %104 = shl i64 %102, %103
  %105 = load i64, i64* @TX_HW_ATTR_SESSION_COUNTER, align 8
  %106 = and i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* @TX_HW_ATTR_TX_DUMMY_REQ, align 4
  %109 = load i32, i32* %17, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %17, align 4
  br label %140

111:                                              ; preds = %90
  %112 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %113 = icmp ne %struct.wl12xx_vif* %112, null
  br i1 %113, label %114, label %139

114:                                              ; preds = %111
  %115 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %116 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %23, align 8
  %121 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %122 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @WLCORE_QUIRK_AP_ZERO_SESSION_ID, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %114
  %128 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %129 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i64 0, i64* %23, align 8
  br label %134

134:                                              ; preds = %133, %127, %114
  %135 = load i64, i64* %23, align 8
  %136 = load i64, i64* @TX_HW_ATTR_OFST_SESSION_COUNTER, align 8
  %137 = shl i64 %135, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %134, %111
  br label %140

140:                                              ; preds = %139, %101
  %141 = load i64, i64* %12, align 8
  %142 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %13, align 8
  %143 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %142, i32 0, i32 0
  store i64 %141, i64* %143, align 8
  %144 = load i32, i32* %21, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %148 = icmp ne %struct.wl12xx_vif* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146, %140
  store i32 0, i32* %15, align 4
  br label %244

150:                                              ; preds = %146
  %151 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %152 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %197

156:                                              ; preds = %150
  %157 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @ETH_P_PAE, align 4
  %161 = call i64 @cpu_to_be16(i32 %160)
  %162 = icmp eq i64 %159, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %165 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %15, align 4
  br label %196

168:                                              ; preds = %156
  %169 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %170 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IEEE80211_TX_CTL_NO_CCK_RATE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %177 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %15, align 4
  br label %195

180:                                              ; preds = %168
  %181 = load i32, i32* %18, align 4
  %182 = call i64 @ieee80211_is_data(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %186 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %15, align 4
  br label %194

189:                                              ; preds = %180
  %190 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %191 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %15, align 4
  br label %194

194:                                              ; preds = %189, %184
  br label %195

195:                                              ; preds = %194, %175
  br label %196

196:                                              ; preds = %195, %163
  br label %243

197:                                              ; preds = %150
  %198 = load i64, i64* %12, align 8
  %199 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %200 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %198, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %197
  %205 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %206 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  store i32 %208, i32* %15, align 4
  br label %242

209:                                              ; preds = %197
  %210 = load i64, i64* %12, align 8
  %211 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %212 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %210, %214
  br i1 %215, label %227, label %216

216:                                              ; preds = %209
  %217 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %218 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* @ETH_P_PAE, align 4
  %221 = call i64 @cpu_to_be16(i32 %220)
  %222 = icmp eq i64 %219, %221
  br i1 %222, label %227, label %223

223:                                              ; preds = %216
  %224 = load i32, i32* %18, align 4
  %225 = call i64 @ieee80211_is_data(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %223, %216, %209
  %228 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %229 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  store i32 %231, i32* %15, align 4
  br label %241

232:                                              ; preds = %223
  %233 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %234 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %14, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %15, align 4
  br label %241

241:                                              ; preds = %232, %227
  br label %242

242:                                              ; preds = %241, %204
  br label %243

243:                                              ; preds = %242, %196
  br label %244

244:                                              ; preds = %243, %149
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* @TX_HW_ATTR_OFST_RATE_POLICY, align 4
  %247 = shl i32 %245, %246
  %248 = load i32, i32* %17, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %17, align 4
  %250 = load i32, i32* %18, align 4
  %251 = call i64 @ieee80211_is_auth(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %244
  %254 = load i32, i32* %18, align 4
  %255 = call i64 @ieee80211_has_protected(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load i32, i32* @TX_HW_ATTR_HOST_ENCRYPT, align 4
  %259 = load i32, i32* %17, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %17, align 4
  br label %261

261:                                              ; preds = %257, %253, %244
  %262 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %263 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @IEEE80211_TX_CTRL_PORT_CTRL_PROTO, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %261
  %270 = load i32, i32* @TX_HW_ATTR_EAPOL_FRAME, align 4
  %271 = load i32, i32* %17, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %17, align 4
  br label %273

273:                                              ; preds = %269, %261
  %274 = load i32, i32* %17, align 4
  %275 = call i8* @cpu_to_le16(i32 %274)
  %276 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %13, align 8
  %277 = getelementptr inbounds %struct.wl1271_tx_hw_descr, %struct.wl1271_tx_hw_descr* %276, i32 0, i32 1
  store i8* %275, i8** %277, align 8
  %278 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %279 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %13, align 8
  %280 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %281 = call i32 @wlcore_hw_set_tx_desc_csum(%struct.wl1271* %278, %struct.wl1271_tx_hw_descr* %279, %struct.sk_buff* %280)
  %282 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %283 = load %struct.wl1271_tx_hw_descr*, %struct.wl1271_tx_hw_descr** %13, align 8
  %284 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %285 = call i32 @wlcore_hw_set_tx_desc_data_len(%struct.wl1271* %282, %struct.wl1271_tx_hw_descr* %283, %struct.sk_buff* %284)
  ret void
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @memmove(i64*, %struct.ieee80211_hdr*, i32) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @wl12xx_is_dummy_packet(%struct.wl1271*, %struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_tx_get_queue(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i32 @wlcore_hw_set_tx_desc_csum(%struct.wl1271*, %struct.wl1271_tx_hw_descr*, %struct.sk_buff*) #1

declare dso_local i32 @wlcore_hw_set_tx_desc_data_len(%struct.wl1271*, %struct.wl1271_tx_hw_descr*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
