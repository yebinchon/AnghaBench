; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_sw.c_rtl92s_init_sw_vars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_sw.c_rtl92s_init_sw_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32*, i32, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64 }
%struct.rtl_pci = type { i32, i32, i32, i32, i8**, i64 }

@.str = private unnamed_addr constant [24 x i8] c"rtlwifi/rtl8192sefw.bin\00", align 1
@BAND_ON_2_4G = common dso_local global i8* null, align 8
@SINGLEMAC_SINGLEPHY = common dso_local global i32 0, align 4
@RCR_APPFCS = common dso_local global i32 0, align 4
@RCR_APWRMGT = common dso_local global i32 0, align 4
@RCR_AMF = common dso_local global i32 0, align 4
@RCR_ADF = common dso_local global i32 0, align 4
@RCR_APP_MIC = common dso_local global i32 0, align 4
@RCR_APP_ICV = common dso_local global i32 0, align 4
@RCR_AICV = common dso_local global i32 0, align 4
@RCR_ACRC32 = common dso_local global i32 0, align 4
@RCR_AB = common dso_local global i32 0, align 4
@RCR_AM = common dso_local global i32 0, align 4
@RCR_APM = common dso_local global i32 0, align 4
@RCR_APP_PHYST_STAFF = common dso_local global i32 0, align 4
@RCR_APP_PHYST_RXFF = common dso_local global i32 0, align 4
@RCR_FIFO_OFFSET = common dso_local global i32 0, align 4
@IMR_ROK = common dso_local global i32 0, align 4
@IMR_VODOK = common dso_local global i32 0, align 4
@IMR_VIDOK = common dso_local global i32 0, align 4
@IMR_BEDOK = common dso_local global i32 0, align 4
@IMR_BKDOK = common dso_local global i32 0, align 4
@IMR_HCCADOK = common dso_local global i32 0, align 4
@IMR_MGNTDOK = common dso_local global i32 0, align 4
@IMR_COMDOK = common dso_local global i32 0, align 4
@IMR_HIGHDOK = common dso_local global i32 0, align 4
@IMR_BDOK = common dso_local global i32 0, align 4
@IMR_RXCMDOK = common dso_local global i32 0, align 4
@IMR_RDU = common dso_local global i32 0, align 4
@IMR_RXFOVW = common dso_local global i32 0, align 4
@IMR_BCNINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Power Save off (module option)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"FW Power Save off (module option)\0A\00", align 1
@FW_PS_MIN_MODE = common dso_local global i32 0, align 4
@FW_PS_MAX_MODE = common dso_local global i32 0, align 4
@FW_PS_DTIM_MODE = common dso_local global i32 0, align 4
@RTL8190_MAX_FIRMWARE_CODE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Driver for Realtek RTL8192SE/RTL8191SE\0ALoading firmware %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rtl92se_fw_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to request firmware!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @rtl92s_init_sw_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl92s_init_sw_vars(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_pci*, align 8
  %6 = alloca i32, align 4
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
  store i32 0, i32* %6, align 4
  store i32 7, i32* %7, align 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** @BAND_ON_2_4G, align 8
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  store i8* %29, i8** %32, align 8
  %33 = load i8*, i8** @BAND_ON_2_4G, align 8
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %35 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  %37 = load i32, i32* @SINGLEMAC_SINGLEPHY, align 4
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %42 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @RCR_APPFCS, align 4
  %44 = load i32, i32* @RCR_APWRMGT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RCR_AMF, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RCR_ADF, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RCR_APP_MIC, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RCR_APP_ICV, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @RCR_AICV, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @RCR_ACRC32, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RCR_AB, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @RCR_AM, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @RCR_APM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @RCR_APP_PHYST_STAFF, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @RCR_APP_PHYST_RXFF, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @RCR_FIFO_OFFSET, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %73 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @IMR_ROK, align 4
  %75 = load i32, i32* @IMR_VODOK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @IMR_VIDOK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @IMR_BEDOK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @IMR_BKDOK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @IMR_HCCADOK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @IMR_MGNTDOK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @IMR_COMDOK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @IMR_HIGHDOK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @IMR_BDOK, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IMR_RXCMDOK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @IMR_RDU, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IMR_RXFOVW, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @IMR_BCNINT, align 4
  %100 = or i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %104 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %103, i32 0, i32 4
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  store i8* %102, i8** %106, align 8
  %107 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %108 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %107, i32 0, i32 4
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  store i8* null, i8** %110, align 8
  %111 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %112 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %111, i32 0, i32 1
  store i32 48, i32* %112, align 4
  %113 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %114 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %113, i32 0, i32 2
  store i32 48, i32* %114, align 8
  %115 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %116 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %115, i32 0, i32 3
  store i32 1, i32* %116, align 4
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %118 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %117, i32 0, i32 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %125 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 4
  store i32 %123, i32* %126, align 4
  %127 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %128 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %127, i32 0, i32 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %135 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 5
  store i32 %133, i32* %136, align 4
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %138 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %137, i32 0, i32 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %145 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  store i32 %143, i32* %146, align 4
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %148 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %1
  %153 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %1
  %155 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %156 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %154
  %161 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %154
  %163 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %164 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  store i32 3, i32* %165, align 4
  %166 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %167 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  store i32 5, i32* %168, align 4
  %169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %170 = call i32 @rtl92s_init_aspm_vars(%struct.ieee80211_hw* %169)
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %172 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %181

176:                                              ; preds = %162
  %177 = load i32, i32* @FW_PS_MIN_MODE, align 4
  %178 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %179 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  store i32 %177, i32* %180, align 4
  br label %205

181:                                              ; preds = %162
  %182 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %183 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load i32, i32* @FW_PS_MAX_MODE, align 4
  %189 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %190 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  store i32 %188, i32* %191, align 4
  br label %204

192:                                              ; preds = %181
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %194 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 3
  br i1 %197, label %198, label %203

198:                                              ; preds = %192
  %199 = load i32, i32* @FW_PS_DTIM_MODE, align 4
  %200 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %201 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  store i32 %199, i32* %202, align 4
  br label %203

203:                                              ; preds = %198, %192
  br label %204

204:                                              ; preds = %203, %187
  br label %205

205:                                              ; preds = %204, %176
  %206 = call i32* @vzalloc(i32 4)
  %207 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %208 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  store i32* %206, i32** %209, align 8
  %210 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %211 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %205
  store i32 1, i32* %2, align 4
  br label %250

216:                                              ; preds = %205
  %217 = load i32, i32* @RTL8190_MAX_FIRMWARE_CODE_SIZE, align 4
  %218 = mul nsw i32 %217, 2
  %219 = sext i32 %218 to i64
  %220 = add i64 %219, 4
  %221 = trunc i64 %220 to i32
  %222 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %223 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %224)
  %226 = load i32, i32* @THIS_MODULE, align 4
  %227 = load i8*, i8** %8, align 8
  %228 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %229 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @GFP_KERNEL, align 4
  %233 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %234 = load i32, i32* @rtl92se_fw_cb, align 4
  %235 = call i32 @request_firmware_nowait(i32 %226, i32 1, i8* %227, i32 %231, i32 %232, %struct.ieee80211_hw* %233, i32 %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %216
  %239 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %240 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %241 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @vfree(i32* %243)
  %245 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %246 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  store i32* null, i32** %247, align 8
  store i32 1, i32* %2, align 4
  br label %250

248:                                              ; preds = %216
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %248, %238, %215
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @rtl92s_init_aspm_vars(%struct.ieee80211_hw*) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.ieee80211_hw*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
