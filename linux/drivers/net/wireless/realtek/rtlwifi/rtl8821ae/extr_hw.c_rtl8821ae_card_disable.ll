; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_card_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_card_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*)* }
%struct.rtl_hal = type { i32, i64, i64 }
%struct.rtl_ps_ctl = type { i64 }
%struct.rtl_mac = type { i64, i64 }

@HAL_DEF_WOWLAN = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Normal Power off\0A\00", align 1
@MAC80211_NOLINK = common dso_local global i64 0, align 8
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Wowlan Supported.\0A\00", align 1
@REG_MCUTST_WOWLAN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"mac->link_state = %d\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@HW_VAR_AID = common dso_local global i32 0, align 4
@RT_MEDIA_CONNECT = common dso_local global i32 0, align 4
@REG_RXDMA_CONTROL = common dso_local global i64 0, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Wait Rx DMA Finished before host sleep. count=%d\0A\00", align 1
@REG_APS_FSMCO = common dso_local global i64 0, align 8
@REG_SYS_CLKR = common dso_local global i64 0, align 8
@REG_RSV_CTRL = common dso_local global i64 0, align 8
@RF_CHANGE_BY_PS = common dso_local global i64 0, align 8
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@REG_PCIE_CTRL_REG = common dso_local global i64 0, align 8
@COMP_POWER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Stop PCIE Tx DMA.\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Wait Tx DMA Finished before host sleep. count=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"hw_rof_enable\0A\00", align 1
@REG_HSISR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_card_disable(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %3, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %13)
  store %struct.rtl_hal* %14, %struct.rtl_hal** %4, align 8
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %15)
  store %struct.rtl_ps_ctl* %16, %struct.rtl_ps_ctl** %5, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %6, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %24, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = load i32, i32* @HAL_DEF_WOWLAN, align 4
  %28 = call i32 %25(%struct.ieee80211_hw* %26, i32 %27, i32* %8)
  %29 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %30 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %31 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %1
  %35 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %42 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %40, %34, %1
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = load i32, i32* @COMP_INIT, align 4
  %48 = load i32, i32* @DBG_DMESG, align 4
  %49 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* @MAC80211_NOLINK, align 8
  %51 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %52 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  store i32 %53, i32* %7, align 4
  %54 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @_rtl8821ae_set_media_status(%struct.ieee80211_hw* %54, i32 %55)
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %58 = call i32 @_rtl8821ae_poweroff_adapter(%struct.ieee80211_hw* %57)
  br label %171

59:                                               ; preds = %40
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %61 = load i32, i32* @COMP_INIT, align 4
  %62 = load i32, i32* @DBG_DMESG, align 4
  %63 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = load i64, i64* @REG_MCUTST_WOWLAN, align 8
  %66 = call i32 @rtl_write_byte(%struct.rtl_priv* %64, i64 %65, i32 0)
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %68 = call i64 @_rtl8821ae_dynamic_rqpn(%struct.ieee80211_hw* %67, i32 224, i32 3, i32 -2134766323)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %72 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %59
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %75 = call i32 @rtl8821ae_set_fw_global_info_cmd(%struct.ieee80211_hw* %74)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = call i32 @_rtl8821ae_download_rsvd_page(%struct.ieee80211_hw* %76, i32 1)
  %78 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %79 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  %82 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %83 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MAC80211_LINKED, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %73
  %88 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %89 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %95 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %99, align 8
  %101 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %102 = load i32, i32* @HW_VAR_AID, align 4
  %103 = call i32 %100(%struct.ieee80211_hw* %101, i32 %102, i32* null)
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %105 = load i32, i32* @RT_MEDIA_CONNECT, align 4
  %106 = call i32 @rtl8821ae_set_fw_media_status_rpt_cmd(%struct.ieee80211_hw* %104, i32 %105)
  %107 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %108 = call i32 @rtl8821ae_set_fw_wowlan_mode(%struct.ieee80211_hw* %107, i32 1)
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %110 = call i32 @rtl8821ae_set_fw_keep_alive_cmd(%struct.ieee80211_hw* %109, i32 1)
  %111 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %112 = call i32 @rtl8821ae_set_fw_disconnect_decision_ctrl_cmd(%struct.ieee80211_hw* %111, i32 1)
  br label %113

113:                                              ; preds = %93, %87, %73
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %115 = load i64, i64* @REG_RXDMA_CONTROL, align 8
  %116 = call i32 @BIT(i32 2)
  %117 = call i32 @rtl_write_byte(%struct.rtl_priv* %114, i64 %115, i32 %116)
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %119 = load i64, i64* @REG_RXDMA_CONTROL, align 8
  %120 = call i32 @rtl_read_byte(%struct.rtl_priv* %118, i64 %119)
  store i32 %120, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %132, %113
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @BIT(i32 1)
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  %129 = icmp slt i32 %127, 100
  br label %130

130:                                              ; preds = %126, %121
  %131 = phi i1 [ false, %121 ], [ %129, %126 ]
  br i1 %131, label %132, label %137

