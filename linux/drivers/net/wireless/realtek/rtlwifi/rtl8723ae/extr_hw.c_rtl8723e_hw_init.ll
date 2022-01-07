; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c_rtl8723e_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c_rtl8723e_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.rtl_phy }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.ieee80211_hw*, i32, i32)* }
%struct.rtl_phy = type { i32, i8**, i32 }
%struct.rtl_hal = type { i32, i32, i64 }
%struct.rtl_mac = type { i32 }
%struct.rtl_ps_ctl = type { i64 }
%struct.rtl_pci = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Init MAC failed\0A\00", align 1
@FW_8723A_POLLING_TIMEOUT_COUNT = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", align 1
@REG_RCR = common dso_local global i32 0, align 4
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RCR_AICV = common dso_local global i32 0, align 4
@RF_OP_BY_SW_3WIRE = common dso_local global i32 0, align 4
@RF90_PATH_A = common dso_local global i32 0, align 4
@RF_RX_G1 = common dso_local global i32 0, align 4
@MASKDWORD = common dso_local global i32 0, align 4
@RF_RX_G2 = common dso_local global i32 0, align 4
@RF_IPA = common dso_local global i32 0, align 4
@RF_SYN_G2 = common dso_local global i32 0, align 4
@RF_RCK1 = common dso_local global i32 0, align 4
@RF_RCK2 = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@RFPGA0_RFMOD = common dso_local global i32 0, align 4
@BCCKEN = common dso_local global i32 0, align 4
@BOFDMEN = common dso_local global i32 0, align 4
@RFPGA0_ANALOGPARAMETER2 = common dso_local global i32 0, align 4
@ERFON = common dso_local global i64 0, align 8
@HW_VAR_ETHER_ADDR = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"PA BIAS path A\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"under 1.5V\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723e_hw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  %8 = alloca %struct.rtl_pci*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %3, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %4, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %19)
  store %struct.rtl_mac* %20, %struct.rtl_mac** %5, align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %21, i32 0, i32 3
  store %struct.rtl_phy* %22, %struct.rtl_phy** %6, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %23)
  %25 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %24)
  store %struct.rtl_ps_ctl* %25, %struct.rtl_ps_ctl** %7, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_pci* @rtl_pcidev(i32 %27)
  store %struct.rtl_pci* %28, %struct.rtl_pci** %8, align 8
  store i32 1, i32* %9, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @local_save_flags(i64 %32)
  %34 = call i32 (...) @local_irq_enable()
  %35 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %40, align 8
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = call i32 %41(%struct.ieee80211_hw* %42)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = call i32 @_rtl8712e_init_mac(%struct.ieee80211_hw* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %274

50:                                               ; preds = %1
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %52 = load i32, i32* @FW_8723A_POLLING_TIMEOUT_COUNT, align 4
  %53 = call i32 @rtl8723_download_fw(%struct.ieee80211_hw* %51, i32 0, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %58 = load i32, i32* @COMP_ERR, align 4
  %59 = load i32, i32* @DBG_WARNING, align 4
  %60 = call i32 @RT_TRACE(%struct.rtl_priv* %57, i32 %58, i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %274

61:                                               ; preds = %50
  %62 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %63 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %65 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i32 @rtl8723e_phy_mac_config(%struct.ieee80211_hw* %66)
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = load i32, i32* @REG_RCR, align 4
  %70 = call i32 @rtl_read_dword(%struct.rtl_priv* %68, i32 %69)
  %71 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %72 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @RCR_ACRC32, align 4
  %74 = load i32, i32* @RCR_AICV, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %78 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %82 = load i32, i32* @REG_RCR, align 4
  %83 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %84 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @rtl_write_dword(%struct.rtl_priv* %81, i32 %82, i32 %85)
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %88 = call i32 @rtl8723e_phy_bb_config(%struct.ieee80211_hw* %87)
  %89 = load i32, i32* @RF_OP_BY_SW_3WIRE, align 4
  %90 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %91 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %93 = call i32 @rtl8723e_phy_rf_config(%struct.ieee80211_hw* %92)
  %94 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %95 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @IS_VENDOR_UMC_A_CUT(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %61
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %101 = load i32, i32* @RF90_PATH_A, align 4
  %102 = load i32, i32* @RF_RX_G1, align 4
  %103 = load i32, i32* @MASKDWORD, align 4
  %104 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %100, i32 %101, i32 %102, i32 %103, i32 197205)
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %106 = load i32, i32* @RF90_PATH_A, align 4
  %107 = load i32, i32* @RF_RX_G2, align 4
  %108 = load i32, i32* @MASKDWORD, align 4
  %109 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %105, i32 %106, i32 %107, i32 %108, i32 330240)
  br label %146

110:                                              ; preds = %61
  %111 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %112 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @IS_81XXC_VENDOR_UMC_B_CUT(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %110
  %117 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %118 = load i32, i32* @RF90_PATH_A, align 4
  %119 = load i32, i32* @MASKDWORD, align 4
  %120 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %117, i32 %118, i32 12, i32 %119, i32 562350)
  %121 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %122 = load i32, i32* @RF90_PATH_A, align 4
  %123 = load i32, i32* @MASKDWORD, align 4
  %124 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %121, i32 %122, i32 10, i32 %123, i32 110385)
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %126 = load i32, i32* @RF90_PATH_A, align 4
  %127 = load i32, i32* @RF_IPA, align 4
  %128 = load i32, i32* @MASKDWORD, align 4
  %129 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %125, i32 %126, i32 %127, i32 %128, i32 586789)
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = load i32, i32* @RF90_PATH_A, align 4
  %132 = load i32, i32* @RF_SYN_G2, align 4
  %133 = load i32, i32* @MASKDWORD, align 4
  %134 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %130, i32 %131, i32 %132, i32 %133, i32 324096)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %136 = load i32, i32* @RF90_PATH_A, align 4
  %137 = load i32, i32* @RF_RCK1, align 4
  %138 = load i32, i32* @MASKDWORD, align 4
  %139 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %135, i32 %136, i32 %137, i32 %138, i32 278611)
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = load i32, i32* @RF90_PATH_A, align 4
  %142 = load i32, i32* @RF_RCK2, align 4
  %143 = load i32, i32* @MASKDWORD, align 4
  %144 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %140, i32 %141, i32 %142, i32 %143, i32 524801)
  br label %145

