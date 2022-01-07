; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88ee_phy_set_rf_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_phy.c__rtl88ee_phy_set_rf_power_state.c"
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
@.str.3 = private unnamed_addr constant [46 x i8] c"\0A ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"IPS Set eRf nic disable\0A\00", align 1
@RF_CHANGE_BY_IPS = common dso_local global i32 0, align 4
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", align 1
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl88ee_phy_set_rf_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl88ee_phy_set_rf_power_state(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci_priv*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca %struct.rtl_ps_ctl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtl8192_tx_ring*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %5, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw* %17)
  store %struct.rtl_pci_priv* %18, %struct.rtl_pci_priv** %6, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %20)
  store %struct.rtl_mac* %21, %struct.rtl_mac** %7, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  %24 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %23)
  store %struct.rtl_ps_ctl* %24, %struct.rtl_ps_ctl** %8, align 8
  store i32 1, i32* %9, align 4
  store %struct.rtl8192_tx_ring* null, %struct.rtl8192_tx_ring** %12, align 8
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %278 [
    i32 129, label %26
    i32 130, label %106
    i32 128, label %205
  ]

26:                                               ; preds = %2
  %27 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %28 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 130
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %33 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %34 = call i32 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %52, %36
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %41 = load i32, i32* @COMP_RF, align 4
  %42 = load i32, i32* @DBG_DMESG, align 4
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %45 = call i32 @rtl_ps_enable_nic(%struct.ieee80211_hw* %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 10
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i1 [ false, %46 ], [ %51, %49 ]
  br i1 %53, label %37, label %54

54:                                               ; preds = %52
  %55 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %56 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %57 = call i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl* %55, i32 %56)
  br label %77

58:                                               ; preds = %31, %26
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = load i32, i32* @COMP_RF, align 4
  %61 = load i32, i32* @DBG_DMESG, align 4
  %62 = load i8*, i8** @jiffies, align 8
  %63 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %64 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %62 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @jiffies_to_msecs(i8* %69)
  %71 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** @jiffies, align 8
  %73 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %74 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %76 = call i32 @rtl88ee_phy_set_rf_on(%struct.ieee80211_hw* %75)
  br label %77

77:                                               ; preds = %58, %54
  %78 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %79 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MAC80211_LINKED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %85 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %89, align 8
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %92 = load i32, i32* @LED_CTL_LINK, align 4
  %93 = call i32 %90(%struct.ieee80211_hw* %91, i32 %92)
  br label %105

94:                                               ; preds = %77
  %95 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %96 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %100, align 8
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %103 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %104 = call i32 %101(%struct.ieee80211_hw* %102, i32 %103)
  br label %105

105:                                              ; preds = %94, %83
  br label %284

106:                                              ; preds = %2
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %107

107:                                              ; preds = %157, %126, %106
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %158

111:                                              ; preds = %107
  %112 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %6, align 8
  %113 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %115, i64 %116
  store %struct.rtl8192_tx_ring* %117, %struct.rtl8192_tx_ring** %12, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* @BEACON_QUEUE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %111
  %122 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %123 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %122, i32 0, i32 0
  %124 = call i32 @skb_queue_len(i32* %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121, %111
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %11, align 8
  br label %107

129:                                              ; preds = %121
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %131 = load i32, i32* @COMP_ERR, align 4
  %132 = load i32, i32* @DBG_WARNING, align 4
  %133 = load i64, i64* %10, align 8
  %134 = add i64 %133, 1
  %135 = load i64, i64* %11, align 8
  %136 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %137 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %136, i32 0, i32 0
  %138 = call i32 @skb_queue_len(i32* %137)
  %139 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %130, i32 %131, i32 %132, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %134, i64 %135, i32 %138)
  %140 = call i32 @udelay(i32 10)
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %143

143:                                              ; preds = %129
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %146 = icmp uge i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %149 = load i32, i32* @COMP_ERR, align 4
  %150 = load i32, i32* @DBG_WARNING, align 4
  %151 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %154 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %153, i32 0, i32 0
  %155 = call i32 @skb_queue_len(i32* %154)
  %156 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %148, i32 %149, i32 %150, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %151, i64 %152, i32 %155)
  br label %158

157:                                              ; preds = %143
  br label %107

158:                                              ; preds = %147, %107
  %159 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %160 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %167 = load i32, i32* @COMP_RF, align 4
  %168 = load i32, i32* @DBG_DMESG, align 4
  %169 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %166, i32 %167, i32 %168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %171 = call i32 @rtl_ps_disable_nic(%struct.ieee80211_hw* %170)
  %172 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %173 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %174 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %172, i32 %173)
  br label %204

