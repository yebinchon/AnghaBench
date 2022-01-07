; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.rtl_phy }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i32, i32)* }
%struct.rtl_phy = type { i32, i8**, i32 }
%struct.rtl_hal = type { i32, i32, i64 }
%struct.rtl_mac = type { i32 }
%struct.rtl_pci = type { i32, i32 }
%struct.rtl_ps_ctl = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"Init MAC failed\0A\00", align 1
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
@RF90_PATH_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"PA BIAS path B\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"under 1.5V\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92ce_hw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_pci*, align 8
  %8 = alloca %struct.rtl_ps_ctl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %3, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %17)
  store %struct.rtl_hal* %18, %struct.rtl_hal** %4, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %20)
  store %struct.rtl_mac* %21, %struct.rtl_mac** %5, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 2
  store %struct.rtl_phy* %23, %struct.rtl_phy** %6, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_pci* @rtl_pcidev(i32 %25)
  store %struct.rtl_pci* %26, %struct.rtl_pci** %7, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  %29 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %28)
  store %struct.rtl_ps_ctl* %29, %struct.rtl_ps_ctl** %8, align 8
  store i32 1, i32* %9, align 4
  %30 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %31 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load i64, i64* %13, align 8
  %33 = call i32 @local_save_flags(i64 %32)
  %34 = call i32 (...) @local_irq_enable()
  %35 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %40, align 8
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %43 = call i32 %41(%struct.ieee80211_hw* %42)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = call i32 @_rtl92ce_init_mac(%struct.ieee80211_hw* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %1
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %299

50:                                               ; preds = %1
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %52 = call i32 @rtl92c_download_fw(%struct.ieee80211_hw* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = load i32, i32* @COMP_ERR, align 4
  %58 = load i32, i32* @DBG_WARNING, align 4
  %59 = call i32 @RT_TRACE(%struct.rtl_priv* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %299

60:                                               ; preds = %50
  %61 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %62 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %64 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %66 = call i32 @rtl92c_phy_mac_config(%struct.ieee80211_hw* %65)
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = load i32, i32* @REG_RCR, align 4
  %69 = call i32 @rtl_read_dword(%struct.rtl_priv* %67, i32 %68)
  %70 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %71 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @RCR_ACRC32, align 4
  %73 = load i32, i32* @RCR_AICV, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %77 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i32, i32* @REG_RCR, align 4
  %82 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %83 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rtl_write_dword(%struct.rtl_priv* %80, i32 %81, i32 %84)
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %87 = call i32 @rtl92c_phy_bb_config(%struct.ieee80211_hw* %86)
  %88 = load i32, i32* @RF_OP_BY_SW_3WIRE, align 4
  %89 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %90 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %92 = call i32 @rtl92c_phy_rf_config(%struct.ieee80211_hw* %91)
  %93 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %94 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @IS_VENDOR_UMC_A_CUT(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %60
  %99 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %100 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @IS_92C_SERIAL(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %98
  %105 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %106 = load i32, i32* @RF90_PATH_A, align 4
  %107 = load i32, i32* @RF_RX_G1, align 4
  %108 = load i32, i32* @MASKDWORD, align 4
  %109 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %105, i32 %106, i32 %107, i32 %108, i32 197205)
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %111 = load i32, i32* @RF90_PATH_A, align 4
  %112 = load i32, i32* @RF_RX_G2, align 4
  %113 = load i32, i32* @MASKDWORD, align 4
  %114 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %110, i32 %111, i32 %112, i32 %113, i32 330240)
  br label %151

115:                                              ; preds = %98, %60
  %116 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %117 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @IS_81XXC_VENDOR_UMC_B_CUT(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %115
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %123 = load i32, i32* @RF90_PATH_A, align 4
  %124 = load i32, i32* @MASKDWORD, align 4
  %125 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %122, i32 %123, i32 12, i32 %124, i32 562350)
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %127 = load i32, i32* @RF90_PATH_A, align 4
  %128 = load i32, i32* @MASKDWORD, align 4
  %129 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %126, i32 %127, i32 10, i32 %128, i32 110385)
  %130 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %131 = load i32, i32* @RF90_PATH_A, align 4
  %132 = load i32, i32* @RF_IPA, align 4
  %133 = load i32, i32* @MASKDWORD, align 4
  %134 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %130, i32 %131, i32 %132, i32 %133, i32 586789)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %136 = load i32, i32* @RF90_PATH_A, align 4
  %137 = load i32, i32* @RF_SYN_G2, align 4
  %138 = load i32, i32* @MASKDWORD, align 4
  %139 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %135, i32 %136, i32 %137, i32 %138, i32 324096)
  %140 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %141 = load i32, i32* @RF90_PATH_A, align 4
  %142 = load i32, i32* @RF_RCK1, align 4
  %143 = load i32, i32* @MASKDWORD, align 4
  %144 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %140, i32 %141, i32 %142, i32 %143, i32 278611)
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %146 = load i32, i32* @RF90_PATH_A, align 4
  %147 = load i32, i32* @RF_RCK2, align 4
  %148 = load i32, i32* @MASKDWORD, align 4
  %149 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %145, i32 %146, i32 %147, i32 %148, i32 524801)
  br label %150

