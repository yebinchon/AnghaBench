; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_trx.c_rtl8723be_tx_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_trx.c_rtl8723be_tx_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rtl_tcb_desc = type { i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i64 }
%struct.rtl_priv = type { i32 }
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
@DESC92C_RATEMCS0 = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@DESC92C_RATE54M = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Enable RDG function.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723be_tx_fill_desc(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i32* %2, i32* %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_sta* %5, %struct.sk_buff* %6, i32 %7, %struct.rtl_tcb_desc* %8) #0 {
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
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
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
  %49 = load i32*, i32** %12, align 8
  store i32* %49, i32** %24, align 8
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %28, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @_rtl8723be_map_hwqueue_to_fwqueue(%struct.sk_buff* %56, i32 %57)
  store i32 %58, i32* %29, align 4
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %63 = call i32 @cpu_to_le16(i32 %62)
  %64 = and i32 %61, %63
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %30, align 4
  %67 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IEEE80211_FCTL_MOREFRAGS, align 4
  %71 = call i32 @cpu_to_le16(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %31, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %75 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %76 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %9
  %81 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %82 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %33, align 4
  br label %108

84:                                               ; preds = %9
  %85 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %86 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %92 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %90, %84
  %97 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %98 = icmp ne %struct.ieee80211_sta* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %33, align 4
  br label %106

106:                                              ; preds = %99, %96
  br label %107

107:                                              ; preds = %106, %90
  br label %108

108:                                              ; preds = %107, %80
  %109 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %110 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %114 = and i32 %112, %113
  %115 = ashr i32 %114, 4
  store i32 %115, i32* %25, align 4
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %117 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %118 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %120 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %121 = call i32 @rtl_get_tcb_desc(%struct.ieee80211_hw* %116, %struct.ieee80211_tx_info* %117, %struct.ieee80211_sta* %118, %struct.sk_buff* %119, %struct.rtl_tcb_desc* %120)
  %122 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %123 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %108
  %127 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %128 = load i64, i64* @EM_HDR_LEN, align 8
  %129 = call i32 @skb_push(%struct.sk_buff* %127, i64 %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @EM_HDR_LEN, align 8
  %134 = call i32 @memset(i64 %132, i32 0, i64 %133)
  br label %135

135:                                              ; preds = %126, %108
  %136 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %27, align 4
  %139 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %140 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %149 = call i32 @pci_map_single(i32 %141, i64 %144, i32 %147, i32 %148)
  store i32 %149, i32* %32, align 4
  %150 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %151 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %32, align 4
  %154 = call i64 @pci_dma_mapping_error(i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %135
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %158 = load i32, i32* @COMP_SEND, align 4
  %159 = load i32, i32* @DBG_TRACE, align 4
  %160 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %157, i32 %158, i32 %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %498

161:                                              ; preds = %135
  %162 = load i32*, i32** %24, align 8
  %163 = call i32 @clear_pci_tx_desc_content(i32* %162, i32 4)
  %164 = load i32, i32* %26, align 4
  %165 = call i64 @ieee80211_is_nullfunc(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* %26, align 4
  %169 = call i64 @ieee80211_is_ctl(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167, %161
  store i32 1, i32* %30, align 4
  store i32 1, i32* %31, align 4
  br label %172

172:                                              ; preds = %171, %167
  %173 = load i32, i32* %30, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %437

175:                                              ; preds = %172
  %176 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %177 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %207

180:                                              ; preds = %175
  %181 = load i32*, i32** %24, align 8
  %182 = call i32 @set_tx_desc_pkt_offset(i32* %181, i32 1)
  %183 = load i32*, i32** %24, align 8
  %184 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %185 = load i64, i64* @EM_HDR_LEN, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @set_tx_desc_offset(i32* %183, i64 %186)
  %188 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %189 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %188, i32 0, i32 15
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %180
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %194 = load i32, i32* @COMP_SEND, align 4
  %195 = load i32, i32* @DBG_TRACE, align 4
  %196 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %197 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %196, i32 0, i32 15
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %193, i32 %194, i32 %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %198)
  %200 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i32*
  %205 = call i32 @_rtl8723be_insert_emcontent(%struct.rtl_tcb_desc* %200, i32* %204)
  br label %206

206:                                              ; preds = %192, %180
  br label %211

207:                                              ; preds = %175
  %208 = load i32*, i32** %24, align 8
  %209 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %210 = call i32 @set_tx_desc_offset(i32* %208, i64 %209)
  br label %211

211:                                              ; preds = %207, %206
  %212 = load i32*, i32** %24, align 8
  %213 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %214 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %213, i32 0, i32 14
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @set_tx_desc_tx_rate(i32* %212, i32 %215)
  %217 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %218 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %217, i32 0, i32 14
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @DESC92C_RATEMCS0, align 4
  %221 = icmp sgt i32 %219, %220
  br i1 %221, label %222, label %229

222:                                              ; preds = %211
  %223 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %224 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %223, i32 0, i32 13
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 1, i32 0
  store i32 %228, i32* %34, align 4
  br label %236

229:                                              ; preds = %211
  %230 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %231 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %230, i32 0, i32 12
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 1, i32 0
  store i32 %235, i32* %34, align 4
  br label %236

236:                                              ; preds = %229, %222
  %237 = load i32*, i32** %24, align 8
  %238 = load i32, i32* %34, align 4
  %239 = call i32 @set_tx_desc_data_shortgi(i32* %237, i32 %238)
  %240 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %241 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %236
  %247 = load i32*, i32** %24, align 8
  %248 = call i32 @set_tx_desc_agg_enable(i32* %247, i32 1)
  %249 = load i32*, i32** %24, align 8
  %250 = call i32 @set_tx_desc_max_agg_num(i32* %249, i32 20)
  br label %251

251:                                              ; preds = %246, %236
  %252 = load i32*, i32** %24, align 8
  %253 = load i32, i32* %25, align 4
  %254 = call i32 @set_tx_desc_seq(i32* %252, i32 %253)
  %255 = load i32*, i32** %24, align 8
  %256 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %257 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %256, i32 0, i32 11
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %251
  %261 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %262 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %261, i32 0, i32 10
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  %265 = xor i1 %264, true
  br label %266

266:                                              ; preds = %260, %251
  %267 = phi i1 [ false, %251 ], [ %265, %260 ]
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 1, i32 0
  %270 = call i32 @set_tx_desc_rts_enable(i32* %255, i32 %269)
  %271 = load i32*, i32** %24, align 8
  %272 = call i32 @set_tx_desc_hw_rts_enable(i32* %271, i32 0)
  %273 = load i32*, i32** %24, align 8
  %274 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %275 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %274, i32 0, i32 10
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 1, i32 0
  %280 = call i32 @set_tx_desc_cts2self(i32* %273, i32 %279)
  %281 = load i32*, i32** %24, align 8
  %282 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %283 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @set_tx_desc_rts_rate(i32* %281, i32 %284)
  %286 = load i32*, i32** %24, align 8
  %287 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %288 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %287, i32 0, i32 9
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @set_tx_desc_rts_sc(i32* %286, i32 %289)
  %291 = load i32*, i32** %24, align 8
  %292 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %293 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @DESC92C_RATE54M, align 4
  %296 = icmp sle i32 %294, %295
  br i1 %296, label %297, label %304

297:                                              ; preds = %266
  %298 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %299 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %298, i32 0, i32 7
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i32 1, i32 0
  br label %311

304:                                              ; preds = %266
  %305 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %306 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %305, i32 0, i32 6
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i32 1, i32 0
  br label %311

311:                                              ; preds = %304, %297
  %312 = phi i32 [ %303, %297 ], [ %310, %304 ]
  %313 = call i32 @set_tx_desc_rts_short(i32* %291, i32 %312)
  %314 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %315 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %314, i32 0, i32 5
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %311
  %319 = load i32*, i32** %24, align 8
  %320 = call i32 @set_tx_desc_nav_use_hdr(i32* %319, i32 1)
  br label %321

321:                                              ; preds = %318, %311
  %322 = load i32, i32* %33, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %344

324:                                              ; preds = %321
  %325 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %326 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %335

330:                                              ; preds = %324
  %331 = load i32*, i32** %24, align 8
  %332 = call i32 @set_tx_desc_data_bw(i32* %331, i32 1)
  %333 = load i32*, i32** %24, align 8
  %334 = call i32 @set_tx_desc_tx_sub_carrier(i32* %333, i32 3)
  br label %343

335:                                              ; preds = %324
  %336 = load i32*, i32** %24, align 8
  %337 = call i32 @set_tx_desc_data_bw(i32* %336, i32 0)
  %338 = load i32*, i32** %24, align 8
  %339 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %340 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @set_tx_desc_tx_sub_carrier(i32* %338, i32 %341)
  br label %343

343:                                              ; preds = %335, %330
  br label %349

344:                                              ; preds = %321
  %345 = load i32*, i32** %24, align 8
  %346 = call i32 @set_tx_desc_data_bw(i32* %345, i32 0)
  %347 = load i32*, i32** %24, align 8
  %348 = call i32 @set_tx_desc_tx_sub_carrier(i32* %347, i32 0)
  br label %349

349:                                              ; preds = %344, %343
  %350 = load i32*, i32** %24, align 8
  %351 = call i32 @set_tx_desc_linip(i32* %350, i32 0)
  %352 = load i32*, i32** %24, align 8
  %353 = load i32, i32* %28, align 4
  %354 = call i32 @set_tx_desc_pkt_size(i32* %352, i32 %353)
  %355 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %356 = icmp ne %struct.ieee80211_sta* %355, null
  br i1 %356, label %357, label %365

357:                                              ; preds = %349
  %358 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %359 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %35, align 4
  %362 = load i32*, i32** %24, align 8
  %363 = load i32, i32* %35, align 4
  %364 = call i32 @set_tx_desc_ampdu_density(i32* %362, i32 %363)
  br label %365

365:                                              ; preds = %357, %349
  %366 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %367 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 0
  %369 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %368, align 8
  %370 = icmp ne %struct.ieee80211_key_conf* %369, null
  br i1 %370, label %371, label %389

371:                                              ; preds = %365
  %372 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %373 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 0
  %375 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %374, align 8
  store %struct.ieee80211_key_conf* %375, %struct.ieee80211_key_conf** %36, align 8
  %376 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %36, align 8
  %377 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  switch i32 %378, label %385 [
    i32 128, label %379
    i32 129, label %379
    i32 130, label %379
    i32 131, label %382
  ]

379:                                              ; preds = %371, %371, %371
  %380 = load i32*, i32** %24, align 8
  %381 = call i32 @set_tx_desc_sec_type(i32* %380, i32 1)
  br label %388

382:                                              ; preds = %371
  %383 = load i32*, i32** %24, align 8
  %384 = call i32 @set_tx_desc_sec_type(i32* %383, i32 3)
  br label %388

385:                                              ; preds = %371
  %386 = load i32*, i32** %24, align 8
  %387 = call i32 @set_tx_desc_sec_type(i32* %386, i32 0)
  br label %388

388:                                              ; preds = %385, %382, %379
  br label %389

389:                                              ; preds = %388, %365
  %390 = load i32*, i32** %24, align 8
  %391 = load i32, i32* %29, align 4
  %392 = call i32 @set_tx_desc_queue_sel(i32* %390, i32 %391)
  %393 = load i32*, i32** %24, align 8
  %394 = call i32 @set_tx_desc_data_rate_fb_limit(i32* %393, i32 31)
  %395 = load i32*, i32** %24, align 8
  %396 = call i32 @set_tx_desc_rts_rate_fb_limit(i32* %395, i32 15)
  %397 = load i32*, i32** %24, align 8
  %398 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %399 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %398, i32 0, i32 4
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  %402 = zext i1 %401 to i64
  %403 = select i1 %401, i32 1, i32 0
  %404 = call i32 @set_tx_desc_disable_fb(i32* %397, i32 %403)
  %405 = load i32*, i32** %24, align 8
  %406 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %407 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %406, i32 0, i32 3
  %408 = load i64, i64* %407, align 8
  %409 = icmp ne i64 %408, 0
  %410 = zext i1 %409 to i64
  %411 = select i1 %409, i32 1, i32 0
  %412 = call i32 @set_tx_desc_use_rate(i32* %405, i32 %411)
  %413 = load i32, i32* %26, align 4
  %414 = call i64 @ieee80211_is_data_qos(i32 %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %431

416:                                              ; preds = %389
  %417 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %418 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %417, i32 0, i32 3
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %430

421:                                              ; preds = %416
  %422 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %423 = load i32, i32* @COMP_SEND, align 4
  %424 = load i32, i32* @DBG_TRACE, align 4
  %425 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %422, i32 %423, i32 %424, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %426 = load i32*, i32** %24, align 8
  %427 = call i32 @set_tx_desc_rdg_enable(i32* %426, i32 1)
  %428 = load i32*, i32** %24, align 8
  %429 = call i32 @set_tx_desc_htc(i32* %428, i32 1)
  br label %430

430:                                              ; preds = %421, %416
  br label %431

431:                                              ; preds = %430, %389
  %432 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %433 = load i32*, i32** %12, align 8
  %434 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %435 = load %struct.rtlwifi_tx_info*, %struct.rtlwifi_tx_info** %23, align 8
  %436 = call i32 @rtl_set_tx_report(%struct.rtl_tcb_desc* %432, i32* %433, %struct.ieee80211_hw* %434, %struct.rtlwifi_tx_info* %435)
  br label %437

437:                                              ; preds = %431, %172
  %438 = load i32*, i32** %24, align 8
  %439 = load i32, i32* %30, align 4
  %440 = icmp ne i32 %439, 0
  %441 = zext i1 %440 to i64
  %442 = select i1 %440, i32 1, i32 0
  %443 = call i32 @set_tx_desc_first_seg(i32* %438, i32 %442)
  %444 = load i32*, i32** %24, align 8
  %445 = load i32, i32* %31, align 4
  %446 = icmp ne i32 %445, 0
  %447 = zext i1 %446 to i64
  %448 = select i1 %446, i32 1, i32 0
  %449 = call i32 @set_tx_desc_last_seg(i32* %444, i32 %448)
  %450 = load i32*, i32** %24, align 8
  %451 = load i32, i32* %27, align 4
  %452 = call i32 @set_tx_desc_tx_buffer_size(i32* %450, i32 %451)
  %453 = load i32*, i32** %24, align 8
  %454 = load i32, i32* %32, align 4
  %455 = call i32 @set_tx_desc_tx_buffer_address(i32* %453, i32 %454)
  %456 = load i32*, i32** %24, align 8
  %457 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %458 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %457, i32 0, i32 2
  %459 = load i64, i64* %458, align 8
  %460 = call i32 @set_tx_desc_rate_id(i32* %456, i64 %459)
  %461 = load i32*, i32** %24, align 8
  %462 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %463 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = call i32 @set_tx_desc_macid(i32* %461, i32 %464)
  %466 = load i32, i32* %26, align 4
  %467 = call i64 @ieee80211_is_data_qos(i32 %466)
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %474, label %469

469:                                              ; preds = %437
  %470 = load i32*, i32** %24, align 8
  %471 = call i32 @set_tx_desc_hwseq_en(i32* %470, i32 1)
  %472 = load i32*, i32** %24, align 8
  %473 = call i32 @set_tx_desc_hwseq_sel(i32* %472, i32 0)
  br label %474

474:                                              ; preds = %469, %437
  %475 = load i32*, i32** %24, align 8
  %476 = load i32, i32* %31, align 4
  %477 = icmp ne i32 %476, 0
  %478 = zext i1 %477 to i64
  %479 = select i1 %477, i32 0, i32 1
  %480 = call i32 @set_tx_desc_more_frag(i32* %475, i32 %479)
  %481 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %482 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %481)
  %483 = call i64 @is_multicast_ether_addr(i32 %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %490, label %485

485:                                              ; preds = %474
  %486 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %487 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %486)
  %488 = call i64 @is_broadcast_ether_addr(i32 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %485, %474
  %491 = load i32*, i32** %24, align 8
  %492 = call i32 @set_tx_desc_bmc(i32* %491, i32 1)
  br label %493

493:                                              ; preds = %490, %485
  %494 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %495 = load i32, i32* @COMP_SEND, align 4
  %496 = load i32, i32* @DBG_TRACE, align 4
  %497 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %494, i32 %495, i32 %496, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %498

498:                                              ; preds = %493, %156
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtlwifi_tx_info* @rtl_tx_skb_cb_info(%struct.sk_buff*) #1

declare dso_local i32 @_rtl8723be_map_hwqueue_to_fwqueue(%struct.sk_buff*, i32) #1

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

declare dso_local i32 @_rtl8723be_insert_emcontent(%struct.rtl_tcb_desc*, i32*) #1

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

declare dso_local i32 @set_tx_desc_tx_sub_carrier(i32*, i32) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