175:                                              ; preds = %158
  %176 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %177 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @RF_CHANGE_BY_IPS, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %175
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %183 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %182, i32 0, i32 0
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %187, align 8
  %189 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %190 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %191 = call i32 %188(%struct.ieee80211_hw* %189, i32 %190)
  br label %203

192:                                              ; preds = %175
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %194 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %193, i32 0, i32 0
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %198, align 8
  %200 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %201 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %202 = call i32 %199(%struct.ieee80211_hw* %200, i32 %201)
  br label %203

203:                                              ; preds = %192, %181
  br label %204

204:                                              ; preds = %203, %165
  br label %284

205:                                              ; preds = %2
  %206 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %207 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 130
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %284

211:                                              ; preds = %205
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %212

212:                                              ; preds = %258, %227, %211
  %213 = load i64, i64* %11, align 8
  %214 = load i64, i64* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 8
  %215 = icmp ult i64 %213, %214
  br i1 %215, label %216, label %259

216:                                              ; preds = %212
  %217 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %6, align 8
  %218 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %219, align 8
  %221 = load i64, i64* %11, align 8
  %222 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %220, i64 %221
  store %struct.rtl8192_tx_ring* %222, %struct.rtl8192_tx_ring** %12, align 8
  %223 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %224 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %223, i32 0, i32 0
  %225 = call i32 @skb_queue_len(i32* %224)
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %216
  %228 = load i64, i64* %11, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %11, align 8
  br label %212

230:                                              ; preds = %216
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %232 = load i32, i32* @COMP_ERR, align 4
  %233 = load i32, i32* @DBG_WARNING, align 4
  %234 = load i64, i64* %10, align 8
  %235 = add i64 %234, 1
  %236 = load i64, i64* %11, align 8
  %237 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %238 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %237, i32 0, i32 0
  %239 = call i32 @skb_queue_len(i32* %238)
  %240 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %231, i32 %232, i32 %233, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %235, i64 %236, i32 %239)
  %241 = call i32 @udelay(i32 10)
  %242 = load i64, i64* %10, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %10, align 8
  br label %244

244:                                              ; preds = %230
  %245 = load i64, i64* %10, align 8
  %246 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %247 = icmp uge i64 %245, %246
  br i1 %247, label %248, label %258

248:                                              ; preds = %244
  %249 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %250 = load i32, i32* @COMP_ERR, align 4
  %251 = load i32, i32* @DBG_WARNING, align 4
  %252 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %253 = load i64, i64* %11, align 8
  %254 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %255 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %254, i32 0, i32 0
  %256 = call i32 @skb_queue_len(i32* %255)
  %257 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %249, i32 %250, i32 %251, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %252, i64 %253, i32 %256)
  br label %259

258:                                              ; preds = %244
  br label %212

259:                                              ; preds = %248, %212
  %260 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %261 = load i32, i32* @COMP_RF, align 4
  %262 = load i32, i32* @DBG_DMESG, align 4
  %263 = load i8*, i8** @jiffies, align 8
  %264 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %265 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = ptrtoint i8* %263 to i64
  %268 = ptrtoint i8* %266 to i64
  %269 = sub i64 %267, %268
  %270 = inttoptr i64 %269 to i8*
  %271 = call i32 @jiffies_to_msecs(i8* %270)
  %272 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %260, i32 %261, i32 %262, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %271)
  %273 = load i8*, i8** @jiffies, align 8
  %274 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %275 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %274, i32 0, i32 1
  store i8* %273, i8** %275, align 8
  %276 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %277 = call i32 @_rtl88ee_phy_set_rf_sleep(%struct.ieee80211_hw* %276)
  br label %284

278:                                              ; preds = %2
  %279 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %280 = load i32, i32* @COMP_ERR, align 4
  %281 = load i32, i32* @DBG_LOUD, align 4
  %282 = load i32, i32* %4, align 4
  %283 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %279, i32 %280, i32 %281, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %282)
  store i32 0, i32* %9, align 4
  br label %284

284:                                              ; preds = %278, %259, %210, %204, %105
  %285 = load i32, i32* %9, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i32, i32* %4, align 4
  %289 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %290 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  br label %291

291:                                              ; preds = %287, %284
  %292 = load i32, i32* %9, align 4
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

declare dso_local i32 @rtl88ee_phy_set_rf_on(%struct.ieee80211_hw*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_ps_disable_nic(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @_rtl88ee_phy_set_rf_sleep(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
