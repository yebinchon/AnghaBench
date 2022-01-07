; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_reset_trx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_reset_trx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_8__, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*, i32*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)* }
%struct.rtl_pci = type { i32, i32*, %struct.rtl8192_tx_ring*, i32, %struct.TYPE_5__*, i32 }
%struct.rtl8192_tx_ring = type { i64, i32, i64, i64, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i64, %struct.rtl_rx_desc* }
%struct.rtl_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@RTL_PCI_MAX_RX_QUEUE = common dso_local global i32 0, align 4
@HW_DESC_RXBUFF_ADDR = common dso_local global i32 0, align 4
@HW_DESC_RX_PREPARE = common dso_local global i32 0, align 4
@HW_DESC_RXPKT_LEN = common dso_local global i32 0, align 4
@HW_DESC_RXOWN = common dso_local global i32 0, align 4
@HW_DESC_RXERO = common dso_local global i32 0, align 4
@RTL_PCI_MAX_TX_QUEUE_COUNT = common dso_local global i32 0, align 4
@HW_DESC_TXBUFF_ADDR = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_pci_reset_trx_ring(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_rx_desc*, align 8
  %11 = alloca %struct.rtl8192_tx_ring*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %3, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_pci* @rtl_pcidev(i32 %17)
  store %struct.rtl_pci* %18, %struct.rtl_pci** %4, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %160, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RTL_PCI_MAX_RX_QUEUE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %163

23:                                               ; preds = %19
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %152, label %28

28:                                               ; preds = %23
  %29 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %29, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %35, align 8
  %37 = icmp ne %struct.rtl_rx_desc* %36, null
  br i1 %37, label %38, label %152

38:                                               ; preds = %28
  store %struct.rtl_rx_desc* null, %struct.rtl_rx_desc** %10, align 8
  %39 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %40 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %136, %38
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %139

52:                                               ; preds = %46
  %53 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %54 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %53, i32 0, i32 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.rtl_rx_desc, %struct.rtl_rx_desc* %60, i64 %62
  store %struct.rtl_rx_desc* %63, %struct.rtl_rx_desc** %10, align 8
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32)** %69, align 8
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %72 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %10, align 8
  %73 = bitcast %struct.rtl_rx_desc* %72 to i32*
  %74 = load i32, i32* @HW_DESC_RXBUFF_ADDR, align 4
  %75 = call i32 %70(%struct.ieee80211_hw* %71, i32* %73, i32 0, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %10, align 8
  %77 = bitcast %struct.rtl_rx_desc* %76 to i32*
  %78 = call i32 @memset(i32* %77, i32 0, i32 4)
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %52
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %85 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %84, i32 0, i32 2
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %89, align 8
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %92 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %10, align 8
  %93 = bitcast %struct.rtl_rx_desc* %92 to i32*
  %94 = load i32, i32* @HW_DESC_RX_PREPARE, align 4
  %95 = call i32 %90(%struct.ieee80211_hw* %91, i32* %93, i32 0, i32 %94, i32* %9)
  br label %135

96:                                               ; preds = %52
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %102, align 8
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %105 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %10, align 8
  %106 = bitcast %struct.rtl_rx_desc* %105 to i32*
  %107 = load i32, i32* @HW_DESC_RXBUFF_ADDR, align 4
  %108 = call i32 %103(%struct.ieee80211_hw* %104, i32* %106, i32 0, i32 %107, i32* %9)
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %114, align 8
  %116 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %117 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %10, align 8
  %118 = bitcast %struct.rtl_rx_desc* %117 to i32*
  %119 = load i32, i32* @HW_DESC_RXPKT_LEN, align 4
  %120 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %121 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %120, i32 0, i32 5
  %122 = call i32 %115(%struct.ieee80211_hw* %116, i32* %118, i32 0, i32 %119, i32* %121)
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %124 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %128, align 8
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %10, align 8
  %132 = bitcast %struct.rtl_rx_desc* %131 to i32*
  %133 = load i32, i32* @HW_DESC_RXOWN, align 4
  %134 = call i32 %129(%struct.ieee80211_hw* %130, i32* %132, i32 0, i32 %133, i32* %8)
  br label %135

135:                                              ; preds = %96, %83
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %46

139:                                              ; preds = %46
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %141 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32, i32*)** %145, align 8
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %148 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %10, align 8
  %149 = bitcast %struct.rtl_rx_desc* %148 to i32*
  %150 = load i32, i32* @HW_DESC_RXERO, align 4
  %151 = call i32 %146(%struct.ieee80211_hw* %147, i32* %149, i32 0, i32 %150, i32* %8)
  br label %152

