; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_sw.c_rtl8821ae_init_sw_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_sw.c_rtl8821ae_init_sw_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32, %struct.TYPE_11__, %struct.TYPE_8__, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32*, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.rtl_pci = type { i32, i32, i32, i32, i8*, i8** }
%struct.rtl_mac = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.rtl_hal = type { i64 }

@CFENDFORM = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@BAND_ON_BOTH = common dso_local global i32 0, align 4
@SINGLEMAC_SINGLEPHY = common dso_local global i32 0, align 4
@RCR_APPFCS = common dso_local global i32 0, align 4
@RCR_APP_MIC = common dso_local global i32 0, align 4
@RCR_APP_ICV = common dso_local global i32 0, align 4
@RCR_APP_PHYST_RXFF = common dso_local global i32 0, align 4
@RCR_NONQOS_VHT = common dso_local global i32 0, align 4
@RCR_HTC_LOC_CTRL = common dso_local global i32 0, align 4
@RCR_AMF = common dso_local global i32 0, align 4
@RCR_ACF = common dso_local global i32 0, align 4
@RCR_ADF = common dso_local global i32 0, align 4
@RCR_AICV = common dso_local global i32 0, align 4
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@IMR_PSTIMEOUT = common dso_local global i32 0, align 4
@IMR_GTINT3 = common dso_local global i32 0, align 4
@IMR_HSISR_IND_ON_INT = common dso_local global i32 0, align 4
@IMR_C2HCMD = common dso_local global i32 0, align 4
@IMR_HIGHDOK = common dso_local global i32 0, align 4
@IMR_MGNTDOK = common dso_local global i32 0, align 4
@IMR_BKDOK = common dso_local global i32 0, align 4
@IMR_BEDOK = common dso_local global i32 0, align 4
@IMR_VIDOK = common dso_local global i32 0, align 4
@IMR_VODOK = common dso_local global i32 0, align 4
@IMR_RDU = common dso_local global i32 0, align 4
@IMR_ROK = common dso_local global i32 0, align 4
@IMR_RXFOVW = common dso_local global i32 0, align 4
@IMR_TXFOVW = common dso_local global i32 0, align 4
@HSIMR_PDN_INT_EN = common dso_local global i32 0, align 4
@HSIMR_RON_INT_EN = common dso_local global i32 0, align 4
@WAKE_ON_MAGIC_PACKET = common dso_local global i32 0, align 4
@WAKE_ON_PATTERN_MATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"watchdog disabled\0A\00", align 1
@FW_PS_MIN_MODE = common dso_local global i32 0, align 4
@FW_PS_MAX_MODE = common dso_local global i32 0, align 4
@FW_PS_DTIM_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't alloc buffer for fw.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't alloc buffer for wowlan fw.\0A\00", align 1
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"rtlwifi/rtl8812aefw.bin\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"rtlwifi/rtl8812aefw_wowlan.bin\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"rtlwifi/rtl8821aefw_29.bin\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"rtlwifi/rtl8821aefw_wowlan.bin\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Using firmware %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl_fw_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Failed to request normal firmware!\0A\00", align 1
@rtl_wowlan_fw_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to request wowlan firmware!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8821ae_init_sw_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %5, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_pci* @rtl_pcidev(i32 %14)
  store %struct.rtl_pci* %15, %struct.rtl_pci** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %7, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %20)
  store %struct.rtl_hal* %21, %struct.rtl_hal** %8, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = call i32 @rtl8821ae_bt_reg_init(%struct.ieee80211_hw* %22)
  %24 = call i32 (...) @rtl_btc_get_ops_pointer()
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @CFENDFORM, align 4
  %41 = call i32 @BIT(i32 15)
  %42 = or i32 %40, %41
  %43 = call i32 @BIT(i32 24)
  %44 = or i32 %42, %43
  %45 = call i32 @BIT(i32 25)
  %46 = or i32 %44, %45
  %47 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %50 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %52 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %54 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %56 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %58 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %60 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %62 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @BAND_ON_2_4G, align 4
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 8
  %67 = load i32, i32* @BAND_ON_BOTH, align 4
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %69 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @SINGLEMAC_SINGLEPHY, align 4
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %73 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* @RCR_APPFCS, align 4
  %76 = load i32, i32* @RCR_APP_MIC, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @RCR_APP_ICV, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @RCR_APP_PHYST_RXFF, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @RCR_NONQOS_VHT, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @RCR_HTC_LOC_CTRL, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @RCR_AMF, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @RCR_ACF, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @RCR_ADF, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @RCR_AICV, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @RCR_ACRC32, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @RCR_AB, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @RCR_AM, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @RCR_APM, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %103 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @IMR_PSTIMEOUT, align 4
  %105 = load i32, i32* @IMR_GTINT3, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @IMR_HSISR_IND_ON_INT, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @IMR_C2HCMD, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @IMR_HIGHDOK, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @IMR_MGNTDOK, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @IMR_BKDOK, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @IMR_BEDOK, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @IMR_VIDOK, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @IMR_VODOK, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @IMR_RDU, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @IMR_ROK, align 4
  %126 = or i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %130 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %129, i32 0, i32 5
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  store i8* %128, i8** %132, align 8
  %133 = load i32, i32* @IMR_RXFOVW, align 4
  %134 = load i32, i32* @IMR_TXFOVW, align 4
  %135 = or i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %139 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %138, i32 0, i32 5
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  store i8* %137, i8** %141, align 8
  %142 = load i32, i32* @HSIMR_PDN_INT_EN, align 4
  %143 = load i32, i32* @HSIMR_RON_INT_EN, align 4
  %144 = or i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %148 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @WAKE_ON_MAGIC_PACKET, align 4
  %150 = load i32, i32* @WAKE_ON_PATTERN_MATCH, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %153 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 4
  %155 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %156 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %155, i32 0, i32 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %163 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 6
  store i32 %161, i32* %164, align 4
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %166 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %165, i32 0, i32 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %173 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 5
  store i32 %171, i32* %174, align 4
  %175 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %176 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %175, i32 0, i32 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %183 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 4
  store i32 %181, i32* %184, align 4
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %186 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %185, i32 0, i32 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %193 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %195 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %194, i32 0, i32 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %202 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %204 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %203, i32 0, i32 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %1
  %212 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %1
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %215 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  store i32 2, i32* %216, align 4
  %217 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %218 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 2
  store i32 2, i32* %219, align 4
  %220 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %221 = call i32 @rtl8821ae_init_aspm_vars(%struct.ieee80211_hw* %220)
  %222 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %223 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %232

