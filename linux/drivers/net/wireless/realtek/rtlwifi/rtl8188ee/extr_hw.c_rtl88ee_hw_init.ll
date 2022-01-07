; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl88ee_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl88ee_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.rtl_phy }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32)* }
%struct.rtl_phy = type { i32*, i32, i32 }
%struct.rtl_hal = type { i32, i32, i32, i32, i64, i8*, i64 }
%struct.rtl_mac = type { i32 }
%struct.rtl_ps_ctl = type { i32, i64 }
%struct.rtl_pci = type { i32 }
%struct.rtl_efuse = type { i64 }

@REG_SYS_CLKR = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i32 0, align 4
@FW_PS_STATE_ALL_ON_88E = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Init MAC failed\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Failed to download FW. Init HW without FW now..\0A\00", align 1
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RCR_AICV = common dso_local global i32 0, align 4
@REG_RCR = common dso_local global i32 0, align 4
@RFPGA0_RFMOD = common dso_local global i32 0, align 4
@BCCKEN = common dso_local global i32 0, align 4
@BOFDMEN = common dso_local global i32 0, align 4
@RF_OP_BY_SW_3WIRE = common dso_local global i32 0, align 4
@RF_CHNLBW = common dso_local global i32 0, align 4
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@ERFON = common dso_local global i64 0, align 8
@HW_VAR_ETHER_ADDR = common dso_local global i32 0, align 4
@CGCS_RX_HW_ANTDIV = common dso_local global i64 0, align 8
@CG_TRX_HW_ANTDIV = common dso_local global i64 0, align 8
@RT_CID_819X_HP = common dso_local global i64 0, align 8
@MAIN_ANT = common dso_local global i64 0, align 8
@AUX_ANT = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"rx idle ant %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MAIN_ANT\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"AUX_ANT\00", align 1
@RF90_PATH_A = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"PA BIAS path A\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"under 1.5V\0A\00", align 1
@REG_NAV_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl88ee_hw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_ps_ctl*, align 8
  %8 = alloca %struct.rtl_pci*, align 8
  %9 = alloca %struct.rtl_efuse*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %3, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %18)
  store %struct.rtl_hal* %19, %struct.rtl_hal** %4, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %21)
  store %struct.rtl_mac* %22, %struct.rtl_mac** %5, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 4
  store %struct.rtl_phy* %24, %struct.rtl_phy** %6, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %26 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %25)
  %27 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %26)
  store %struct.rtl_ps_ctl* %27, %struct.rtl_ps_ctl** %7, align 8
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %29 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %28)
  %30 = call %struct.rtl_pci* @rtl_pcidev(i32 %29)
  store %struct.rtl_pci* %30, %struct.rtl_pci** %8, align 8
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %32 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %31)
  %33 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %32)
  store %struct.rtl_efuse* %33, %struct.rtl_efuse** %9, align 8
  store i32 0, i32* %11, align 4
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @local_save_flags(i64 %37)
  %39 = call i32 (...) @local_irq_enable()
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %45, align 8
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %48 = call i32 %46(%struct.ieee80211_hw* %47)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = load i32, i32* @REG_SYS_CLKR, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @rtl_read_byte(%struct.rtl_priv* %49, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = load i32, i32* @REG_CR, align 4
  %55 = call i32 @rtl_read_byte(%struct.rtl_priv* %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @BIT(i32 3)
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %1
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 234
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %68 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %75

69:                                               ; preds = %63, %60, %1
  %70 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %71 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i8*, i8** @FW_PS_STATE_ALL_ON_88E, align 8
  %73 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %74 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = call i32 @_rtl88ee_init_mac(%struct.ieee80211_hw* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %303

82:                                               ; preds = %75
  %83 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %84 = call i32 @rtl88e_download_fw(%struct.ieee80211_hw* %83, i32 0)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = load i32, i32* @COMP_ERR, align 4
  %90 = load i32, i32* @DBG_WARNING, align 4
  %91 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %303

92:                                               ; preds = %82
  %93 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %94 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %96 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %95, i32 0, i32 6
  store i64 0, i64* %96, align 8
  %97 = load i8*, i8** @FW_PS_STATE_ALL_ON_88E, align 8
  %98 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %99 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  %100 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %101 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  %102 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %103 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %102, i32 0, i32 3
  store i32 0, i32* %103, align 4
  %104 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %105 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %107 = call i32 @rtl88e_phy_mac_config(%struct.ieee80211_hw* %106)
  %108 = load i32, i32* @RCR_ACRC32, align 4
  %109 = load i32, i32* @RCR_AICV, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %113 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %117 = load i32, i32* @REG_RCR, align 4
  %118 = load %struct.rtl_pci*, %struct.rtl_pci** %8, align 8
  %119 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @rtl_write_dword(%struct.rtl_priv* %116, i32 %117, i32 %120)
  %122 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %123 = call i32 @rtl88e_phy_bb_config(%struct.ieee80211_hw* %122)
  %124 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %125 = load i32, i32* @RFPGA0_RFMOD, align 4
  %126 = load i32, i32* @BCCKEN, align 4
  %127 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %124, i32 %125, i32 %126, i32 1)
  %128 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %129 = load i32, i32* @RFPGA0_RFMOD, align 4
  %130 = load i32, i32* @BOFDMEN, align 4
  %131 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %128, i32 %129, i32 %130, i32 1)
  %132 = load i32, i32* @RF_OP_BY_SW_3WIRE, align 4
  %133 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %134 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %136 = call i32 @rtl88e_phy_rf_config(%struct.ieee80211_hw* %135)
  %137 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %138 = load i32, i32* @RF_CHNLBW, align 4
  %139 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %140 = call i32 @rtl_get_rfreg(%struct.ieee80211_hw* %137, i32 0, i32 %138, i32 %139)
  %141 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %142 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %140, i32* %144, align 4
  %145 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %146 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, -1044481
  %151 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %152 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %150, i32* %154, align 4
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %156 = call i32 @_rtl88ee_hw_configure(%struct.ieee80211_hw* %155)
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %158 = call i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw* %157)
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %160 = call i32 @rtl88ee_enable_hw_security_config(%struct.ieee80211_hw* %159)
  %161 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %162 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = load i64, i64* @ERFON, align 8
  %164 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %165 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %167 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %166, i32 0, i32 3
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32 (%struct.ieee80211_hw*, i32, i32)*, i32 (%struct.ieee80211_hw*, i32, i32)** %171, align 8
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %174 = load i32, i32* @HW_VAR_ETHER_ADDR, align 4
  %175 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %176 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 %172(%struct.ieee80211_hw* %173, i32 %174, i32 %177)
  %179 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %180 = call i32 @_rtl88ee_enable_aspm_back_door(%struct.ieee80211_hw* %179)
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %182 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %181, i32 0, i32 2
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %184, align 8
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %187 = call i32 %185(%struct.ieee80211_hw* %186)
  %188 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %7, align 8
  %189 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @ERFON, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %258

