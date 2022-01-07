; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_sw.c_rtl92d_init_sw_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_sw.c_rtl92d_init_sw_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i64, i64, i32, i32, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64 }
%struct.rtl_pci = type { i32, i32, i32, i8** }

@.str = private unnamed_addr constant [24 x i8] c"rtlwifi/rtl8192defw.bin\00", align 1
@BAND_ON_5G = common dso_local global i64 0, align 8
@SINGLEMAC_SINGLEPHY = common dso_local global i64 0, align 8
@CFENDFORM = common dso_local global i32 0, align 4
@RCR_APPFCS = common dso_local global i32 0, align 4
@RCR_AMF = common dso_local global i32 0, align 4
@RCR_ADF = common dso_local global i32 0, align 4
@RCR_APP_MIC = common dso_local global i32 0, align 4
@RCR_APP_ICV = common dso_local global i32 0, align 4
@RCR_AICV = common dso_local global i32 0, align 4
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@RCR_APP_PHYST_RXFF = common dso_local global i32 0, align 4
@RCR_HTC_LOC_CTRL = common dso_local global i32 0, align 4
@IMR_ROK = common dso_local global i32 0, align 4
@IMR_VODOK = common dso_local global i32 0, align 4
@IMR_VIDOK = common dso_local global i32 0, align 4
@IMR_BEDOK = common dso_local global i32 0, align 4
@IMR_BKDOK = common dso_local global i32 0, align 4
@IMR_MGNTDOK = common dso_local global i32 0, align 4
@IMR_HIGHDOK = common dso_local global i32 0, align 4
@IMR_BDOK = common dso_local global i32 0, align 4
@IMR_RDU = common dso_local global i32 0, align 4
@IMR_RXFOVW = common dso_local global i32 0, align 4
@IMR_CPWM = common dso_local global i32 0, align 4
@IMR_C2HCMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Power Save off (module option)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"FW Power Save off (module option)\0A\00", align 1
@FW_PS_MIN_MODE = common dso_local global i32 0, align 4
@FW_PS_MAX_MODE = common dso_local global i32 0, align 4
@FW_PS_DTIM_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Can't alloc buffer for fw\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Driver for Realtek RTL8192DE WLAN interface\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Loading firmware file %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl_fw_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to request firmware!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl92d_init_sw_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl92d_init_sw_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.rtl_pci*, align 8
  %8 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_pci* @rtl_pcidev(i32 %12)
  store %struct.rtl_pci* %13, %struct.rtl_pci** %7, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BAND_ON_5G, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %37 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 36, i32* %38, align 8
  br label %43

39:                                               ; preds = %1
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SINGLEMAC_SINGLEPHY, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  %54 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %55 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %54, i32 0, i32 0
  store i32 4096, i32* %55, align 8
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i32, i32* @CFENDFORM, align 4
  %58 = call i32 @BIT(i32 12)
  %59 = or i32 %57, %58
  %60 = call i32 @BIT(i32 13)
  %61 = or i32 %59, %60
  %62 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %63 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @RCR_APPFCS, align 4
  %65 = load i32, i32* @RCR_AMF, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RCR_ADF, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RCR_APP_MIC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RCR_APP_ICV, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RCR_AICV, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @RCR_ACRC32, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @RCR_AB, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @RCR_AM, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @RCR_APM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RCR_APP_PHYST_RXFF, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @RCR_HTC_LOC_CTRL, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %88 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @IMR_ROK, align 4
  %90 = load i32, i32* @IMR_VODOK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IMR_VIDOK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @IMR_BEDOK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @IMR_BKDOK, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @IMR_MGNTDOK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @IMR_HIGHDOK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @IMR_BDOK, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @IMR_RDU, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @IMR_RXFOVW, align 4
  %107 = or i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %111 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %110, i32 0, i32 3
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 0
  store i8* %109, i8** %113, align 8
  %114 = load i32, i32* @IMR_CPWM, align 4
  %115 = load i32, i32* @IMR_C2HCMD, align 4
  %116 = or i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %120 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %119, i32 0, i32 3
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  store i8* %118, i8** %122, align 8
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %124 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %123, i32 0, i32 5
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %131 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 4
  store i32 %129, i32* %132, align 8
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %134 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %133, i32 0, i32 5
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %141 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 5
  store i32 %139, i32* %142, align 4
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %144 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %143, i32 0, i32 5
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %151 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 4
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %154 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %56
  %159 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %56
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %162 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %160
  %167 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %160
  %169 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %170 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  store i32 3, i32* %171, align 8
  %172 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %173 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  store i32 5, i32* %174, align 4
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %176 = call i32 @rtl92d_init_aspm_vars(%struct.ieee80211_hw* %175)
  %177 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %178 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %187

182:                                              ; preds = %168
  %183 = load i32, i32* @FW_PS_MIN_MODE, align 4
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %185 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  store i32 %183, i32* %186, align 8
  br label %211

187:                                              ; preds = %168
  %188 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %189 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = load i32, i32* @FW_PS_MAX_MODE, align 4
  %195 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %196 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  store i32 %194, i32* %197, align 8
  br label %210

198:                                              ; preds = %187
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %200 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 3
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load i32, i32* @FW_PS_DTIM_MODE, align 4
  %206 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %207 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 2
  store i32 %205, i32* %208, align 8
  br label %209

209:                                              ; preds = %204, %198
  br label %210

210:                                              ; preds = %209, %193
  br label %211

211:                                              ; preds = %210, %182
  %212 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %213 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 3
  store i32 0, i32* %214, align 4
  store i32 0, i32* %5, align 4
  br label %215

215:                                              ; preds = %227, %211
  %216 = load i32, i32* %5, align 4
  %217 = icmp slt i32 %216, 8
  br i1 %217, label %218, label %230

218:                                              ; preds = %215
  %219 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %220 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = call i32 @skb_queue_head_init(i32* %225)
  br label %227

227:                                              ; preds = %218
  %228 = load i32, i32* %5, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %5, align 4
  br label %215

230:                                              ; preds = %215
  %231 = call i32* @vzalloc(i32 32768)
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %233 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 4
  store i32* %231, i32** %234, align 8
  %235 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %236 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %230
  %241 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %271

242:                                              ; preds = %230
  %243 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %244 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %243, i32 0, i32 0
  store i32 32768, i32* %244, align 8
  %245 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %246 = load i8*, i8** %8, align 8
  %247 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %246)
  %248 = load i32, i32* @THIS_MODULE, align 4
  %249 = load i8*, i8** %8, align 8
  %250 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %251 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @GFP_KERNEL, align 4
  %255 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %256 = load i32, i32* @rtl_fw_cb, align 4
  %257 = call i32 @request_firmware_nowait(i32 %248, i32 1, i8* %249, i32 %253, i32 %254, %struct.ieee80211_hw* %255, i32 %256)
  store i32 %257, i32* %4, align 4
  %258 = load i32, i32* %4, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %242
  %261 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %262 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %263 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 4
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @vfree(i32* %265)
  %267 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %268 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 4
  store i32* null, i32** %269, align 8
  store i32 1, i32* %2, align 4
  br label %271

270:                                              ; preds = %242
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %270, %260, %240
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rtl92d_init_aspm_vars(%struct.ieee80211_hw*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

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
