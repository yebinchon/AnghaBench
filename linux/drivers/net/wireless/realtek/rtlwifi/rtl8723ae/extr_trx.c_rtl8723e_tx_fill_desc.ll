; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_trx.c_rtl8723e_tx_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_trx.c_rtl8723e_tx_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_key_conf* }
%struct.ieee80211_key_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.rtl_tcb_desc = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.rtl_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_mac = type { i64, i32, i32, i64 }
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
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@USB_HWDESC_HEADER_LEN = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@DESC92C_RATE54M = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20_40 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Enable RDG function.\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_tx_fill_desc(%struct.ieee80211_hw* %0, %struct.ieee80211_hdr* %1, i32* %2, i32* %3, %struct.ieee80211_tx_info* %4, %struct.ieee80211_sta* %5, %struct.sk_buff* %6, i32 %7, %struct.rtl_tcb_desc* %8) #0 {
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
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.ieee80211_key_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %10, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.ieee80211_tx_info* %4, %struct.ieee80211_tx_info** %14, align 8
  store %struct.ieee80211_sta* %5, %struct.ieee80211_sta** %15, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.rtl_tcb_desc* %8, %struct.rtl_tcb_desc** %18, align 8
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %36 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %35)
  store %struct.rtl_priv* %36, %struct.rtl_priv** %19, align 8
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %38 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %37)
  %39 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %38)
  store %struct.rtl_mac* %39, %struct.rtl_mac** %20, align 8
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %41 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %40)
  %42 = call %struct.rtl_pci* @rtl_pcidev(i32 %41)
  store %struct.rtl_pci* %42, %struct.rtl_pci** %21, align 8
  %43 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %44 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %43)
  %45 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %44)
  store %struct.rtl_ps_ctl* %45, %struct.rtl_ps_ctl** %22, align 8
  store i32 1, i32* %23, align 4
  %46 = load i32*, i32** %12, align 8
  store i32* %46, i32** %24, align 8
  %47 = load i32*, i32** %24, align 8
  store i32* %47, i32** %25, align 8
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %27, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @_rtl8723e_map_hwqueue_to_fwqueue(%struct.sk_buff* %51, i32 %52)
  store i32 %53, i32* %28, align 4
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %55 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %58 = call i32 @cpu_to_le16(i32 %57)
  %59 = and i32 %56, %58
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %29, align 4
  %62 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IEEE80211_FCTL_MOREFRAGS, align 4
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = and i32 %64, %66
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %30, align 4
  %70 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %71 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %80 = call i32 @pci_map_single(i32 %72, i32 %75, i64 %78, i32 %79)
  store i32 %80, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %81 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %82 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %31, align 4
  %85 = call i64 @pci_dma_mapping_error(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %9
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %89 = load i32, i32* @COMP_SEND, align 4
  %90 = load i32, i32* @DBG_TRACE, align 4
  %91 = call i32 @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %473

92:                                               ; preds = %9
  %93 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %94 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %100 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %32, align 4
  br label %126

102:                                              ; preds = %92
  %103 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %104 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %102
  %109 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %110 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %108, %102
  %115 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %116 = icmp ne %struct.ieee80211_sta* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %123 = and i32 %121, %122
  store i32 %123, i32* %32, align 4
  br label %124

124:                                              ; preds = %117, %114
  br label %125

125:                                              ; preds = %124, %108
  br label %126

126:                                              ; preds = %125, %98
  %127 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %128 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le16_to_cpu(i32 %129)
  %131 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %132 = and i32 %130, %131
  %133 = ashr i32 %132, 4
  store i32 %133, i32* %26, align 4
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %10, align 8
  %135 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %136 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %138 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %139 = call i32 @rtl_get_tcb_desc(%struct.ieee80211_hw* %134, %struct.ieee80211_tx_info* %135, %struct.ieee80211_sta* %136, %struct.sk_buff* %137, %struct.rtl_tcb_desc* %138)
  %140 = load i32*, i32** %25, align 8
  %141 = call i32 @clear_pci_tx_desc_content(i32* %140, i32 4)
  %142 = load i32, i32* %27, align 4
  %143 = call i64 @ieee80211_is_nullfunc(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %126
  %146 = load i32, i32* %27, align 4
  %147 = call i64 @ieee80211_is_ctl(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %126
  store i32 1, i32* %29, align 4
  store i32 1, i32* %30, align 4
  br label %150

150:                                              ; preds = %149, %145
  %151 = load i32, i32* %29, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %381

153:                                              ; preds = %150
  %154 = load i32*, i32** %25, align 8
  %155 = load i32, i32* @USB_HWDESC_HEADER_LEN, align 4
  %156 = call i32 @set_tx_desc_offset(i32* %154, i32 %155)
  %157 = load i32*, i32** %25, align 8
  %158 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %159 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %158, i32 0, i32 13
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @set_tx_desc_tx_rate(i32* %157, i32 %160)
  %162 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %163 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %162, i32 0, i32 12
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %153
  %167 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %168 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %167, i32 0, i32 11
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166, %153
  %172 = load i32*, i32** %25, align 8
  %173 = call i32 @set_tx_desc_data_shortgi(i32* %172, i32 1)
  br label %174

174:                                              ; preds = %171, %166
  %175 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %176 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  %182 = load i32*, i32** %25, align 8
  %183 = call i32 @set_tx_desc_agg_break(i32* %182, i32 1)
  %184 = load i32*, i32** %25, align 8
  %185 = call i32 @set_tx_desc_max_agg_num(i32* %184, i32 20)
  br label %186

186:                                              ; preds = %181, %174
  %187 = load i32*, i32** %25, align 8
  %188 = load i32, i32* %26, align 4
  %189 = call i32 @set_tx_desc_seq(i32* %187, i32 %188)
  %190 = load i32*, i32** %25, align 8
  %191 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %192 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %191, i32 0, i32 10
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %186
  %196 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %197 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %196, i32 0, i32 9
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %195, %186
  %202 = phi i1 [ false, %186 ], [ %200, %195 ]
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 1, i32 0
  %205 = call i32 @set_tx_desc_rts_enable(i32* %190, i32 %204)
  %206 = load i32*, i32** %25, align 8
  %207 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %208 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %207, i32 0, i32 10
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %201
  %212 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %213 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %212, i32 0, i32 9
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br label %216

216:                                              ; preds = %211, %201
  %217 = phi i1 [ true, %201 ], [ %215, %211 ]
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i32 1, i32 0
  %220 = call i32 @set_tx_desc_hw_rts_enable(i32* %206, i32 %219)
  %221 = load i32*, i32** %25, align 8
  %222 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %223 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %222, i32 0, i32 9
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 1, i32 0
  %228 = call i32 @set_tx_desc_cts2self(i32* %221, i32 %227)
  %229 = load i32*, i32** %25, align 8
  %230 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %231 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %230, i32 0, i32 8
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  %234 = zext i1 %233 to i64
  %235 = select i1 %233, i32 1, i32 0
  %236 = call i32 @set_tx_desc_rts_stbc(i32* %229, i32 %235)
  %237 = load i32*, i32** %25, align 8
  %238 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %239 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @set_tx_desc_rts_rate(i32* %237, i32 %240)
  %242 = load i32*, i32** %25, align 8
  %243 = call i32 @set_tx_desc_rts_bw(i32* %242, i32 0)
  %244 = load i32*, i32** %25, align 8
  %245 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %246 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @set_tx_desc_rts_sc(i32* %244, i32 %247)
  %249 = load i32*, i32** %25, align 8
  %250 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %251 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @DESC92C_RATE54M, align 4
  %254 = icmp sle i32 %252, %253
  br i1 %254, label %255, label %262

255:                                              ; preds = %216
  %256 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %257 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %256, i32 0, i32 5
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 1, i32 0
  br label %269

262:                                              ; preds = %216
  %263 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %264 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 1, i32 0
  br label %269

269:                                              ; preds = %262, %255
  %270 = phi i32 [ %261, %255 ], [ %268, %262 ]
  %271 = call i32 @set_tx_desc_rts_short(i32* %249, i32 %270)
  %272 = load i32, i32* %32, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %294

274:                                              ; preds = %269
  %275 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %276 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @HT_CHANNEL_WIDTH_20_40, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %274
  %281 = load i32*, i32** %25, align 8
  %282 = call i32 @set_tx_desc_data_bw(i32* %281, i32 1)
  %283 = load i32*, i32** %25, align 8
  %284 = call i32 @set_tx_desc_tx_sub_carrier(i32* %283, i32 3)
  br label %293

285:                                              ; preds = %274
  %286 = load i32*, i32** %25, align 8
  %287 = call i32 @set_tx_desc_data_bw(i32* %286, i32 0)
  %288 = load i32*, i32** %25, align 8
  %289 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %290 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @set_tx_desc_tx_sub_carrier(i32* %288, i32 %291)
  br label %293

293:                                              ; preds = %285, %280
  br label %299

294:                                              ; preds = %269
  %295 = load i32*, i32** %25, align 8
  %296 = call i32 @set_tx_desc_data_bw(i32* %295, i32 0)
  %297 = load i32*, i32** %25, align 8
  %298 = call i32 @set_tx_desc_tx_sub_carrier(i32* %297, i32 0)
  br label %299

299:                                              ; preds = %294, %293
  %300 = load i32*, i32** %25, align 8
  %301 = call i32 @set_tx_desc_linip(i32* %300, i32 0)
  %302 = load i32*, i32** %25, align 8
  %303 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %304 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = trunc i64 %305 to i32
  %307 = call i32 @set_tx_desc_pkt_size(i32* %302, i32 %306)
  %308 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %309 = icmp ne %struct.ieee80211_sta* %308, null
  br i1 %309, label %310, label %318

310:                                              ; preds = %299
  %311 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %15, align 8
  %312 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %33, align 4
  %315 = load i32*, i32** %25, align 8
  %316 = load i32, i32* %33, align 4
  %317 = call i32 @set_tx_desc_ampdu_density(i32* %315, i32 %316)
  br label %318

318:                                              ; preds = %310, %299
  %319 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %320 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  %322 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %321, align 8
  %323 = icmp ne %struct.ieee80211_key_conf* %322, null
  br i1 %323, label %324, label %342

324:                                              ; preds = %318
  %325 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %326 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %327, align 8
  store %struct.ieee80211_key_conf* %328, %struct.ieee80211_key_conf** %34, align 8
  %329 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %34, align 8
  %330 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  switch i32 %331, label %338 [
    i32 128, label %332
    i32 129, label %332
    i32 130, label %332
    i32 131, label %335
  ]

332:                                              ; preds = %324, %324, %324
  %333 = load i32*, i32** %25, align 8
  %334 = call i32 @set_tx_desc_sec_type(i32* %333, i32 1)
  br label %341

335:                                              ; preds = %324
  %336 = load i32*, i32** %25, align 8
  %337 = call i32 @set_tx_desc_sec_type(i32* %336, i32 3)
  br label %341

338:                                              ; preds = %324
  %339 = load i32*, i32** %25, align 8
  %340 = call i32 @set_tx_desc_sec_type(i32* %339, i32 0)
  br label %341

341:                                              ; preds = %338, %335, %332
  br label %342

342:                                              ; preds = %341, %318
  %343 = load i32*, i32** %25, align 8
  %344 = call i32 @set_tx_desc_pkt_id(i32* %343, i32 0)
  %345 = load i32*, i32** %25, align 8
  %346 = load i32, i32* %28, align 4
  %347 = call i32 @set_tx_desc_queue_sel(i32* %345, i32 %346)
  %348 = load i32*, i32** %25, align 8
  %349 = call i32 @set_tx_desc_data_rate_fb_limit(i32* %348, i32 31)
  %350 = load i32*, i32** %25, align 8
  %351 = call i32 @set_tx_desc_rts_rate_fb_limit(i32* %350, i32 15)
  %352 = load i32*, i32** %25, align 8
  %353 = call i32 @set_tx_desc_disable_fb(i32* %352, i32 0)
  %354 = load i32*, i32** %25, align 8
  %355 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %356 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %355, i32 0, i32 3
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  %359 = zext i1 %358 to i64
  %360 = select i1 %358, i32 1, i32 0
  %361 = call i32 @set_tx_desc_use_rate(i32* %354, i32 %360)
  %362 = load i32, i32* %27, align 4
  %363 = call i64 @ieee80211_is_data_qos(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %380

365:                                              ; preds = %342
  %366 = load %struct.rtl_mac*, %struct.rtl_mac** %20, align 8
  %367 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %366, i32 0, i32 3
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %365
  %371 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %372 = load i32, i32* @COMP_SEND, align 4
  %373 = load i32, i32* @DBG_TRACE, align 4
  %374 = call i32 @RT_TRACE(%struct.rtl_priv* %371, i32 %372, i32 %373, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %375 = load i32*, i32** %25, align 8
  %376 = call i32 @set_tx_desc_rdg_enable(i32* %375, i32 1)
  %377 = load i32*, i32** %25, align 8
  %378 = call i32 @set_tx_desc_htc(i32* %377, i32 1)
  br label %379

379:                                              ; preds = %370, %365
  br label %380

380:                                              ; preds = %379, %342
  br label %381

381:                                              ; preds = %380, %150
  %382 = load i32*, i32** %25, align 8
  %383 = load i32, i32* %29, align 4
  %384 = icmp ne i32 %383, 0
  %385 = zext i1 %384 to i64
  %386 = select i1 %384, i32 1, i32 0
  %387 = call i32 @set_tx_desc_first_seg(i32* %382, i32 %386)
  %388 = load i32*, i32** %25, align 8
  %389 = load i32, i32* %30, align 4
  %390 = icmp ne i32 %389, 0
  %391 = zext i1 %390 to i64
  %392 = select i1 %390, i32 1, i32 0
  %393 = call i32 @set_tx_desc_last_seg(i32* %388, i32 %392)
  %394 = load i32*, i32** %25, align 8
  %395 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %396 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = call i32 @set_tx_desc_tx_buffer_size(i32* %394, i32 %398)
  %400 = load i32*, i32** %25, align 8
  %401 = load i32, i32* %31, align 4
  %402 = call i32 @set_tx_desc_tx_buffer_address(i32* %400, i32 %401)
  %403 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %404 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %419

408:                                              ; preds = %381
  %409 = load i32*, i32** %25, align 8
  %410 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %411 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %410, i32 0, i32 1
  %412 = load i64, i64* %411, align 8
  %413 = call i32 @set_tx_desc_rate_id(i32* %409, i64 %412)
  %414 = load i32*, i32** %25, align 8
  %415 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %416 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @set_tx_desc_macid(i32* %414, i64 %417)
  br label %431

419:                                              ; preds = %381
  %420 = load i32*, i32** %25, align 8
  %421 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %422 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = add nsw i64 12, %423
  %425 = call i32 @set_tx_desc_rate_id(i32* %420, i64 %424)
  %426 = load i32*, i32** %25, align 8
  %427 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %18, align 8
  %428 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = call i32 @set_tx_desc_macid(i32* %426, i64 %429)
  br label %431

431:                                              ; preds = %419, %408
  %432 = load i32, i32* %27, align 4
  %433 = call i64 @ieee80211_is_data_qos(i32 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %449, label %435

435:                                              ; preds = %431
  %436 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %22, align 8
  %437 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %449

440:                                              ; preds = %435
  %441 = load i32*, i32** %25, align 8
  %442 = call i32 @set_tx_desc_hwseq_en_8723(i32* %441, i32 1)
  %443 = load i32, i32* %23, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %448, label %445

445:                                              ; preds = %440
  %446 = load i32*, i32** %25, align 8
  %447 = call i32 @set_tx_desc_hwseq_sel_8723(i32* %446, i32 1)
  br label %448

448:                                              ; preds = %445, %440
  br label %449

449:                                              ; preds = %448, %435, %431
  %450 = load i32*, i32** %25, align 8
  %451 = load i32, i32* %30, align 4
  %452 = icmp ne i32 %451, 0
  %453 = zext i1 %452 to i64
  %454 = select i1 %452, i32 0, i32 1
  %455 = call i32 @set_tx_desc_more_frag(i32* %450, i32 %454)
  %456 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %457 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %456)
  %458 = call i64 @is_multicast_ether_addr(i32 %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %465, label %460

460:                                              ; preds = %449
  %461 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %462 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %461)
  %463 = call i64 @is_broadcast_ether_addr(i32 %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %460, %449
  %466 = load i32*, i32** %25, align 8
  %467 = call i32 @set_tx_desc_bmc(i32* %466, i32 1)
  br label %468

468:                                              ; preds = %465, %460
  %469 = load %struct.rtl_priv*, %struct.rtl_priv** %19, align 8
  %470 = load i32, i32* @COMP_SEND, align 4
  %471 = load i32, i32* @DBG_TRACE, align 4
  %472 = call i32 @RT_TRACE(%struct.rtl_priv* %469, i32 %470, i32 %471, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %473

473:                                              ; preds = %468, %87
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl8723e_map_hwqueue_to_fwqueue(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

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

declare dso_local i32 @set_tx_desc_first_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_last_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_address(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rate_id(i32*, i64) #1

declare dso_local i32 @set_tx_desc_macid(i32*, i64) #1

declare dso_local i32 @set_tx_desc_hwseq_en_8723(i32*, i32) #1

declare dso_local i32 @set_tx_desc_hwseq_sel_8723(i32*, i32) #1

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
