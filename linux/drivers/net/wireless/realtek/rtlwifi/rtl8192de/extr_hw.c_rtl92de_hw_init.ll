; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.rtl_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.rtl_phy = type { i32, i8**, i32 }
%struct.rtl_hal = type { i64, i64, i64, i64, i64 }
%struct.rtl_mac = type { i32, i64 }
%struct.rtl_pci = type { i32, i32, i32 }
%struct.rtl_ps_ctl = type { i64 }

@globalmutex_for_power_and_efuse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Init MAC failed\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to download FW. Init HW without FW..\0A\00", align 1
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"EarlyMode Enabled!!!\0A\00", align 1
@REG_RD_CTRL = common dso_local global i32 0, align 4
@REG_RD_NAV_NXT = common dso_local global i32 0, align 4
@REG_RD_RESP_PKT_TH = common dso_local global i32 0, align 4
@REG_RCR = common dso_local global i32 0, align 4
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RCR_AICV = common dso_local global i32 0, align 4
@RF_OP_BY_SW_3WIRE = common dso_local global i32 0, align 4
@RFPGA0_ANALOGPARAMETER4 = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i64 0, align 8
@RFPGA0_RFMOD = common dso_local global i32 0, align 4
@BCCKEN = common dso_local global i32 0, align 4
@BOFDMEN = common dso_local global i32 0, align 4
@RFPGA0_ANALOGPARAMETER2 = common dso_local global i32 0, align 4
@ERFON = common dso_local global i64 0, align 8
@HW_VAR_ETHER_ADDR = common dso_local global i32 0, align 4
@DUALMAC_DUALPHY = common dso_local global i64 0, align 8
@MAX_STALL_TIME = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i64 0, align 8
@MASKDWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92de_hw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca %struct.rtl_phy*, align 8
  %8 = alloca %struct.rtl_pci*, align 8
  %9 = alloca %struct.rtl_ps_ctl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %4, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %19)
  store %struct.rtl_hal* %20, %struct.rtl_hal** %5, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %22)
  store %struct.rtl_mac* %23, %struct.rtl_mac** %6, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 2
  store %struct.rtl_phy* %25, %struct.rtl_phy** %7, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %27 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_pci* @rtl_pcidev(i32 %27)
  store %struct.rtl_pci* %28, %struct.rtl_pci** %8, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %30 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %29)
  %31 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %30)
  store %struct.rtl_ps_ctl* %31, %struct.rtl_ps_ctl** %9, align 8
  store i32 1, i32* %10, align 4
  %32 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %33 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %35 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @spin_lock_irqsave(i32* @globalmutex_for_power_and_efuse, i64 %36)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = call i32 @rtl92d_phy_reset_iqk_result(%struct.ieee80211_hw* %38)
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %41 = call i32 @_rtl92de_init_mac(%struct.ieee80211_hw* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %1
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* @globalmutex_for_power_and_efuse, i64 %46)
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %2, align 4
  br label %278

