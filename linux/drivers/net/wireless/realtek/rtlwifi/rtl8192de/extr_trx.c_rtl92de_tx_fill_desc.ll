; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c_rtl92de_tx_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c_rtl92de_tx_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.rtl_tcb_desc = type { i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64 }
%struct.rtl_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_mac = type { i64, i32, i32, i64 }
%struct.rtl_pci = type { i32 }
%struct.rtl_hal = type { i64, i64, i64 }
%struct.rtl_ps_ctl = type { i64 }

@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREFRAGS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@EM_HDR_LEN = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@USB_HWDESC_HEADER_LEN = common dso_local global i64 0, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Insert 8 byte.pTcb->EMPktNum:%d\0A\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@DESC_RATE6M = common dso_local global i8* null, align 8
@DUALMAC_DUALPHY = common dso_local global i64 0, align 8
@DESC_RATEMCS7 = common dso_local global i8* null, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@DESC_RATE54M = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Enable RDG function\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92de_tx_fill_desc(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i32* %2, i32* %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_sta* %5, %struct.sk_buff* %6, i32 %7, %struct.rtl_tcb_desc* %8) #0 {
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
  %23 = alloca %struct.rtl_ps_ctl*, align 8
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
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %47 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %46)
  %48 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %47)
  store %struct.rtl_ps_ctl* %48, %struct.rtl_ps_ctl** %23, align 8
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
  %58 = call i32 @_rtl92de_map_hwqueue_to_fwqueue(%struct.sk_buff* %56, i32 %57)
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
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %104 = icmp sge i64 %102, %103
  %105 = zext i1 %104 to i32
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
  %123 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %122, i32 0, i32 2
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
  br label %577

161:                                              ; preds = %135
  %162 = load i32*, i32** %24, align 8
  %163 = call i32 @CLEAR_PCI_TX_DESC_CONTENT(i32* %162, i32 4)
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
  br i1 %174, label %175, label %498

175:                                              ; preds = %172
  %176 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %177 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %207

180:                                              ; preds = %175
  %181 = load i32*, i32** %24, align 8
  %182 = call i32 @SET_TX_DESC_PKT_OFFSET(i32* %181, i32 1)
  %183 = load i32*, i32** %24, align 8
  %184 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %185 = load i64, i64* @EM_HDR_LEN, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @SET_TX_DESC_OFFSET(i32* %183, i64 %186)
  %188 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %189 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %188, i32 0, i32 15
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %180
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %194 = load i32, i32* @COMP_SEND, align 4
  %195 = load i32, i32* @DBG_LOUD, align 4
  %196 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %197 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %196, i32 0, i32 15
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %193, i32 %194, i32 %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %198)
  %200 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i32*
  %205 = call i32 @_rtl92de_insert_emcontent(%struct.rtl_tcb_desc* %200, i32* %204)
  br label %206

206:                                              ; preds = %192, %180
  br label %211

207:                                              ; preds = %175
  %208 = load i32*, i32** %24, align 8
  %209 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %210 = call i32 @SET_TX_DESC_OFFSET(i32* %208, i64 %209)
  br label %211

211:                                              ; preds = %207, %206
  %212 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %213 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @BAND_ON_5G, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %211
  %218 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %219 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** @DESC_RATE6M, align 8
  %222 = icmp ult i8* %220, %221
  br i1 %222, label %223, label %227

223:                                              ; preds = %217
  %224 = load i8*, i8** @DESC_RATE6M, align 8
  %225 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %226 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %225, i32 0, i32 0
  store i8* %224, i8** %226, align 8
  br label %227

227:                                              ; preds = %223, %217
  br label %228

228:                                              ; preds = %227, %211
  %229 = load i32*, i32** %24, align 8
  %230 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %231 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @SET_TX_DESC_TX_RATE(i32* %229, i8* %232)
  %234 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %235 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %234, i32 0, i32 14
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %228
  %239 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %240 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %239, i32 0, i32 13
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %238, %228
  %244 = load i32*, i32** %24, align 8
  %245 = call i32 @SET_TX_DESC_DATA_SHORTGI(i32* %244, i32 1)
  br label %246