193:                                              ; preds = %92
  %194 = load %struct.rtl_efuse*, %struct.rtl_efuse** %9, align 8
  %195 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @CGCS_RX_HW_ANTDIV, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %211, label %199

199:                                              ; preds = %193
  %200 = load %struct.rtl_efuse*, %struct.rtl_efuse** %9, align 8
  %201 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @CG_TRX_HW_ANTDIV, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %219

205:                                              ; preds = %199
  %206 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %207 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @RT_CID_819X_HP, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %205, %193
  %212 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %213 = call i32 @rtl88e_phy_set_rfpath_switch(%struct.ieee80211_hw* %212, i32 1)
  %214 = load i64, i64* @MAIN_ANT, align 8
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %216 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  store i64 %214, i64* %218, align 8
  br label %227

219:                                              ; preds = %205, %199
  %220 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %221 = call i32 @rtl88e_phy_set_rfpath_switch(%struct.ieee80211_hw* %220, i32 0)
  %222 = load i64, i64* @AUX_ANT, align 8
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %224 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  store i64 %222, i64* %226, align 8
  br label %227

227:                                              ; preds = %219, %211
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %229 = load i32, i32* @COMP_INIT, align 4
  %230 = load i32, i32* @DBG_LOUD, align 4
  %231 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %232 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @MAIN_ANT, align 8
  %237 = icmp eq i64 %235, %236
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %240 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %228, i32 %229, i32 %230, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %239)
  %241 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %242 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %227
  %246 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %247 = call i32 @rtl88e_phy_iq_calibrate(%struct.ieee80211_hw* %246, i32 1)
  br label %253

248:                                              ; preds = %227
  %249 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %250 = call i32 @rtl88e_phy_iq_calibrate(%struct.ieee80211_hw* %249, i32 0)
  %251 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %252 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %251, i32 0, i32 1
  store i32 1, i32* %252, align 8
  br label %253

253:                                              ; preds = %248, %245
  %254 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %255 = call i32 @rtl88e_dm_check_txpower_tracking(%struct.ieee80211_hw* %254)
  %256 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %257 = call i32 @rtl88e_phy_lc_calibrate(%struct.ieee80211_hw* %256)
  br label %258

258:                                              ; preds = %253, %92
  %259 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %260 = call i32 @efuse_read_1byte(%struct.ieee80211_hw* %259, i32 506)
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @BIT(i32 0)
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %273, label %265

265:                                              ; preds = %258
  %266 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %267 = load i32, i32* @RF90_PATH_A, align 4
  %268 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %266, i32 %267, i32 21, i32 15, i32 5)
  %269 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %270 = load i32, i32* @COMP_INIT, align 4
  %271 = load i32, i32* @DBG_LOUD, align 4
  %272 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %269, i32 %270, i32 %271, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %273

273:                                              ; preds = %265, %258
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
  %294 = load i32, i32* @DBG_LOUD, align 4
  %295 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %292, i32 %293, i32 %294, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %296

296:                                              ; preds = %278, %273
  %297 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %298 = load i32, i32* @REG_NAV_CTRL, align 4
  %299 = add nsw i32 %298, 2
  %300 = call i32 @rtl_write_byte(%struct.rtl_priv* %297, i32 %299, i32 235)
  %301 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %302 = call i32 @rtl88e_dm_init(%struct.ieee80211_hw* %301)
  br label %303

303:                                              ; preds = %296, %87, %80
  %304 = load i64, i64* %14, align 8
  %305 = call i32 @local_irq_restore(i64 %304)
  %306 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %307 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 0
  store i32 0, i32* %308, align 8
  %309 = load i32, i32* %11, align 4
  ret i32 %309
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @_rtl88ee_init_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @rtl88e_download_fw(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl88e_phy_mac_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl88e_phy_bb_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @rtl88e_phy_rf_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_get_rfreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @_rtl88ee_hw_configure(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_cam_reset_all_entry(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl88ee_enable_hw_security_config(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl88ee_enable_aspm_back_door(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl88e_phy_set_rfpath_switch(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl88e_phy_iq_calibrate(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl88e_dm_check_txpower_tracking(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl88e_phy_lc_calibrate(%struct.ieee80211_hw*) #1

declare dso_local i32 @efuse_read_1byte(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl88e_dm_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