145:                                              ; preds = %116, %110
  br label %146

146:                                              ; preds = %145, %99
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %148 = load i32, i32* @RF_CHNLBW, align 4
  %149 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %150 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %147, i32 0, i32 %148, i32 %149)
  %151 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %152 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %151, i32 0, i32 1
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 0
  store i8* %150, i8** %154, align 8
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %156 = load i32, i32* @RF_CHNLBW, align 4
  %157 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %158 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %155, i32 1, i32 %156, i32 %157)
  %159 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %160 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 1
  store i8* %158, i8** %162, align 8
  %163 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %164 = load i32, i32* @RFPGA0_RFMOD, align 4
  %165 = load i32, i32* @BCCKEN, align 4
  %166 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %163, i32 %164, i32 %165, i32 1)
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %168 = load i32, i32* @RFPGA0_RFMOD, align 4
  %169 = load i32, i32* @BOFDMEN, align 4
  %170 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %167, i32 %168, i32 %169, i32 1)
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %172 = load i32, i32* @RFPGA0_ANALOGPARAMETER2, align 4
  %173 = call i32 @BIT(i32 10)
  %174 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %171, i32 %172, i32 %173, i32 1)
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %176 = call i32 @_rtl8723e_hw_configure(%struct.ieee80211_hw* %175)
  %177 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %178 = call i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw* %177)
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %180 = call i32 @rtl8723e_enable_hw_security_config(%struct.ieee80211_hw* %179)
  %181 = load i64, i64* @ERFON, align 8
  %182 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %183 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %185 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %184, i32 0, i32 2
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %189, align 8
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %192 = load i32, i32* @HW_VAR_ETHER_ADDR, align 4
  %193 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %194 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 %190(%struct.ieee80211_hw* %191, i32 %192, i32 %195)
  %197 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %198 = call i32 @_rtl8723e_enable_aspm_back_door(%struct.ieee80211_hw* %197)
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %200 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %199, i32 0, i32 1
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %202, align 8
  %204 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %205 = call i32 %203(%struct.ieee80211_hw* %204)
  %206 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %207 = call i32 @rtl8723e_bt_hw_init(%struct.ieee80211_hw* %206)
  %208 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %209 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @ERFON, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %233

