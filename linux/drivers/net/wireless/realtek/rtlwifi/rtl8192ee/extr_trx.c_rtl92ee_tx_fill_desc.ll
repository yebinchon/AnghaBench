; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_tx_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_tx_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rtl_tcb_desc = type { i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i64 }
%struct.rtl_priv = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_mac = type { i64, i32, i32, i64 }
%struct.rtl_pci = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.rtlwifi_tx_info = type { i32 }

@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREFRAGS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@EM_HDR_LEN = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@USB_HWDESC_HEADER_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Insert 8 byte.pTcb->EMPktNum:%d\0A\00", align 1
@DESC_RATE11M = common dso_local global i32 0, align 4
@DESC_RATEMCS0 = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@DESC_RATE54M = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Enable RDG function.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_tx_fill_desc(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i32* %2, i32* %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_sta* %5, %struct.sk_buff* %6, i32 %7, %struct.rtl_tcb_desc* %8) #0 {
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
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %10, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %14, align 8
  store %struct.ieee80211_sta* %5, %struct.ieee80211_sta** %15, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.rtl_tcb_desc* %8, %struct.rtl_tcb_desc** %18, align 8
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %37 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %36)
  store %struct.rtl_priv* %37, %struct.rtl_priv** %19, align 8
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %39 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %38)
  %40 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %39)
  store %struct.rtl_mac* %40, %struct.rtl_mac** %20, align 8
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %42 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %41)
  %43 = call %struct.rtl_pci* @rtl_pcidev(i32 %42)
  store %struct.rtl_pci* %43, %struct.rtl_pci** %21, align 8
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %45 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %44)
  store %struct.rtl_hal* %45, %struct.rtl_hal** %22, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %47 = call %struct.rtlwifi_tx_info* @rtl_tx_skb_cb_info(%struct.sk_buff* %46)
  store %struct.rtlwifi_tx_info* %47, %struct.rtlwifi_tx_info** %23, align 8
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %25, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @_rtl92ee_map_hwqueue_to_fwqueue(%struct.sk_buff* %51, i32 %52)
  store i32 %53, i32* %27, align 4
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %58 = call i32 @cpu_to_le16(i32 %57)
  %59 = and i32 %56, %58
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %28, align 4
  %62 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEEE80211_FCTL_MOREFRAGS, align 4
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = and i32 %64, %66
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %29, align 4
  store i32 0, i32* %31, align 4
  %70 = load i32*, i32** %12, align 8
  store i32* %70, i32** %33, align 8
  %71 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %72 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %9
  %77 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %78 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %31, align 4
  br label %104

80:                                               ; preds = %9
  %81 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %82 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %88 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86, %80
  %93 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %94 = icmp ne %struct.ieee80211_sta* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %97 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %31, align 4
  br label %102

