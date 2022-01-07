; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_set_rf_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c__rtl8723e_phy_set_rf_power_state.c"
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
@.str.2 = private unnamed_addr constant [25 x i8] c"IPS Set eRf nic disable\0A\00", align 1
@RF_CHANGE_BY_IPS = common dso_local global i32 0, align 4
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@RTL_PCI_MAX_TX_QUEUE_COUNT = common dso_local global i64 0, align 8
@BEACON_QUEUE = common dso_local global i64 0, align 8
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"eRf Off/Sleep: %d times TcbBusyQueue[%d] =%d before doze!\0A\00", align 1
@MAX_DOZE_WAITING_TIMES_9x = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"ERFSLEEP: %d times TcbBusyQueue[%d] = %d !\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Set ERFSLEEP awaked:%d ms\0A\00", align 1
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl8723e_phy_set_rf_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723e_phy_set_rf_power_state(%struct.ieee80211_hw* %0, i32 %1) #0 {
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
  switch i32 %25, label %230 [
    i32 129, label %26
    i32 130, label %106
    i32 128, label %153
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
  %76 = call i32 @rtl8723e_phy_set_rf_on(%struct.ieee80211_hw* %75)
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
  br label %236

106:                                              ; preds = %2
  %107 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %108 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %106
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %115 = load i32, i32* @COMP_RF, align 4
  %116 = load i32, i32* @DBG_DMESG, align 4
  %117 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %119 = call i32 @rtl_ps_disable_nic(%struct.ieee80211_hw* %118)
  %120 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %121 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %122 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %120, i32 %121)
  br label %152

123:                                              ; preds = %106
  %124 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %125 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RF_CHANGE_BY_IPS, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %131 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %135, align 8
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %138 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %139 = call i32 %136(%struct.ieee80211_hw* %137, i32 %138)
  br label %151

140:                                              ; preds = %123
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %142 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %146, align 8
  %148 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %149 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %150 = call i32 %147(%struct.ieee80211_hw* %148, i32 %149)
  br label %151

151:                                              ; preds = %140, %129
  br label %152

152:                                              ; preds = %151, %113
  br label %236

153:                                              ; preds = %2
  %154 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %155 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 130
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %236

159:                                              ; preds = %153
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %160

160:                                              ; preds = %210, %179, %159
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 8
  %163 = icmp ult i64 %161, %162
  br i1 %163, label %164, label %211

164:                                              ; preds = %160
  %165 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %6, align 8
  %166 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %167, align 8
  %169 = load i64, i64* %11, align 8
  %170 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %168, i64 %169
  store %struct.rtl8192_tx_ring* %170, %struct.rtl8192_tx_ring** %12, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @BEACON_QUEUE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %179, label %174

174:                                              ; preds = %164
  %175 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %176 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %175, i32 0, i32 0
  %177 = call i32 @skb_queue_len(i32* %176)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174, %164
  %180 = load i64, i64* %11, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %11, align 8
  br label %160

182:                                              ; preds = %174
  %183 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %184 = load i32, i32* @COMP_ERR, align 4
  %185 = load i32, i32* @DBG_WARNING, align 4
  %186 = load i64, i64* %10, align 8
  %187 = add i64 %186, 1
  %188 = load i64, i64* %11, align 8
  %189 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %190 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %189, i32 0, i32 0
  %191 = call i32 @skb_queue_len(i32* %190)
  %192 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %183, i32 %184, i32 %185, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %187, i64 %188, i32 %191)
  %193 = call i32 @udelay(i32 10)
  %194 = load i64, i64* %10, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %10, align 8
  br label %196

196:                                              ; preds = %182
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %199 = icmp uge i64 %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %196
  %201 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %202 = load i32, i32* @COMP_ERR, align 4
  %203 = load i32, i32* @DBG_WARNING, align 4
  %204 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %205 = load i64, i64* %11, align 8
  %206 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %207 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %206, i32 0, i32 0
  %208 = call i32 @skb_queue_len(i32* %207)
  %209 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %201, i32 %202, i32 %203, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %204, i64 %205, i32 %208)
  br label %211

210:                                              ; preds = %196
  br label %160

211:                                              ; preds = %200, %160
  %212 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %213 = load i32, i32* @COMP_RF, align 4
  %214 = load i32, i32* @DBG_DMESG, align 4
  %215 = load i8*, i8** @jiffies, align 8
  %216 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %217 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = ptrtoint i8* %215 to i64
  %220 = ptrtoint i8* %218 to i64
  %221 = sub i64 %219, %220
  %222 = inttoptr i64 %221 to i8*
  %223 = call i32 @jiffies_to_msecs(i8* %222)
  %224 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %212, i32 %213, i32 %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %223)
  %225 = load i8*, i8** @jiffies, align 8
  %226 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %227 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %229 = call i32 @_rtl8723e_phy_set_rf_sleep(%struct.ieee80211_hw* %228)
  br label %236

230:                                              ; preds = %2
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %232 = load i32, i32* @COMP_ERR, align 4
  %233 = load i32, i32* @DBG_LOUD, align 4
  %234 = load i32, i32* %4, align 4
  %235 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %231, i32 %232, i32 %233, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %234)
  store i32 0, i32* %9, align 4
  br label %236

236:                                              ; preds = %230, %211, %158, %152, %105
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load i32, i32* %4, align 4
  %241 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %242 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  br label %243

243:                                              ; preds = %239, %236
  %244 = load i32, i32* %9, align 4
  ret i32 %244
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

declare dso_local i32 @rtl8723e_phy_set_rf_on(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_ps_disable_nic(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_rtl8723e_phy_set_rf_sleep(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
