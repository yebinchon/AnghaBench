; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_tx_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_tx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_11__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__*, i64 }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.ieee80211_hw*, i32*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i64)* }
%struct.rtl_pci = type { i32, %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i64, i32, i32, i32*, i32* }
%struct.sk_buff = type { i64, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }

@HW_DESC_TXBUFF_ADDR = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@EM_HDR_LEN = common dso_local global i32 0, align 4
@COMP_INTR = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"new ring->idx:%d, free: skb_queue_len:%d, free: seq:%x\0A\00", align 1
@TXCMD_QUEUE = common dso_local global i32 0, align 4
@WLAN_HT_ACTION_SMPS = common dso_local global i64 0, align 8
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"more desc left, wake skb_queue@%d, ring->idx = %d, skb_queue_len = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl_pci_tx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_tx_isr(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca %struct.rtl8192_tx_ring*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_pci* @rtl_pcidev(i32 %17)
  store %struct.rtl_pci* %18, %struct.rtl_pci** %6, align 8
  %19 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %19, i32 0, i32 1
  %21 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %21, i64 %23
  store %struct.rtl8192_tx_ring* %24, %struct.rtl8192_tx_ring** %7, align 8
  br label %25

25:                                               ; preds = %247, %2
  %26 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %27 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %26, i32 0, i32 2
  %28 = call i32 @skb_queue_len(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %248

30:                                               ; preds = %25
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %37 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %40 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32* %42, i32** %12, align 8
  br label %51

43:                                               ; preds = %30
  %44 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %45 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %48 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32* %50, i32** %12, align 8
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %53 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %52, i32 0, i32 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32 (%struct.ieee80211_hw*, i32, i64)*, i32 (%struct.ieee80211_hw*, i32, i64)** %57, align 8
  %59 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %62 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 %58(%struct.ieee80211_hw* %59, i32 %60, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  br label %268

67:                                               ; preds = %51
  %68 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %69 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  %72 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %73 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = urem i64 %71, %75
  %77 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %78 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %80 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %79, i32 0, i32 2
  %81 = call %struct.sk_buff* @__skb_dequeue(i32* %80)
  store %struct.sk_buff* %81, %struct.sk_buff** %8, align 8
  %82 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %83 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32)** %90, align 8
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* @HW_DESC_TXBUFF_ADDR, align 4
  %95 = call i32 %91(%struct.ieee80211_hw* %92, i32* %93, i32 1, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %100 = call i32 @pci_unmap_single(i32 %84, i32 %95, i32 %98, i32 %99)
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %67
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load i32, i32* @EM_HDR_LEN, align 4
  %109 = call i32 @skb_pull(%struct.sk_buff* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %67
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %112 = load i32, i32* @COMP_INTR, align 4
  %113 = load i32, i32* @COMP_SEND, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @DBG_TRACE, align 4
  %116 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %117 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %121 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %120, i32 0, i32 2
  %122 = call i32 @skb_queue_len(i32* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 22
  %127 = inttoptr i64 %126 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @RT_TRACE(%struct.rtl_priv* %111, i32 %114, i32 %115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %122, i32 %128)
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @TXCMD_QUEUE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %110
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = call i32 @dev_kfree_skb(%struct.sk_buff* %134)
  br label %247

136:                                              ; preds = %110
  %137 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %138 = call i32 @rtl_get_fc(%struct.sk_buff* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i64 @ieee80211_is_nullfunc(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load i32, i32* %10, align 4
  %144 = call i64 @ieee80211_has_pm(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %148 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  store i32 1, i32* %149, align 4
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %151 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 8
  br label %157

153:                                              ; preds = %142
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %155 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %153, %146
  br label %158

158:                                              ; preds = %157, %136
  %159 = load i32, i32* %10, align 4
  %160 = call i64 @ieee80211_is_action(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %158
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %166, %struct.ieee80211_mgmt** %13, align 8
  %167 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %13, align 8
  %168 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @WLAN_HT_ACTION_SMPS, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %162
  %177 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %178 = call i32 @dev_kfree_skb(%struct.sk_buff* %177)
  br label %247

179:                                              ; preds = %162
  br label %180

180:                                              ; preds = %179, %158
  %181 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %182 = call i32 @rtl_get_tid(%struct.sk_buff* %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp sle i32 %183, 7
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %187 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %185, %180
  %196 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %197 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %196)
  store %struct.ieee80211_tx_info* %197, %struct.ieee80211_tx_info** %9, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i64 @ieee80211_is_nullfunc(i32 %198)
  %200 = icmp ne i64 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = call i64 @likely(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %195
  %206 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %207 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %206)
  %208 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %209 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %210 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %215 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %213, %struct.sk_buff* %214)
  br label %220

216:                                              ; preds = %195
  %217 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %219 = call i32 @rtl_tx_ackqueue(%struct.ieee80211_hw* %217, %struct.sk_buff* %218)
  br label %220

220:                                              ; preds = %216, %205
  %221 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %222 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %225 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %224, i32 0, i32 2
  %226 = call i32 @skb_queue_len(i32* %225)
  %227 = sub nsw i32 %223, %226
  %228 = icmp sle i32 %227, 4
  br i1 %228, label %229, label %246

229:                                              ; preds = %220
  %230 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %231 = load i32, i32* @COMP_ERR, align 4
  %232 = load i32, i32* @DBG_DMESG, align 4
  %233 = load i32, i32* %4, align 4
  %234 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %235 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %7, align 8
  %239 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %238, i32 0, i32 2
  %240 = call i32 @skb_queue_len(i32* %239)
  %241 = call i32 @RT_TRACE(%struct.rtl_priv* %230, i32 %231, i32 %232, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %233, i32 %237, i32 %240)
  %242 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %244 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %243)
  %245 = call i32 @ieee80211_wake_queue(%struct.ieee80211_hw* %242, i32 %244)
  br label %246

246:                                              ; preds = %229, %220
  br label %247

247:                                              ; preds = %246, %176, %133
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %25

248:                                              ; preds = %25
  %249 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %250 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %254 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %252, %256
  %258 = icmp sgt i32 %257, 8
  br i1 %258, label %265, label %259

259:                                              ; preds = %248
  %260 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %261 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp sgt i32 %263, 2
  br i1 %264, label %265, label %268

265:                                              ; preds = %259, %248
  %266 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %267 = call i32 @rtl_lps_leave(%struct.ieee80211_hw* %266)
  br label %268

268:                                              ; preds = %66, %265, %259
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_has_pm(i32) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i32 @rtl_get_tid(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @rtl_tx_ackqueue(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_wake_queue(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @rtl_lps_leave(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
