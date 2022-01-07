; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_trx.c_rtl92ce_tx_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_trx.c_rtl92ce_tx_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.rtl_tcb_desc = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.rtl_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_mac = type { i64, i32, i32, i64, i32, i32 }
%struct.rtl_pci = type { i32 }
%struct.rtl_ps_ctl = type { i64 }

@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREFRAGS = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@USB_HWDESC_HEADER_LEN = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@DESC_RATE54M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Enable RDG function\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ce_tx_fill_desc(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i32* %2, i32* %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_sta* %5, %struct.sk_buff* %6, i32 %7, %struct.rtl_tcb_desc* %8) #0 {
  %10 = alloca %struct.ieee80211_hw*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  %15 = alloca %struct.ieee80211_sta*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.rtl_tcb_desc*, align 8
  %19 = alloca %struct.rtl_priv*, align 8
  %20 = alloca %struct.rtl_mac*, align 8
  %21 = alloca %struct.rtl_pci*, align 8
  %22 = alloca %struct.rtl_ps_ctl*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %10, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %14, align 8
  store %struct.ieee80211_sta* %5, %struct.ieee80211_sta** %15, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.rtl_tcb_desc* %8, %struct.rtl_tcb_desc** %18, align 8
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %35 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %34)
  store %struct.rtl_priv* %35, %struct.rtl_priv** %19, align 8
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %37 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %36)
  %38 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %37)
  store %struct.rtl_mac* %38, %struct.rtl_mac** %20, align 8
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %40 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %39)
  %41 = call %struct.rtl_pci* @rtl_pcidev(i32 %40)
  store %struct.rtl_pci* %41, %struct.rtl_pci** %21, align 8
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %43 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %42)
  %44 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %43)
  store %struct.rtl_ps_ctl* %44, %struct.rtl_ps_ctl** %22, align 8
  store i32 1, i32* %23, align 4
  %45 = load i32*, i32** %12, align 8
  store i32* %45, i32** %24, align 8
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %26, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @_rtl92ce_map_hwqueue_to_fwqueue(%struct.sk_buff* %49, i32 %50)
  store i32 %51, i32* %27, align 4
  %52 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %56 = call i32 @cpu_to_le16(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %28, align 4
  %60 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_FCTL_MOREFRAGS, align 4
  %64 = call i32 @cpu_to_le16(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %29, align 4
  %68 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %69 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %78 = call i32 @pci_map_single(i32 %70, i32 %73, i64 %76, i32 %77)
  store i32 %78, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %79 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %80 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %30, align 4
  %83 = call i64 @pci_dma_mapping_error(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %9
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %87 = load i32, i32* @COMP_SEND, align 4
  %88 = load i32, i32* @DBG_TRACE, align 4
  %89 = call i32 @RT_TRACE(%struct.rtl_priv* %86, i32 %87, i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %488

90:                                               ; preds = %9
  %91 = call i32 (...) @rcu_read_lock()
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %93 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %94 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %97 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.ieee80211_sta* @get_sta(%struct.ieee80211_hw* %92, i32 %95, i32 %98)
  store %struct.ieee80211_sta* %99, %struct.ieee80211_sta** %15, align 8
  %100 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %101 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %90
  %106 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %107 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %31, align 4
  br label %139

109:                                              ; preds = %90
  %110 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %111 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %127, label %115

115:                                              ; preds = %109
  %116 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %117 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %123 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %121, %115, %109
  %128 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %129 = icmp ne %struct.ieee80211_sta* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %132 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %135 = icmp sge i64 %133, %134
  %136 = zext i1 %135 to i32
  store i32 %136, i32* %31, align 4
  br label %137

137:                                              ; preds = %130, %127
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %138, %105
  %140 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %141 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le16_to_cpu(i32 %142)
  %144 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %145 = and i32 %143, %144
  %146 = ashr i32 %145, 4
  store i32 %146, i32* %25, align 4
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %148 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %149 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %151 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %152 = call i32 @rtl_get_tcb_desc(%struct.ieee80211_hw* %147, %struct.ieee80211_tx_info* %148, %struct.ieee80211_sta* %149, %struct.sk_buff* %150, %struct.rtl_tcb_desc* %151)
  %153 = load i32*, i32** %24, align 8
  %154 = call i32 @clear_pci_tx_desc_content(i32* %153, i32 4)
  %155 = load i32, i32* %26, align 4
  %156 = call i64 @ieee80211_is_nullfunc(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %139
  %159 = load i32, i32* %26, align 4
  %160 = call i64 @ieee80211_is_ctl(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %139
  store i32 1, i32* %28, align 4
  store i32 1, i32* %29, align 4
  br label %163

163:                                              ; preds = %162, %158
  %164 = load i32, i32* %28, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %393

166:                                              ; preds = %163
  %167 = load i32*, i32** %24, align 8
  %168 = load i32, i32* @USB_HWDESC_HEADER_LEN, align 4
  %169 = call i32 @set_tx_desc_offset(i32* %167, i32 %168)
  %170 = load i32*, i32** %24, align 8
  %171 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %172 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %171, i32 0, i32 13
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @set_tx_desc_tx_rate(i32* %170, i32 %173)
  %175 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %176 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %175, i32 0, i32 12
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %166
  %180 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %181 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %180, i32 0, i32 11
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179, %166
  %185 = load i32*, i32** %24, align 8
  %186 = call i32 @set_tx_desc_data_shortgi(i32* %185, i32 1)
  br label %187

187:                                              ; preds = %184, %179
  %188 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %189 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load i32*, i32** %24, align 8
  %196 = call i32 @set_tx_desc_agg_break(i32* %195, i32 1)
  %197 = load i32*, i32** %24, align 8
  %198 = call i32 @set_tx_desc_max_agg_num(i32* %197, i32 20)
  br label %199

199:                                              ; preds = %194, %187
  %200 = load i32*, i32** %24, align 8
  %201 = load i32, i32* %25, align 4
  %202 = call i32 @set_tx_desc_seq(i32* %200, i32 %201)
  %203 = load i32*, i32** %24, align 8
  %204 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %205 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %204, i32 0, i32 10
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %199
  %209 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %210 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %209, i32 0, i32 9
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  %213 = xor i1 %212, true
  br label %214

214:                                              ; preds = %208, %199
  %215 = phi i1 [ false, %199 ], [ %213, %208 ]
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i32 1, i32 0
  %218 = call i32 @set_tx_desc_rts_enable(i32* %203, i32 %217)
  %219 = load i32*, i32** %24, align 8
  %220 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %221 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %220, i32 0, i32 10
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %214
  %225 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %226 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %225, i32 0, i32 9
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br label %229

229:                                              ; preds = %224, %214
  %230 = phi i1 [ true, %214 ], [ %228, %224 ]
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i32 1, i32 0
  %233 = call i32 @set_tx_desc_hw_rts_enable(i32* %219, i32 %232)
  %234 = load i32*, i32** %24, align 8
  %235 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %236 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %235, i32 0, i32 9
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 1, i32 0
  %241 = call i32 @set_tx_desc_cts2self(i32* %234, i32 %240)
  %242 = load i32*, i32** %24, align 8
  %243 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %244 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %243, i32 0, i32 8
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 1, i32 0
  %249 = call i32 @set_tx_desc_rts_stbc(i32* %242, i32 %248)
  %250 = load i32*, i32** %24, align 8
  %251 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %252 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @set_tx_desc_rts_rate(i32* %250, i32 %253)
  %255 = load i32*, i32** %24, align 8
  %256 = call i32 @set_tx_desc_rts_bw(i32* %255, i32 0)
  %257 = load i32*, i32** %24, align 8
  %258 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %259 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @set_tx_desc_rts_sc(i32* %257, i32 %260)
  %262 = load i32*, i32** %24, align 8
  %263 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %264 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @DESC_RATE54M, align 4
  %267 = icmp sle i32 %265, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %229
  %269 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %270 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  %273 = zext i1 %272 to i64
  %274 = select i1 %272, i32 1, i32 0
  br label %282

275:                                              ; preds = %229
  %276 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %277 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %276, i32 0, i32 4
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  %280 = zext i1 %279 to i64
  %281 = select i1 %279, i32 1, i32 0
  br label %282

282:                                              ; preds = %275, %268
  %283 = phi i32 [ %274, %268 ], [ %281, %275 ]
  %284 = call i32 @set_tx_desc_rts_short(i32* %262, i32 %283)
  %285 = load i32, i32* %31, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %306

287:                                              ; preds = %282
  %288 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %289 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %287
  %293 = load i32*, i32** %24, align 8
  %294 = call i32 @set_tx_desc_data_bw(i32* %293, i32 1)
  %295 = load i32*, i32** %24, align 8
  %296 = call i32 @set_tx_desc_tx_sub_carrier(i32* %295, i32 3)
  br label %305

297:                                              ; preds = %287
  %298 = load i32*, i32** %24, align 8
  %299 = call i32 @set_tx_desc_data_bw(i32* %298, i32 0)
  %300 = load i32*, i32** %24, align 8
  %301 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %302 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @set_tx_desc_tx_sub_carrier(i32* %300, i32 %303)
  br label %305

305:                                              ; preds = %297, %292
  br label %311

306:                                              ; preds = %282
  %307 = load i32*, i32** %24, align 8
  %308 = call i32 @set_tx_desc_data_bw(i32* %307, i32 0)
  %309 = load i32*, i32** %24, align 8
  %310 = call i32 @set_tx_desc_tx_sub_carrier(i32* %309, i32 0)
  br label %311

311:                                              ; preds = %306, %305
  %312 = load i32*, i32** %24, align 8
  %313 = call i32 @set_tx_desc_linip(i32* %312, i32 0)
  %314 = load i32*, i32** %24, align 8
  %315 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %316 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = trunc i64 %317 to i32
  %319 = call i32 @set_tx_desc_pkt_size(i32* %314, i32 %318)
  %320 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %321 = icmp ne %struct.ieee80211_sta* %320, null
  br i1 %321, label %322, label %330

322:                                              ; preds = %311
  %323 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %324 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  store i32 %326, i32* %32, align 4
  %327 = load i32*, i32** %24, align 8
  %328 = load i32, i32* %32, align 4
  %329 = call i32 @set_tx_desc_ampdu_density(i32* %327, i32 %328)
  br label %330

330:                                              ; preds = %322, %311
  %331 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %332 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  %334 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %333, align 8
  %335 = icmp ne %struct.ieee80211_key_conf* %334, null
  br i1 %335, label %336, label %354

336:                                              ; preds = %330
  %337 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %338 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %339, align 8
  store %struct.ieee80211_key_conf* %340, %struct.ieee80211_key_conf** %33, align 8
  %341 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %33, align 8
  %342 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  switch i32 %343, label %350 [
    i32 128, label %344
    i32 129, label %344
    i32 130, label %344
    i32 131, label %347
  ]

344:                                              ; preds = %336, %336, %336
  %345 = load i32*, i32** %24, align 8
  %346 = call i32 @set_tx_desc_sec_type(i32* %345, i32 1)
  br label %353

347:                                              ; preds = %336
  %348 = load i32*, i32** %24, align 8
  %349 = call i32 @set_tx_desc_sec_type(i32* %348, i32 3)
  br label %353

350:                                              ; preds = %336
  %351 = load i32*, i32** %24, align 8
  %352 = call i32 @set_tx_desc_sec_type(i32* %351, i32 0)
  br label %353

353:                                              ; preds = %350, %347, %344
  br label %354

354:                                              ; preds = %353, %330
  %355 = load i32*, i32** %24, align 8
  %356 = call i32 @set_tx_desc_pkt_id(i32* %355, i32 0)
  %357 = load i32*, i32** %24, align 8
  %358 = load i32, i32* %27, align 4
  %359 = call i32 @set_tx_desc_queue_sel(i32* %357, i32 %358)
  %360 = load i32*, i32** %24, align 8
  %361 = call i32 @set_tx_desc_data_rate_fb_limit(i32* %360, i32 31)
  %362 = load i32*, i32** %24, align 8
  %363 = call i32 @set_tx_desc_rts_rate_fb_limit(i32* %362, i32 15)
  %364 = load i32*, i32** %24, align 8
  %365 = call i32 @set_tx_desc_disable_fb(i32* %364, i32 0)
  %366 = load i32*, i32** %24, align 8
  %367 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %368 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  %371 = zext i1 %370 to i64
  %372 = select i1 %370, i32 1, i32 0
  %373 = call i32 @set_tx_desc_use_rate(i32* %366, i32 %372)
  %374 = load i32, i32* %26, align 4
  %375 = call i64 @ieee80211_is_data_qos(i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %392

377:                                              ; preds = %354
  %378 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %379 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %377
  %383 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %384 = load i32, i32* @COMP_SEND, align 4
  %385 = load i32, i32* @DBG_TRACE, align 4
  %386 = call i32 @RT_TRACE(%struct.rtl_priv* %383, i32 %384, i32 %385, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %387 = load i32*, i32** %24, align 8
  %388 = call i32 @set_tx_desc_rdg_enable(i32* %387, i32 1)
  %389 = load i32*, i32** %24, align 8
  %390 = call i32 @set_tx_desc_htc(i32* %389, i32 1)
  br label %391

391:                                              ; preds = %382, %377
  br label %392

392:                                              ; preds = %391, %354
  br label %393

393:                                              ; preds = %392, %163
  %394 = call i32 (...) @rcu_read_unlock()
  %395 = load i32*, i32** %24, align 8
  %396 = load i32, i32* %28, align 4
  %397 = icmp ne i32 %396, 0
  %398 = zext i1 %397 to i64
  %399 = select i1 %397, i32 1, i32 0
  %400 = call i32 @set_tx_desc_first_seg(i32* %395, i32 %399)
  %401 = load i32*, i32** %24, align 8
  %402 = load i32, i32* %29, align 4
  %403 = icmp ne i32 %402, 0
  %404 = zext i1 %403 to i64
  %405 = select i1 %403, i32 1, i32 0
  %406 = call i32 @set_tx_desc_last_seg(i32* %401, i32 %405)
  %407 = load i32*, i32** %24, align 8
  %408 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %409 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = trunc i64 %410 to i32
  %412 = call i32 @set_tx_desc_tx_buffer_size(i32* %407, i32 %411)
  %413 = load i32*, i32** %24, align 8
  %414 = load i32, i32* %30, align 4
  %415 = call i32 @set_tx_desc_tx_buffer_address(i32* %413, i32 %414)
  %416 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %417 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %432

421:                                              ; preds = %393
  %422 = load i32*, i32** %24, align 8
  %423 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %424 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = call i32 @set_tx_desc_rate_id(i32* %422, i64 %425)
  %427 = load i32*, i32** %24, align 8
  %428 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %429 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = call i32 @set_tx_desc_macid(i32* %427, i64 %430)
  br label %444

432:                                              ; preds = %393
  %433 = load i32*, i32** %24, align 8
  %434 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %435 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = add nsw i64 12, %436
  %438 = call i32 @set_tx_desc_rate_id(i32* %433, i64 %437)
  %439 = load i32*, i32** %24, align 8
  %440 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %441 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = call i32 @set_tx_desc_macid(i32* %439, i64 %442)
  br label %444

444:                                              ; preds = %432, %421
  %445 = load i32, i32* %26, align 4
  %446 = call i64 @ieee80211_is_data_qos(i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %464, label %448

448:                                              ; preds = %444
  %449 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %22, align 8
  %450 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %464

453:                                              ; preds = %448
  %454 = load i32*, i32** %24, align 8
  %455 = call i32 @set_tx_desc_hwseq_en(i32* %454, i32 1)
  %456 = load i32*, i32** %24, align 8
  %457 = call i32 @set_tx_desc_pkt_id(i32* %456, i32 8)
  %458 = load i32, i32* %23, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %463, label %460

460:                                              ; preds = %453
  %461 = load i32*, i32** %24, align 8
  %462 = call i32 @set_tx_desc_qos(i32* %461, i32 1)
  br label %463

463:                                              ; preds = %460, %453
  br label %464

464:                                              ; preds = %463, %448, %444
  %465 = load i32*, i32** %24, align 8
  %466 = load i32, i32* %29, align 4
  %467 = icmp ne i32 %466, 0
  %468 = zext i1 %467 to i64
  %469 = select i1 %467, i32 0, i32 1
  %470 = call i32 @set_tx_desc_more_frag(i32* %465, i32 %469)
  %471 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %472 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %471)
  %473 = call i64 @is_multicast_ether_addr(i32 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %480, label %475

475:                                              ; preds = %464
  %476 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %477 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %476)
  %478 = call i64 @is_broadcast_ether_addr(i32 %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %483

480:                                              ; preds = %475, %464
  %481 = load i32*, i32** %24, align 8
  %482 = call i32 @set_tx_desc_bmc(i32* %481, i32 1)
  br label %483

483:                                              ; preds = %480, %475
  %484 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %485 = load i32, i32* @COMP_SEND, align 4
  %486 = load i32, i32* @DBG_TRACE, align 4
  %487 = call i32 @RT_TRACE(%struct.rtl_priv* %484, i32 %485, i32 %486, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %488

488:                                              ; preds = %483, %85
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl92ce_map_hwqueue_to_fwqueue(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @get_sta(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtl_get_tcb_desc(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.rtl_tcb_desc*) #1

declare dso_local i32 @clear_pci_tx_desc_content(i32*, i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @set_tx_desc_offset(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_shortgi(i32*, i32) #1

declare dso_local i32 @set_tx_desc_agg_break(i32*, i32) #1

declare dso_local i32 @set_tx_desc_max_agg_num(i32*, i32) #1

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

declare dso_local i32 @set_tx_desc_tx_sub_carrier(i32*, i32) #1

declare dso_local i32 @set_tx_desc_linip(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_ampdu_density(i32*, i32) #1

declare dso_local i32 @set_tx_desc_sec_type(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_id(i32*, i32) #1

declare dso_local i32 @set_tx_desc_queue_sel(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_rate_fb_limit(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_rate_fb_limit(i32*, i32) #1

declare dso_local i32 @set_tx_desc_disable_fb(i32*, i32) #1

declare dso_local i32 @set_tx_desc_use_rate(i32*, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @set_tx_desc_rdg_enable(i32*, i32) #1

declare dso_local i32 @set_tx_desc_htc(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @set_tx_desc_first_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_last_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_address(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rate_id(i32*, i64) #1

declare dso_local i32 @set_tx_desc_macid(i32*, i64) #1

declare dso_local i32 @set_tx_desc_hwseq_en(i32*, i32) #1

declare dso_local i32 @set_tx_desc_qos(i32*, i32) #1

declare dso_local i32 @set_tx_desc_more_frag(i32*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @set_tx_desc_bmc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
