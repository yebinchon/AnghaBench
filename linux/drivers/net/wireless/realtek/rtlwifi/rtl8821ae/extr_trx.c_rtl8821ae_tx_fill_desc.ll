; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_tx_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_tx_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rtl_tcb_desc = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i64 }
%struct.rtl_priv = type { i32 }
%struct.rtl_mac = type { i64 }
%struct.rtl_pci = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.rtlwifi_tx_info = type { i32 }

@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREFRAGS = common dso_local global i32 0, align 4
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@EM_HDR_LEN = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@USB_HWDESC_HEADER_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Insert 8 byte.pTcb->EMPktNum:%d\0A\00", align 1
@DESC_RATEMCS0 = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@DESC_RATE54M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Enable RDG function.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_tx_fill_desc(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i32* %2, i32* %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_sta* %5, %struct.sk_buff* %6, i32 %7, %struct.rtl_tcb_desc* %8) #0 {
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
  %22 = alloca %struct.rtl_hal*, align 8
  %23 = alloca %struct.rtlwifi_tx_info*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %10, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %14, align 8
  store %struct.ieee80211_sta* %5, %struct.ieee80211_sta** %15, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.rtl_tcb_desc* %8, %struct.rtl_tcb_desc** %18, align 8
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %38 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %37)
  store %struct.rtl_priv* %38, %struct.rtl_priv** %19, align 8
  %39 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %40 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %39)
  %41 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %40)
  store %struct.rtl_mac* %41, %struct.rtl_mac** %20, align 8
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %43 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %42)
  %44 = call %struct.rtl_pci* @rtl_pcidev(i32 %43)
  store %struct.rtl_pci* %44, %struct.rtl_pci** %21, align 8
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %46 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %45)
  store %struct.rtl_hal* %46, %struct.rtl_hal** %22, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %48 = call %struct.rtlwifi_tx_info* @rtl_tx_skb_cb_info(%struct.sk_buff* %47)
  store %struct.rtlwifi_tx_info* %48, %struct.rtlwifi_tx_info** %23, align 8
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %27, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @_rtl8821ae_map_hwqueue_to_fwqueue(%struct.sk_buff* %55, i32 %56)
  store i32 %57, i32* %28, align 4
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %29, align 4
  %66 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %67 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE80211_FCTL_MOREFRAGS, align 4
  %70 = call i32 @cpu_to_le16(i32 %69)
  %71 = and i32 %68, %70
  %72 = icmp eq i32 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %30, align 4
  store i32 0, i32* %32, align 4
  %74 = load i32*, i32** %12, align 8
  store i32* %74, i32** %34, align 8
  %75 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %80 = and i32 %78, %79
  %81 = ashr i32 %80, 4
  store i32 %81, i32* %24, align 4
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %83 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %84 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %86 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %87 = call i32 @rtl_get_tcb_desc(%struct.ieee80211_hw* %82, %struct.ieee80211_tx_info* %83, %struct.ieee80211_sta* %84, %struct.sk_buff* %85, %struct.rtl_tcb_desc* %86)
  %88 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %89 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %9
  %93 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %94 = load i64, i64* @EM_HDR_LEN, align 8
  %95 = call i32 @skb_push(%struct.sk_buff* %93, i64 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @EM_HDR_LEN, align 8
  %100 = call i32 @memset(i64 %98, i32 0, i64 %99)
  br label %101

101:                                              ; preds = %92, %9
  %102 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %26, align 4
  %105 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %106 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %115 = call i32 @pci_map_single(i32 %107, i64 %110, i32 %113, i32 %114)
  store i32 %115, i32* %31, align 4
  %116 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %117 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %31, align 4
  %120 = call i64 @pci_dma_mapping_error(i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %101
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %124 = load i32, i32* @COMP_SEND, align 4
  %125 = load i32, i32* @DBG_TRACE, align 4
  %126 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %453

127:                                              ; preds = %101
  %128 = load i32*, i32** %34, align 8
  %129 = call i32 @clear_pci_tx_desc_content(i32* %128, i32 4)
  %130 = load i32, i32* %25, align 4
  %131 = call i64 @ieee80211_is_nullfunc(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %25, align 4
  %135 = call i64 @ieee80211_is_ctl(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %127
  store i32 1, i32* %29, align 4
  store i32 1, i32* %30, align 4
  br label %138

138:                                              ; preds = %137, %133
  %139 = load i32, i32* %29, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %386

141:                                              ; preds = %138
  %142 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %143 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %173

146:                                              ; preds = %141
  %147 = load i32*, i32** %34, align 8
  %148 = call i32 @set_tx_desc_pkt_offset(i32* %147, i32 1)
  %149 = load i32*, i32** %34, align 8
  %150 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %151 = load i64, i64* @EM_HDR_LEN, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @set_tx_desc_offset(i32* %149, i64 %152)
  %154 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %155 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %154, i32 0, i32 14
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %146
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %160 = load i32, i32* @COMP_SEND, align 4
  %161 = load i32, i32* @DBG_TRACE, align 4
  %162 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %163 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %162, i32 0, i32 14
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %159, i32 %160, i32 %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %164)
  %166 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %167 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = call i32 @rtl8821ae_insert_emcontent(%struct.rtl_tcb_desc* %166, i32* %170)
  br label %172

172:                                              ; preds = %158, %146
  br label %177

173:                                              ; preds = %141
  %174 = load i32*, i32** %34, align 8
  %175 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %176 = call i32 @set_tx_desc_offset(i32* %174, i64 %175)
  br label %177

177:                                              ; preds = %173, %172
  %178 = load i32*, i32** %34, align 8
  %179 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %180 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %179, i32 0, i32 13
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @set_tx_desc_tx_rate(i32* %178, i32 %181)
  %183 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %184 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %183, i32 0, i32 13
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @DESC_RATEMCS0, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %177
  %189 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %190 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %189, i32 0, i32 12
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 1, i32 0
  store i32 %194, i32* %32, align 4
  br label %202

195:                                              ; preds = %177
  %196 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %197 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %196, i32 0, i32 11
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 1, i32 0
  store i32 %201, i32* %32, align 4
  br label %202

202:                                              ; preds = %195, %188
  %203 = load i32*, i32** %34, align 8
  %204 = load i32, i32* %32, align 4
  %205 = call i32 @set_tx_desc_data_shortgi(i32* %203, i32 %204)
  %206 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %207 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %202
  %213 = load i32*, i32** %34, align 8
  %214 = call i32 @set_tx_desc_agg_enable(i32* %213, i32 1)
  %215 = load i32*, i32** %34, align 8
  %216 = call i32 @set_tx_desc_max_agg_num(i32* %215, i32 31)
  br label %217

217:                                              ; preds = %212, %202
  %218 = load i32*, i32** %34, align 8
  %219 = load i32, i32* %24, align 4
  %220 = call i32 @set_tx_desc_seq(i32* %218, i32 %219)
  %221 = load i32*, i32** %34, align 8
  %222 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %223 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %222, i32 0, i32 10
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %217
  %227 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %228 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %227, i32 0, i32 9
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  %231 = xor i1 %230, true
  br label %232

232:                                              ; preds = %226, %217
  %233 = phi i1 [ false, %217 ], [ %231, %226 ]
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 1, i32 0
  %236 = call i32 @set_tx_desc_rts_enable(i32* %221, i32 %235)
  %237 = load i32*, i32** %34, align 8
  %238 = call i32 @set_tx_desc_hw_rts_enable(i32* %237, i32 0)
  %239 = load i32*, i32** %34, align 8
  %240 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %241 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %240, i32 0, i32 9
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 1, i32 0
  %246 = call i32 @set_tx_desc_cts2self(i32* %239, i32 %245)
  %247 = load i32*, i32** %34, align 8
  %248 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %249 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @set_tx_desc_rts_rate(i32* %247, i32 %250)
  %252 = load i32*, i32** %34, align 8
  %253 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %254 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %253, i32 0, i32 8
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @set_tx_desc_rts_sc(i32* %252, i32 %255)
  %257 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %258 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @DESC_RATE54M, align 4
  %261 = icmp sle i32 %259, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %232
  %263 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %264 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %263, i32 0, i32 6
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 1, i32 0
  br label %276

269:                                              ; preds = %232
  %270 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %271 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i32 1, i32 0
  br label %276

276:                                              ; preds = %269, %262
  %277 = phi i32 [ %268, %262 ], [ %275, %269 ]
  store i32 %277, i32* %33, align 4
  %278 = load i32*, i32** %34, align 8
  %279 = load i32, i32* %33, align 4
  %280 = call i32 @set_tx_desc_rts_short(i32* %278, i32 %279)
  %281 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %282 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %276
  %286 = load i32*, i32** %34, align 8
  %287 = call i32 @set_tx_desc_nav_use_hdr(i32* %286, i32 1)
  br label %288

288:                                              ; preds = %285, %276
  %289 = load i32*, i32** %34, align 8
  %290 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %291 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %292 = call i32 @rtl8821ae_bw_mapping(%struct.ieee80211_hw* %290, %struct.rtl_tcb_desc* %291)
  %293 = call i32 @set_tx_desc_data_bw(i32* %289, i32 %292)
  %294 = load i32*, i32** %34, align 8
  %295 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %296 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %297 = call i32 @rtl8821ae_sc_mapping(%struct.ieee80211_hw* %295, %struct.rtl_tcb_desc* %296)
  %298 = call i32 @set_tx_desc_tx_sub_carrier(i32* %294, i32 %297)
  %299 = load i32*, i32** %34, align 8
  %300 = call i32 @set_tx_desc_linip(i32* %299, i32 0)
  %301 = load i32*, i32** %34, align 8
  %302 = load i32, i32* %27, align 4
  %303 = call i32 @set_tx_desc_pkt_size(i32* %301, i32 %302)
  %304 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %305 = icmp ne %struct.ieee80211_sta* %304, null
  br i1 %305, label %306, label %314

306:                                              ; preds = %288
  %307 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %308 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %35, align 4
  %311 = load i32*, i32** %34, align 8
  %312 = load i32, i32* %35, align 4
  %313 = call i32 @set_tx_desc_ampdu_density(i32* %311, i32 %312)
  br label %314

314:                                              ; preds = %306, %288
  %315 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %316 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %317, align 8
  %319 = icmp ne %struct.ieee80211_key_conf* %318, null
  br i1 %319, label %320, label %338

320:                                              ; preds = %314
  %321 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %322 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %323, align 8
  store %struct.ieee80211_key_conf* %324, %struct.ieee80211_key_conf** %36, align 8
  %325 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %36, align 8
  %326 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  switch i32 %327, label %334 [
    i32 128, label %328
    i32 129, label %328
    i32 130, label %328
    i32 131, label %331
  ]

328:                                              ; preds = %320, %320, %320
  %329 = load i32*, i32** %34, align 8
  %330 = call i32 @set_tx_desc_sec_type(i32* %329, i32 1)
  br label %337

331:                                              ; preds = %320
  %332 = load i32*, i32** %34, align 8
  %333 = call i32 @set_tx_desc_sec_type(i32* %332, i32 3)
  br label %337

334:                                              ; preds = %320
  %335 = load i32*, i32** %34, align 8
  %336 = call i32 @set_tx_desc_sec_type(i32* %335, i32 0)
  br label %337

337:                                              ; preds = %334, %331, %328
  br label %338

338:                                              ; preds = %337, %314
  %339 = load i32*, i32** %34, align 8
  %340 = load i32, i32* %28, align 4
  %341 = call i32 @set_tx_desc_queue_sel(i32* %339, i32 %340)
  %342 = load i32*, i32** %34, align 8
  %343 = call i32 @set_tx_desc_data_rate_fb_limit(i32* %342, i32 31)
  %344 = load i32*, i32** %34, align 8
  %345 = call i32 @set_tx_desc_rts_rate_fb_limit(i32* %344, i32 15)
  %346 = load i32*, i32** %34, align 8
  %347 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %348 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %347, i32 0, i32 3
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i32 1, i32 0
  %353 = call i32 @set_tx_desc_disable_fb(i32* %346, i32 %352)
  %354 = load i32*, i32** %34, align 8
  %355 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %356 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %355, i32 0, i32 2
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  %359 = zext i1 %358 to i64
  %360 = select i1 %358, i32 1, i32 0
  %361 = call i32 @set_tx_desc_use_rate(i32* %354, i32 %360)
  %362 = load i32, i32* %25, align 4
  %363 = call i64 @ieee80211_is_data_qos(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %380

365:                                              ; preds = %338
  %366 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %367 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %365
  %371 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %372 = load i32, i32* @COMP_SEND, align 4
  %373 = load i32, i32* @DBG_TRACE, align 4
  %374 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %371, i32 %372, i32 %373, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %375 = load i32*, i32** %34, align 8
  %376 = call i32 @set_tx_desc_rdg_enable(i32* %375, i32 1)
  %377 = load i32*, i32** %34, align 8
  %378 = call i32 @set_tx_desc_htc(i32* %377, i32 1)
  br label %379

379:                                              ; preds = %370, %365
  br label %380

380:                                              ; preds = %379, %338
  %381 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %382 = load i32*, i32** %12, align 8
  %383 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %384 = load %struct.rtlwifi_tx_info*, %struct.rtlwifi_tx_info** %23, align 8
  %385 = call i32 @rtl_set_tx_report(%struct.rtl_tcb_desc* %381, i32* %382, %struct.ieee80211_hw* %383, %struct.rtlwifi_tx_info* %384)
  br label %386

386:                                              ; preds = %380, %138
  %387 = load i32*, i32** %34, align 8
  %388 = load i32, i32* %29, align 4
  %389 = icmp ne i32 %388, 0
  %390 = zext i1 %389 to i64
  %391 = select i1 %389, i32 1, i32 0
  %392 = call i32 @set_tx_desc_first_seg(i32* %387, i32 %391)
  %393 = load i32*, i32** %34, align 8
  %394 = load i32, i32* %30, align 4
  %395 = icmp ne i32 %394, 0
  %396 = zext i1 %395 to i64
  %397 = select i1 %395, i32 1, i32 0
  %398 = call i32 @set_tx_desc_last_seg(i32* %393, i32 %397)
  %399 = load i32*, i32** %34, align 8
  %400 = load i32, i32* %26, align 4
  %401 = call i32 @set_tx_desc_tx_buffer_size(i32* %399, i32 %400)
  %402 = load i32*, i32** %34, align 8
  %403 = load i32, i32* %31, align 4
  %404 = call i32 @set_tx_desc_tx_buffer_address(i32* %402, i32 %403)
  %405 = load i32*, i32** %34, align 8
  %406 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %407 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = call i32 @set_tx_desc_rate_id(i32* %405, i64 %408)
  %410 = load i32*, i32** %34, align 8
  %411 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %412 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = call i32 @set_tx_desc_macid(i32* %410, i32 %413)
  %415 = load i32, i32* %25, align 4
  %416 = call i64 @ieee80211_is_data_qos(i32 %415)
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %386
  %419 = load i32*, i32** %34, align 8
  %420 = call i32 @set_tx_desc_hwseq_en(i32* %419, i32 1)
  %421 = load i32*, i32** %34, align 8
  %422 = call i32 @set_tx_desc_hwseq_sel(i32* %421, i32 0)
  br label %423

423:                                              ; preds = %418, %386
  %424 = load i32*, i32** %34, align 8
  %425 = load i32, i32* %30, align 4
  %426 = icmp ne i32 %425, 0
  %427 = zext i1 %426 to i64
  %428 = select i1 %426, i32 0, i32 1
  %429 = call i32 @set_tx_desc_more_frag(i32* %424, i32 %428)
  %430 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %431 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %430)
  %432 = call i64 @is_multicast_ether_addr(i32 %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %423
  %435 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %436 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %435)
  %437 = call i64 @is_broadcast_ether_addr(i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %434, %423
  %440 = load i32*, i32** %34, align 8
  %441 = call i32 @set_tx_desc_bmc(i32* %440, i32 1)
  br label %442

442:                                              ; preds = %439, %434
  %443 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %444 = load i32*, i32** %12, align 8
  %445 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %446 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = call i32 @rtl8821ae_dm_set_tx_ant_by_tx_info(%struct.ieee80211_hw* %443, i32* %444, i32 %447)
  %449 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %450 = load i32, i32* @COMP_SEND, align 4
  %451 = load i32, i32* @DBG_TRACE, align 4
  %452 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %449, i32 %450, i32 %451, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %453

453:                                              ; preds = %442, %122
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtlwifi_tx_info* @rtl_tx_skb_cb_info(%struct.sk_buff*) #1

declare dso_local i32 @_rtl8821ae_map_hwqueue_to_fwqueue(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtl_get_tcb_desc(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.rtl_tcb_desc*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @pci_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @clear_pci_tx_desc_content(i32*, i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @set_tx_desc_pkt_offset(i32*, i32) #1

declare dso_local i32 @set_tx_desc_offset(i32*, i64) #1

declare dso_local i32 @rtl8821ae_insert_emcontent(%struct.rtl_tcb_desc*, i32*) #1

declare dso_local i32 @set_tx_desc_tx_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_shortgi(i32*, i32) #1

declare dso_local i32 @set_tx_desc_agg_enable(i32*, i32) #1

declare dso_local i32 @set_tx_desc_max_agg_num(i32*, i32) #1

declare dso_local i32 @set_tx_desc_seq(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_enable(i32*, i32) #1

declare dso_local i32 @set_tx_desc_hw_rts_enable(i32*, i32) #1

declare dso_local i32 @set_tx_desc_cts2self(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_sc(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_short(i32*, i32) #1

declare dso_local i32 @set_tx_desc_nav_use_hdr(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_bw(i32*, i32) #1

declare dso_local i32 @rtl8821ae_bw_mapping(%struct.ieee80211_hw*, %struct.rtl_tcb_desc*) #1

declare dso_local i32 @set_tx_desc_tx_sub_carrier(i32*, i32) #1

declare dso_local i32 @rtl8821ae_sc_mapping(%struct.ieee80211_hw*, %struct.rtl_tcb_desc*) #1

declare dso_local i32 @set_tx_desc_linip(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_ampdu_density(i32*, i32) #1

declare dso_local i32 @set_tx_desc_sec_type(i32*, i32) #1

declare dso_local i32 @set_tx_desc_queue_sel(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_rate_fb_limit(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rts_rate_fb_limit(i32*, i32) #1

declare dso_local i32 @set_tx_desc_disable_fb(i32*, i32) #1

declare dso_local i32 @set_tx_desc_use_rate(i32*, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @set_tx_desc_rdg_enable(i32*, i32) #1

declare dso_local i32 @set_tx_desc_htc(i32*, i32) #1

declare dso_local i32 @rtl_set_tx_report(%struct.rtl_tcb_desc*, i32*, %struct.ieee80211_hw*, %struct.rtlwifi_tx_info*) #1

declare dso_local i32 @set_tx_desc_first_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_last_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_address(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rate_id(i32*, i64) #1

declare dso_local i32 @set_tx_desc_macid(i32*, i32) #1

declare dso_local i32 @set_tx_desc_hwseq_en(i32*, i32) #1

declare dso_local i32 @set_tx_desc_hwseq_sel(i32*, i32) #1

declare dso_local i32 @set_tx_desc_more_frag(i32*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @set_tx_desc_bmc(i32*, i32) #1

declare dso_local i32 @rtl8821ae_dm_set_tx_ant_by_tx_info(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