49:                                               ; preds = %1
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %51 = call i32 @rtl92d_download_fw(%struct.ieee80211_hw* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @globalmutex_for_power_and_efuse, i64 %52)
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %58 = load i32, i32* @COMP_ERR, align 4
  %59 = load i32, i32* @DBG_WARNING, align 4
  %60 = call i32 @RT_TRACE(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %278

61:                                               ; preds = %49
  %62 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %63 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %68 = call i32 @rtl_read_byte(%struct.rtl_priv* %67, i32 1541)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, 48
  store i32 %70, i32* %11, align 4
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @rtl_write_byte(%struct.rtl_priv* %71, i32 1541, i32 %72)
  %74 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %75 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %61
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %80 = load i32, i32* @COMP_INIT, align 4
  %81 = load i32, i32* @DBG_LOUD, align 4
  %82 = call i32 @RT_TRACE(%struct.rtl_priv* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %84 = call i32 @rtl_read_byte(%struct.rtl_priv* %83, i32 1232)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, 31
  store i32 %86, i32* %11, align 4
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @rtl_write_byte(%struct.rtl_priv* %87, i32 1232, i32 %88)
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %91 = call i32 @rtl_write_byte(%struct.rtl_priv* %90, i32 1235, i32 128)
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %93 = call i32 @rtl_read_byte(%struct.rtl_priv* %92, i32 1541)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, 64
  store i32 %95, i32* %11, align 4
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @rtl_write_byte(%struct.rtl_priv* %96, i32 1541, i32 %97)
  br label %99

99:                                               ; preds = %78, %61
  %100 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %101 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %106 = load i32, i32* @REG_RD_CTRL, align 4
  %107 = call i32 @rtl_write_byte(%struct.rtl_priv* %105, i32 %106, i32 255)
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %109 = load i32, i32* @REG_RD_NAV_NXT, align 4
  %110 = call i32 @rtl_write_word(%struct.rtl_priv* %108, i32 %109, i32 512)
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %112 = load i32, i32* @REG_RD_RESP_PKT_TH, align 4
  %113 = call i32 @rtl_write_byte(%struct.rtl_priv* %111, i32 %112, i32 5)
  br label %114

114:                                              ; preds = %104, %99
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %116 = call i32 @rtl92d_phy_mac_config(%struct.ieee80211_hw* %115)
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %118 = load i32, i32* @REG_RCR, align 4
  %119 = call i32 @rtl_read_dword(%struct.rtl_priv* %117, i32 %118)
  %120 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %121 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @RCR_ACRC32, align 4
  %123 = load i32, i32* @RCR_AICV, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %127 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %131 = call i32 @rtl92d_phy_bb_config(%struct.ieee80211_hw* %130)
  %132 = load i32, i32* @RF_OP_BY_SW_3WIRE, align 4
  %133 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %134 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %136 = load i32, i32* @RFPGA0_ANALOGPARAMETER4, align 4
  %137 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %135, i32 %136, i32 15728640, i32 15)
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %139 = call i32 @rtl92d_phy_rf_config(%struct.ieee80211_hw* %138)
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %141 = call i32 @rtl92d_update_bbrf_configuration(%struct.ieee80211_hw* %140)
  %142 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %143 = load i32, i32* @RFPGA0_ANALOGPARAMETER4, align 4
  %144 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %142, i32 %143, i32 15728640, i32 0)
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %146 = load i32, i32* @RF_CHNLBW, align 4
  %147 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %148 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %145, i32 0, i32 %146, i32 %147)
  %149 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %150 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %149, i32 0, i32 1
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  store i8* %148, i8** %152, align 8
  %153 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %154 = load i32, i32* @RF_CHNLBW, align 4
  %155 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %156 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %153, i32 1, i32 %154, i32 %155)
  %157 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %158 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %157, i32 0, i32 1
  %159 = load i8**, i8*** %158, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 1
  store i8* %156, i8** %160, align 8
  %161 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %162 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @BAND_ON_2_4G, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %114
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %168 = load i32, i32* @RFPGA0_RFMOD, align 4
  %169 = load i32, i32* @BCCKEN, align 4
  %170 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %167, i32 %168, i32 %169, i32 1)
  br label %171

171:                                              ; preds = %166, %114
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %173 = load i32, i32* @RFPGA0_RFMOD, align 4
  %174 = load i32, i32* @BOFDMEN, align 4
  %175 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %172, i32 %173, i32 %174, i32 1)
  %176 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %177 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %171
  %181 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %182 = load i32, i32* @RFPGA0_ANALOGPARAMETER2, align 4
  %183 = call i32 @BIT(i32 10)
  %184 = call i32 @BIT(i32 11)
  %185 = or i32 %183, %184
  %186 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %181, i32 %182, i32 %185, i32 3)
  br label %194

187:                                              ; preds = %171
  %188 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %189 = load i32, i32* @RFPGA0_ANALOGPARAMETER2, align 4
  %190 = call i32 @BIT(i32 11)
  %191 = call i32 @BIT(i32 10)
  %192 = or i32 %190, %191
  %193 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %188, i32 %189, i32 %192, i32 3)
  br label %194

