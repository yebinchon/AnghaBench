; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_sw.c_rtl92c_init_sw_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_sw.c_rtl92c_init_sw_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32*, i32, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i64 }
%struct.rtl_pci = type { i32, i32, i8** }
%struct.rtl_hal = type { i32 }

@CFENDFORM = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i8* null, align 8
@SINGLEMAC_SINGLEPHY = common dso_local global i32 0, align 4
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
@.str = private unnamed_addr constant [43 x i8] c"rtl8192ce: Power Save off (module option)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"rtl8192ce: FW Power Save off (module option)\0A\00", align 1
@FW_PS_MIN_MODE = common dso_local global i32 0, align 4
@FW_PS_MAX_MODE = common dso_local global i32 0, align 4
@FW_PS_DTIM_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Can't alloc buffer for fw\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"rtlwifi/rtl8192cfwU.bin\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"rtlwifi/rtl8192cfwU_B.bin\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"rtlwifi/rtl8192cfw.bin\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Using firmware %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl_fw_cb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to request firmware!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92c_init_sw_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca %struct.rtl_hal*, align 8
  %8 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_pci* @rtl_pcidev(i32 %12)
  store %struct.rtl_pci* %13, %struct.rtl_pci** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %7, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call i32 @rtl8192ce_bt_reg_init(%struct.ieee80211_hw* %17)
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @CFENDFORM, align 4
  %32 = call i32 @BIT(i32 12)
  %33 = or i32 %31, %32
  %34 = call i32 @BIT(i32 13)
  %35 = or i32 %33, %34
  %36 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %37 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** @BAND_ON_2_4G, align 8
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 3
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** @BAND_ON_2_4G, align 8
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  store i8* %42, i8** %45, align 8
  %46 = load i32, i32* @SINGLEMAC_SINGLEPHY, align 4
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @RCR_APPFCS, align 4
  %51 = load i32, i32* @RCR_AMF, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RCR_ADF, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @RCR_APP_MIC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @RCR_APP_ICV, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @RCR_AICV, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @RCR_ACRC32, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RCR_AB, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @RCR_AM, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RCR_APM, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RCR_APP_PHYST_RXFF, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RCR_HTC_LOC_CTRL, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %74 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @IMR_ROK, align 4
  %76 = load i32, i32* @IMR_VODOK, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IMR_VIDOK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IMR_BEDOK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @IMR_BKDOK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IMR_MGNTDOK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IMR_HIGHDOK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @IMR_BDOK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @IMR_RDU, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IMR_RXFOVW, align 4
  %93 = or i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %97 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %96, i32 0, i32 2
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  store i8* %95, i8** %99, align 8
  %100 = load i32, i32* @IMR_CPWM, align 4
  %101 = load i32, i32* @IMR_C2HCMD, align 4
  %102 = or i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %106 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %105, i32 0, i32 2
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  store i8* %104, i8** %108, align 8
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %117 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  store i32 %115, i32* %118, align 4
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %120 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %119, i32 0, i32 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %127 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  store i32 %125, i32* %128, align 4
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %130 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %129, i32 0, i32 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %137 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 4
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %140 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %1
  %145 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %1
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %148 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %146
  %153 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %146
  %155 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %156 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i32 3, i32* %157, align 4
  %158 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %159 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  store i32 5, i32* %160, align 4
  %161 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %162 = call i32 @rtl92c_init_aspm_vars(%struct.ieee80211_hw* %161)
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %173

168:                                              ; preds = %154
  %169 = load i32, i32* @FW_PS_MIN_MODE, align 4
  %170 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %171 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 4
  br label %197

173:                                              ; preds = %154
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %175 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 2
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = load i32, i32* @FW_PS_MAX_MODE, align 4
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %182 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 4
  br label %196

184:                                              ; preds = %173
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %186 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 3
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load i32, i32* @FW_PS_DTIM_MODE, align 4
  %192 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %193 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 2
  store i32 %191, i32* %194, align 4
  br label %195

195:                                              ; preds = %190, %184
  br label %196

196:                                              ; preds = %195, %179
  br label %197

197:                                              ; preds = %196, %168
  %198 = call i32* @vzalloc(i32 16384)
  %199 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %200 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  store i32* %198, i32** %201, align 8
  %202 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %203 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %197
  %208 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %259

209:                                              ; preds = %197
  %210 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %211 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @IS_VENDOR_UMC_A_CUT(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %209
  %216 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %217 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @IS_92C_SERIAL(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %215
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %231

222:                                              ; preds = %215, %209
  %223 = load %struct.rtl_hal*, %struct.rtl_hal** %7, align 8
  %224 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i64 @IS_81XXC_VENDOR_UMC_B_CUT(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %230

229:                                              ; preds = %222
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %230

230:                                              ; preds = %229, %228
  br label %231

231:                                              ; preds = %230, %221
  %232 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %233 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %232, i32 0, i32 0
  store i32 16384, i32* %233, align 8
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %234)
  %236 = load i32, i32* @THIS_MODULE, align 4
  %237 = load i8*, i8** %8, align 8
  %238 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %239 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @GFP_KERNEL, align 4
  %243 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %244 = load i32, i32* @rtl_fw_cb, align 4
  %245 = call i32 @request_firmware_nowait(i32 %236, i32 1, i8* %237, i32 %241, i32 %242, %struct.ieee80211_hw* %243, i32 %244)
  store i32 %245, i32* %4, align 4
  %246 = load i32, i32* %4, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %231
  %249 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %250 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %251 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @vfree(i32* %253)
  %255 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %256 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  store i32* null, i32** %257, align 8
  store i32 1, i32* %2, align 4
  br label %259

258:                                              ; preds = %231
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %258, %248, %207
  %260 = load i32, i32* %2, align 4
  ret i32 %260
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl8192ce_bt_reg_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rtl92c_init_aspm_vars(%struct.ieee80211_hw*) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @IS_VENDOR_UMC_A_CUT(i32) #1

declare dso_local i32 @IS_92C_SERIAL(i32) #1

declare dso_local i64 @IS_81XXC_VENDOR_UMC_B_CUT(i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.ieee80211_hw*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
