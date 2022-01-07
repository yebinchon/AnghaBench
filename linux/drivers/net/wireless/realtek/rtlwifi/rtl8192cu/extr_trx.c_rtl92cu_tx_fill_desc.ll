; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl92cu_tx_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl92cu_tx_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ieee80211_key_conf*, %struct.TYPE_7__* }
%struct.ieee80211_key_conf = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ieee80211_sta = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.rtl_tcb_desc = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.rtl_priv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.rtl_mac = type { i32, i64, i32, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.rtl_ps_ctl = type { i64, i64 }

@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i64 0, align 8
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@RTL_TX_HEADER_SIZE = common dso_local global i32 0, align 4
@RTL_DUMMY_OFFSET = common dso_local global i32 0, align 4
@RTL_AGG_ON = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@DESC_RATE54M = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_DUP_DATA = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i64 0, align 8
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enable RDG function\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"==>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_tx_fill_desc(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i64* %2, i64* %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_sta* %5, %struct.sk_buff* %6, i64 %7, %struct.rtl_tcb_desc* %8) #0 {
  %10 = alloca %struct.ieee80211_hw*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  %15 = alloca %struct.ieee80211_sta*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.rtl_tcb_desc*, align 8
  %19 = alloca %struct.rtl_priv*, align 8
  %20 = alloca %struct.rtl_mac*, align 8
  %21 = alloca %struct.rtl_ps_ctl*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %10, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %14, align 8
  store %struct.ieee80211_sta* %5, %struct.ieee80211_sta** %15, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %16, align 8
  store i64 %7, i64* %17, align 8
  store %struct.rtl_tcb_desc* %8, %struct.rtl_tcb_desc** %18, align 8
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %35 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %34)
  store %struct.rtl_priv* %35, %struct.rtl_priv** %19, align 8
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %37 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %36)
  %38 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %37)
  store %struct.rtl_mac* %38, %struct.rtl_mac** %20, align 8
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %40 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %39)
  %41 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %40)
  store %struct.rtl_ps_ctl* %41, %struct.rtl_ps_ctl** %21, align 8
  store i32 1, i32* %22, align 4
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %43 = call i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %42)
  store i64* %43, i64** %23, align 8
  %44 = load i64*, i64** %23, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IEEE80211_QOS_CTL_TID_MASK, align 8
  %48 = and i64 %46, %47
  store i64 %48, i64* %24, align 8
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %26, align 4
  %52 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %53 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %27, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %28, align 4
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %63 = load i32, i32* %26, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %65 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %64)
  %66 = call i32 @_rtl8192cu_mq_to_descq(%struct.ieee80211_hw* %62, i32 %63, i32 %65)
  store i32 %66, i32* %29, align 4
  %67 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %72 = and i32 %70, %71
  %73 = ashr i32 %72, 4
  store i32 %73, i32* %25, align 4
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %75 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %76 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %78 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %79 = call i32 @rtl_get_tcb_desc(%struct.ieee80211_hw* %74, %struct.ieee80211_tx_info* %75, %struct.ieee80211_sta* %76, %struct.sk_buff* %77, %struct.rtl_tcb_desc* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %81 = load i32, i32* @RTL_TX_HEADER_SIZE, align 4
  %82 = call i64* @skb_push(%struct.sk_buff* %80, i32 %81)
  store i64* %82, i64** %30, align 8
  %83 = load i64*, i64** %30, align 8
  %84 = bitcast i64* %83 to i32*
  store i32* %84, i32** %31, align 8
  %85 = load i32*, i32** %31, align 8
  %86 = load i32, i32* @RTL_TX_HEADER_SIZE, align 4
  %87 = call i32 @memset(i32* %85, i32 0, i32 %86)
  %88 = load i32*, i32** %31, align 8
  %89 = load i32, i32* %28, align 4
  %90 = call i32 @set_tx_desc_pkt_size(i32* %88, i32 %89)
  %91 = load i32*, i32** %31, align 8
  %92 = call i32 @set_tx_desc_linip(i32* %91, i32 0)
  %93 = load i32*, i32** %31, align 8
  %94 = load i32, i32* @RTL_DUMMY_OFFSET, align 4
  %95 = call i32 @set_tx_desc_pkt_offset(i32* %93, i32 %94)
  %96 = load i32*, i32** %31, align 8
  %97 = load i32, i32* @RTL_TX_HEADER_SIZE, align 4
  %98 = call i32 @set_tx_desc_offset(i32* %96, i32 %97)
  %99 = load i32*, i32** %31, align 8
  %100 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %101 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %100, i32 0, i32 12
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @set_tx_desc_tx_rate(i32* %99, i32 %102)
  %104 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %105 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %104, i32 0, i32 11
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %9
  %109 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %110 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %109, i32 0, i32 10
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108, %9
  %114 = load i32*, i32** %31, align 8
  %115 = call i32 @set_tx_desc_data_shortgi(i32* %114, i32 1)
  br label %116

116:                                              ; preds = %113, %108
  %117 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %118 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %117, i32 0, i32 5
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = load i64, i64* %24, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @RTL_AGG_ON, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %116
  %128 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %129 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load i32*, i32** %31, align 8
  %136 = call i32 @set_tx_desc_agg_enable(i32* %135, i32 1)
  %137 = load i32*, i32** %31, align 8
  %138 = call i32 @set_tx_desc_max_agg_num(i32* %137, i32 20)
  br label %142

139:                                              ; preds = %127, %116
  %140 = load i32*, i32** %31, align 8
  %141 = call i32 @set_tx_desc_agg_break(i32* %140, i32 1)
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i32*, i32** %31, align 8
  %144 = load i32, i32* %25, align 4
  %145 = call i32 @set_tx_desc_seq(i32* %143, i32 %144)
  %146 = load i32*, i32** %31, align 8
  %147 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %148 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %147, i32 0, i32 9
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %142
  %152 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %153 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  %156 = xor i1 %155, true
  br label %157

157:                                              ; preds = %151, %142
  %158 = phi i1 [ false, %142 ], [ %156, %151 ]
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  %161 = call i32 @set_tx_desc_rts_enable(i32* %146, i32 %160)
  %162 = load i32*, i32** %31, align 8
  %163 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %164 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %163, i32 0, i32 9
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %157
  %168 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %169 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %168, i32 0, i32 8
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br label %172

172:                                              ; preds = %167, %157
  %173 = phi i1 [ true, %157 ], [ %171, %167 ]
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 0
  %176 = call i32 @set_tx_desc_hw_rts_enable(i32* %162, i32 %175)
  %177 = load i32*, i32** %31, align 8
  %178 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %179 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %178, i32 0, i32 8
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 1, i32 0
  %184 = call i32 @set_tx_desc_cts2self(i32* %177, i32 %183)
  %185 = load i32*, i32** %31, align 8
  %186 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %187 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 1, i32 0
  %192 = call i32 @set_tx_desc_rts_stbc(i32* %185, i32 %191)
  %193 = load i32*, i32** %31, align 8
  %194 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %195 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @set_tx_desc_rts_rate(i32* %193, i32 %196)
  %198 = load i32*, i32** %31, align 8
  %199 = call i32 @set_tx_desc_rts_bw(i32* %198, i32 0)
  %200 = load i32*, i32** %31, align 8
  %201 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %202 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @set_tx_desc_rts_sc(i32* %200, i32 %203)
  %205 = load i32*, i32** %31, align 8
  %206 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %207 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @DESC_RATE54M, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %172
  %212 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %213 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 1, i32 0
  br label %225

218:                                              ; preds = %172
  %219 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %220 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 1, i32 0
  br label %225

225:                                              ; preds = %218, %211
  %226 = phi i32 [ %217, %211 ], [ %224, %218 ]
  %227 = call i32 @set_tx_desc_rts_short(i32* %205, i32 %226)
  %228 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %229 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %262

232:                                              ; preds = %225
  %233 = load i64, i64* %27, align 8
  %234 = load i64, i64* @IEEE80211_TX_RC_DUP_DATA, align 8
  %235 = and i64 %233, %234
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load i32*, i32** %31, align 8
  %239 = call i32 @set_tx_desc_data_bw(i32* %238, i32 1)
  %240 = load i32*, i32** %31, align 8
  %241 = call i32 @set_tx_desc_data_sc(i32* %240, i32 3)
  br label %261

242:                                              ; preds = %232
  %243 = load i64, i64* %27, align 8
  %244 = load i64, i64* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 8
  %245 = and i64 %243, %244
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %255

247:                                              ; preds = %242
  %248 = load i32*, i32** %31, align 8
  %249 = call i32 @set_tx_desc_data_bw(i32* %248, i32 1)
  %250 = load i32*, i32** %31, align 8
  %251 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %252 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @set_tx_desc_data_sc(i32* %250, i32 %253)
  br label %260

255:                                              ; preds = %242
  %256 = load i32*, i32** %31, align 8
  %257 = call i32 @set_tx_desc_data_bw(i32* %256, i32 0)
  %258 = load i32*, i32** %31, align 8
  %259 = call i32 @set_tx_desc_data_sc(i32* %258, i32 0)
  br label %260

260:                                              ; preds = %255, %247
  br label %261

261:                                              ; preds = %260, %237
  br label %267

262:                                              ; preds = %225
  %263 = load i32*, i32** %31, align 8
  %264 = call i32 @set_tx_desc_data_bw(i32* %263, i32 0)
  %265 = load i32*, i32** %31, align 8
  %266 = call i32 @set_tx_desc_data_sc(i32* %265, i32 0)
  br label %267

267:                                              ; preds = %262, %261
  %268 = call i32 (...) @rcu_read_lock()
  %269 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %270 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %273 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call %struct.ieee80211_sta* @ieee80211_find_sta(i32 %271, i32 %274)
  store %struct.ieee80211_sta* %275, %struct.ieee80211_sta** %15, align 8
  %276 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %277 = icmp ne %struct.ieee80211_sta* %276, null
  br i1 %277, label %278, label %286

278:                                              ; preds = %267
  %279 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %280 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %32, align 8
  %283 = load i32*, i32** %31, align 8
  %284 = load i64, i64* %32, align 8
  %285 = call i32 @set_tx_desc_ampdu_density(i32* %283, i64 %284)
  br label %286

286:                                              ; preds = %278, %267
  %287 = call i32 (...) @rcu_read_unlock()
  %288 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %289 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %290, align 8
  %292 = icmp ne %struct.ieee80211_key_conf* %291, null
  br i1 %292, label %293, label %311

293:                                              ; preds = %286
  %294 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %295 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %296, align 8
  store %struct.ieee80211_key_conf* %297, %struct.ieee80211_key_conf** %33, align 8
  %298 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %33, align 8
  %299 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  switch i32 %300, label %307 [
    i32 128, label %301
    i32 129, label %301
    i32 130, label %301
    i32 131, label %304
  ]

301:                                              ; preds = %293, %293, %293
  %302 = load i32*, i32** %31, align 8
  %303 = call i32 @set_tx_desc_sec_type(i32* %302, i32 1)
  br label %310

304:                                              ; preds = %293
  %305 = load i32*, i32** %31, align 8
  %306 = call i32 @set_tx_desc_sec_type(i32* %305, i32 3)
  br label %310

307:                                              ; preds = %293
  %308 = load i32*, i32** %31, align 8
  %309 = call i32 @set_tx_desc_sec_type(i32* %308, i32 0)
  br label %310

310:                                              ; preds = %307, %304, %301
  br label %311

311:                                              ; preds = %310, %286
  %312 = load i32*, i32** %31, align 8
  %313 = call i32 @set_tx_desc_pkt_id(i32* %312, i32 0)
  %314 = load i32*, i32** %31, align 8
  %315 = load i32, i32* %29, align 4
  %316 = call i32 @set_tx_desc_queue_sel(i32* %314, i32 %315)
  %317 = load i32*, i32** %31, align 8
  %318 = call i32 @set_tx_desc_data_rate_fb_limit(i32* %317, i32 31)
  %319 = load i32*, i32** %31, align 8
  %320 = call i32 @set_tx_desc_rts_rate_fb_limit(i32* %319, i32 15)
  %321 = load i32*, i32** %31, align 8
  %322 = call i32 @set_tx_desc_disable_fb(i32* %321, i32 0)
  %323 = load i32*, i32** %31, align 8
  %324 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %325 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %324, i32 0, i32 2
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  %328 = zext i1 %327 to i64
  %329 = select i1 %327, i32 1, i32 0
  %330 = call i32 @set_tx_desc_use_rate(i32* %323, i32 %329)
  %331 = load i32, i32* %26, align 4
  %332 = call i64 @ieee80211_is_data_qos(i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %349

334:                                              ; preds = %311
  %335 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %336 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %334
  %340 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %341 = load i32, i32* @COMP_SEND, align 4
  %342 = load i32, i32* @DBG_TRACE, align 4
  %343 = call i32 @RT_TRACE(%struct.rtl_priv* %340, i32 %341, i32 %342, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %344 = load i32*, i32** %31, align 8
  %345 = call i32 @set_tx_desc_rdg_enable(i32* %344, i32 1)
  %346 = load i32*, i32** %31, align 8
  %347 = call i32 @set_tx_desc_htc(i32* %346, i32 1)
  br label %348

348:                                              ; preds = %339, %334
  br label %349

349:                                              ; preds = %348, %311
  %350 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %351 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %349
  %356 = load i32*, i32** %31, align 8
  %357 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %358 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @set_tx_desc_rate_id(i32* %356, i64 %359)
  %361 = load i32*, i32** %31, align 8
  %362 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %363 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = call i32 @set_tx_desc_macid(i32* %361, i64 %364)
  br label %378

366:                                              ; preds = %349
  %367 = load i32*, i32** %31, align 8
  %368 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %369 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = add nsw i64 12, %370
  %372 = call i32 @set_tx_desc_rate_id(i32* %367, i64 %371)
  %373 = load i32*, i32** %31, align 8
  %374 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %375 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = call i32 @set_tx_desc_macid(i32* %373, i64 %376)
  br label %378

378:                                              ; preds = %366, %355
  %379 = load i32, i32* %26, align 4
  %380 = call i64 @ieee80211_is_data_qos(i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %403, label %382

382:                                              ; preds = %378
  %383 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %21, align 8
  %384 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %383, i32 0, i32 1
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %403

387:                                              ; preds = %382
  %388 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %21, align 8
  %389 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %403

392:                                              ; preds = %387
  %393 = load i32*, i32** %31, align 8
  %394 = call i32 @set_tx_desc_hwseq_en(i32* %393, i32 1)
  %395 = load i32*, i32** %31, align 8
  %396 = call i32 @set_tx_desc_pkt_id(i32* %395, i32 8)
  %397 = load i32, i32* %22, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %392
  %400 = load i32*, i32** %31, align 8
  %401 = call i32 @set_tx_desc_qos(i32* %400, i32 1)
  br label %402

402:                                              ; preds = %399, %392
  br label %403

403:                                              ; preds = %402, %387, %382, %378
  %404 = load i32, i32* %26, align 4
  %405 = call i64 @ieee80211_has_morefrags(i32 %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %403
  %408 = load i32*, i32** %31, align 8
  %409 = call i32 @set_tx_desc_more_frag(i32* %408, i32 1)
  br label %410

410:                                              ; preds = %407, %403
  %411 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %412 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %411)
  %413 = call i64 @is_multicast_ether_addr(i32 %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %420, label %415

415:                                              ; preds = %410
  %416 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %417 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %416)
  %418 = call i64 @is_broadcast_ether_addr(i32 %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %415, %410
  %421 = load i32*, i32** %31, align 8
  %422 = call i32 @set_tx_desc_bmc(i32* %421, i32 1)
  br label %423

423:                                              ; preds = %420, %415
  %424 = load i32*, i32** %31, align 8
  %425 = call i32 @_rtl_fill_usb_tx_desc(i32* %424)
  %426 = load i32*, i32** %31, align 8
  %427 = call i32 @_rtl_tx_desc_checksum(i32* %426)
  %428 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %429 = load i32, i32* @COMP_SEND, align 4
  %430 = load i32, i32* @DBG_TRACE, align 4
  %431 = call i32 @RT_TRACE(%struct.rtl_priv* %428, i32 %429, i32 %430, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @_rtl8192cu_mq_to_descq(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtl_get_tcb_desc(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.rtl_tcb_desc*) #1

declare dso_local i64* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_tx_desc_pkt_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_linip(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_offset(i32*, i32) #1

declare dso_local i32 @set_tx_desc_offset(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_shortgi(i32*, i32) #1

declare dso_local i32 @set_tx_desc_agg_enable(i32*, i32) #1

declare dso_local i32 @set_tx_desc_max_agg_num(i32*, i32) #1

declare dso_local i32 @set_tx_desc_agg_break(i32*, i32) #1

declare dso_local i32 @set_tx_desc_seq(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_enable(i32*, i32) #1

declare dso_local i32 @set_tx_desc_hw_rts_enable(i32*, i32) #1

declare dso_local i32 @set_tx_desc_cts2self(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_stbc(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_bw(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_sc(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_short(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_bw(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_sc(i32*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(i32, i32) #1

declare dso_local i32 @set_tx_desc_ampdu_density(i32*, i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @set_tx_desc_sec_type(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_id(i32*, i32) #1

declare dso_local i32 @set_tx_desc_queue_sel(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_rate_fb_limit(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_rate_fb_limit(i32*, i32) #1

declare dso_local i32 @set_tx_desc_disable_fb(i32*, i32) #1

declare dso_local i32 @set_tx_desc_use_rate(i32*, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @set_tx_desc_rdg_enable(i32*, i32) #1

declare dso_local i32 @set_tx_desc_htc(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rate_id(i32*, i64) #1

declare dso_local i32 @set_tx_desc_macid(i32*, i64) #1

declare dso_local i32 @set_tx_desc_hwseq_en(i32*, i32) #1

declare dso_local i32 @set_tx_desc_qos(i32*, i32) #1

declare dso_local i64 @ieee80211_has_morefrags(i32) #1

declare dso_local i32 @set_tx_desc_more_frag(i32*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @set_tx_desc_bmc(i32*, i32) #1

declare dso_local i32 @_rtl_fill_usb_tx_desc(i32*) #1

declare dso_local i32 @_rtl_tx_desc_checksum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
