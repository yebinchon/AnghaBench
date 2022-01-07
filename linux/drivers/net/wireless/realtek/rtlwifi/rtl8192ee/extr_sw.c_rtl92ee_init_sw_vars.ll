; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_sw.c_rtl92ee_init_sw_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_sw.c_rtl92ee_init_sw_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32, i32*, i32, i8*, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.rtl_pci = type { i32, i32, i32, i8** }

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
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@IMR_PSTIMEOUT = common dso_local global i32 0, align 4
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
@.str = private unnamed_addr constant [19 x i8] c"watchdog disabled\0A\00", align 1
@FW_PS_MIN_MODE = common dso_local global i32 0, align 4
@FW_PS_MAX_MODE = common dso_local global i32 0, align 4
@FW_PS_DTIM_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't alloc buffer for fw\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"rtlwifi/rtl8192eefw.bin\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Using firmware %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl_fw_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to request firmware!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92ee_init_sw_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_pci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_pci* @rtl_pcidev(i32 %11)
  store %struct.rtl_pci* %12, %struct.rtl_pci** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = call i32 @rtl92ee_bt_reg_init(%struct.ieee80211_hw* %13)
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = call i32 (...) @rtl_btc_get_ops_pointer()
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @CFENDFORM, align 4
  %38 = call i32 @BIT(i32 15)
  %39 = or i32 %37, %38
  %40 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %41 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @BAND_ON_2_4G, align 8
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @BAND_ON_2_4G, align 8
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* @SINGLEMAC_SINGLEPHY, align 4
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
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
  %67 = load i32, i32* @RCR_ACRC32, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RCR_AB, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RCR_AM, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RCR_APM, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %76 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @IMR_PSTIMEOUT, align 4
  %78 = load i32, i32* @IMR_C2HCMD, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IMR_HIGHDOK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @IMR_MGNTDOK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @IMR_BKDOK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IMR_BEDOK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @IMR_VIDOK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @IMR_VODOK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IMR_RDU, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @IMR_ROK, align 4
  %95 = or i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %99 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %98, i32 0, i32 3
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* %97, i8** %101, align 8
  %102 = load i32, i32* @IMR_RXFOVW, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %106 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %105, i32 0, i32 3
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  store i8* %104, i8** %108, align 8
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %117 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 6
  store i32 %115, i32* %118, align 4
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %120 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %119, i32 0, i32 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %127 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 5
  store i32 %125, i32* %128, align 4
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %130 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %129, i32 0, i32 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %137 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 4
  store i32 %135, i32* %138, align 4
  %139 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %140 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %139, i32 0, i32 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %147 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %149 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %148, i32 0, i32 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %1
  %157 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %1
  %159 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %160 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  store i32 3, i32* %161, align 4
  %162 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %163 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  store i32 5, i32* %164, align 4
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %166 = call i32 @rtl92ee_init_aspm_vars(%struct.ieee80211_hw* %165)
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %168 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %177

172:                                              ; preds = %158
  %173 = load i32, i32* @FW_PS_MIN_MODE, align 4
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %175 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  store i32 %173, i32* %176, align 4
  br label %201

177:                                              ; preds = %158
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %179 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load i32, i32* @FW_PS_MAX_MODE, align 4
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %186 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  store i32 %184, i32* %187, align 4
  br label %200

188:                                              ; preds = %177
  %189 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %190 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 3
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load i32, i32* @FW_PS_DTIM_MODE, align 4
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %197 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  store i32 %195, i32* %198, align 4
  br label %199

199:                                              ; preds = %194, %188
  br label %200

200:                                              ; preds = %199, %183
  br label %201

201:                                              ; preds = %200, %172
  %202 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %203 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  store i32 0, i32* %204, align 8
  %205 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %206 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 2
  store i32 0, i32* %207, align 4
  %208 = call i32* @vzalloc(i32 32768)
  %209 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %210 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  store i32* %208, i32** %211, align 8
  %212 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %213 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %201
  %218 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %247

219:                                              ; preds = %201
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %220 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %221 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %220, i32 0, i32 0
  store i32 32768, i32* %221, align 8
  %222 = load i8*, i8** %7, align 8
  %223 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %222)
  %224 = load i32, i32* @THIS_MODULE, align 4
  %225 = load i8*, i8** %7, align 8
  %226 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %227 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @GFP_KERNEL, align 4
  %231 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %232 = load i32, i32* @rtl_fw_cb, align 4
  %233 = call i32 @request_firmware_nowait(i32 %224, i32 1, i8* %225, i32 %229, i32 %230, %struct.ieee80211_hw* %231, i32 %232)
  store i32 %233, i32* %6, align 4
  %234 = load i32, i32* %6, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %219
  %237 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %238 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %239 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @vfree(i32* %241)
  %243 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %244 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 1
  store i32* null, i32** %245, align 8
  store i32 1, i32* %2, align 4
  br label %247

246:                                              ; preds = %219
  store i32 0, i32* %2, align 4
  br label %247

247:                                              ; preds = %246, %236, %217
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92ee_bt_reg_init(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_btc_get_ops_pointer(...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rtl92ee_init_aspm_vars(%struct.ieee80211_hw*) #1

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