102:                                              ; preds = %95, %92
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103, %76
  %105 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %106 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le16_to_cpu(i32 %107)
  %109 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %110 = and i32 %108, %109
  %111 = ashr i32 %110, 4
  store i32 %111, i32* %24, align 4
  %112 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %114 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %116 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %117 = call i32 @rtl_get_tcb_desc(%struct.ieee80211_hw* %112, %struct.ieee80211_tx_info* %113, %struct.ieee80211_sta* %114, %struct.sk_buff* %115, %struct.rtl_tcb_desc* %116)
  %118 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %119 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %104
  %123 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %124 = load i64, i64* @EM_HDR_LEN, align 8
  %125 = call i32 @skb_push(%struct.sk_buff* %123, i64 %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @EM_HDR_LEN, align 8
  %130 = call i32 @memset(i64 %128, i32 0, i64 %129)
  br label %131

131:                                              ; preds = %122, %104
  %132 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %26, align 4
  %135 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %136 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %145 = call i32 @pci_map_single(i32 %137, i64 %140, i32 %143, i32 %144)
  store i32 %145, i32* %30, align 4
  %146 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %147 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %30, align 4
  %150 = call i64 @pci_dma_mapping_error(i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %131
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %154 = load i32, i32* @COMP_SEND, align 4
  %155 = load i32, i32* @DBG_TRACE, align 4
  %156 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %533

157:                                              ; preds = %131
  %158 = load i32*, i32** %13, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %162 = load i32*, i32** %13, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %166 = load i32, i32* %30, align 4
  %167 = call i32 @rtl92ee_pre_fill_tx_bd_desc(%struct.ieee80211_hw* %161, i32* %162, i32* %163, i32 %164, %struct.sk_buff* %165, i32 %166)
  br label %168

168:                                              ; preds = %160, %157
  %169 = load i32, i32* %25, align 4
  %170 = call i64 @ieee80211_is_nullfunc(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %25, align 4
  %174 = call i64 @ieee80211_is_ctl(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172, %168
  store i32 1, i32* %28, align 4
  store i32 1, i32* %29, align 4
  br label %177

177:                                              ; preds = %176, %172
  %178 = load i32, i32* %28, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %465

180:                                              ; preds = %177
  %181 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %182 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %212

185:                                              ; preds = %180
  %186 = load i32*, i32** %33, align 8
  %187 = call i32 @set_tx_desc_pkt_offset(i32* %186, i32 1)
  %188 = load i32*, i32** %33, align 8
  %189 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %190 = load i64, i64* @EM_HDR_LEN, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @set_tx_desc_offset(i32* %188, i64 %191)
  %193 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %194 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %193, i32 0, i32 15
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %185
  %198 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %199 = load i32, i32* @COMP_SEND, align 4
  %200 = load i32, i32* @DBG_TRACE, align 4
  %201 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %202 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %201, i32 0, i32 15
  %203 = load i64, i64* %202, align 8
  %204 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %198, i32 %199, i32 %200, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %203)
  %205 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i32*
  %210 = call i32 @_rtl92ee_insert_emcontent(%struct.rtl_tcb_desc* %205, i32* %209)
  br label %211

211:                                              ; preds = %197, %185
  br label %216

212:                                              ; preds = %180
  %213 = load i32*, i32** %33, align 8
  %214 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %215 = call i32 @set_tx_desc_offset(i32* %213, i64 %214)
  br label %216

216:                                              ; preds = %212, %211
  %217 = load i32*, i32** %33, align 8
  %218 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %219 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %218, i32 0, i32 14
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @set_tx_desc_tx_rate(i32* %217, i32 %220)
  %222 = load i32, i32* %25, align 4
  %223 = call i64 @ieee80211_is_mgmt(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %216
  %226 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %227 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  br label %244

228:                                              ; preds = %216
  %229 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %230 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  %235 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %236 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %235, i32 0, i32 0
  store i32 1, i32* %236, align 8
  %237 = load i32*, i32** %33, align 8
  %238 = load i32, i32* @DESC_RATE11M, align 4
  %239 = call i32 @set_tx_desc_tx_rate(i32* %237, i32 %238)
  br label %243

240:                                              ; preds = %228
  %241 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %242 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %241, i32 0, i32 0
  store i32 0, i32* %242, align 8
  br label %243

243:                                              ; preds = %240, %234
  br label %244

244:                                              ; preds = %243, %225
  %245 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %246 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %245, i32 0, i32 14
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @DESC_RATEMCS0, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %244
  %251 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %252 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %251, i32 0, i32 13
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i32 1, i32 0
  store i32 %256, i32* %32, align 4
  br label %264

257:                                              ; preds = %244
  %258 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %259 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %258, i32 0, i32 12
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 1, i32 0
  store i32 %263, i32* %32, align 4
  br label %264

264:                                              ; preds = %257, %250
  %265 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %266 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %264
  %272 = load i32*, i32** %33, align 8
  %273 = call i32 @set_tx_desc_agg_enable(i32* %272, i32 1)
  %274 = load i32*, i32** %33, align 8
  %275 = call i32 @set_tx_desc_max_agg_num(i32* %274, i32 20)
  br label %276

276:                                              ; preds = %271, %264
  %277 = load i32*, i32** %33, align 8
  %278 = load i32, i32* %24, align 4
  %279 = call i32 @set_tx_desc_seq(i32* %277, i32 %278)
  %280 = load i32*, i32** %33, align 8
  %281 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %282 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %281, i32 0, i32 11
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %276
  %286 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %287 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %286, i32 0, i32 10
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  %290 = xor i1 %289, true
  br label %291

291:                                              ; preds = %285, %276
  %292 = phi i1 [ false, %276 ], [ %290, %285 ]
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i32 1, i32 0
  %295 = call i32 @set_tx_desc_rts_enable(i32* %280, i32 %294)
  %296 = load i32*, i32** %33, align 8
  %297 = call i32 @set_tx_desc_hw_rts_enable(i32* %296, i32 0)
  %298 = load i32*, i32** %33, align 8
  %299 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %300 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %299, i32 0, i32 10
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 1, i32 0
  %305 = call i32 @set_tx_desc_cts2self(i32* %298, i32 %304)
  %306 = load i32*, i32** %33, align 8
  %307 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %308 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @set_tx_desc_rts_rate(i32* %306, i32 %309)
  %311 = load i32*, i32** %33, align 8
  %312 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %313 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @set_tx_desc_rts_sc(i32* %311, i32 %314)
  %316 = load i32*, i32** %33, align 8
  %317 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %318 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %317, i32 0, i32 8
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @DESC_RATE54M, align 4
  %321 = icmp sle i32 %319, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %291
  %323 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %324 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %323, i32 0, i32 7
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  %327 = zext i1 %326 to i64
  %328 = select i1 %326, i32 1, i32 0
  br label %336

329:                                              ; preds = %291
  %330 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %331 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %330, i32 0, i32 6
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i32 1, i32 0
  br label %336

336:                                              ; preds = %329, %322
  %337 = phi i32 [ %328, %322 ], [ %335, %329 ]
  %338 = call i32 @set_tx_desc_rts_short(i32* %316, i32 %337)
  %339 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %340 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %339, i32 0, i32 5
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %336
  %344 = load i32*, i32** %33, align 8
  %345 = call i32 @set_tx_desc_nav_use_hdr(i32* %344, i32 1)
  br label %346

346:                                              ; preds = %343, %336
  %347 = load i32, i32* %31, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %369

349:                                              ; preds = %346
  %350 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %351 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %360

355:                                              ; preds = %349
  %356 = load i32*, i32** %33, align 8
  %357 = call i32 @set_tx_desc_data_bw(i32* %356, i32 1)
  %358 = load i32*, i32** %33, align 8
  %359 = call i32 @set_tx_desc_tx_sub_carrier(i32* %358, i32 3)
  br label %368

360:                                              ; preds = %349
  %361 = load i32*, i32** %33, align 8
  %362 = call i32 @set_tx_desc_data_bw(i32* %361, i32 0)
  %363 = load i32*, i32** %33, align 8
  %364 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %365 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @set_tx_desc_tx_sub_carrier(i32* %363, i32 %366)
  br label %368

368:                                              ; preds = %360, %355
  br label %374

369:                                              ; preds = %346
  %370 = load i32*, i32** %33, align 8
  %371 = call i32 @set_tx_desc_data_bw(i32* %370, i32 0)
  %372 = load i32*, i32** %33, align 8
  %373 = call i32 @set_tx_desc_tx_sub_carrier(i32* %372, i32 0)
  br label %374

374:                                              ; preds = %369, %368
  %375 = load i32*, i32** %33, align 8
  %376 = call i32 @set_tx_desc_linip(i32* %375, i32 0)
  %377 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %378 = icmp ne %struct.ieee80211_sta* %377, null
  br i1 %378, label %379, label %387

379:                                              ; preds = %374
  %380 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %381 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  store i32 %383, i32* %34, align 4
  %384 = load i32*, i32** %33, align 8
  %385 = load i32, i32* %34, align 4
  %386 = call i32 @set_tx_desc_ampdu_density(i32* %384, i32 %385)
  br label %387

387:                                              ; preds = %379, %374
  %388 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %389 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  %391 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %390, align 8
  %392 = icmp ne %struct.ieee80211_key_conf* %391, null
  br i1 %392, label %393, label %411

393:                                              ; preds = %387
  %394 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %395 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 0
  %397 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %396, align 8
  store %struct.ieee80211_key_conf* %397, %struct.ieee80211_key_conf** %35, align 8
  %398 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %35, align 8
  %399 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  switch i32 %400, label %407 [
    i32 128, label %401
    i32 129, label %401
    i32 130, label %401
    i32 131, label %404
  ]

401:                                              ; preds = %393, %393, %393
  %402 = load i32*, i32** %33, align 8
  %403 = call i32 @set_tx_desc_sec_type(i32* %402, i32 1)
  br label %410

404:                                              ; preds = %393
  %405 = load i32*, i32** %33, align 8
  %406 = call i32 @set_tx_desc_sec_type(i32* %405, i32 3)
  br label %410

407:                                              ; preds = %393
  %408 = load i32*, i32** %33, align 8
  %409 = call i32 @set_tx_desc_sec_type(i32* %408, i32 0)
  br label %410

410:                                              ; preds = %407, %404, %401
  br label %411

411:                                              ; preds = %410, %387
  %412 = load i32*, i32** %33, align 8
  %413 = load i32, i32* %27, align 4
  %414 = call i32 @set_tx_desc_queue_sel(i32* %412, i32 %413)
  %415 = load i32*, i32** %33, align 8
  %416 = call i32 @set_tx_desc_data_rate_fb_limit(i32* %415, i32 31)
  %417 = load i32*, i32** %33, align 8
  %418 = call i32 @set_tx_desc_rts_rate_fb_limit(i32* %417, i32 15)
  %419 = load i32*, i32** %33, align 8
  %420 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %421 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %420, i32 0, i32 4
  %422 = load i64, i64* %421, align 8
  %423 = icmp ne i64 %422, 0
  %424 = zext i1 %423 to i64
  %425 = select i1 %423, i32 1, i32 0
  %426 = call i32 @set_tx_desc_disable_fb(i32* %419, i32 %425)
  %427 = load i32*, i32** %33, align 8
  %428 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %429 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = icmp ne i32 %430, 0
  %432 = zext i1 %431 to i64
  %433 = select i1 %431, i32 1, i32 0
  %434 = call i32 @set_tx_desc_use_rate(i32* %427, i32 %433)
  %435 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %436 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %440, label %439

439:                                              ; preds = %411
  br label %440

440:                                              ; preds = %439, %411
  %441 = load i32, i32* %25, align 4
  %442 = call i64 @ieee80211_is_data_qos(i32 %441)
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %459

444:                                              ; preds = %440
  %445 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %446 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %445, i32 0, i32 3
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %458

449:                                              ; preds = %444
  %450 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %451 = load i32, i32* @COMP_SEND, align 4
  %452 = load i32, i32* @DBG_TRACE, align 4
  %453 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %450, i32 %451, i32 %452, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %454 = load i32*, i32** %33, align 8
  %455 = call i32 @set_tx_desc_rdg_enable(i32* %454, i32 1)
  %456 = load i32*, i32** %33, align 8
  %457 = call i32 @set_tx_desc_htc(i32* %456, i32 1)
  br label %458

458:                                              ; preds = %449, %444
  br label %459

459:                                              ; preds = %458, %440
  %460 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %461 = load i32*, i32** %12, align 8
  %462 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %463 = load %struct.rtlwifi_tx_info*, %struct.rtlwifi_tx_info** %23, align 8
  %464 = call i32 @rtl_set_tx_report(%struct.rtl_tcb_desc* %460, i32* %461, %struct.ieee80211_hw* %462, %struct.rtlwifi_tx_info* %463)
  br label %465

465:                                              ; preds = %459, %177
  %466 = load i32*, i32** %33, align 8
  %467 = load i32, i32* %28, align 4
  %468 = icmp ne i32 %467, 0
  %469 = zext i1 %468 to i64
  %470 = select i1 %468, i32 1, i32 0
  %471 = call i32 @set_tx_desc_first_seg(i32* %466, i32 %470)
  %472 = load i32*, i32** %33, align 8
  %473 = load i32, i32* %29, align 4
  %474 = icmp ne i32 %473, 0
  %475 = zext i1 %474 to i64
  %476 = select i1 %474, i32 1, i32 0
  %477 = call i32 @set_tx_desc_last_seg(i32* %472, i32 %476)
  %478 = load i32*, i32** %33, align 8
  %479 = load i32, i32* %30, align 4
  %480 = call i32 @set_tx_desc_tx_buffer_address(i32* %478, i32 %479)
  %481 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %482 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %497

486:                                              ; preds = %465
  %487 = load i32*, i32** %33, align 8
  %488 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %489 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %488, i32 0, i32 2
  %490 = load i64, i64* %489, align 8
  %491 = call i32 @set_tx_desc_rate_id(i32* %487, i64 %490)
  %492 = load i32*, i32** %33, align 8
  %493 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %494 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %493, i32 0, i32 3
  %495 = load i64, i64* %494, align 8
  %496 = call i32 @set_tx_desc_macid(i32* %492, i64 %495)
  br label %509

497:                                              ; preds = %465
  %498 = load i32*, i32** %33, align 8
  %499 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %500 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %499, i32 0, i32 2
  %501 = load i64, i64* %500, align 8
  %502 = add nsw i64 12, %501
  %503 = call i32 @set_tx_desc_rate_id(i32* %498, i64 %502)
  %504 = load i32*, i32** %33, align 8
  %505 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %506 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %505, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = call i32 @set_tx_desc_macid(i32* %504, i64 %507)
  br label %509

509:                                              ; preds = %497, %486
  %510 = load i32*, i32** %33, align 8
  %511 = load i32, i32* %29, align 4
  %512 = icmp ne i32 %511, 0
  %513 = zext i1 %512 to i64
  %514 = select i1 %512, i32 0, i32 1
  %515 = call i32 @set_tx_desc_more_frag(i32* %510, i32 %514)
  %516 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %517 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %516)
  %518 = call i64 @is_multicast_ether_addr(i32 %517)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %525, label %520

520:                                              ; preds = %509
  %521 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %522 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %521)
  %523 = call i64 @is_broadcast_ether_addr(i32 %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %520, %509
  %526 = load i32*, i32** %33, align 8
  %527 = call i32 @set_tx_desc_bmc(i32* %526, i32 1)
  br label %528

528:                                              ; preds = %525, %520
  %529 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %530 = load i32, i32* @COMP_SEND, align 4
  %531 = load i32, i32* @DBG_TRACE, align 4
  %532 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %529, i32 %530, i32 %531, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %533

533:                                              ; preds = %528, %152
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtlwifi_tx_info* @rtl_tx_skb_cb_info(%struct.sk_buff*) #1

declare dso_local i32 @_rtl92ee_map_hwqueue_to_fwqueue(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtl_get_tcb_desc(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.rtl_tcb_desc*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @pci_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl92ee_pre_fill_tx_bd_desc(%struct.ieee80211_hw*, i32*, i32*, i32, %struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @set_tx_desc_pkt_offset(i32*, i32) #1

declare dso_local i32 @set_tx_desc_offset(i32*, i64) #1

declare dso_local i32 @_rtl92ee_insert_emcontent(%struct.rtl_tcb_desc*, i32*) #1

declare dso_local i32 @set_tx_desc_tx_rate(i32*, i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

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

declare dso_local i32 @set_tx_desc_tx_sub_carrier(i32*, i32) #1

declare dso_local i32 @set_tx_desc_linip(i32*, i32) #1

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

declare dso_local i32 @set_tx_desc_tx_buffer_address(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rate_id(i32*, i64) #1

declare dso_local i32 @set_tx_desc_macid(i32*, i64) #1

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