227:                                              ; preds = %213
  %228 = load i32, i32* @FW_PS_MIN_MODE, align 4
  %229 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %230 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 3
  store i32 %228, i32* %231, align 4
  br label %256

232:                                              ; preds = %213
  %233 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %234 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %243

238:                                              ; preds = %232
  %239 = load i32, i32* @FW_PS_MAX_MODE, align 4
  %240 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %241 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 3
  store i32 %239, i32* %242, align 4
  br label %255

243:                                              ; preds = %232
  %244 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %245 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 3
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load i32, i32* @FW_PS_DTIM_MODE, align 4
  %251 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %252 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 3
  store i32 %250, i32* %253, align 4
  br label %254

254:                                              ; preds = %249, %243
  br label %255

255:                                              ; preds = %254, %238
  br label %256

256:                                              ; preds = %255, %227
  %257 = call i8* @vzalloc(i32 32768)
  %258 = bitcast i8* %257 to i32*
  %259 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %260 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  store i32* %258, i32** %261, align 8
  %262 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %263 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %256
  %268 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %355

269:                                              ; preds = %256
  %270 = call i8* @vzalloc(i32 32768)
  %271 = bitcast i8* %270 to i32*
  %272 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %273 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  store i32* %271, i32** %274, align 8
  %275 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %276 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %290, label %280

280:                                              ; preds = %269
  %281 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %282 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %283 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @vfree(i32* %285)
  %287 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %288 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 0
  store i32* null, i32** %289, align 8
  store i32 1, i32* %2, align 4
  br label %355

290:                                              ; preds = %269
  %291 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %292 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %290
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %298

297:                                              ; preds = %290
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8** %10, align 8
  br label %298

298:                                              ; preds = %297, %296
  %299 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %300 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %299, i32 0, i32 0
  store i32 32768, i32* %300, align 8
  %301 = load i8*, i8** %9, align 8
  %302 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %301)
  %303 = load i32, i32* @THIS_MODULE, align 4
  %304 = load i8*, i8** %9, align 8
  %305 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %306 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @GFP_KERNEL, align 4
  %310 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %311 = load i32, i32* @rtl_fw_cb, align 4
  %312 = call i32 @request_firmware_nowait(i32 %303, i32 1, i8* %304, i32 %308, i32 %309, %struct.ieee80211_hw* %310, i32 %311)
  store i32 %312, i32* %4, align 4
  %313 = load i32, i32* %4, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %327

315:                                              ; preds = %298
  %316 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %317 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %318 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = call i32 @vfree(i32* %320)
  %322 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %323 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = call i32 @vfree(i32* %325)
  store i32 1, i32* %2, align 4
  br label %355

327:                                              ; preds = %298
  %328 = load i8*, i8** %10, align 8
  %329 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %328)
  %330 = load i32, i32* @THIS_MODULE, align 4
  %331 = load i8*, i8** %10, align 8
  %332 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %333 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @GFP_KERNEL, align 4
  %337 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %338 = load i32, i32* @rtl_wowlan_fw_cb, align 4
  %339 = call i32 @request_firmware_nowait(i32 %330, i32 1, i8* %331, i32 %335, i32 %336, %struct.ieee80211_hw* %337, i32 %338)
  store i32 %339, i32* %4, align 4
  %340 = load i32, i32* %4, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %354

342:                                              ; preds = %327
  %343 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %344 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %345 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = call i32 @vfree(i32* %347)
  %349 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %350 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = call i32 @vfree(i32* %352)
  store i32 1, i32* %2, align 4
  br label %355

354:                                              ; preds = %327
  store i32 0, i32* %2, align 4
  br label %355

355:                                              ; preds = %354, %342, %315, %280, %267
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8821ae_bt_reg_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_btc_get_ops_pointer(...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rtl8821ae_init_aspm_vars(%struct.ieee80211_hw*) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
