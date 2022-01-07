; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c_rtl92se_tx_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c_rtl92se_tx_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.sk_buff = type { i64, i32 }
%struct.rtl_tcb_desc = type { i32, i64, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.rtl_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.rtl_mac = type { i64, i32, i32 }
%struct.rtl_pci = type { i32 }
%struct.rtl_hal = type { i64 }

@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@IEEE80211_FCTL_MOREFRAGS = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@TX_DESC_SIZE_RTL8192S = common dso_local global i32 0, align 4
@DESC_RATEMCS0 = common dso_local global i32 0, align 4
@VERSION_8192S_ACUT = common dso_local global i64 0, align 8
@DESC_RATE1M = common dso_local global i32 0, align 4
@DESC_RATE2M = common dso_local global i32 0, align 4
@DESC_RATE5_5M = common dso_local global i32 0, align 4
@DESC_RATE11M = common dso_local global i32 0, align 4
@DESC_RATE12M = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@DESC_RATE54M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92se_tx_fill_desc(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i32* %2, i32* %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_sta* %5, %struct.sk_buff* %6, i32 %7, %struct.rtl_tcb_desc* %8) #0 {
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
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %10, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %14, align 8
  store %struct.ieee80211_sta* %5, %struct.ieee80211_sta** %15, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.rtl_tcb_desc* %8, %struct.rtl_tcb_desc** %18, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %34 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %33)
  store %struct.rtl_priv* %34, %struct.rtl_priv** %19, align 8
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %36 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %35)
  %37 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %36)
  store %struct.rtl_mac* %37, %struct.rtl_mac** %20, align 8
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %39 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %38)
  %40 = call %struct.rtl_pci* @rtl_pcidev(i32 %39)
  store %struct.rtl_pci* %40, %struct.rtl_pci** %21, align 8
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %42 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %41)
  %43 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %42)
  store %struct.rtl_hal* %43, %struct.rtl_hal** %22, align 8
  %44 = load i32*, i32** %12, align 8
  store i32* %44, i32** %23, align 8
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %49 = load i32, i32* %17, align 4
  %50 = call i32 @_rtl92se_map_hwqueue_to_fwqueue(%struct.sk_buff* %48, i32 %49)
  store i32 %50, i32* %27, align 4
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %55 = call i32 @cpu_to_le16(i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %28, align 4
  %60 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_FCTL_MOREFRAGS, align 4
  %64 = call i32 @cpu_to_le16(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %29, align 4
  %69 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %70 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %79 = call i32 @pci_map_single(i32 %71, i32 %74, i64 %77, i32 %78)
  store i32 %79, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %80 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %81 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %30, align 4
  %84 = call i64 @pci_dma_mapping_error(i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %9
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %88 = load i32, i32* @COMP_SEND, align 4
  %89 = load i32, i32* @DBG_TRACE, align 4
  %90 = call i32 @RT_TRACE(%struct.rtl_priv* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %439

91:                                               ; preds = %9
  %92 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %93 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %99 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %31, align 4
  br label %125

101:                                              ; preds = %91
  %102 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %103 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %109 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %107, %101
  %114 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %115 = icmp ne %struct.ieee80211_sta* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %121 = icmp sge i64 %119, %120
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %31, align 4
  br label %123

123:                                              ; preds = %116, %113
  br label %124

124:                                              ; preds = %123, %107
  br label %125

125:                                              ; preds = %124, %97
  %126 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le16_to_cpu(i32 %128)
  %130 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %131 = and i32 %129, %130
  %132 = ashr i32 %131, 4
  store i32 %132, i32* %24, align 4
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %134 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %135 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %137 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %138 = call i32 @rtl_get_tcb_desc(%struct.ieee80211_hw* %133, %struct.ieee80211_tx_info* %134, %struct.ieee80211_sta* %135, %struct.sk_buff* %136, %struct.rtl_tcb_desc* %137)
  %139 = load i32*, i32** %23, align 8
  %140 = load i32, i32* @TX_DESC_SIZE_RTL8192S, align 4
  %141 = call i32 @CLEAR_PCI_TX_DESC_CONTENT(i32* %139, i32 %140)
  %142 = load i32, i32* %25, align 4
  %143 = call i64 @ieee80211_is_nullfunc(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %125
  %146 = load i32, i32* %25, align 4
  %147 = call i64 @ieee80211_is_ctl(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %125
  store i32 1, i32* %28, align 4
  store i32 1, i32* %29, align 4
  br label %150

150:                                              ; preds = %149, %145
  %151 = load i32, i32* %28, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %413

153:                                              ; preds = %150
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %155 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %153
  %160 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %161 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %162, 32
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load i32*, i32** %23, align 8
  %166 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %167 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @SET_TX_DESC_MACID(i32* %165, i32 %168)
  %170 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %171 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %26, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %26, align 4
  br label %175

175:                                              ; preds = %164, %159
  br label %176

176:                                              ; preds = %175, %153
  %177 = load i32*, i32** %23, align 8
  %178 = load i32, i32* %26, align 4
  %179 = call i32 @SET_TX_DESC_RSVD_MACID(i32* %177, i32 %178)
  %180 = load i32*, i32** %23, align 8
  %181 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %182 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %181, i32 0, i32 13
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @DESC_RATEMCS0, align 4
  %185 = icmp sge i32 %183, %184
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 1, i32 0
  %188 = call i32 @SET_TX_DESC_TXHT(i32* %180, i32 %187)
  %189 = load %struct.rtl_hal*, %struct.rtl_hal** %22, align 8
  %190 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @VERSION_8192S_ACUT, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %223

194:                                              ; preds = %176
  %195 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %196 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @DESC_RATE1M, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %218, label %200

200:                                              ; preds = %194
  %201 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %202 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %201, i32 0, i32 13
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @DESC_RATE2M, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %218, label %206

206:                                              ; preds = %200
  %207 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %208 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %207, i32 0, i32 13
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @DESC_RATE5_5M, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %218, label %212

212:                                              ; preds = %206
  %213 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %214 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %213, i32 0, i32 13
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @DESC_RATE11M, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %212, %206, %200, %194
  %219 = load i32, i32* @DESC_RATE12M, align 4
  %220 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %221 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %220, i32 0, i32 13
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %218, %212
  br label %223

223:                                              ; preds = %222, %176
  %224 = load i32*, i32** %23, align 8
  %225 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %226 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %225, i32 0, i32 13
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @SET_TX_DESC_TX_RATE(i32* %224, i32 %227)
  %229 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %230 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %229, i32 0, i32 12
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %223
  %234 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %235 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %234, i32 0, i32 11
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %233, %223
  %239 = load i32*, i32** %23, align 8
  %240 = call i32 @SET_TX_DESC_TX_SHORT(i32* %239, i32 0)
  br label %241

241:                                              ; preds = %238, %233
  %242 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %243 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %241
  %249 = load i32*, i32** %23, align 8
  %250 = call i32 @SET_TX_DESC_AGG_ENABLE(i32* %249, i32 1)
  br label %251

251:                                              ; preds = %248, %241
  %252 = load i32*, i32** %23, align 8
  %253 = load i32, i32* %24, align 4
  %254 = call i32 @SET_TX_DESC_SEQ(i32* %252, i32 %253)
  %255 = load i32*, i32** %23, align 8
  %256 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %257 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %256, i32 0, i32 10
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %251
  %261 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %262 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %261, i32 0, i32 9
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  %265 = xor i1 %264, true
  br label %266

266:                                              ; preds = %260, %251
  %267 = phi i1 [ false, %251 ], [ %265, %260 ]
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 1, i32 0
  %270 = call i32 @SET_TX_DESC_RTS_ENABLE(i32* %255, i32 %269)
  %271 = load i32*, i32** %23, align 8
  %272 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %273 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %272, i32 0, i32 9
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i32 1, i32 0
  %278 = call i32 @SET_TX_DESC_CTS_ENABLE(i32* %271, i32 %277)
  %279 = load i32*, i32** %23, align 8
  %280 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %281 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %280, i32 0, i32 8
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i32 1, i32 0
  %286 = call i32 @SET_TX_DESC_RTS_STBC(i32* %279, i32 %285)
  %287 = load i32*, i32** %23, align 8
  %288 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %289 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @SET_TX_DESC_RTS_RATE(i32* %287, i32 %290)
  %292 = load i32*, i32** %23, align 8
  %293 = call i32 @SET_TX_DESC_RTS_BANDWIDTH(i32* %292, i32 0)
  %294 = load i32*, i32** %23, align 8
  %295 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %296 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %295, i32 0, i32 7
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @SET_TX_DESC_RTS_SUB_CARRIER(i32* %294, i32 %297)
  %299 = load i32*, i32** %23, align 8
  %300 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %301 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @DESC_RATE54M, align 4
  %304 = icmp sle i32 %302, %303
  br i1 %304, label %305, label %312

305:                                              ; preds = %266
  %306 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %307 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, i32 1, i32 0
  br label %319

312:                                              ; preds = %266
  %313 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %314 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  %317 = zext i1 %316 to i64
  %318 = select i1 %316, i32 1, i32 0
  br label %319

319:                                              ; preds = %312, %305
  %320 = phi i32 [ %311, %305 ], [ %318, %312 ]
  %321 = call i32 @SET_TX_DESC_RTS_SHORT(i32* %299, i32 %320)
  %322 = load i32, i32* %31, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %343

324:                                              ; preds = %319
  %325 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %326 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %324
  %330 = load i32*, i32** %23, align 8
  %331 = call i32 @SET_TX_DESC_TX_BANDWIDTH(i32* %330, i32 1)
  %332 = load i32*, i32** %23, align 8
  %333 = call i32 @SET_TX_DESC_TX_SUB_CARRIER(i32* %332, i32 0)
  br label %342

334:                                              ; preds = %324
  %335 = load i32*, i32** %23, align 8
  %336 = call i32 @SET_TX_DESC_TX_BANDWIDTH(i32* %335, i32 0)
  %337 = load i32*, i32** %23, align 8
  %338 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %339 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @SET_TX_DESC_TX_SUB_CARRIER(i32* %337, i32 %340)
  br label %342

342:                                              ; preds = %334, %329
  br label %348

343:                                              ; preds = %319
  %344 = load i32*, i32** %23, align 8
  %345 = call i32 @SET_TX_DESC_TX_BANDWIDTH(i32* %344, i32 0)
  %346 = load i32*, i32** %23, align 8
  %347 = call i32 @SET_TX_DESC_TX_SUB_CARRIER(i32* %346, i32 0)
  br label %348

348:                                              ; preds = %343, %342
  %349 = load i32*, i32** %23, align 8
  %350 = call i32 @SET_TX_DESC_LINIP(i32* %349, i32 0)
  %351 = load i32*, i32** %23, align 8
  %352 = call i32 @SET_TX_DESC_OFFSET(i32* %351, i32 32)
  %353 = load i32*, i32** %23, align 8
  %354 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %355 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = trunc i64 %356 to i32
  %358 = call i32 @SET_TX_DESC_PKT_SIZE(i32* %353, i32 %357)
  %359 = load i32*, i32** %23, align 8
  %360 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %361 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @SET_TX_DESC_RA_BRSR_ID(i32* %359, i32 %362)
  %364 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %365 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  %367 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %366, align 8
  %368 = icmp ne %struct.ieee80211_key_conf* %367, null
  br i1 %368, label %369, label %390

369:                                              ; preds = %348
  %370 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %371 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 0
  %373 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %372, align 8
  store %struct.ieee80211_key_conf* %373, %struct.ieee80211_key_conf** %32, align 8
  %374 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %32, align 8
  %375 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  switch i32 %376, label %386 [
    i32 128, label %377
    i32 129, label %377
    i32 130, label %380
    i32 131, label %383
  ]

377:                                              ; preds = %369, %369
  %378 = load i32*, i32** %23, align 8
  %379 = call i32 @SET_TX_DESC_SEC_TYPE(i32* %378, i32 1)
  br label %389

380:                                              ; preds = %369
  %381 = load i32*, i32** %23, align 8
  %382 = call i32 @SET_TX_DESC_SEC_TYPE(i32* %381, i32 2)
  br label %389

383:                                              ; preds = %369
  %384 = load i32*, i32** %23, align 8
  %385 = call i32 @SET_TX_DESC_SEC_TYPE(i32* %384, i32 3)
  br label %389

386:                                              ; preds = %369
  %387 = load i32*, i32** %23, align 8
  %388 = call i32 @SET_TX_DESC_SEC_TYPE(i32* %387, i32 0)
  br label %389

389:                                              ; preds = %386, %383, %380, %377
  br label %390

390:                                              ; preds = %389, %348
  %391 = load i32*, i32** %23, align 8
  %392 = call i32 @SET_TX_DESC_PACKET_ID(i32* %391, i32 0)
  %393 = load i32*, i32** %23, align 8
  %394 = load i32, i32* %27, align 4
  %395 = call i32 @SET_TX_DESC_QUEUE_SEL(i32* %393, i32 %394)
  %396 = load i32*, i32** %23, align 8
  %397 = call i32 @SET_TX_DESC_DATA_RATE_FB_LIMIT(i32* %396, i32 31)
  %398 = load i32*, i32** %23, align 8
  %399 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %400 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  %403 = zext i1 %402 to i64
  %404 = select i1 %402, i32 1, i32 0
  %405 = call i32 @SET_TX_DESC_USER_RATE(i32* %398, i32 %404)
  %406 = load i32, i32* %25, align 4
  %407 = call i32 @ieee80211_is_data_qos(i32 %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %412, label %409

409:                                              ; preds = %390
  %410 = load i32*, i32** %23, align 8
  %411 = call i32 @SET_TX_DESC_NON_QOS(i32* %410, i32 1)
  br label %412

412:                                              ; preds = %409, %390
  br label %413

413:                                              ; preds = %412, %150
  %414 = load i32*, i32** %23, align 8
  %415 = load i32, i32* %28, align 4
  %416 = icmp ne i32 %415, 0
  %417 = zext i1 %416 to i64
  %418 = select i1 %416, i32 1, i32 0
  %419 = call i32 @SET_TX_DESC_FIRST_SEG(i32* %414, i32 %418)
  %420 = load i32*, i32** %23, align 8
  %421 = load i32, i32* %29, align 4
  %422 = icmp ne i32 %421, 0
  %423 = zext i1 %422 to i64
  %424 = select i1 %422, i32 1, i32 0
  %425 = call i32 @SET_TX_DESC_LAST_SEG(i32* %420, i32 %424)
  %426 = load i32*, i32** %23, align 8
  %427 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %428 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = trunc i64 %429 to i32
  %431 = call i32 @SET_TX_DESC_TX_BUFFER_SIZE(i32* %426, i32 %430)
  %432 = load i32*, i32** %23, align 8
  %433 = load i32, i32* %30, align 4
  %434 = call i32 @SET_TX_DESC_TX_BUFFER_ADDRESS(i32* %432, i32 %433)
  %435 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %436 = load i32, i32* @COMP_SEND, align 4
  %437 = load i32, i32* @DBG_TRACE, align 4
  %438 = call i32 @RT_TRACE(%struct.rtl_priv* %435, i32 %436, i32 %437, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %439

439:                                              ; preds = %413, %86
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl92se_map_hwqueue_to_fwqueue(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtl_get_tcb_desc(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.rtl_tcb_desc*) #1

declare dso_local i32 @CLEAR_PCI_TX_DESC_CONTENT(i32*, i32) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i32 @SET_TX_DESC_MACID(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RSVD_MACID(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TXHT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_RATE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_SHORT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_AGG_ENABLE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_SEQ(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_ENABLE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_CTS_ENABLE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_STBC(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_RATE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_BANDWIDTH(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_SUB_CARRIER(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RTS_SHORT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_BANDWIDTH(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_SUB_CARRIER(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_LINIP(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_OFFSET(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_PKT_SIZE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RA_BRSR_ID(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_SEC_TYPE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_PACKET_ID(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_QUEUE_SEL(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DATA_RATE_FB_LIMIT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_USER_RATE(i32*, i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @SET_TX_DESC_NON_QOS(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_FIRST_SEG(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_LAST_SEG(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_BUFFER_SIZE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_BUFFER_ADDRESS(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