246:                                              ; preds = %243, %238
  %247 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %248 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %261

252:                                              ; preds = %246
  %253 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %254 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = load i8*, i8** @DESC_RATEMCS7, align 8
  %257 = icmp eq i8* %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %252
  %259 = load i32*, i32** %24, align 8
  %260 = call i32 @SET_TX_DESC_DATA_SHORTGI(i32* %259, i32 1)
  br label %261

261:                                              ; preds = %258, %252, %246
  %262 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %263 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %261
  %269 = load i32*, i32** %24, align 8
  %270 = call i32 @SET_TX_DESC_AGG_ENABLE(i32* %269, i32 1)
  %271 = load i32*, i32** %24, align 8
  %272 = call i32 @SET_TX_DESC_MAX_AGG_NUM(i32* %271, i32 20)
  br label %273

273:                                              ; preds = %268, %261
  %274 = load i32*, i32** %24, align 8
  %275 = load i32, i32* %25, align 4
  %276 = call i32 @SET_TX_DESC_SEQ(i32* %274, i32 %275)
  %277 = load i32*, i32** %24, align 8
  %278 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %279 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %278, i32 0, i32 12
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %273
  %283 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %284 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %283, i32 0, i32 11
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  %287 = xor i1 %286, true
  br label %288

288:                                              ; preds = %282, %273
  %289 = phi i1 [ false, %273 ], [ %287, %282 ]
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 1, i32 0
  %292 = call i32 @SET_TX_DESC_RTS_ENABLE(i32* %277, i32 %291)
  %293 = load i32*, i32** %24, align 8
  %294 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %295 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %294, i32 0, i32 12
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %288
  %299 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %300 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %299, i32 0, i32 11
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br label %303

303:                                              ; preds = %298, %288
  %304 = phi i1 [ true, %288 ], [ %302, %298 ]
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i32 1, i32 0
  %307 = call i32 @SET_TX_DESC_HW_RTS_ENABLE(i32* %293, i32 %306)
  %308 = load i32*, i32** %24, align 8
  %309 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %310 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %309, i32 0, i32 11
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  %313 = zext i1 %312 to i64
  %314 = select i1 %312, i32 1, i32 0
  %315 = call i32 @SET_TX_DESC_CTS2SELF(i32* %308, i32 %314)
  %316 = load i32*, i32** %24, align 8
  %317 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %318 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %317, i32 0, i32 10
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i32 1, i32 0
  %323 = call i32 @SET_TX_DESC_RTS_STBC(i32* %316, i32 %322)
  %324 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %325 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @BAND_ON_5G, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %340

329:                                              ; preds = %303
  %330 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %331 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %330, i32 0, i32 1
  %332 = load i8*, i8** %331, align 8
  %333 = load i8*, i8** @DESC_RATE6M, align 8
  %334 = icmp ult i8* %332, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %329
  %336 = load i8*, i8** @DESC_RATE6M, align 8
  %337 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %338 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %337, i32 0, i32 1
  store i8* %336, i8** %338, align 8
  br label %339

339:                                              ; preds = %335, %329
  br label %340

340:                                              ; preds = %339, %303
  %341 = load i32*, i32** %24, align 8
  %342 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %343 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %342, i32 0, i32 1
  %344 = load i8*, i8** %343, align 8
  %345 = ptrtoint i8* %344 to i32
  %346 = call i32 @SET_TX_DESC_RTS_RATE(i32* %341, i32 %345)
  %347 = load i32*, i32** %24, align 8
  %348 = call i32 @SET_TX_DESC_RTS_BW(i32* %347, i32 0)
  %349 = load i32*, i32** %24, align 8
  %350 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %351 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %350, i32 0, i32 9
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @SET_TX_DESC_RTS_SC(i32* %349, i32 %352)
  %354 = load i32*, i32** %24, align 8
  %355 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %356 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %355, i32 0, i32 1
  %357 = load i8*, i8** %356, align 8
  %358 = load i32, i32* @DESC_RATE54M, align 4
  %359 = sext i32 %358 to i64
  %360 = inttoptr i64 %359 to i8*
  %361 = icmp ule i8* %357, %360
  br i1 %361, label %362, label %369

