; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_14__*, i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.ieee80211_hw*, i64)*, i64 (%struct.ieee80211_hw*, i64*, i32, i32)*, i32 (%struct.ieee80211_hw*, i64*, i32, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i64*, i64)*, i32 (%struct.ieee80211_hw*, %struct.rtl_stats*, %struct.ieee80211_rx_status*, i64*, %struct.sk_buff*)* }
%struct.rtl_stats = type { i64, i32, i32, i64, i64, i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.sk_buff = type { i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.rtl_pci = type { i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.rtl_rx_desc*, %struct.rtl_rx_buffer_desc*, %struct.sk_buff** }
%struct.rtl_rx_desc = type { i32 }
%struct.rtl_rx_buffer_desc = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@RTL_PCI_RX_MPDU_QUEUE = common dso_local global i32 0, align 4
@HW_DESC_OWN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@HW_DESC_RXPKT_LEN = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"skb->end - skb->tail = %d, len is %d\0A\00", align 1
@C2H_PACKET = common dso_local global i64 0, align 8
@FCS_LEN = common dso_local global i64 0, align 8
@LED_CTL_RX = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@RTL_PCI_MAX_RX_COUNT = common dso_local global i32 0, align 4
@HW_DESC_RXERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl_pci_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_rx_interrupt(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_rx_status, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtl_stats, align 8
  %14 = alloca %struct.ieee80211_hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.rtl_rx_buffer_desc*, align 8
  %18 = alloca %struct.rtl_rx_desc*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  store %struct.rtl_priv* %22, %struct.rtl_priv** %3, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %23)
  %25 = call %struct.rtl_pci* @rtl_pcidev(i32 %24)
  store %struct.rtl_pci* %25, %struct.rtl_pci** %4, align 8
  %26 = load i32, i32* @RTL_PCI_RX_MPDU_QUEUE, align 4
  store i32 %26, i32* %5, align 4
  %27 = bitcast %struct.ieee80211_rx_status* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 4, i1 false)
  %28 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %29 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %31 = bitcast %struct.rtl_stats* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 40, i1 false)
  br label %32

32:                                               ; preds = %525, %1
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %547

36:                                               ; preds = %32
  store %struct.rtl_rx_buffer_desc* null, %struct.rtl_rx_buffer_desc** %17, align 8
  store %struct.rtl_rx_desc* null, %struct.rtl_rx_desc** %18, align 8
  %37 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %38 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = load %struct.sk_buff**, %struct.sk_buff*** %43, align 8
  %45 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %46 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %44, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %19, align 8
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %36
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32 (%struct.ieee80211_hw*, i64)*, i32 (%struct.ieee80211_hw*, i64)** %68, align 8
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 %69(%struct.ieee80211_hw* %70, i64 %71)
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %62, %59
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %547

77:                                               ; preds = %73
  %78 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %79 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 3
  %85 = load %struct.rtl_rx_buffer_desc*, %struct.rtl_rx_buffer_desc** %84, align 8
  %86 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %87 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.rtl_rx_buffer_desc, %struct.rtl_rx_buffer_desc* %85, i64 %93
  store %struct.rtl_rx_buffer_desc* %94, %struct.rtl_rx_buffer_desc** %17, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.rtl_rx_desc*
  store %struct.rtl_rx_desc* %98, %struct.rtl_rx_desc** %18, align 8
  br label %133

99:                                               ; preds = %36
  %100 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %101 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %106, align 8
  %108 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %109 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.rtl_rx_desc, %struct.rtl_rx_desc* %107, i64 %115
  store %struct.rtl_rx_desc* %116, %struct.rtl_rx_desc** %18, align 8
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i64 (%struct.ieee80211_hw*, i64*, i32, i32)*, i64 (%struct.ieee80211_hw*, i64*, i32, i32)** %122, align 8
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %125 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %18, align 8
  %126 = bitcast %struct.rtl_rx_desc* %125 to i64*
  %127 = load i32, i32* @HW_DESC_OWN, align 4
  %128 = call i64 %123(%struct.ieee80211_hw* %124, i64* %126, i32 0, i32 %127)
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* %8, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %99
  br label %547

132:                                              ; preds = %99
  br label %133

133:                                              ; preds = %132, %77
  %134 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %135 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %143 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %146 = call i32 @pci_unmap_single(i32 %136, i32 %141, i32 %144, i32 %145)
  %147 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %148 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call %struct.sk_buff* @dev_alloc_skb(i32 %149)
  store %struct.sk_buff* %150, %struct.sk_buff** %20, align 8
  %151 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %152 = icmp ne %struct.sk_buff* %151, null
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %133
  br label %460