150:                                              ; preds = %121, %115
  br label %151

151:                                              ; preds = %150, %104
  %152 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %153 = load i32, i32* @RF_CHNLBW, align 4
  %154 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %155 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %152, i32 0, i32 %153, i32 %154)
  %156 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %157 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %156, i32 0, i32 1
  %158 = load i8**, i8*** %157, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 0
  store i8* %155, i8** %159, align 8
  %160 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %161 = load i32, i32* @RF_CHNLBW, align 4
  %162 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %163 = call i8* @rtl_get_rfreg(%struct.ieee80211_hw* %160, i32 1, i32 %161, i32 %162)
  %164 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %165 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %164, i32 0, i32 1
  %166 = load i8**, i8*** %165, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 1
  store i8* %163, i8** %167, align 8
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %169 = load i32, i32* @RFPGA0_RFMOD, align 4
  %170 = load i32, i32* @BCCKEN, align 4
  %171 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %168, i32 %169, i32 %170, i32 1)
  %172 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %173 = load i32, i32* @RFPGA0_RFMOD, align 4
  %174 = load i32, i32* @BOFDMEN, align 4
  %175 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %172, i32 %173, i32 %174, i32 1)
  %176 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %177 = load i32, i32* @RFPGA0_ANALOGPARAMETER2, align 4
  %178 = call i32 @BIT(i32 10)
  %179 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %176, i32 %177, i32 %178, i32 1)
  %180 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %181 = call i32 @_rtl92ce_hw_configure(%struct.ieee80211_hw* %180)
  %182 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %183 = call i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw* %182)
  %184 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %185 = call i32 @rtl92ce_enable_hw_security_config(%struct.ieee80211_hw* %184)
  %186 = load i64, i64* @ERFON, align 8
  %187 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %188 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %190 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %189, i32 0, i32 1
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %194, align 8
  %196 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %197 = load i32, i32* @HW_VAR_ETHER_ADDR, align 4
  %198 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %199 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 %195(%struct.ieee80211_hw* %196, i32 %197, i32 %200)
  %202 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %203 = call i32 @_rtl92ce_enable_aspm_back_door(%struct.ieee80211_hw* %202)
  %204 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %205 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %204, i32 0, i32 0
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %207, align 8
  %209 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %210 = call i32 %208(%struct.ieee80211_hw* %209)
  %211 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %212 = call i32 @rtl8192ce_bt_hw_init(%struct.ieee80211_hw* %211)
  %213 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %8, align 8
  %214 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @ERFON, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %238

218:                                              ; preds = %151
  %219 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %220 = call i32 @rtl92c_phy_set_rfpath_switch(%struct.ieee80211_hw* %219, i32 1)
  %221 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %222 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %227 = call i32 @rtl92c_phy_iq_calibrate(%struct.ieee80211_hw* %226, i32 1)
  br label %233

228:                                              ; preds = %218
  %229 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %230 = call i32 @rtl92c_phy_iq_calibrate(%struct.ieee80211_hw* %229, i32 0)
  %231 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %232 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %231, i32 0, i32 0
  store i32 1, i32* %232, align 8
  br label %233

