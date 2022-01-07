; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_sw.c_rtl88e_init_sw_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_sw.c_rtl88e_init_sw_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32*, i32, i8*, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64, i64 }
%struct.rtl_pci = type { i32, i32, i32, i8*, i8** }

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
@RCR_ACRC32 = common dso_local global i32 0, align 4
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
@.str = private unnamed_addr constant [19 x i8] c"watchdog disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"rtl8188ee: Power Save off (module option)\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"rtl8188ee: FW Power Save off (module option)\0A\00", align 1
@FW_PS_MIN_MODE = common dso_local global i32 0, align 4
@FW_PS_MAX_MODE = common dso_local global i32 0, align 4
@FW_PS_DTIM_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Can't alloc buffer for fw.\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"rtlwifi/rtl8188efw.bin\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Using firmware %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl_fw_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to request firmware!\0A\00", align 1
@rtl88ee_fw_clk_off_timer_callback = common dso_local global i32 0, align 4
@rtl88e_dm_fast_antenna_training_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl88e_init_sw_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca i32, align 4
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
  %15 = call i32 @rtl8188ee_bt_reg_init(%struct.ieee80211_hw* %14)
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @CFENDFORM, align 4
  %29 = call i32 @BIT(i32 15)
  %30 = or i32 %28, %29
  %31 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %32 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** @BAND_ON_2_4G, align 8
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 5
  store i8* %33, i8** %36, align 8
  %37 = load i8*, i8** @BAND_ON_2_4G, align 8
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  store i8* %37, i8** %40, align 8
  %41 = load i32, i32* @SINGLEMAC_SINGLEPHY, align 4
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %43 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @RCR_APPFCS, align 4
  %46 = load i32, i32* @RCR_APP_MIC, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RCR_APP_ICV, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RCR_APP_PHYST_RXFF, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RCR_HTC_LOC_CTRL, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RCR_AMF, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RCR_ACF, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RCR_ADF, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RCR_AICV, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RCR_ACRC32, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @RCR_AB, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @RCR_AM, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @RCR_APM, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %71 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @IMR_PSTIMEOUT, align 4
  %73 = load i32, i32* @IMR_HSISR_IND_ON_INT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @IMR_C2HCMD, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @IMR_HIGHDOK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @IMR_MGNTDOK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IMR_BKDOK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IMR_BEDOK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @IMR_VIDOK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IMR_VODOK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @IMR_RDU, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @IMR_ROK, align 4
  %92 = or i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %96 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %95, i32 0, i32 4
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  store i8* %94, i8** %98, align 8
  %99 = load i32, i32* @IMR_RXFOVW, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %103 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %102, i32 0, i32 4
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* %101, i8** %105, align 8
  %106 = load i32, i32* @HSIMR_PDN_INT_EN, align 4
  %107 = load i32, i32* @HSIMR_RON_INT_EN, align 4
  %108 = or i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %112 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %114 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %113, i32 0, i32 6
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 5
  store i32 %119, i32* %122, align 4
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %124 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %123, i32 0, i32 6
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %131 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 6
  store i32 %129, i32* %132, align 4
  %133 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %134 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %133, i32 0, i32 6
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %141 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 4
  store i32 %139, i32* %142, align 4
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %144 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %143, i32 0, i32 6
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %151 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %153 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %152, i32 0, i32 6
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %1
  %161 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %1
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %162
  %169 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %162
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %172 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %170
  %177 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %170
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %180 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  store i32 3, i32* %181, align 4
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %183 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  store i32 5, i32* %184, align 4
  %185 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %186 = call i32 @rtl88e_init_aspm_vars(%struct.ieee80211_hw* %185)
  %187 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %188 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %197

192:                                              ; preds = %178
  %193 = load i32, i32* @FW_PS_MIN_MODE, align 4
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %195 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  store i32 %193, i32* %196, align 4
  br label %221

197:                                              ; preds = %178
  %198 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %199 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 2
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = load i32, i32* @FW_PS_MAX_MODE, align 4
  %205 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %206 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 3
  store i32 %204, i32* %207, align 4
  br label %220

208:                                              ; preds = %197
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %210 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load i32, i32* @FW_PS_DTIM_MODE, align 4
  %216 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %217 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 3
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %214, %208
  br label %220

220:                                              ; preds = %219, %203
  br label %221

221:                                              ; preds = %220, %192
  %222 = call i32* @vzalloc(i32 32768)
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %224 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 2
  store i32* %222, i32** %225, align 8
  %226 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %227 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %233, label %231

231:                                              ; preds = %221
  %232 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %304

233:                                              ; preds = %221
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %234 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %235 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %234, i32 0, i32 0
  store i32 32768, i32* %235, align 8
  %236 = load i8*, i8** %8, align 8
  %237 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %236)
  %238 = load i32, i32* @THIS_MODULE, align 4
  %239 = load i8*, i8** %8, align 8
  %240 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %241 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @GFP_KERNEL, align 4
  %245 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %246 = load i32, i32* @rtl_fw_cb, align 4
  %247 = call i32 @request_firmware_nowait(i32 %238, i32 1, i8* %239, i32 %243, i32 %244, %struct.ieee80211_hw* %245, i32 %246)
  store i32 %247, i32* %4, align 4
  %248 = load i32, i32* %4, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %233
  %251 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %252 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %253 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = call i32 @vfree(i32* %255)
  %257 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %258 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %257, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 2
  store i32* null, i32** %259, align 8
  store i32 1, i32* %2, align 4
  br label %304

260:                                              ; preds = %233
  %261 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %262 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  store i32 0, i32* %263, align 8
  %264 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %265 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %264, i32 0, i32 4
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  store i32 10, i32* %266, align 4
  store i32 0, i32* %7, align 4
  br label %267

267:                                              ; preds = %279, %260
  %268 = load i32, i32* %7, align 4
  %269 = icmp slt i32 %268, 8
  br i1 %269, label %270, label %282

270:                                              ; preds = %267
  %271 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %272 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = call i32 @skb_queue_head_init(i32* %277)
  br label %279

279:                                              ; preds = %270
  %280 = load i32, i32* %7, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %7, align 4
  br label %267

282:                                              ; preds = %267
  %283 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %284 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 2
  store i32 0, i32* %285, align 4
  %286 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %287 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %282
  %292 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %293 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 1
  %295 = load i32, i32* @rtl88ee_fw_clk_off_timer_callback, align 4
  %296 = call i32 @timer_setup(i32* %294, i32 %295, i32 0)
  br label %297

297:                                              ; preds = %291, %282
  %298 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %299 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = load i32, i32* @rtl88e_dm_fast_antenna_training_callback, align 4
  %302 = call i32 @timer_setup(i32* %300, i32 %301, i32 0)
  %303 = load i32, i32* %4, align 4
  store i32 %303, i32* %2, align 4
  br label %304

304:                                              ; preds = %297, %250, %231
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8188ee_bt_reg_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rtl88e_init_aspm_vars(%struct.ieee80211_hw*) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.ieee80211_hw*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