158:                                              ; preds = %133
  %159 = call i32 @memset(%struct.ieee80211_rx_status* %6, i32 0, i32 4)
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %161 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %160, i32 0, i32 0
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 5
  %166 = load i32 (%struct.ieee80211_hw*, %struct.rtl_stats*, %struct.ieee80211_rx_status*, i64*, %struct.sk_buff*)*, i32 (%struct.ieee80211_hw*, %struct.rtl_stats*, %struct.ieee80211_rx_status*, i64*, %struct.sk_buff*)** %165, align 8
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %168 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %18, align 8
  %169 = bitcast %struct.rtl_rx_desc* %168 to i64*
  %170 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %171 = call i32 %166(%struct.ieee80211_hw* %167, %struct.rtl_stats* %13, %struct.ieee80211_rx_status* %6, i64* %169, %struct.sk_buff* %170)
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %173 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %158
  %177 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %178 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %177, i32 0, i32 0
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 4
  %183 = load i32 (%struct.ieee80211_hw*, i64*, i64)*, i32 (%struct.ieee80211_hw*, i64*, i64)** %182, align 8
  %184 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %185 = load %struct.rtl_rx_buffer_desc*, %struct.rtl_rx_buffer_desc** %17, align 8
  %186 = bitcast %struct.rtl_rx_buffer_desc* %185 to i64*
  %187 = load i64, i64* %11, align 8
  %188 = call i32 %183(%struct.ieee80211_hw* %184, i64* %186, i64 %187)
  br label %189

189:                                              ; preds = %176, %158
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %191 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %190, i32 0, i32 0
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = load i64 (%struct.ieee80211_hw*, i64*, i32, i32)*, i64 (%struct.ieee80211_hw*, i64*, i32, i32)** %195, align 8
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %198 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %18, align 8
  %199 = bitcast %struct.rtl_rx_desc* %198 to i64*
  %200 = load i32, i32* @HW_DESC_RXPKT_LEN, align 4
  %201 = call i64 %196(%struct.ieee80211_hw* %197, i64* %199, i32 0, i32 %200)
  store i64 %201, i64* %16, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  %209 = load i64, i64* %16, align 8
  %210 = icmp sgt i64 %208, %209
  br i1 %210, label %211, label %237

211:                                              ; preds = %189
  %212 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %213 = load i64, i64* %16, align 8
  %214 = call i32 @skb_put(%struct.sk_buff* %212, i64 %213)
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %216 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %228

219:                                              ; preds = %211
  %220 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %221 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %13, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %13, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %222, %224
  %226 = add nsw i64 %225, 24
  %227 = call i32 @skb_reserve(%struct.sk_buff* %220, i64 %226)
  br label %236

228:                                              ; preds = %211
  %229 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %230 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %13, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %13, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %231, %233
  %235 = call i32 @skb_reserve(%struct.sk_buff* %229, i64 %234)
  br label %236

236:                                              ; preds = %228, %219
  br label %252

237:                                              ; preds = %189
  %238 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %239 = load i32, i32* @COMP_ERR, align 4
  %240 = load i32, i32* @DBG_WARNING, align 4
  %241 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %242 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = sub nsw i64 %243, %246
  %248 = load i64, i64* %16, align 8
  %249 = call i32 @RT_TRACE(%struct.rtl_priv* %238, i32 %239, i32 %240, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %247, i64 %248)
  %250 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %251 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %250)
  br label %404

252:                                              ; preds = %236
  %253 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %13, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @C2H_PACKET, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %259 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %260 = call i32 @rtl_c2hcmd_enqueue(%struct.ieee80211_hw* %258, %struct.sk_buff* %259)
  br label %404

261:                                              ; preds = %252
  %262 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %263 = call %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff* %262)
  store %struct.ieee80211_hdr* %263, %struct.ieee80211_hdr** %14, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %265 = call i32 @rtl_get_fc(%struct.sk_buff* %264)
  store i32 %265, i32* %15, align 4
  %266 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %13, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %400, label %269

269:                                              ; preds = %261
  %270 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %13, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %400, label %273

273:                                              ; preds = %269
  %274 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %275 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @FCS_LEN, align 8
  %278 = icmp sgt i64 %276, %277
  br i1 %278, label %279, label %400

