; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c_rtl88ee_tx_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c_rtl88ee_tx_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rtl_tcb_desc = type { i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i64 }
%struct.rtl_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.rtl_mac = type { i64, i32, i32, i64 }
%struct.rtl_pci = type { i32 }
%struct.rtl_hal = type { i64 }

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
define dso_local void @rtl88ee_tx_fill_desc(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i32* %2, i32* %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_sta* %5, %struct.sk_buff* %6, i32 %7, %struct.rtl_tcb_desc* %8) #0 {
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
  %23 = alloca i32, align 4
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
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %26, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @_rtl88ee_map_hwqueue_to_fwqueue(%struct.sk_buff* %52, i32 %53)
  store i32 %54, i32* %27, align 4
  %55 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = and i32 %57, %59
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %28, align 4
  %63 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %64 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_FCTL_MOREFRAGS, align 4
  %67 = call i32 @cpu_to_le16(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %29, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %71 = load i32*, i32** %12, align 8
  store i32* %71, i32** %33, align 8
  %72 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %73 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %9
  %78 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %79 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %31, align 4
  br label %105

81:                                               ; preds = %9
  %82 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %83 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %89 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %87, %81
  %94 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %95 = icmp ne %struct.ieee80211_sta* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %31, align 4
  br label %103

103:                                              ; preds = %96, %93
  br label %104

104:                                              ; preds = %103, %87
  br label %105

105:                                              ; preds = %104, %77
  %106 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %107 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le16_to_cpu(i32 %108)
  %110 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %111 = and i32 %109, %110
  %112 = ashr i32 %111, 4
  store i32 %112, i32* %23, align 4
  %113 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %114 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %115 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %117 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %118 = call i32 @rtl_get_tcb_desc(%struct.ieee80211_hw* %113, %struct.ieee80211_tx_info* %114, %struct.ieee80211_sta* %115, %struct.sk_buff* %116, %struct.rtl_tcb_desc* %117)
  %119 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %120 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %105
  %124 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %125 = load i64, i64* @EM_HDR_LEN, align 8
  %126 = call i32 @skb_push(%struct.sk_buff* %124, i64 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @EM_HDR_LEN, align 8
  %131 = call i32 @memset(i64 %129, i32 0, i64 %130)
  br label %132

132:                                              ; preds = %123, %105
  %133 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %25, align 4
  %136 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %137 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %146 = call i32 @pci_map_single(i32 %138, i64 %141, i32 %144, i32 %145)
  store i32 %146, i32* %30, align 4
  %147 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %148 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %30, align 4
  %151 = call i64 @pci_dma_mapping_error(i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %132
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %155 = load i32, i32* @COMP_SEND, align 4
  %156 = load i32, i32* @DBG_TRACE, align 4
  %157 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %154, i32 %155, i32 %156, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %538

158:                                              ; preds = %132
  %159 = load i32*, i32** %33, align 8
  %160 = call i32 @clear_pci_tx_desc_content(i32* %159, i32 4)
  %161 = load i32, i32* %24, align 4
  %162 = call i64 @ieee80211_is_nullfunc(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %24, align 4
  %166 = call i64 @ieee80211_is_ctl(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %164, %158
  store i32 1, i32* %28, align 4
  store i32 1, i32* %29, align 4
  br label %169

169:                                              ; preds = %168, %164
  %170 = load i32, i32* %28, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %447

172:                                              ; preds = %169
  %173 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %174 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %204

177:                                              ; preds = %172
  %178 = load i32*, i32** %33, align 8
  %179 = call i32 @set_tx_desc_pkt_offset(i32* %178, i32 1)
  %180 = load i32*, i32** %33, align 8
  %181 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %182 = load i64, i64* @EM_HDR_LEN, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @set_tx_desc_offset(i32* %180, i64 %183)
  %185 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %186 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %185, i32 0, i32 16
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %177
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %191 = load i32, i32* @COMP_SEND, align 4
  %192 = load i32, i32* @DBG_TRACE, align 4
  %193 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %194 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %193, i32 0, i32 16
  %195 = load i64, i64* %194, align 8
  %196 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %190, i32 %191, i32 %192, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %195)
  %197 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %198 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to i32*
  %202 = call i32 @rtl88ee_insert_emcontent(%struct.rtl_tcb_desc* %197, i32* %201)
  br label %203

203:                                              ; preds = %189, %177
  br label %208

204:                                              ; preds = %172
  %205 = load i32*, i32** %33, align 8
  %206 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %207 = call i32 @set_tx_desc_offset(i32* %205, i64 %206)
  br label %208

208:                                              ; preds = %204, %203
  %209 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %210 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %209, i32 0, i32 0
  store i32 1, i32* %210, align 8
  %211 = load i32*, i32** %33, align 8
  %212 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %213 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %212, i32 0, i32 15
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @set_tx_desc_tx_rate(i32* %211, i32 %214)
  %216 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %217 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %216, i32 0, i32 15
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @DESC92C_RATEMCS0, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %208
  %222 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %223 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %222, i32 0, i32 14
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 1, i32 0
  store i32 %227, i32* %32, align 4
  br label %235

228:                                              ; preds = %208
  %229 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %230 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %229, i32 0, i32 13
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 1, i32 0
  store i32 %234, i32* %32, align 4
  br label %235

235:                                              ; preds = %228, %221
  %236 = load i32*, i32** %33, align 8
  %237 = load i32, i32* %32, align 4
  %238 = call i32 @set_tx_desc_data_shortgi(i32* %236, i32 %237)
  %239 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %240 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %235
  %246 = load i32*, i32** %33, align 8
  %247 = call i32 @set_tx_desc_agg_enable(i32* %246, i32 1)
  %248 = load i32*, i32** %33, align 8
  %249 = call i32 @set_tx_desc_max_agg_num(i32* %248, i32 20)
  br label %250

250:                                              ; preds = %245, %235
  %251 = load i32*, i32** %33, align 8
  %252 = load i32, i32* %23, align 4
  %253 = call i32 @set_tx_desc_seq(i32* %251, i32 %252)
  %254 = load i32*, i32** %33, align 8
  %255 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %256 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %255, i32 0, i32 12
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %250
  %260 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %261 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %260, i32 0, i32 11
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  %264 = xor i1 %263, true
  br label %265

265:                                              ; preds = %259, %250
  %266 = phi i1 [ false, %250 ], [ %264, %259 ]
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 1, i32 0
  %269 = call i32 @set_tx_desc_rts_enable(i32* %254, i32 %268)
  %270 = load i32*, i32** %33, align 8
  %271 = call i32 @set_tx_desc_hw_rts_enable(i32* %270, i32 0)
  %272 = load i32*, i32** %33, align 8
  %273 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %274 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %273, i32 0, i32 11
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  %277 = zext i1 %276 to i64
  %278 = select i1 %276, i32 1, i32 0
  %279 = call i32 @set_tx_desc_cts2self(i32* %272, i32 %278)
  %280 = load i32*, i32** %33, align 8
  %281 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %282 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %281, i32 0, i32 10
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  %285 = zext i1 %284 to i64
  %286 = select i1 %284, i32 1, i32 0
  %287 = call i32 @set_tx_desc_rts_stbc(i32* %280, i32 %286)
  %288 = load i32*, i32** %33, align 8
  %289 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %290 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %289, i32 0, i32 8
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @set_tx_desc_rts_rate(i32* %288, i32 %291)
  %293 = load i32*, i32** %33, align 8
  %294 = call i32 @set_tx_desc_rts_bw(i32* %293, i32 0)
  %295 = load i32*, i32** %33, align 8
  %296 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %297 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %296, i32 0, i32 9
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @set_tx_desc_rts_sc(i32* %295, i32 %298)
  %300 = load i32*, i32** %33, align 8
  %301 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %302 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @DESC92C_RATE54M, align 4
  %305 = icmp sle i32 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %265
  %307 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %308 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %307, i32 0, i32 7
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i32 1, i32 0
  br label %320

313:                                              ; preds = %265
  %314 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %315 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %314, i32 0, i32 6
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i32 1, i32 0
  br label %320

320:                                              ; preds = %313, %306
  %321 = phi i32 [ %312, %306 ], [ %319, %313 ]
  %322 = call i32 @set_tx_desc_rts_short(i32* %300, i32 %321)
  %323 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %324 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %323, i32 0, i32 5
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %320
  %328 = load i32*, i32** %33, align 8
  %329 = call i32 @set_tx_desc_nav_use_hdr(i32* %328, i32 1)
  br label %330

330:                                              ; preds = %327, %320
  %331 = load i32, i32* %31, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %353

333:                                              ; preds = %330
  %334 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %335 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %344

339:                                              ; preds = %333
  %340 = load i32*, i32** %33, align 8
  %341 = call i32 @set_tx_desc_data_bw(i32* %340, i32 1)
  %342 = load i32*, i32** %33, align 8
  %343 = call i32 @set_tx_desc_tx_sub_carrier(i32* %342, i32 3)
  br label %352

344:                                              ; preds = %333
  %345 = load i32*, i32** %33, align 8
  %346 = call i32 @set_tx_desc_data_bw(i32* %345, i32 0)
  %347 = load i32*, i32** %33, align 8
  %348 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %349 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @set_tx_desc_tx_sub_carrier(i32* %347, i32 %350)
  br label %352

352:                                              ; preds = %344, %339
  br label %358

353:                                              ; preds = %330
  %354 = load i32*, i32** %33, align 8
  %355 = call i32 @set_tx_desc_data_bw(i32* %354, i32 0)
  %356 = load i32*, i32** %33, align 8
  %357 = call i32 @set_tx_desc_tx_sub_carrier(i32* %356, i32 0)
  br label %358

358:                                              ; preds = %353, %352
  %359 = load i32*, i32** %33, align 8
  %360 = call i32 @set_tx_desc_linip(i32* %359, i32 0)
  %361 = load i32*, i32** %33, align 8
  %362 = load i32, i32* %26, align 4
  %363 = call i32 @set_tx_desc_pkt_size(i32* %361, i32 %362)
  %364 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %365 = icmp ne %struct.ieee80211_sta* %364, null
  br i1 %365, label %366, label %374

366:                                              ; preds = %358
  %367 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %368 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %34, align 4
  %371 = load i32*, i32** %33, align 8
  %372 = load i32, i32* %34, align 4
  %373 = call i32 @set_tx_desc_ampdu_density(i32* %371, i32 %372)
  br label %374

374:                                              ; preds = %366, %358
  %375 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %376 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 0
  %378 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %377, align 8
  %379 = icmp ne %struct.ieee80211_key_conf* %378, null
  br i1 %379, label %380, label %398

380:                                              ; preds = %374
  %381 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %382 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 0
  %384 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %383, align 8
  store %struct.ieee80211_key_conf* %384, %struct.ieee80211_key_conf** %35, align 8
  %385 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %35, align 8
  %386 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  switch i32 %387, label %394 [
    i32 128, label %388
    i32 129, label %388
    i32 130, label %388
    i32 131, label %391
  ]

388:                                              ; preds = %380, %380, %380
  %389 = load i32*, i32** %33, align 8
  %390 = call i32 @set_tx_desc_sec_type(i32* %389, i32 1)
  br label %397

391:                                              ; preds = %380
  %392 = load i32*, i32** %33, align 8
  %393 = call i32 @set_tx_desc_sec_type(i32* %392, i32 3)
  br label %397

394:                                              ; preds = %380
  %395 = load i32*, i32** %33, align 8
  %396 = call i32 @set_tx_desc_sec_type(i32* %395, i32 0)
  br label %397

397:                                              ; preds = %394, %391, %388
  br label %398

398:                                              ; preds = %397, %374
  %399 = load i32*, i32** %33, align 8
  %400 = load i32, i32* %27, align 4
  %401 = call i32 @set_tx_desc_queue_sel(i32* %399, i32 %400)
  %402 = load i32*, i32** %33, align 8
  %403 = call i32 @set_tx_desc_data_rate_fb_limit(i32* %402, i32 31)
  %404 = load i32*, i32** %33, align 8
  %405 = call i32 @set_tx_desc_rts_rate_fb_limit(i32* %404, i32 15)
  %406 = load i32*, i32** %33, align 8
  %407 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %408 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %407, i32 0, i32 4
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  %411 = zext i1 %410 to i64
  %412 = select i1 %410, i32 1, i32 0
  %413 = call i32 @set_tx_desc_disable_fb(i32* %406, i32 %412)
  %414 = load i32*, i32** %33, align 8
  %415 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %416 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = icmp ne i32 %417, 0
  %419 = zext i1 %418 to i64
  %420 = select i1 %418, i32 1, i32 0
  %421 = call i32 @set_tx_desc_use_rate(i32* %414, i32 %420)
  %422 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %423 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %427, label %426

426:                                              ; preds = %398
  br label %427

427:                                              ; preds = %426, %398
  %428 = load i32, i32* %24, align 4
  %429 = call i64 @ieee80211_is_data_qos(i32 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %446

431:                                              ; preds = %427
  %432 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %433 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %445

436:                                              ; preds = %431
  %437 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %438 = load i32, i32* @COMP_SEND, align 4
  %439 = load i32, i32* @DBG_TRACE, align 4
  %440 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %437, i32 %438, i32 %439, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %441 = load i32*, i32** %33, align 8
  %442 = call i32 @set_tx_desc_rdg_enable(i32* %441, i32 1)
  %443 = load i32*, i32** %33, align 8
  %444 = call i32 @set_tx_desc_htc(i32* %443, i32 1)
  br label %445

445:                                              ; preds = %436, %431
  br label %446

446:                                              ; preds = %445, %427
  br label %447

447:                                              ; preds = %446, %169
  %448 = load i32*, i32** %33, align 8
  %449 = load i32, i32* %28, align 4
  %450 = icmp ne i32 %449, 0
  %451 = zext i1 %450 to i64
  %452 = select i1 %450, i32 1, i32 0
  %453 = call i32 @set_tx_desc_first_seg(i32* %448, i32 %452)
  %454 = load i32*, i32** %33, align 8
  %455 = load i32, i32* %29, align 4
  %456 = icmp ne i32 %455, 0
  %457 = zext i1 %456 to i64
  %458 = select i1 %456, i32 1, i32 0
  %459 = call i32 @set_tx_desc_last_seg(i32* %454, i32 %458)
  %460 = load i32*, i32** %33, align 8
  %461 = load i32, i32* %25, align 4
  %462 = call i32 @set_tx_desc_tx_buffer_size(i32* %460, i32 %461)
  %463 = load i32*, i32** %33, align 8
  %464 = load i32, i32* %30, align 4
  %465 = call i32 @set_tx_desc_tx_buffer_address(i32* %463, i32 %464)
  %466 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %467 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %482

471:                                              ; preds = %447
  %472 = load i32*, i32** %33, align 8
  %473 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %474 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %473, i32 0, i32 3
  %475 = load i64, i64* %474, align 8
  %476 = call i32 @set_tx_desc_rate_id(i32* %472, i64 %475)
  %477 = load i32*, i32** %33, align 8
  %478 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %479 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %478, i32 0, i32 2
  %480 = load i64, i64* %479, align 8
  %481 = call i32 @set_tx_desc_macid(i32* %477, i64 %480)
  br label %494

482:                                              ; preds = %447
  %483 = load i32*, i32** %33, align 8
  %484 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %485 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %484, i32 0, i32 3
  %486 = load i64, i64* %485, align 8
  %487 = add nsw i64 12, %486
  %488 = call i32 @set_tx_desc_rate_id(i32* %483, i64 %487)
  %489 = load i32*, i32** %33, align 8
  %490 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %491 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %490, i32 0, i32 3
  %492 = load i64, i64* %491, align 8
  %493 = call i32 @set_tx_desc_macid(i32* %489, i64 %492)
  br label %494

494:                                              ; preds = %482, %471
  %495 = load i32, i32* %24, align 4
  %496 = call i64 @ieee80211_is_data_qos(i32 %495)
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %501

498:                                              ; preds = %494
  %499 = load i32*, i32** %33, align 8
  %500 = call i32 @set_tx_desc_qos(i32* %499, i32 1)
  br label %501

501:                                              ; preds = %498, %494
  %502 = load i32, i32* %24, align 4
  %503 = call i64 @ieee80211_is_data_qos(i32 %502)
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %501
  %506 = load i32*, i32** %33, align 8
  %507 = call i32 @set_tx_desc_hwseq_en(i32* %506, i32 1)
  br label %508

508:                                              ; preds = %505, %501
  %509 = load i32*, i32** %33, align 8
  %510 = load i32, i32* %29, align 4
  %511 = icmp ne i32 %510, 0
  %512 = zext i1 %511 to i64
  %513 = select i1 %511, i32 0, i32 1
  %514 = call i32 @set_tx_desc_more_frag(i32* %509, i32 %513)
  %515 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %516 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %515)
  %517 = call i64 @is_multicast_ether_addr(i32 %516)
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %524, label %519

519:                                              ; preds = %508
  %520 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %521 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %520)
  %522 = call i64 @is_broadcast_ether_addr(i32 %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %527

524:                                              ; preds = %519, %508
  %525 = load i32*, i32** %33, align 8
  %526 = call i32 @set_tx_desc_bmc(i32* %525, i32 1)
  br label %527

527:                                              ; preds = %524, %519
  %528 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %529 = load i32*, i32** %12, align 8
  %530 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %531 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %530, i32 0, i32 2
  %532 = load i64, i64* %531, align 8
  %533 = call i32 @rtl88e_dm_set_tx_ant_by_tx_info(%struct.ieee80211_hw* %528, i32* %529, i64 %532)
  %534 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %535 = load i32, i32* @COMP_SEND, align 4
  %536 = load i32, i32* @DBG_TRACE, align 4
  %537 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %534, i32 %535, i32 %536, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %538

538:                                              ; preds = %527, %153
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl88ee_map_hwqueue_to_fwqueue(%struct.sk_buff*, i32) #1

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

declare dso_local i32 @rtl88ee_insert_emcontent(%struct.rtl_tcb_desc*, i32*) #1

declare dso_local i32 @set_tx_desc_tx_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_shortgi(i32*, i32) #1

declare dso_local i32 @set_tx_desc_agg_enable(i32*, i32) #1

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

declare dso_local i32 @set_tx_desc_first_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_last_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_address(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rate_id(i32*, i64) #1

declare dso_local i32 @set_tx_desc_macid(i32*, i64) #1

declare dso_local i32 @set_tx_desc_qos(i32*, i32) #1

declare dso_local i32 @set_tx_desc_hwseq_en(i32*, i32) #1

declare dso_local i32 @set_tx_desc_more_frag(i32*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i32 @set_tx_desc_bmc(i32*, i32) #1

declare dso_local i32 @rtl88e_dm_set_tx_ant_by_tx_info(%struct.ieee80211_hw*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