213:                                              ; preds = %146
  %214 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %215 = call i32 @rtl8723e_phy_set_rfpath_switch(%struct.ieee80211_hw* %214, i32 1)
  %216 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %217 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %222 = call i32 @rtl8723e_phy_iq_calibrate(%struct.ieee80211_hw* %221, i32 1)
  br label %228

223:                                              ; preds = %213
  %224 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %225 = call i32 @rtl8723e_phy_iq_calibrate(%struct.ieee80211_hw* %224, i32 0)
  %226 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %227 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  br label %228

228:                                              ; preds = %223, %220
  %229 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %230 = call i32 @rtl8723e_dm_check_txpower_tracking(%struct.ieee80211_hw* %229)
  %231 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %232 = call i32 @rtl8723e_phy_lc_calibrate(%struct.ieee80211_hw* %231)
  br label %233

233:                                              ; preds = %228, %146
  %234 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %235 = call i32 @efuse_read_1byte(%struct.ieee80211_hw* %234, i32 506)
  store i32 %235, i32* %11, align 4
  %236 = load i32, i32* %11, align 4
  %237 = call i32 @BIT(i32 0)
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %233
  %241 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %242 = load i32, i32* @RF90_PATH_A, align 4
  %243 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %241, i32 %242, i32 21, i32 15, i32 5)
  %244 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %245 = load i32, i32* @COMP_INIT, align 4
  %246 = load i32, i32* @DBG_TRACE, align 4
  %247 = call i32 @RT_TRACE(%struct.rtl_priv* %244, i32 %245, i32 %246, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %248

248:                                              ; preds = %240, %233
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @BIT(i32 4)
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %271, label %253

253:                                              ; preds = %248
  %254 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %255 = call i32 @rtl_read_byte(%struct.rtl_priv* %254, i32 22)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %11, align 4
  %257 = and i32 %256, 15
  store i32 %257, i32* %11, align 4
  %258 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %259 = load i32, i32* %11, align 4
  %260 = or i32 %259, 128
  %261 = call i32 @rtl_write_byte(%struct.rtl_priv* %258, i32 22, i32 %260)
  %262 = call i32 @udelay(i32 10)
  %263 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %264 = load i32, i32* %11, align 4
  %265 = or i32 %264, 144
  %266 = call i32 @rtl_write_byte(%struct.rtl_priv* %263, i32 22, i32 %265)
  %267 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %268 = load i32, i32* @COMP_INIT, align 4
  %269 = load i32, i32* @DBG_TRACE, align 4
  %270 = call i32 @RT_TRACE(%struct.rtl_priv* %267, i32 %268, i32 %269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %271

271:                                              ; preds = %253, %248
  %272 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %273 = call i32 @rtl8723e_dm_init(%struct.ieee80211_hw* %272)
  br label %274

274:                                              ; preds = %271, %56, %48
  %275 = load i64, i64* %12, align 8
  %276 = call i32 @local_irq_restore(i64 %275)
  %277 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %278 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 0
  store i32 0, i32* %279, align 8
  %280 = load i32, i32* %10, align 4
  ret i32 %280
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @_rtl8712e_init_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rtl8723_download_fw(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl8723e_phy_mac_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl8723e_phy_bb_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_phy_rf_config(%struct.ieee80211_hw*) #1

declare dso_local i64 @IS_VENDOR_UMC_A_CUT(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_81XXC_VENDOR_UMC_B_CUT(i32) #1

declare dso_local i8* @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @_rtl8723e_hw_configure(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_enable_hw_security_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8723e_enable_aspm_back_door(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_bt_hw_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_phy_set_rfpath_switch(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_phy_iq_calibrate(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723e_dm_check_txpower_tracking(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_phy_lc_calibrate(%struct.ieee80211_hw*) #1

declare dso_local i32 @efuse_read_1byte(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8723e_dm_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