279:                                              ; preds = %273
  %280 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %281 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %280)
  %282 = call i32 @memcpy(i32 %281, %struct.ieee80211_rx_status* %6, i32 4)
  %283 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %284 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i64 @is_broadcast_ether_addr(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %279
  br label %308

289:                                              ; preds = %279
  %290 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %291 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i64 @is_multicast_ether_addr(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %289
  br label %307

296:                                              ; preds = %289
  store i32 1, i32* %10, align 4
  %297 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %298 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %297, i32 0, i32 2
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %301 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sext i32 %303 to i64
  %305 = add nsw i64 %304, %299
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %302, align 8
  br label %307

307:                                              ; preds = %296, %295
  br label %308

308:                                              ; preds = %307, %288
  %309 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %310 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %311 = call i32 @rtl_is_special_data(%struct.ieee80211_hw* %309, %struct.sk_buff* %310, i32 0, i32 1)
  %312 = load i32, i32* %15, align 4
  %313 = call i64 @ieee80211_is_data(i32 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %335

315:                                              ; preds = %308
  %316 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %317 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %316, i32 0, i32 0
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 3
  %322 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %321, align 8
  %323 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %324 = load i32, i32* @LED_CTL_RX, align 4
  %325 = call i32 %322(%struct.ieee80211_hw* %323, i32 %324)
  %326 = load i32, i32* %10, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %315
  %329 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %330 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 8
  br label %334

334:                                              ; preds = %328, %315
  br label %335

335:                                              ; preds = %334, %308
  %336 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %337 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %338 = call i32 @rtl_collect_scan_list(%struct.ieee80211_hw* %336, %struct.sk_buff* %337)
  %339 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %340 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %341 = call i32 @rtl_beacon_statistic(%struct.ieee80211_hw* %339, %struct.sk_buff* %340)
  %342 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %343 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %344 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = inttoptr i64 %345 to i8*
  %347 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %348 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = call i32 @rtl_p2p_info(%struct.ieee80211_hw* %342, i8* %346, i64 %349)
  %351 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %352 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %353 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = inttoptr i64 %354 to i8*
  %356 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %357 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = call i32 @rtl_swlps_beacon(%struct.ieee80211_hw* %351, i8* %355, i64 %358)
  %360 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %361 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %362 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = inttoptr i64 %363 to i8*
  %365 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %366 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = call i32 @rtl_recognize_peer(%struct.ieee80211_hw* %360, i8* %364, i64 %367)
  %369 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %370 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %369, i32 0, i32 4
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %393

375:                                              ; preds = %335
  %376 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %377 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @BAND_ON_2_4G, align 8
  %381 = icmp eq i64 %379, %380
  br i1 %381, label %382, label %393

382:                                              ; preds = %375
  %383 = load i32, i32* %15, align 4
  %384 = call i64 @ieee80211_is_beacon(i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %390, label %386

386:                                              ; preds = %382
  %387 = load i32, i32* %15, align 4
  %388 = call i64 @ieee80211_is_probe_resp(i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %386, %382
  %391 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %392 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %391)
  br label %399

393:                                              ; preds = %386, %375, %335
  %394 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %395 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %396 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @_rtl_pci_rx_to_mac80211(%struct.ieee80211_hw* %394, %struct.sk_buff* %395, i32 %397)
  br label %399

399:                                              ; preds = %393, %390
  br label %403

400:                                              ; preds = %273, %269, %261
  %401 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %402 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %401)
  br label %403

403:                                              ; preds = %400, %399
  br label %404

404:                                              ; preds = %403, %257, %237
  %405 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %406 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %438

409:                                              ; preds = %404
  %410 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %411 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %410, i32 0, i32 1
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %411, align 8
  %413 = load i64, i64* %11, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %415, align 8
  %418 = load i32, i32* @RTL_PCI_MAX_RX_COUNT, align 4
  %419 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %420 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %419, i32 0, i32 1
  %421 = load %struct.TYPE_12__*, %struct.TYPE_12__** %420, align 8
  %422 = load i64, i64* %11, align 8
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %421, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 8
  %426 = srem i32 %425, %418
  store i32 %426, i32* %424, align 8
  %427 = load i32, i32* %12, align 4
  %428 = add i32 %427, -1
  store i32 %428, i32* %12, align 4
  %429 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %430 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %431 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %430, i32 0, i32 1
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %431, align 8
  %433 = load i64, i64* %11, align 8
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 8
  %437 = call i32 @rtl_write_word(%struct.rtl_priv* %429, i32 948, i32 %436)
  br label %438

438:                                              ; preds = %409, %404
  %439 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %440 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %444 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %443, i32 0, i32 2
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = add nsw i32 %442, %446
  %448 = icmp sgt i32 %447, 8
  br i1 %448, label %455, label %449

449:                                              ; preds = %438
  %450 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %451 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %450, i32 0, i32 2
  %452 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = icmp sgt i32 %453, 2
  br i1 %454, label %455, label %458

455:                                              ; preds = %449, %438
  %456 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %457 = call i32 @rtl_lps_leave(%struct.ieee80211_hw* %456)
  br label %458

458:                                              ; preds = %455, %449
  %459 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %459, %struct.sk_buff** %19, align 8
  br label %460

460:                                              ; preds = %458, %157
  %461 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %462 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %461, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %481

465:                                              ; preds = %460
  %466 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %467 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %468 = load %struct.rtl_rx_buffer_desc*, %struct.rtl_rx_buffer_desc** %17, align 8
  %469 = bitcast %struct.rtl_rx_buffer_desc* %468 to i64*
  %470 = load i32, i32* %5, align 4
  %471 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %472 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %471, i32 0, i32 1
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %472, align 8
  %474 = load i32, i32* %5, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = trunc i64 %478 to i32
  %480 = call i32 @_rtl_pci_init_one_rxdesc(%struct.ieee80211_hw* %466, %struct.sk_buff* %467, i64* %469, i32 %470, i32 %479)
  br label %525

481:                                              ; preds = %460
  %482 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %483 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %484 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %18, align 8
  %485 = bitcast %struct.rtl_rx_desc* %484 to i64*
  %486 = load i32, i32* %5, align 4
  %487 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %488 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %487, i32 0, i32 1
  %489 = load %struct.TYPE_12__*, %struct.TYPE_12__** %488, align 8
  %490 = load i32, i32* %5, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = trunc i64 %494 to i32
  %496 = call i32 @_rtl_pci_init_one_rxdesc(%struct.ieee80211_hw* %482, %struct.sk_buff* %483, i64* %485, i32 %486, i32 %495)
  %497 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %498 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %497, i32 0, i32 1
  %499 = load %struct.TYPE_12__*, %struct.TYPE_12__** %498, align 8
  %500 = load i32, i32* %5, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %499, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %506 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = sub i32 %507, 1
  %509 = zext i32 %508 to i64
  %510 = icmp eq i64 %504, %509
  br i1 %510, label %511, label %524

511:                                              ; preds = %481
  %512 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %513 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %512, i32 0, i32 0
  %514 = load %struct.TYPE_14__*, %struct.TYPE_14__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %514, i32 0, i32 0
  %516 = load %struct.TYPE_13__*, %struct.TYPE_13__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %516, i32 0, i32 2
  %518 = load i32 (%struct.ieee80211_hw*, i64*, i32, i32, i64*)*, i32 (%struct.ieee80211_hw*, i64*, i32, i32, i64*)** %517, align 8
  %519 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %520 = load %struct.rtl_rx_desc*, %struct.rtl_rx_desc** %18, align 8
  %521 = bitcast %struct.rtl_rx_desc* %520 to i64*
  %522 = load i32, i32* @HW_DESC_RXERO, align 4
  %523 = call i32 %518(%struct.ieee80211_hw* %519, i64* %521, i32 0, i32 %522, i64* %9)
  br label %524

524:                                              ; preds = %511, %481
  br label %525

525:                                              ; preds = %524, %465
  %526 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %527 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %526, i32 0, i32 1
  %528 = load %struct.TYPE_12__*, %struct.TYPE_12__** %527, align 8
  %529 = load i32, i32* %5, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %528, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 0
  %533 = load i64, i64* %532, align 8
  %534 = add i64 %533, 1
  %535 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %536 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = zext i32 %537 to i64
  %539 = urem i64 %534, %538
  %540 = load %struct.rtl_pci*, %struct.rtl_pci** %4, align 8
  %541 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %540, i32 0, i32 1
  %542 = load %struct.TYPE_12__*, %struct.TYPE_12__** %541, align 8
  %543 = load i32, i32* %5, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %542, i64 %544
  %546 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %545, i32 0, i32 0
  store i64 %539, i64* %546, align 8
  br label %32

547:                                              ; preds = %76, %131, %32
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @rtl_c2hcmd_enqueue(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @rtl_is_special_data(%struct.ieee80211_hw*, %struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @rtl_collect_scan_list(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @rtl_beacon_statistic(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i32 @rtl_p2p_info(%struct.ieee80211_hw*, i8*, i64) #1

declare dso_local i32 @rtl_swlps_beacon(%struct.ieee80211_hw*, i8*, i64) #1

declare dso_local i32 @rtl_recognize_peer(%struct.ieee80211_hw*, i8*, i64) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i32 @_rtl_pci_rx_to_mac80211(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_lps_leave(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl_pci_init_one_rxdesc(%struct.ieee80211_hw*, %struct.sk_buff*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