362:                                              ; preds = %340
  %363 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %364 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %363, i32 0, i32 8
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  %367 = zext i1 %366 to i64
  %368 = select i1 %366, i32 1, i32 0
  br label %376

369:                                              ; preds = %340
  %370 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %371 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %370, i32 0, i32 7
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  %374 = zext i1 %373 to i64
  %375 = select i1 %373, i32 1, i32 0
  br label %376

376:                                              ; preds = %369, %362
  %377 = phi i32 [ %368, %362 ], [ %375, %369 ]
  %378 = call i32 @SET_TX_DESC_RTS_SHORT(i32* %354, i32 %377)
  %379 = load i32, i32* %33, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %400

381:                                              ; preds = %376
  %382 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %383 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %382, i32 0, i32 6
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %381
  %387 = load i32*, i32** %24, align 8
  %388 = call i32 @SET_TX_DESC_DATA_BW(i32* %387, i32 1)
  %389 = load i32*, i32** %24, align 8
  %390 = call i32 @SET_TX_DESC_TX_SUB_CARRIER(i32* %389, i32 3)
  br label %399

391:                                              ; preds = %381
  %392 = load i32*, i32** %24, align 8
  %393 = call i32 @SET_TX_DESC_DATA_BW(i32* %392, i32 0)
  %394 = load i32*, i32** %24, align 8
  %395 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %396 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @SET_TX_DESC_TX_SUB_CARRIER(i32* %394, i32 %397)
  br label %399

399:                                              ; preds = %391, %386
  br label %405

400:                                              ; preds = %376
  %401 = load i32*, i32** %24, align 8
  %402 = call i32 @SET_TX_DESC_DATA_BW(i32* %401, i32 0)
  %403 = load i32*, i32** %24, align 8
  %404 = call i32 @SET_TX_DESC_TX_SUB_CARRIER(i32* %403, i32 0)
  br label %405

405:                                              ; preds = %400, %399
  %406 = load i32*, i32** %24, align 8
  %407 = call i32 @SET_TX_DESC_LINIP(i32* %406, i32 0)
  %408 = load i32*, i32** %24, align 8
  %409 = load i32, i32* %28, align 4
  %410 = call i32 @SET_TX_DESC_PKT_SIZE(i32* %408, i32 %409)
  %411 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %412 = icmp ne %struct.ieee80211_sta* %411, null
  br i1 %412, label %413, label %421

413:                                              ; preds = %405
  %414 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %415 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  store i32 %417, i32* %34, align 4
  %418 = load i32*, i32** %24, align 8
  %419 = load i32, i32* %34, align 4
  %420 = call i32 @SET_TX_DESC_AMPDU_DENSITY(i32* %418, i32 %419)
  br label %421

421:                                              ; preds = %413, %405
  %422 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %423 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 0
  %425 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %424, align 8
  %426 = icmp ne %struct.ieee80211_key_conf* %425, null
  br i1 %426, label %427, label %445

427:                                              ; preds = %421
  %428 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %429 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 0
  %431 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %430, align 8
  store %struct.ieee80211_key_conf* %431, %struct.ieee80211_key_conf** %35, align 8
  %432 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %35, align 8
  %433 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  switch i32 %434, label %441 [
    i32 128, label %435
    i32 129, label %435
    i32 130, label %435
    i32 131, label %438
  ]

435:                                              ; preds = %427, %427, %427
  %436 = load i32*, i32** %24, align 8
  %437 = call i32 @SET_TX_DESC_SEC_TYPE(i32* %436, i32 1)
  br label %444

438:                                              ; preds = %427
  %439 = load i32*, i32** %24, align 8
  %440 = call i32 @SET_TX_DESC_SEC_TYPE(i32* %439, i32 3)
  br label %444

441:                                              ; preds = %427
  %442 = load i32*, i32** %24, align 8
  %443 = call i32 @SET_TX_DESC_SEC_TYPE(i32* %442, i32 0)
  br label %444