194:                                              ; preds = %187, %180
  %195 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %196 = call i32 @_rtl92de_hw_configure(%struct.ieee80211_hw* %195)
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %198 = call i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw* %197)
  %199 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %200 = call i32 @rtl92de_enable_hw_security_config(%struct.ieee80211_hw* %199)
  %201 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %202 = call i32 @rtl92d_phy_get_hw_reg_originalvalue(%struct.ieee80211_hw* %201)
  %203 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %204 = load %struct.rtl_phy*, %struct.rtl_phy** %7, align 8
  %205 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @rtl92d_phy_set_txpower_level(%struct.ieee80211_hw* %203, i32 %206)
  %208 = load i64, i64* @ERFON, align 8
  %209 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %210 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  %211 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %212 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %211, i32 0, i32 0
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %216, align 8
  %218 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %219 = load i32, i32* @HW_VAR_ETHER_ADDR, align 4
  %220 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %221 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 %217(%struct.ieee80211_hw* %218, i32 %219, i32 %222)
  %224 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %225 = call i32 @_rtl92de_enable_aspm_back_door(%struct.ieee80211_hw* %224)
  %226 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %227 = call i32 @rtl92d_dm_init(%struct.ieee80211_hw* %226)
  %228 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %229 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %228, i32 0, i32 0
  store i32 0, i32* %229, align 4
  %230 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %9, align 8
  %231 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @ERFON, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %274

235:                                              ; preds = %194
  %236 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %237 = call i32 @rtl92d_phy_lc_calibrate(%struct.ieee80211_hw* %236)
  %238 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %239 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @DUALMAC_DUALPHY, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %273

243:                                              ; preds = %235
  store i32 0, i32* %12, align 4
  br label %244

244:                                              ; preds = %263, %243
  %245 = load i32, i32* %12, align 4
  %246 = icmp slt i32 %245, 10000
  br i1 %246, label %247, label %266

247:                                              ; preds = %244
  %248 = load i32, i32* @MAX_STALL_TIME, align 4
  %249 = call i32 @udelay(i32 %248)
  %250 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %251 = load i64, i64* @RF90_PATH_A, align 8
  %252 = trunc i64 %251 to i32
  %253 = load i32, i32* @MASKDWORD, align 4
  %254 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %250, i32 %252, i32 42, i32 %253)
  %255 = ptrtoint i8* %254 to i32
  store i32 %255, i32* %15, align 4
  %256 = load i32, i32* %15, align 4
  %257 = call i32 @BIT(i32 11)
  %258 = and i32 %256, %257
  %259 = call i32 @BIT(i32 11)
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %247
  br label %266

262:                                              ; preds = %247
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  br label %244

266:                                              ; preds = %261, %244
  %267 = load i32, i32* %12, align 4
  %268 = icmp eq i32 %267, 10000
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %271 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %270, i32 0, i32 1
  store i32 0, i32* %271, align 4
  store i32 1, i32* %2, align 4
  br label %278

272:                                              ; preds = %266
  br label %273

273:                                              ; preds = %272, %235
  br label %274

274:                                              ; preds = %273, %194
  %275 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %276 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %275, i32 0, i32 1
  store i32 1, i32* %276, align 4
  %277 = load i32, i32* %13, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %274, %269, %56, %44
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtl92d_phy_reset_iqk_result(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92de_init_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rtl92d_download_fw(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92d_phy_mac_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl92d_phy_bb_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl92d_phy_rf_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_update_bbrf_configuration(%struct.ieee80211_hw*) #1

declare dso_local i8* @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @_rtl92de_hw_configure(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92de_enable_hw_security_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_phy_get_hw_reg_originalvalue(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_phy_set_txpower_level(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @_rtl92de_enable_aspm_back_door(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_dm_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_phy_lc_calibrate(%struct.ieee80211_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
