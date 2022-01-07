; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_rf_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_rf_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i32)* }
%struct.rtl_pci_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i32 }
%struct.rtl_mac = type { i32 }
%struct.rtl_ps_ctl = type { i32, i32, i32, i64, i64 }

@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4
@COMP_RF = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IPS Set eRf nic enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Set ERFON sleeped:%d ms\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
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
@.str.5 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @_rtl8821ae_phy_set_rf_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_phy_set_rf_power_state(%struct.ieee80211_hw* %0, i32 %1) #0 {
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
  switch i32 %25, label %202 [
    i32 128, label %26
    i32 129, label %103
  ]

26:                                               ; preds = %2
  %27 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %28 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %33 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %34 = call i32 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  store i32 0, i32* %13, align 4
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
  br label %74

58:                                               ; preds = %31, %26
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = load i32, i32* @COMP_RF, align 4
  %61 = load i32, i32* @DBG_DMESG, align 4
  %62 = load i64, i64* @jiffies, align 8
  %63 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %64 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = call i32 @jiffies_to_msecs(i64 %66)
  %68 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* @jiffies, align 8
  %70 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %71 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %73 = call i32 @rtl8821ae_phy_set_rf_on(%struct.ieee80211_hw* %72)
  br label %74

74:                                               ; preds = %58, %54
  %75 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %76 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MAC80211_LINKED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %74
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %82 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %86, align 8
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %89 = load i32, i32* @LED_CTL_LINK, align 4
  %90 = call i32 %87(%struct.ieee80211_hw* %88, i32 %89)
  br label %102

91:                                               ; preds = %74
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %93 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %97, align 8
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %100 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %101 = call i32 %98(%struct.ieee80211_hw* %99, i32 %100)
  br label %102

102:                                              ; preds = %91, %80
  br label %205

103:                                              ; preds = %2
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %104

104:                                              ; preds = %154, %123, %103
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %155

108:                                              ; preds = %104
  %109 = load %struct.rtl_pci_priv*, %struct.rtl_pci_priv** %6, align 8
  %110 = getelementptr inbounds %struct.rtl_pci_priv, %struct.rtl_pci_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %112, i64 %113
  store %struct.rtl8192_tx_ring* %114, %struct.rtl8192_tx_ring** %12, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* @BEACON_QUEUE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %108
  %119 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %120 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %119, i32 0, i32 0
  %121 = call i32 @skb_queue_len(i32* %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %108
  %124 = load i64, i64* %11, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %11, align 8
  br label %104

126:                                              ; preds = %118
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %128 = load i32, i32* @COMP_ERR, align 4
  %129 = load i32, i32* @DBG_WARNING, align 4
  %130 = load i64, i64* %10, align 8
  %131 = add i64 %130, 1
  %132 = load i64, i64* %11, align 8
  %133 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %134 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %133, i32 0, i32 0
  %135 = call i32 @skb_queue_len(i32* %134)
  %136 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %127, i32 %128, i32 %129, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %131, i64 %132, i32 %135)
  %137 = call i32 @udelay(i32 10)
  %138 = load i64, i64* %10, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %10, align 8
  br label %140

140:                                              ; preds = %126
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %143 = icmp uge i64 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %146 = load i32, i32* @COMP_ERR, align 4
  %147 = load i32, i32* @DBG_WARNING, align 4
  %148 = load i64, i64* @MAX_DOZE_WAITING_TIMES_9x, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %151 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %150, i32 0, i32 0
  %152 = call i32 @skb_queue_len(i32* %151)
  %153 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %148, i64 %149, i32 %152)
  br label %155

154:                                              ; preds = %140
  br label %104

155:                                              ; preds = %144, %104
  %156 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %157 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %155
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %164 = load i32, i32* @COMP_RF, align 4
  %165 = load i32, i32* @DBG_DMESG, align 4
  %166 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %168 = call i32 @rtl_ps_disable_nic(%struct.ieee80211_hw* %167)
  %169 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %170 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %171 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %169, i32 %170)
  br label %201

172:                                              ; preds = %155
  %173 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %174 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @RF_CHANGE_BY_IPS, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %172
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %180 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %179, i32 0, i32 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %184, align 8
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %187 = load i32, i32* @LED_CTL_NO_LINK, align 4
  %188 = call i32 %185(%struct.ieee80211_hw* %186, i32 %187)
  br label %200

189:                                              ; preds = %172
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %191 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %190, i32 0, i32 0
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %195, align 8
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %198 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %199 = call i32 %196(%struct.ieee80211_hw* %197, i32 %198)
  br label %200

200:                                              ; preds = %189, %178
  br label %201

201:                                              ; preds = %200, %162
  br label %205

202:                                              ; preds = %2
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  store i32 0, i32* %9, align 4
  br label %205

205:                                              ; preds = %202, %201, %102
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i32, i32* %4, align 4
  %210 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %211 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  br label %212

212:                                              ; preds = %208, %205
  %213 = load i32, i32* %9, align 4
  ret i32 %213
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci_priv* @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @RT_IN_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_ps_enable_nic(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_CLEAR_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @rtl8821ae_phy_set_rf_on(%struct.ieee80211_hw*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_ps_disable_nic(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