444:                                              ; preds = %441, %438, %435
  br label %445

445:                                              ; preds = %444, %421
  %446 = load i32*, i32** %24, align 8
  %447 = call i32 @SET_TX_DESC_PKT_ID(i32* %446, i32 0)
  %448 = load i32*, i32** %24, align 8
  %449 = load i32, i32* %29, align 4
  %450 = call i32 @SET_TX_DESC_QUEUE_SEL(i32* %448, i32 %449)
  %451 = load i32*, i32** %24, align 8
  %452 = call i32 @SET_TX_DESC_DATA_RATE_FB_LIMIT(i32* %451, i32 31)
  %453 = load i32*, i32** %24, align 8
  %454 = call i32 @SET_TX_DESC_RTS_RATE_FB_LIMIT(i32* %453, i32 15)
  %455 = load i32*, i32** %24, align 8
  %456 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %457 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %456, i32 0, i32 5
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  %460 = zext i1 %459 to i64
  %461 = select i1 %459, i32 1, i32 0
  %462 = call i32 @SET_TX_DESC_DISABLE_FB(i32* %455, i32 %461)
  %463 = load i32*, i32** %24, align 8
  %464 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %465 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %464, i32 0, i32 4
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  %468 = zext i1 %467 to i64
  %469 = select i1 %467, i32 1, i32 0
  %470 = call i32 @SET_TX_DESC_USE_RATE(i32* %463, i32 %469)
  %471 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %472 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %471, i32 0, i32 4
  %473 = load i64, i64* %472, align 8
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %478, label %475

475:                                              ; preds = %445
  %476 = load i32*, i32** %24, align 8
  %477 = call i32 @SET_TX_DESC_RTS_RATE(i32* %476, i32 8)
  br label %478

478:                                              ; preds = %475, %445
  %479 = load i32, i32* %26, align 4
  %480 = call i64 @ieee80211_is_data_qos(i32 %479)
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %497

482:                                              ; preds = %478
  %483 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %484 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %483, i32 0, i32 3
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %496

487:                                              ; preds = %482
  %488 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %489 = load i32, i32* @COMP_SEND, align 4
  %490 = load i32, i32* @DBG_TRACE, align 4
  %491 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %488, i32 %489, i32 %490, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %492 = load i32*, i32** %24, align 8
  %493 = call i32 @SET_TX_DESC_RDG_ENABLE(i32* %492, i32 1)
  %494 = load i32*, i32** %24, align 8
  %495 = call i32 @SET_TX_DESC_HTC(i32* %494, i32 1)
  br label %496

496:                                              ; preds = %487, %482
  br label %497

497:                                              ; preds = %496, %478
  br label %498

498:                                              ; preds = %497, %172
  %499 = load i32*, i32** %24, align 8
  %500 = load i32, i32* %30, align 4
  %501 = icmp ne i32 %500, 0
  %502 = zext i1 %501 to i64
  %503 = select i1 %501, i32 1, i32 0
  %504 = call i32 @SET_TX_DESC_FIRST_SEG(i32* %499, i32 %503)
  %505 = load i32*, i32** %24, align 8
  %506 = load i32, i32* %31, align 4
  %507 = icmp ne i32 %506, 0
  %508 = zext i1 %507 to i64
  %509 = select i1 %507, i32 1, i32 0
  %510 = call i32 @SET_TX_DESC_LAST_SEG(i32* %505, i32 %509)
  %511 = load i32*, i32** %24, align 8
  %512 = load i32, i32* %27, align 4
  %513 = call i32 @SET_TX_DESC_TX_BUFFER_SIZE(i32* %511, i32 %512)
  %514 = load i32*, i32** %24, align 8
  %515 = load i32, i32* %32, align 4
  %516 = call i32 @SET_TX_DESC_TX_BUFFER_ADDRESS(i32* %514, i32 %515)
  %517 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %518 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %533