132:                                              ; preds = %130
  %133 = call i32 @udelay(i32 10)
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %135 = load i64, i64* @REG_RXDMA_CONTROL, align 8
  %136 = call i32 @rtl_read_byte(%struct.rtl_priv* %134, i64 %135)
  store i32 %136, i32* %9, align 4
  br label %121

137:                                              ; preds = %130
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %139 = load i32, i32* @COMP_INIT, align 4
  %140 = load i32, i32* @DBG_LOUD, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %138, i32 %139, i32 %140, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %144 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %143, i32 0, i32 3
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %146, align 8
  %148 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %149 = call i32 %147(%struct.ieee80211_hw* %148)
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %151 = load i64, i64* @REG_APS_FSMCO, align 8
  %152 = add nsw i64 %151, 1
  %153 = call i32 @rtl_write_byte(%struct.rtl_priv* %150, i64 %152, i32 0)
  %154 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %155 = call i32 @_rtl8821ae_clear_pci_pme_status(%struct.ieee80211_hw* %154)
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %157 = load i64, i64* @REG_SYS_CLKR, align 8
  %158 = call i32 @rtl_read_byte(%struct.rtl_priv* %156, i64 %157)
  store i32 %158, i32* %9, align 4
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %160 = load i64, i64* @REG_SYS_CLKR, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @BIT(i32 3)
  %163 = or i32 %161, %162
  %164 = call i32 @rtl_write_byte(%struct.rtl_priv* %159, i64 %160, i32 %163)
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %166 = load i64, i64* @REG_RSV_CTRL, align 8
  %167 = call i32 @rtl_write_byte(%struct.rtl_priv* %165, i64 %166, i32 32)
  %168 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %169 = load i64, i64* @REG_RSV_CTRL, align 8
  %170 = call i32 @rtl_write_byte(%struct.rtl_priv* %168, i64 %169, i32 96)
  br label %171

171:                                              ; preds = %137, %45
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %173 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %179 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @RF_CHANGE_BY_PS, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %177, %171
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %185 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %184, i32 0, i32 1
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %189, align 8
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %192 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %193 = call i32 %190(%struct.ieee80211_hw* %191, i32 %192)
  br label %194

194:                                              ; preds = %183, %177
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %252

197:                                              ; preds = %194
  %198 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %199 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %252

202:                                              ; preds = %197
  %203 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %204 = call i32 @rtl8821ae_set_fw_remote_wake_ctrl_cmd(%struct.ieee80211_hw* %203, i32 1)
  %205 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %206 = load i64, i64* @REG_PCIE_CTRL_REG, align 8
  %207 = add nsw i64 %206, 1
  %208 = call i32 @rtl_write_byte(%struct.rtl_priv* %205, i64 %207, i32 255)
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %210 = load i32, i32* @COMP_POWER, align 4
  %211 = load i32, i32* @DBG_LOUD, align 4
  %212 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %209, i32 %210, i32 %211, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %213

213:                                              ; preds = %226, %202
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %215 = load i64, i64* @REG_PCIE_CTRL_REG, align 8
  %216 = call i32 @rtl_read_byte(%struct.rtl_priv* %214, i64 %215)
  store i32 %216, i32* %9, align 4
  %217 = call i32 @udelay(i32 10)
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %220

220:                                              ; preds = %213
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %224, 100
  br label %226

226:                                              ; preds = %223, %220
  %227 = phi i1 [ false, %220 ], [ %225, %223 ]
  br i1 %227, label %213, label %228

228:                                              ; preds = %226
  %229 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %230 = load i32, i32* @COMP_INIT, align 4
  %231 = load i32, i32* @DBG_LOUD, align 4
  %232 = load i32, i32* %10, align 4
  %233 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %229, i32 %230, i32 %231, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %232)
  %234 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %235 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %228
  %239 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %240 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %241 = load i64, i64* @REG_HSISR, align 8
  %242 = add nsw i64 %241, 3
  %243 = call i32 @rtl_read_byte(%struct.rtl_priv* %240, i64 %242)
  store i32 %243, i32* %9, align 4
  %244 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %245 = load i64, i64* @REG_HSISR, align 8
  %246 = add nsw i64 %245, 3
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @BIT(i32 1)
  %249 = or i32 %247, %248
  %250 = call i32 @rtl_write_byte(%struct.rtl_priv* %244, i64 %246, i32 %249)
  br label %251

251:                                              ; preds = %238, %228
  br label %252

252:                                              ; preds = %251, %197, %194
  %253 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %254 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  store i32 0, i32* %255, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @_rtl8821ae_set_media_status(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl8821ae_poweroff_adapter(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i64 @_rtl8821ae_dynamic_rqpn(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl8821ae_set_fw_global_info_cmd(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8821ae_download_rsvd_page(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @rtl8821ae_set_fw_media_status_rpt_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8821ae_set_fw_wowlan_mode(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8821ae_set_fw_keep_alive_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8821ae_set_fw_disconnect_decision_ctrl_cmd(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_rtl8821ae_clear_pci_pme_status(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_set_fw_remote_wake_ctrl_cmd(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
