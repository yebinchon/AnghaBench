; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c__rtl92cu_phy_set_rf_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_phy.c__rtl92cu_phy_set_rf_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i32)* }
%struct.rtl_pci_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i32 }
%struct.rtl_mac = type { i32 }
%struct.rtl_ps_ctl = type { i32, i8*, i8*, i32, i32 }

@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IPS Set eRf nic enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Set ERFON sleeped:%d ms\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@MAC80211_LINKED = common dso_local global i32 0, align 4
@LED_CTL_LINK = common dso_local global i32 0, align 4
@LED_CTL_NO_LINK = common dso_local global i32 0, align 4
@RTL_PCI_MAX_TX_QUEUE_COUNT = common dso_local global i64 0, align 8
@BEACON_QUEUE = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\0A\00", align 1
@MAX_DOZE_WAITING_TIMES_9x = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"ERFOFF: %d times TcbBusyQueue[%d] = %d !\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IPS Set eRf nic disable\0A\00", align 1
@RF_CHANGE_BY_IPS = common dso_local global i32 0, align 4
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl92cu_phy_set_rf_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92cu_phy_set_rf_power_state(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_pci_priv*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  %9 = alloca %struct.rtl_ps_ctl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtl8192_tx_ring*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %6, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %18)
  store %struct.rtl_pci_priv* %19, %struct.rtl_pci_priv** %7, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %21)
  store %struct.rtl_mac* %22, %struct.rtl_mac** %8, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %24 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %23)
  %25 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %24)
  store %struct.rtl_ps_ctl* %25, %struct.rtl_ps_ctl** %9, align 8
  store i32 1, i32* %10, align 4
  store %struct.rtl8192_tx_ring* null, %struct.rtl8192_tx_ring** %13, align 8
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %279 [
    i32 129, label %27
    i32 130, label %107
    i32 128, label %206
  ]

27:                                               ; preds = %2
  %28 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %29 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 130
  br i1 %31, label %32, label %59

32:                                               ; preds = %27
  %33 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %34 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %35 = call i32 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %42 = load i32, i32* @COMP_RF, align 4
  %43 = load i32, i32* @DBG_DMESG, align 4
  %44 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %46 = call i32 @rtl_ps_enable_nic(%struct.ieee80211_hw* %45)
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %51, 10
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br i1 %54, label %38, label %55

55:                                               ; preds = %53
  %56 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %57 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %58 = call i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl* %56, i32 %57)
  br label %78

59:                                               ; preds = %32, %27
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %61 = load i32, i32* @COMP_RF, align 4
  %62 = load i32, i32* @DBG_DMESG, align 4
  %63 = load i8*, i8** @jiffies, align 8
  %64 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %65 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %63 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @jiffies_to_msecs(i8* %70)
  %72 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i8*, i8** @jiffies, align 8
  %74 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %75 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %77 = call i32 @rtl92ce_phy_set_rf_on(%struct.ieee80211_hw* %76)
  br label %78

78:                                               ; preds = %59, %55
  %79 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %80 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MAC80211_LINKED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %90, align 8
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %93 = load i32, i32* @LED_CTL_LINK, align 4
  %94 = call i32 %91(%struct.ieee80211_hw* %92, i32 %93)
  br label %106

95:                                               ; preds = %78
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %97 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %101, align 8
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %104 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %105 = call i32 %102(%struct.ieee80211_hw* %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %84
  br label %282

107:                                              ; preds = %2
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %108

108:                                              ; preds = %158, %127, %107
  %109 = load i64, i64* %12, align 8
  %110 = load i64, i64* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %159

112:                                              ; preds = %108
  %113 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %7, align 8
  %114 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %116, i64 %117
  store %struct.rtl8192_tx_ring* %118, %struct.rtl8192_tx_ring** %13, align 8
  %119 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %13, align 8
  %120 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %119, i32 0, i32 0
  %121 = call i32 @skb_queue_len(i32* %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %112
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* @BEACON_QUEUE, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123, %112
  %128 = load i64, i64* %12, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %12, align 8
  br label %108

130:                                              ; preds = %123
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %132 = load i32, i32* @COMP_ERR, align 4
  %133 = load i32, i32* @DBG_WARNING, align 4
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, 1
  %136 = load i64, i64* %12, align 8
  %137 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %13, align 8
  %138 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %137, i32 0, i32 0
  %139 = call i32 @skb_queue_len(i32* %138)
  %140 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %135, i64 %136, i32 %139)
  %141 = call i32 @udelay(i32 10)
  %142 = load i64, i64* %11, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %11, align 8
  br label %144

144:                                              ; preds = %130
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %147 = icmp uge i64 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %144
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %150 = load i32, i32* @COMP_ERR, align 4
  %151 = load i32, i32* @DBG_WARNING, align 4
  %152 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %13, align 8
  %155 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %154, i32 0, i32 0
  %156 = call i32 @skb_queue_len(i32* %155)
  %157 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %152, i64 %153, i32 %156)
  br label %159