522:                                              ; preds = %498
  %523 = load i32*, i32** %24, align 8
  %524 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %525 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %524, i32 0, i32 2
  %526 = load i64, i64* %525, align 8
  %527 = call i32 @SET_TX_DESC_RATE_ID(i32* %523, i64 %526)
  %528 = load i32*, i32** %24, align 8
  %529 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %530 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %529, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = call i32 @SET_TX_DESC_MACID(i32* %528, i64 %531)
  br label %545

533:                                              ; preds = %498
  %534 = load i32*, i32** %24, align 8
  %535 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %536 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %535, i32 0, i32 2
  %537 = load i64, i64* %536, align 8
  %538 = add nsw i64 12, %537
  %539 = call i32 @SET_TX_DESC_RATE_ID(i32* %534, i64 %538)
  %540 = load i32*, i32** %24, align 8
  %541 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %542 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %541, i32 0, i32 2
  %543 = load i64, i64* %542, align 8
  %544 = call i32 @SET_TX_DESC_MACID(i32* %540, i64 %543)
  br label %545

545:                                              ; preds = %533, %522
  %546 = load i32, i32* %26, align 4
  %547 = call i64 @ieee80211_is_data_qos(i32 %546)
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %552

549:                                              ; preds = %545
  %550 = load i32*, i32** %24, align 8
  %551 = call i32 @SET_TX_DESC_QOS(i32* %550, i32 1)
  br label %552

552:                                              ; preds = %549, %545
  %553 = load i32, i32* %26, align 4
  %554 = call i64 @ieee80211_is_data_qos(i32 %553)
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %566, label %556

556:                                              ; preds = %552
  %557 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %23, align 8
  %558 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %557, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %566

561:                                              ; preds = %556
  %562 = load i32*, i32** %24, align 8
  %563 = call i32 @SET_TX_DESC_HWSEQ_EN(i32* %562, i32 1)
  %564 = load i32*, i32** %24, align 8
  %565 = call i32 @SET_TX_DESC_PKT_ID(i32* %564, i32 8)
  br label %566

566:                                              ; preds = %561, %556, %552
  %567 = load i32*, i32** %24, align 8
  %568 = load i32, i32* %31, align 4
  %569 = icmp ne i32 %568, 0
  %570 = zext i1 %569 to i64
  %571 = select i1 %569, i32 0, i32 1
  %572 = call i32 @SET_TX_DESC_MORE_FRAG(i32* %567, i32 %571)
  %573 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %574 = load i32, i32* @COMP_SEND, align 4
  %575 = load i32, i32* @DBG_TRACE, align 4
  %576 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %573, i32 %574, i32 %575, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %577

577:                                              ; preds = %566, %156
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl92de_map_hwqueue_to_fwqueue(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtl_get_tcb_desc(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.rtl_tcb_desc*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @pci_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @CLEAR_PCI_TX_DESC_CONTENT(i32*, i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @SET_TX_DESC_PKT_OFFSET(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_OFFSET(i32*, i64) #1

declare dso_local i32 @_rtl92de_insert_emcontent(%struct.rtl_tcb_desc*, i32*) #1

declare dso_local i32 @SET_TX_DESC_TX_RATE(i32*, i8*) #1

declare dso_local i32 @SET_TX_DESC_DATA_SHORTGI(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_AGG_ENABLE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_MAX_AGG_NUM(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_SEQ(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_ENABLE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_HW_RTS_ENABLE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_CTS2SELF(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_STBC(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_RATE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_BW(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_SC(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_SHORT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DATA_BW(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_SUB_CARRIER(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_LINIP(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_PKT_SIZE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_AMPDU_DENSITY(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_SEC_TYPE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_PKT_ID(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_QUEUE_SEL(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DATA_RATE_FB_LIMIT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_RATE_FB_LIMIT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DISABLE_FB(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_USE_RATE(i32*, i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @SET_TX_DESC_RDG_ENABLE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_HTC(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_FIRST_SEG(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_LAST_SEG(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_BUFFER_SIZE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_BUFFER_ADDRESS(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RATE_ID(i32*, i64) #1

declare dso_local i32 @SET_TX_DESC_MACID(i32*, i64) #1

declare dso_local i32 @SET_TX_DESC_QOS(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_HWSEQ_EN(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_MORE_FRAG(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