233:                                              ; preds = %228, %225
  %234 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %235 = call i32 @rtl92c_dm_check_txpower_tracking(%struct.ieee80211_hw* %234)
  %236 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %237 = call i32 @rtl92c_phy_lc_calibrate(%struct.ieee80211_hw* %236)
  br label %238

238:                                              ; preds = %233, %151
  %239 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %240 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @IS_92C_SERIAL(i32 %241)
  store i32 %242, i32* %10, align 4
  %243 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %244 = call i32 @efuse_read_1byte(%struct.ieee80211_hw* %243, i32 506)
  store i32 %244, i32* %12, align 4
  %245 = load i32, i32* %12, align 4
  %246 = call i32 @BIT(i32 0)
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %238
  %250 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %251 = load i32, i32* @RF90_PATH_A, align 4
  %252 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %250, i32 %251, i32 21, i32 15, i32 5)
  %253 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %254 = load i32, i32* @COMP_INIT, align 4
  %255 = load i32, i32* @DBG_TRACE, align 4
  %256 = call i32 @RT_TRACE(%struct.rtl_priv* %253, i32 %254, i32 %255, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %257

257:                                              ; preds = %249, %238
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @BIT(i32 1)
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %273, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %267 = load i32, i32* @RF90_PATH_B, align 4
  %268 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %266, i32 %267, i32 21, i32 15, i32 5)
  %269 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %270 = load i32, i32* @COMP_INIT, align 4
  %271 = load i32, i32* @DBG_TRACE, align 4
  %272 = call i32 @RT_TRACE(%struct.rtl_priv* %269, i32 %270, i32 %271, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %273

273:                                              ; preds = %265, %262, %257
  %274 = load i32, i32* %12, align 4
  %275 = call i32 @BIT(i32 4)
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %296, label %278

278:                                              ; preds = %273
  %279 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %280 = call i32 @rtl_read_byte(%struct.rtl_priv* %279, i32 22)
  store i32 %280, i32* %12, align 4
  %281 = load i32, i32* %12, align 4
  %282 = and i32 %281, 15
  store i32 %282, i32* %12, align 4
  %283 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %284 = load i32, i32* %12, align 4
  %285 = or i32 %284, 128
  %286 = call i32 @rtl_write_byte(%struct.rtl_priv* %283, i32 22, i32 %285)
  %287 = call i32 @udelay(i32 10)
  %288 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %289 = load i32, i32* %12, align 4
  %290 = or i32 %289, 144
  %291 = call i32 @rtl_write_byte(%struct.rtl_priv* %288, i32 22, i32 %290)
  %292 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %293 = load i32, i32* @COMP_INIT, align 4
  %294 = load i32, i32* @DBG_TRACE, align 4
  %295 = call i32 @RT_TRACE(%struct.rtl_priv* %292, i32 %293, i32 %294, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %296

296:                                              ; preds = %278, %273
  %297 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %298 = call i32 @rtl92c_dm_init(%struct.ieee80211_hw* %297)
  br label %299

299:                                              ; preds = %296, %55, %48
  %300 = load i64, i64* %13, align 8
  %301 = call i32 @local_irq_restore(i64 %300)
  %302 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %303 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %302, i32 0, i32 0
  store i32 0, i32* %303, align 4
  %304 = load i32, i32* %11, align 4
  ret i32 %304
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @_rtl92ce_init_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rtl92c_download_fw(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl92c_phy_mac_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl92c_phy_bb_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_phy_rf_config(%struct.ieee80211_hw*) #1

declare dso_local i64 @IS_VENDOR_UMC_A_CUT(i32) #1

declare dso_local i32 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_81XXC_VENDOR_UMC_B_CUT(i32) #1

declare dso_local i8* @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @_rtl92ce_hw_configure(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92ce_enable_hw_security_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92ce_enable_aspm_back_door(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8192ce_bt_hw_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_phy_set_rfpath_switch(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92c_phy_iq_calibrate(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl92c_dm_check_txpower_tracking(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_phy_lc_calibrate(%struct.ieee80211_hw*) #1

declare dso_local i32 @efuse_read_1byte(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl92c_dm_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