158:                                              ; preds = %144
  br label %108

159:                                              ; preds = %148, %108
  %160 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %161 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %168 = load i32, i32* @COMP_RF, align 4
  %169 = load i32, i32* @DBG_DMESG, align 4
  %170 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %167, i32 %168, i32 %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %172 = call i32 @rtl_ps_disable_nic(%struct.ieee80211_hw* %171)
  %173 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %174 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %175 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %173, i32 %174)
  br label %205

176:                                              ; preds = %159
  %177 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %178 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @RF_CHANGE_BY_IPS, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %176
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %184 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %188, align 8
  %190 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %191 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %192 = call i32 %189(%struct.ieee80211_hw* %190, i32 %191)
  br label %204

193:                                              ; preds = %176
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %195 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %194, i32 0, i32 0
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %199, align 8
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %202 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %203 = call i32 %200(%struct.ieee80211_hw* %201, i32 %202)
  br label %204

204:                                              ; preds = %193, %182
  br label %205

205:                                              ; preds = %204, %166
  br label %282

206:                                              ; preds = %2
  %207 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %208 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 130
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  store i32 0, i32* %3, align 4
  br label %291

212:                                              ; preds = %206
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %213

213:                                              ; preds = %259, %228, %212
  %214 = load i64, i64* %12, align 8
  %215 = load i64, i64* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 8
  %216 = icmp ult i64 %214, %215
  br i1 %216, label %217, label %260

217:                                              ; preds = %213
  %218 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %7, align 8
  %219 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %220, align 8
  %222 = load i64, i64* %12, align 8
  %223 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %221, i64 %222
  store %struct.rtl8192_tx_ring* %223, %struct.rtl8192_tx_ring** %13, align 8
  %224 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %13, align 8
  %225 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %224, i32 0, i32 0
  %226 = call i32 @skb_queue_len(i32* %225)
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %217
  %229 = load i64, i64* %12, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %12, align 8
  br label %213

231:                                              ; preds = %217
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %233 = load i32, i32* @COMP_ERR, align 4
  %234 = load i32, i32* @DBG_WARNING, align 4
  %235 = load i64, i64* %11, align 8
  %236 = add i64 %235, 1
  %237 = load i64, i64* %12, align 8
  %238 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %13, align 8
  %239 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %238, i32 0, i32 0
  %240 = call i32 @skb_queue_len(i32* %239)
  %241 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %232, i32 %233, i32 %234, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %236, i64 %237, i32 %240)
  %242 = call i32 @udelay(i32 10)
  %243 = load i64, i64* %11, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %11, align 8
  br label %245

245:                                              ; preds = %231
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %248 = icmp uge i64 %246, %247
  br i1 %248, label %249, label %259

249:                                              ; preds = %245
  %250 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %251 = load i32, i32* @COMP_ERR, align 4
  %252 = load i32, i32* @DBG_WARNING, align 4
  %253 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %254 = load i64, i64* %12, align 8
  %255 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %13, align 8
  %256 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %255, i32 0, i32 0
  %257 = call i32 @skb_queue_len(i32* %256)
  %258 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %250, i32 %251, i32 %252, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %253, i64 %254, i32 %257)
  br label %260

259:                                              ; preds = %245
  br label %213

260:                                              ; preds = %249, %213
  %261 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %262 = load i32, i32* @COMP_RF, align 4
  %263 = load i32, i32* @DBG_DMESG, align 4
  %264 = load i8*, i8** @jiffies, align 8
  %265 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %266 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %265, i32 0, i32 2
  %267 = load i8*, i8** %266, align 8
  %268 = ptrtoint i8* %264 to i64
  %269 = ptrtoint i8* %267 to i64
  %270 = sub i64 %268, %269
  %271 = inttoptr i64 %270 to i8*
  %272 = call i32 @jiffies_to_msecs(i8* %271)
  %273 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %261, i32 %262, i32 %263, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %272)
  %274 = load i8*, i8** @jiffies, align 8
  %275 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %276 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %275, i32 0, i32 1
  store i8* %274, i8** %276, align 8
  %277 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %278 = call i32 @_rtl92c_phy_set_rf_sleep(%struct.ieee80211_hw* %277)
  br label %282

279:                                              ; preds = %2
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %280)
  store i32 0, i32* %10, align 4
  br label %282

282:                                              ; preds = %279, %260, %205, %106
  %283 = load i32, i32* %10, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load i32, i32* %5, align 4
  %287 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %288 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %285, %282
  %290 = load i32, i32* %10, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %289, %211
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_ps_enable_nic(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i8*) #1

declare dso_local i32 @rtl92ce_phy_set_rf_on(%struct.ieee80211_hw*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_ps_disable_nic(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @_rtl92c_phy_set_rf_sleep(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
