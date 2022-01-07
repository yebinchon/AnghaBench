; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_sw.c_rtl8723e_init_sw_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_sw.c_rtl8723e_init_sw_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32*, i32, i8*, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.rtl_pci = type { i32, i32, i32, i8** }
%struct.rtl_hal = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"rtlwifi/rtl8723fw.bin\00", align 1
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
@PHIMR_ROK = common dso_local global i32 0, align 4
@PHIMR_RDU = common dso_local global i32 0, align 4
@PHIMR_VODOK = common dso_local global i32 0, align 4
@PHIMR_VIDOK = common dso_local global i32 0, align 4
@PHIMR_BEDOK = common dso_local global i32 0, align 4
@PHIMR_BKDOK = common dso_local global i32 0, align 4
@PHIMR_MGNTDOK = common dso_local global i32 0, align 4
@PHIMR_HIGHDOK = common dso_local global i32 0, align 4
@PHIMR_C2HCMD = common dso_local global i32 0, align 4
@PHIMR_HISRE_IND = common dso_local global i32 0, align 4
@PHIMR_TSF_BIT32_TOGGLE = common dso_local global i32 0, align 4
@PHIMR_TXBCNOK = common dso_local global i32 0, align 4
@PHIMR_PSTIMEOUT = common dso_local global i32 0, align 4
@PHIMR_RXFOVW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"watchdog disabled\0A\00", align 1
@FW_PS_MIN_MODE = common dso_local global i32 0, align 4
@FW_PS_MAX_MODE = common dso_local global i32 0, align 4
@FW_PS_DTIM_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Can't alloc buffer for fw.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"rtlwifi/rtl8723fw_B.bin\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Using firmware %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl_fw_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to request firmware!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8723e_init_sw_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_pci*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_pci* @rtl_pcidev(i32 %12)
  store %struct.rtl_pci* %13, %struct.rtl_pci** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %6, align 8
  store i32 0, i32* %7, align 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call i32 @rtl8723e_bt_reg_init(%struct.ieee80211_hw* %17)
  %19 = call i32 (...) @rtl_btc_get_ops_pointer()
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @CFENDFORM, align 4
  %36 = call i32 @BIT(i32 12)
  %37 = or i32 %35, %36
  %38 = call i32 @BIT(i32 13)
  %39 = or i32 %37, %38
  %40 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %41 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @BAND_ON_2_4G, align 8
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @BAND_ON_2_4G, align 8
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @SINGLEMAC_SINGLEPHY, align 4
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @RCR_APPFCS, align 4
  %55 = load i32, i32* @RCR_APP_MIC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @RCR_APP_ICV, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @RCR_APP_PHYST_RXFF, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RCR_HTC_LOC_CTRL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RCR_AMF, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @RCR_ACF, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RCR_ADF, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RCR_AICV, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RCR_AB, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RCR_AM, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @RCR_APM, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %78 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @PHIMR_ROK, align 4
  %80 = load i32, i32* @PHIMR_RDU, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PHIMR_VODOK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PHIMR_VIDOK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @PHIMR_BEDOK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PHIMR_BKDOK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PHIMR_MGNTDOK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @PHIMR_HIGHDOK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @PHIMR_C2HCMD, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @PHIMR_HISRE_IND, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @PHIMR_TSF_BIT32_TOGGLE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @PHIMR_TXBCNOK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @PHIMR_PSTIMEOUT, align 4
  %103 = or i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %107 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %106, i32 0, i32 3
  %108 = load i8**, i8*** %107, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  store i8* %105, i8** %109, align 8
  %110 = load i32, i32* @PHIMR_RXFOVW, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %114 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %113, i32 0, i32 3
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 1
  store i8* %112, i8** %116, align 8
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %125 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 5
  store i32 %123, i32* %126, align 4
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %128 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %127, i32 0, i32 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %135 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 4
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %138 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %137, i32 0, i32 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %145 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  store i32 %143, i32* %146, align 4
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %148 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %147, i32 0, i32 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %155 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %157 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %156, i32 0, i32 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %1
  %165 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %1
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %168 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store i32 3, i32* %169, align 4
  %170 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %171 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  store i32 5, i32* %172, align 4
  %173 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %174 = call i32 @rtl8723e_init_aspm_vars(%struct.ieee80211_hw* %173)
  %175 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %176 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %185

180:                                              ; preds = %166
  %181 = load i32, i32* @FW_PS_MIN_MODE, align 4
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %183 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  store i32 %181, i32* %184, align 4
  br label %209

185:                                              ; preds = %166
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %187 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %196

191:                                              ; preds = %185
  %192 = load i32, i32* @FW_PS_MAX_MODE, align 4
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %194 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  store i32 %192, i32* %195, align 4
  br label %208

196:                                              ; preds = %185
  %197 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %198 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 3
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load i32, i32* @FW_PS_DTIM_MODE, align 4
  %204 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %205 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  store i32 %203, i32* %206, align 4
  br label %207

207:                                              ; preds = %202, %196
  br label %208

208:                                              ; preds = %207, %191
  br label %209

209:                                              ; preds = %208, %180
  %210 = call i32* @vzalloc(i32 24576)
  %211 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %212 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  store i32* %210, i32** %213, align 8
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %215 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %209
  %220 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %256

221:                                              ; preds = %209
  %222 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %223 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @IS_81XXC_VENDOR_UMC_B_CUT(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %228

228:                                              ; preds = %227, %221
  %229 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %230 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %229, i32 0, i32 0
  store i32 24576, i32* %230, align 8
  %231 = load i8*, i8** %8, align 8
  %232 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %231)
  %233 = load i32, i32* @THIS_MODULE, align 4
  %234 = load i8*, i8** %8, align 8
  %235 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %236 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @GFP_KERNEL, align 4
  %240 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %241 = load i32, i32* @rtl_fw_cb, align 4
  %242 = call i32 @request_firmware_nowait(i32 %233, i32 1, i8* %234, i32 %238, i32 %239, %struct.ieee80211_hw* %240, i32 %241)
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %228
  %246 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %247 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %248 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @vfree(i32* %250)
  %252 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %253 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  store i32* null, i32** %254, align 8
  store i32 1, i32* %2, align 4
  br label %256

255:                                              ; preds = %228
  store i32 0, i32* %2, align 4
  br label %256

256:                                              ; preds = %255, %245, %219
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8723e_bt_reg_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_btc_get_ops_pointer(...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rtl8723e_init_aspm_vars(%struct.ieee80211_hw*) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @IS_81XXC_VENDOR_UMC_B_CUT(i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.ieee80211_hw*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
