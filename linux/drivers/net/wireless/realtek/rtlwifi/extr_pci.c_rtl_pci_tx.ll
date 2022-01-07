; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtl_tcb_desc = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__*, %struct.TYPE_8__, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.ieee80211_hw*, i64)*, i32 (%struct.ieee80211_hw*, i64)*, i32 (%struct.ieee80211_hw*, i64*, i32, i32, i64*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i64*, i64*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, i64, %struct.rtl_tcb_desc*)*, i32 (%struct.ieee80211_hw*, i32)*, i64 (%struct.ieee80211_hw*, i64*, i32, i32)* }
%struct.ieee80211_hdr = type { i64*, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.rtl8192_tx_ring = type { i64, i32, i32, i32, %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_desc* }
%struct.rtl_tx_buffer_desc = type { i32 }
%struct.rtl_tx_desc = type { i32 }
%struct.rtl_pci = type { %struct.rtl8192_tx_ring* }

@IEEE80211_FCTL_PM = common dso_local global i32 0, align 4
@BEACON_QUEUE = common dso_local global i64 0, align 8
@HW_DESC_OWN = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"No more TX desc@%d, ring->idx = %d, idx = %d, skb_queue_len = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"get_available_desc fail\0A\00", align 1
@LED_CTL_TX = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"less desc left, stop skb_queue@%d, ring->idx = %d, idx = %d, skb_queue_len = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.sk_buff*, %struct.rtl_tcb_desc*)* @rtl_pci_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_pci_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2, %struct.rtl_tcb_desc* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.rtl_tcb_desc*, align 8
  %10 = alloca %struct.rtl_priv*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.rtl8192_tx_ring*, align 8
  %13 = alloca %struct.rtl_tx_desc*, align 8
  %14 = alloca %struct.rtl_tx_buffer_desc*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ieee80211_hdr*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca %struct.rtl_pci*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.rtl_tcb_desc* %3, %struct.rtl_tcb_desc** %9, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  store %struct.rtl_priv* %25, %struct.rtl_priv** %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %26)
  store %struct.ieee80211_tx_info* %27, %struct.ieee80211_tx_info** %11, align 8
  store %struct.rtl_tx_buffer_desc* null, %struct.rtl_tx_buffer_desc** %14, align 8
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i64 @_rtl_mac_to_hwqueue(%struct.ieee80211_hw* %28, %struct.sk_buff* %29)
  store i64 %30, i64* %16, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff* %31)
  store %struct.ieee80211_hdr* %32, %struct.ieee80211_hdr** %18, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call i32 @rtl_get_fc(%struct.sk_buff* %33)
  store i32 %34, i32* %19, align 4
  %35 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  store i64* %37, i64** %20, align 8
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %39 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %38)
  %40 = call %struct.rtl_pci* @rtl_pcidev(i32 %39)
  store %struct.rtl_pci* %40, %struct.rtl_pci** %21, align 8
  store i64 1, i64* %23, align 8
  %41 = load i32, i32* %19, align 4
  %42 = call i64 @ieee80211_is_mgmt(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %4
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @rtl_tx_mgmt_proc(%struct.ieee80211_hw* %45, %struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %44, %4
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load i32, i32* %19, align 4
  %56 = call i64 @ieee80211_is_data(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32, i32* %19, align 4
  %60 = call i32 @ieee80211_is_nullfunc(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @ieee80211_has_pm(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  %68 = call i32 @cpu_to_le16(i32 %67)
  %69 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %66, %62, %58, %54
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = call i32 @rtl_action_proc(%struct.ieee80211_hw* %75, %struct.sk_buff* %76, i32 1)
  %78 = load i64*, i64** %20, align 8
  %79 = call i64 @is_multicast_ether_addr(i64* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, %84
  store i32 %89, i32* %87, align 8
  br label %113

90:                                               ; preds = %74
  %91 = load i64*, i64** %20, align 8
  %92 = call i64 @is_broadcast_ether_addr(i64* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %99 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %97
  store i32 %102, i32* %100, align 4
  br label %112

103:                                              ; preds = %90
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %108 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, %106
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %103, %94
  br label %113

113:                                              ; preds = %112, %81
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %115 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i64, i64* %17, align 8
  %118 = call i32 @spin_lock_irqsave(i32* %116, i64 %117)
  %119 = load %struct.rtl_pci*, %struct.rtl_pci** %21, align 8
  %120 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %119, i32 0, i32 0
  %121 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %120, align 8
  %122 = load i64, i64* %16, align 8
  %123 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %121, i64 %122
  store %struct.rtl8192_tx_ring* %123, %struct.rtl8192_tx_ring** %12, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* @BEACON_QUEUE, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %113
  %128 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %129 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %134 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %15, align 8
  br label %149

136:                                              ; preds = %127
  %137 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %138 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %141 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %140, i32 0, i32 3
  %142 = call i32 @skb_queue_len(i32* %141)
  %143 = add nsw i32 %139, %142
  %144 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %145 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = srem i32 %143, %146
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %15, align 8
  br label %149

149:                                              ; preds = %136, %132
  br label %151

150:                                              ; preds = %113
  store i64 0, i64* %15, align 8
  br label %151

151:                                              ; preds = %150, %149
  %152 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %153 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %152, i32 0, i32 5
  %154 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %153, align 8
  %155 = load i64, i64* %15, align 8
  %156 = getelementptr inbounds %struct.rtl_tx_desc, %struct.rtl_tx_desc* %154, i64 %155
  store %struct.rtl_tx_desc* %156, %struct.rtl_tx_desc** %13, align 8
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %158 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %151
  %162 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %163 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %162, i32 0, i32 4
  %164 = load %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_buffer_desc** %163, align 8
  %165 = load i64, i64* %15, align 8
  %166 = getelementptr inbounds %struct.rtl_tx_buffer_desc, %struct.rtl_tx_buffer_desc* %164, i64 %165
  store %struct.rtl_tx_buffer_desc* %166, %struct.rtl_tx_buffer_desc** %14, align 8
  br label %208

167:                                              ; preds = %151
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %169 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 5
  %174 = load i64 (%struct.ieee80211_hw*, i64*, i32, i32)*, i64 (%struct.ieee80211_hw*, i64*, i32, i32)** %173, align 8
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %176 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %13, align 8
  %177 = bitcast %struct.rtl_tx_desc* %176 to i64*
  %178 = load i32, i32* @HW_DESC_OWN, align 4
  %179 = call i64 %174(%struct.ieee80211_hw* %175, i64* %177, i32 1, i32 %178)
  store i64 %179, i64* %22, align 8
  %180 = load i64, i64* %22, align 8
  %181 = icmp eq i64 %180, 1
  br i1 %181, label %182, label %207

182:                                              ; preds = %167
  %183 = load i64, i64* %16, align 8
  %184 = load i64, i64* @BEACON_QUEUE, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %207

186:                                              ; preds = %182
  %187 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %188 = load i32, i32* @COMP_ERR, align 4
  %189 = load i32, i32* @DBG_WARNING, align 4
  %190 = load i64, i64* %16, align 8
  %191 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %192 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i64, i64* %15, align 8
  %195 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %196 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %195, i32 0, i32 3
  %197 = call i32 @skb_queue_len(i32* %196)
  %198 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %190, i32 %193, i64 %194, i32 %197)
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %200 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i64, i64* %17, align 8
  %203 = call i32 @spin_unlock_irqrestore(i32* %201, i64 %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %5, align 4
  br label %357

207:                                              ; preds = %182, %167
  br label %208

208:                                              ; preds = %207, %161
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %210 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %209, i32 0, i32 0
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i64 (%struct.ieee80211_hw*, i64)*, i64 (%struct.ieee80211_hw*, i64)** %214, align 8
  %216 = icmp ne i64 (%struct.ieee80211_hw*, i64)* %215, null
  br i1 %216, label %217, label %242

217:                                              ; preds = %208
  %218 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %219 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %218, i32 0, i32 0
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i64 (%struct.ieee80211_hw*, i64)*, i64 (%struct.ieee80211_hw*, i64)** %223, align 8
  %225 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %226 = load i64, i64* %16, align 8
  %227 = call i64 %224(%struct.ieee80211_hw* %225, i64 %226)
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %217
  %230 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %231 = load i32, i32* @COMP_ERR, align 4
  %232 = load i32, i32* @DBG_WARNING, align 4
  %233 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %230, i32 %231, i32 %232, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %234 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %235 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i64, i64* %17, align 8
  %238 = call i32 @spin_unlock_irqrestore(i32* %236, i64 %237)
  %239 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %5, align 4
  br label %357

242:                                              ; preds = %217, %208
  %243 = load i32, i32* %19, align 4
  %244 = call i64 @ieee80211_is_data(i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %257

246:                                              ; preds = %242
  %247 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %248 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %247, i32 0, i32 0
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 4
  %253 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %252, align 8
  %254 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %255 = load i32, i32* @LED_CTL_TX, align 4
  %256 = call i32 %253(%struct.ieee80211_hw* %254, i32 %255)
  br label %257

257:                                              ; preds = %246, %242
  %258 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %259 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %258, i32 0, i32 0
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  %264 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i64*, i64*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, i64, %struct.rtl_tcb_desc*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i64*, i64*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, i64, %struct.rtl_tcb_desc*)** %263, align 8
  %265 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %266 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %18, align 8
  %267 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %13, align 8
  %268 = bitcast %struct.rtl_tx_desc* %267 to i64*
  %269 = load %struct.rtl_tx_buffer_desc*, %struct.rtl_tx_buffer_desc** %14, align 8
  %270 = bitcast %struct.rtl_tx_buffer_desc* %269 to i64*
  %271 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %272 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %273 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %274 = load i64, i64* %16, align 8
  %275 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %9, align 8
  %276 = call i32 %264(%struct.ieee80211_hw* %265, %struct.ieee80211_hdr* %266, i64* %268, i64* %270, %struct.ieee80211_tx_info* %271, %struct.ieee80211_sta* %272, %struct.sk_buff* %273, i64 %274, %struct.rtl_tcb_desc* %275)
  %277 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %278 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %277, i32 0, i32 3
  %279 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %280 = call i32 @__skb_queue_tail(i32* %278, %struct.sk_buff* %279)
  %281 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %282 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %257
  %286 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %287 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %286, i32 0, i32 0
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 2
  %292 = load i32 (%struct.ieee80211_hw*, i64*, i32, i32, i64*)*, i32 (%struct.ieee80211_hw*, i64*, i32, i32, i64*)** %291, align 8
  %293 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %294 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %13, align 8
  %295 = bitcast %struct.rtl_tx_desc* %294 to i64*
  %296 = load i32, i32* @HW_DESC_OWN, align 4
  %297 = call i32 %292(%struct.ieee80211_hw* %293, i64* %295, i32 1, i32 %296, i64* %16)
  br label %311

298:                                              ; preds = %257
  %299 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %300 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %299, i32 0, i32 0
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 2
  %305 = load i32 (%struct.ieee80211_hw*, i64*, i32, i32, i64*)*, i32 (%struct.ieee80211_hw*, i64*, i32, i32, i64*)** %304, align 8
  %306 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %307 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %13, align 8
  %308 = bitcast %struct.rtl_tx_desc* %307 to i64*
  %309 = load i32, i32* @HW_DESC_OWN, align 4
  %310 = call i32 %305(%struct.ieee80211_hw* %306, i64* %308, i32 1, i32 %309, i64* %23)
  br label %311

311:                                              ; preds = %298, %285
  %312 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %313 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %316 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %315, i32 0, i32 3
  %317 = call i32 @skb_queue_len(i32* %316)
  %318 = sub nsw i32 %314, %317
  %319 = icmp slt i32 %318, 2
  br i1 %319, label %320, label %341

320:                                              ; preds = %311
  %321 = load i64, i64* %16, align 8
  %322 = load i64, i64* @BEACON_QUEUE, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %341

324:                                              ; preds = %320
  %325 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %326 = load i32, i32* @COMP_ERR, align 4
  %327 = load i32, i32* @DBG_LOUD, align 4
  %328 = load i64, i64* %16, align 8
  %329 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %330 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = load i64, i64* %15, align 8
  %333 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %334 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %333, i32 0, i32 3
  %335 = call i32 @skb_queue_len(i32* %334)
  %336 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %325, i32 %326, i32 %327, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i64 %328, i32 %331, i64 %332, i32 %335)
  %337 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %338 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %339 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %338)
  %340 = call i32 @ieee80211_stop_queue(%struct.ieee80211_hw* %337, i32 %339)
  br label %341

341:                                              ; preds = %324, %320, %311
  %342 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %343 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = load i64, i64* %17, align 8
  %346 = call i32 @spin_unlock_irqrestore(i32* %344, i64 %345)
  %347 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %348 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %347, i32 0, i32 0
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 1
  %353 = load i32 (%struct.ieee80211_hw*, i64)*, i32 (%struct.ieee80211_hw*, i64)** %352, align 8
  %354 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %355 = load i64, i64* %16, align 8
  %356 = call i32 %353(%struct.ieee80211_hw* %354, i64 %355)
  store i32 0, i32* %5, align 4
  br label %357

357:                                              ; preds = %341, %229, %186
  %358 = load i32, i32* %5, align 4
  ret i32 %358
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @_rtl_mac_to_hwqueue(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_hdr* @rtl_get_hdr(%struct.sk_buff*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @rtl_tx_mgmt_proc(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_nullfunc(i32) #1

declare dso_local i32 @ieee80211_has_pm(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @rtl_action_proc(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i64*) #1

declare dso_local i64 @is_broadcast_ether_addr(i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_stop_queue(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
