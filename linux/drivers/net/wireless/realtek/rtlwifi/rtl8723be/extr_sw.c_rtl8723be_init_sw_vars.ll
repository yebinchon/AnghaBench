; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_sw.c_rtl8723be_init_sw_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_sw.c_rtl8723be_init_sw_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32, i32*, i32, i8*, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.rtl_pci = type { i32, i32, i32, i8*, i8** }
%struct.rtl_mac = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"rtlwifi/rtl8723befw_36.bin\00", align 1
@CFENDFORM = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i8* null, align 8
@SINGLEMAC_SINGLEPHY = common dso_local global i32 0, align 4
@RCR_APPFCS = common dso_local global i32 0, align 4
@RCR_APP_MIC = common dso_local global i32 0, align 4
@RCR_APP_ICV = common dso_local global i32 0, align 4
@RCR_APP_PHYST_RXFF = common dso_local global i32 0, align 4
@RCR_HTC_LOC_CTRL = common dso_local global i32 0, align 4
@RCR_AMF = common dso_local global i32 0, align 4
@RCR_ACF = common dso_local global i32 0, align 4
@RCR_ADF = common dso_local global i32 0, align 4
@RCR_AICV = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@IMR_PSTIMEOUT = common dso_local global i32 0, align 4
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
@HSIMR_PDN_INT_EN = common dso_local global i32 0, align 4
@HSIMR_RON_INT_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"watchdog disabled\0A\00", align 1
@FW_PS_MIN_MODE = common dso_local global i32 0, align 4
@FW_PS_MAX_MODE = common dso_local global i32 0, align 4
@FW_PS_DTIM_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Can't alloc buffer for fw.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Using firmware %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl_fw_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to request firmware!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723be_init_sw_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca %struct.rtl_mac*, align 8
  %8 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_pci* @rtl_pcidev(i32 %12)
  store %struct.rtl_pci* %13, %struct.rtl_pci** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %15)
  store %struct.rtl_mac* %16, %struct.rtl_mac** %7, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call i32 @rtl8723be_bt_reg_init(%struct.ieee80211_hw* %17)
  %19 = call i32 (...) @rtl_btc_get_ops_pointer()
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @CFENDFORM, align 4
  %36 = call i32 @BIT(i32 15)
  %37 = or i32 %35, %36
  %38 = call i32 @BIT(i32 24)
  %39 = or i32 %37, %38
  %40 = call i32 @BIT(i32 25)
  %41 = or i32 %39, %40
  %42 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %43 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.rtl_mac*, %struct.rtl_mac** %7, align 8
  %48 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load i8*, i8** @BAND_ON_2_4G, align 8
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 4
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** @BAND_ON_2_4G, align 8
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  store i8* %53, i8** %56, align 8
  %57 = load i32, i32* @SINGLEMAC_SINGLEPHY, align 4
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @RCR_APPFCS, align 4
  %62 = load i32, i32* @RCR_APP_MIC, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @RCR_APP_ICV, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @RCR_APP_PHYST_RXFF, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @RCR_HTC_LOC_CTRL, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @RCR_AMF, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RCR_ACF, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RCR_ADF, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RCR_AICV, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @RCR_AB, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @RCR_AM, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @RCR_APM, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %85 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @IMR_PSTIMEOUT, align 4
  %87 = load i32, i32* @IMR_HSISR_IND_ON_INT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @IMR_C2HCMD, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @IMR_HIGHDOK, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IMR_MGNTDOK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @IMR_BKDOK, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IMR_BEDOK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @IMR_VIDOK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @IMR_VODOK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @IMR_RDU, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @IMR_ROK, align 4
  %106 = or i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %110 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %109, i32 0, i32 4
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  store i8* %108, i8** %112, align 8
  %113 = load i32, i32* @IMR_RXFOVW, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %117 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %116, i32 0, i32 4
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  store i8* %115, i8** %119, align 8
  %120 = load i32, i32* @HSIMR_PDN_INT_EN, align 4
  %121 = load i32, i32* @HSIMR_RON_INT_EN, align 4
  %122 = or i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %126 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %128 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %127, i32 0, i32 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %135 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 6
  store i32 %133, i32* %136, align 4
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %138 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %137, i32 0, i32 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %145 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 5
  store i32 %143, i32* %146, align 4
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %148 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %147, i32 0, i32 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %155 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 4
  store i32 %153, i32* %156, align 4
  %157 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %158 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %157, i32 0, i32 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %165 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %167 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %166, i32 0, i32 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %1
  %175 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %1
  %177 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %178 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  store i32 2, i32* %179, align 4
  %180 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %181 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  store i32 2, i32* %182, align 4
  %183 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %184 = call i32 @rtl8723be_init_aspm_vars(%struct.ieee80211_hw* %183)
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %186 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %190, label %195

190:                                              ; preds = %176
  %191 = load i32, i32* @FW_PS_MIN_MODE, align 4
  %192 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %193 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 3
  store i32 %191, i32* %194, align 4
  br label %219

195:                                              ; preds = %176
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %197 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load i32, i32* @FW_PS_MAX_MODE, align 4
  %203 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %204 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 3
  store i32 %202, i32* %205, align 4
  br label %218

206:                                              ; preds = %195
  %207 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %208 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 3
  br i1 %211, label %212, label %217

212:                                              ; preds = %206
  %213 = load i32, i32* @FW_PS_DTIM_MODE, align 4
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %215 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 3
  store i32 %213, i32* %216, align 4
  br label %217

217:                                              ; preds = %212, %206
  br label %218

218:                                              ; preds = %217, %201
  br label %219

219:                                              ; preds = %218, %190
  %220 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %221 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  store i32 0, i32* %222, align 4
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %224 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  store i32 0, i32* %225, align 8
  %226 = call i32* @vzalloc(i32 32768)
  %227 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %228 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  store i32* %226, i32** %229, align 8
  %230 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %231 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %219
  %236 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %265

237:                                              ; preds = %219
  %238 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %239 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %238, i32 0, i32 0
  store i32 32768, i32* %239, align 8
  %240 = load i8*, i8** %8, align 8
  %241 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %240)
  %242 = load i32, i32* @THIS_MODULE, align 4
  %243 = load i8*, i8** %8, align 8
  %244 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %245 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @GFP_KERNEL, align 4
  %249 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %250 = load i32, i32* @rtl_fw_cb, align 4
  %251 = call i32 @request_firmware_nowait(i32 %242, i32 1, i8* %243, i32 %247, i32 %248, %struct.ieee80211_hw* %249, i32 %250)
  store i32 %251, i32* %4, align 4
  %252 = load i32, i32* %4, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %237
  %255 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %256 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %257 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @vfree(i32* %259)
  %261 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %262 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 1
  store i32* null, i32** %263, align 8
  store i32 1, i32* %2, align 4
  br label %265

264:                                              ; preds = %237
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %254, %235
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8723be_bt_reg_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_btc_get_ops_pointer(...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rtl8723be_init_aspm_vars(%struct.ieee80211_hw*) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.ieee80211_hw*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