152:                                              ; preds = %139, %28, %23
  %153 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %154 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %153, i32 0, i32 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %152
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %19

163:                                              ; preds = %19
  %164 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %165 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i64, i64* %7, align 8
  %168 = call i32 @spin_lock_irqsave(i32* %166, i64 %167)
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %295, %163
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %298

173:                                              ; preds = %169
  %174 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %175 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %174, i32 0, i32 2
  %176 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %176, i64 %178
  %180 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %193, label %183

183:                                              ; preds = %173
  %184 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %185 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %184, i32 0, i32 2
  %186 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %186, i64 %188
  %190 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %189, i32 0, i32 5
  %191 = load i32*, i32** %190, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %294

193:                                              ; preds = %183, %173
  %194 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %195 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %194, i32 0, i32 2
  %196 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %196, i64 %198
  store %struct.rtl8192_tx_ring* %199, %struct.rtl8192_tx_ring** %11, align 8
  br label %200

200:                                              ; preds = %229, %193
  %201 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %202 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %201, i32 0, i32 6
  %203 = call i64 @skb_queue_len(i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %262

205:                                              ; preds = %200
  %206 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %207 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %206, i32 0, i32 6
  %208 = call %struct.sk_buff* @__skb_dequeue(i32* %207)
  store %struct.sk_buff* %208, %struct.sk_buff** %13, align 8
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %210 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %205
  %214 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %215 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %218 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  store i32* %220, i32** %12, align 8
  br label %229

221:                                              ; preds = %205
  %222 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %223 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %226 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  store i32* %228, i32** %12, align 8
  br label %229

229:                                              ; preds = %221, %213
  %230 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %231 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %234 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %233, i32 0, i32 2
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32 (%struct.ieee80211_hw*, i32*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32*, i32, i32)** %238, align 8
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %241 = load i32*, i32** %12, align 8
  %242 = load i32, i32* @HW_DESC_TXBUFF_ADDR, align 4
  %243 = call i32 %239(%struct.ieee80211_hw* %240, i32* %241, i32 1, i32 %242)
  %244 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %248 = call i32 @pci_unmap_single(i32 %232, i32 %243, i32 %246, i32 %247)
  %249 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %250 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %249)
  %251 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %252 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add i64 %253, 1
  %255 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %256 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = urem i64 %254, %258
  %260 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %261 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  br label %200

262:                                              ; preds = %200
  %263 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %264 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %282

267:                                              ; preds = %262
  %268 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %269 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %268, i32 0, i32 2
  %270 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %270, i64 %272
  %274 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %273, i32 0, i32 3
  store i64 0, i64* %274, align 8
  %275 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %276 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %275, i32 0, i32 2
  %277 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %276, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %277, i64 %279
  %281 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %280, i32 0, i32 2
  store i64 0, i64* %281, align 8
  br label %282

282:                                              ; preds = %267, %262
  %283 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %284 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %283, i32 0, i32 0
  store i64 0, i64* %284, align 8
  %285 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %286 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %293 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %292, i32 0, i32 1
  store i32 %291, i32* %293, align 8
  br label %294

294:                                              ; preds = %282, %183
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %5, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %5, align 4
  br label %169

298:                                              ; preds = %169
  %299 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %300 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = load i64, i64* %7, align 8
  %303 = call i32 @spin_unlock_irqrestore(i32* %301, i64 %302)
  ret i32 0
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
