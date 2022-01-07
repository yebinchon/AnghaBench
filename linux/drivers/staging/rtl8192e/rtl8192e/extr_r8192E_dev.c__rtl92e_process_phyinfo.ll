; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_process_phyinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_process_phyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8192_priv = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64*, i64, i32*, i64*, i64, i64*, i64, i64, i64, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rtllib_rx_stats = type { i32, i64, i32*, i64, i64, i32*, i64, i64, i64, i64, i32, i32, i32 }
%struct.rtllib_hdr_3addr = type { i32 }

@_rtl92e_process_phyinfo.slide_rssi_index = internal global i64 0, align 8
@_rtl92e_process_phyinfo.slide_rssi_statistics = internal global i64 0, align 8
@_rtl92e_process_phyinfo.slide_evm_index = internal global i64 0, align 8
@_rtl92e_process_phyinfo.slide_evm_statistics = internal global i64 0, align 8
@_rtl92e_process_phyinfo.last_rssi = internal global i64 0, align 8
@_rtl92e_process_phyinfo.last_evm = internal global i64 0, align 8
@_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index = internal global i64 0, align 8
@_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics = internal global i64 0, align 8
@_rtl92e_process_phyinfo.last_beacon_adc_pwdb = internal global i64 0, align 8
@PHY_RSSI_SLID_WIN_MAX = common dso_local global i64 0, align 8
@RF90_PATH_A = common dso_local global i64 0, align 8
@RF90_PATH_C = common dso_local global i64 0, align 8
@COMP_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Jacken -> pPreviousstats->RxMIMOSignalStrength[rfpath]  = %d\0A\00", align 1
@RX_SMOOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Jacken -> priv->RxStats.RxRSSIPercentage[rfPath]  = %d\0A\00", align 1
@PHY_Beacon_RSSI_SLID_WIN_MAX = common dso_local global i64 0, align 8
@COMP_RXDESC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Smooth %s PWDB = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CCK\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"OFDM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*, i64*, %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats*)* @_rtl92e_process_phyinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_process_phyinfo(%struct.r8192_priv* %0, i64* %1, %struct.rtllib_rx_stats* %2, %struct.rtllib_rx_stats* %3) #0 {
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.rtllib_rx_stats*, align 8
  %8 = alloca %struct.rtllib_rx_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtllib_hdr_3addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.r8192_priv* %0, %struct.r8192_priv** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.rtllib_rx_stats* %2, %struct.rtllib_rx_stats** %7, align 8
  store %struct.rtllib_rx_stats* %3, %struct.rtllib_rx_stats** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i64*, i64** %6, align 8
  %18 = bitcast i64* %17 to %struct.rtllib_hdr_3addr*
  store %struct.rtllib_hdr_3addr* %18, %struct.rtllib_hdr_3addr** %13, align 8
  %19 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %13, align 8
  %20 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @WLAN_GET_SEQ_FRAG(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @WLAN_GET_SEQ_SEQ(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %29 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %31 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %4
  %36 = load i64, i64* @_rtl92e_process_phyinfo.slide_rssi_statistics, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* @_rtl92e_process_phyinfo.slide_rssi_statistics, align 8
  %38 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %39 = icmp uge i64 %36, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  store i64 %41, i64* @_rtl92e_process_phyinfo.slide_rssi_statistics, align 8
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @_rtl92e_process_phyinfo.slide_rssi_index, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* @_rtl92e_process_phyinfo.last_rssi, align 8
  %49 = load i64, i64* @_rtl92e_process_phyinfo.last_rssi, align 8
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %53, %49
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %40, %35
  %56 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %57 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %60 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %58
  store i64 %63, i64* %61, align 8
  %64 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %65 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %68 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @_rtl92e_process_phyinfo.slide_rssi_index, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* @_rtl92e_process_phyinfo.slide_rssi_index, align 8
  %73 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64 %66, i64* %73, align 8
  %74 = load i64, i64* @_rtl92e_process_phyinfo.slide_rssi_index, align 8
  %75 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %76 = icmp uge i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %55
  store i64 0, i64* @_rtl92e_process_phyinfo.slide_rssi_index, align 8
  br label %78

78:                                               ; preds = %77, %55
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @_rtl92e_process_phyinfo.slide_rssi_statistics, align 8
  %84 = udiv i64 %82, %83
  store i64 %84, i64* %12, align 8
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @rtl92e_translate_to_dbm(%struct.r8192_priv* %85, i64 %86)
  %88 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %89 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 11
  store i32 %87, i32* %90, align 4
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %96 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 4
  %97 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %98 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %78
  %102 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %103 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %588

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %78
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  br label %588

112:                                              ; preds = %108
  %113 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %114 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %119 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %118, i32 0, i32 9
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %268, label %122

122:                                              ; preds = %112
  %123 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %124 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %268

127:                                              ; preds = %122
  %128 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %128, i64* %10, align 8
  br label %129

129:                                              ; preds = %264, %127
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* @RF90_PATH_C, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %267

133:                                              ; preds = %129
  %134 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %135 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %134, i32 0, i32 2
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %10, align 8
  %140 = call i32 @rtl92e_is_legal_rf_path(i32 %138, i64 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %133
  br label %264

143:                                              ; preds = %133
  %144 = load i32, i32* @COMP_DBG, align 4
  %145 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %146 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %10, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %144, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %150)
  %152 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %153 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %143
  %161 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %162 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %168 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* %10, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32 %166, i32* %172, align 4
  br label %173

173:                                              ; preds = %160, %143
  %174 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %175 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %181 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* %10, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp sgt i32 %179, %186
  br i1 %187, label %188, label %228

188:                                              ; preds = %173
  %189 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %190 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* %10, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @RX_SMOOTH, align 4
  %197 = sub nsw i32 %196, 1
  %198 = mul nsw i32 %195, %197
  %199 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %200 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %10, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %198, %204
  %206 = load i32, i32* @RX_SMOOTH, align 4
  %207 = sdiv i32 %205, %206
  %208 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %209 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* %10, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 %207, i32* %213, align 4
  %214 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %215 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = load i64, i64* %10, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  %222 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %223 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %10, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 %221, i32* %227, align 4
  br label %254

228:                                              ; preds = %173
  %229 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %230 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* %10, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @RX_SMOOTH, align 4
  %237 = sub nsw i32 %236, 1
  %238 = mul nsw i32 %235, %237
  %239 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %240 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* %10, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %238, %244
  %246 = load i32, i32* @RX_SMOOTH, align 4
  %247 = sdiv i32 %245, %246
  %248 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %249 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* %10, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %247, i32* %253, align 4
  br label %254

254:                                              ; preds = %228, %188
  %255 = load i32, i32* @COMP_DBG, align 4
  %256 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %257 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = load i64, i64* %10, align 8
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %255, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %254, %142
  %265 = load i64, i64* %10, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %10, align 8
  br label %129

267:                                              ; preds = %129
  br label %268

268:                                              ; preds = %267, %122, %112
  %269 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %270 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %269, i32 0, i32 7
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %336

273:                                              ; preds = %268
  %274 = load i64, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %275 = add i64 %274, 1
  store i64 %275, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %276 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  %277 = icmp uge i64 %274, %276
  br i1 %277, label %278, label %293

278:                                              ; preds = %273
  %279 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  store i64 %279, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %280 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %281 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 3
  %283 = load i64*, i64** %282, align 8
  %284 = load i64, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %285 = getelementptr inbounds i64, i64* %283, i64 %284
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* @_rtl92e_process_phyinfo.last_beacon_adc_pwdb, align 8
  %287 = load i64, i64* @_rtl92e_process_phyinfo.last_beacon_adc_pwdb, align 8
  %288 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %289 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 4
  %291 = load i64, i64* %290, align 8
  %292 = sub i64 %291, %287
  store i64 %292, i64* %290, align 8
  br label %293

293:                                              ; preds = %278, %273
  %294 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %295 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %298 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 4
  %300 = load i64, i64* %299, align 8
  %301 = add i64 %300, %296
  store i64 %301, i64* %299, align 8
  %302 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %303 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %306 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 3
  %308 = load i64*, i64** %307, align 8
  %309 = load i64, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %310 = getelementptr inbounds i64, i64* %308, i64 %309
  store i64 %304, i64* %310, align 8
  %311 = load i64, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %312 = add i64 %311, 1
  store i64 %312, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %313 = load i64, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  %314 = load i64, i64* @PHY_Beacon_RSSI_SLID_WIN_MAX, align 8
  %315 = icmp uge i64 %313, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %293
  store i64 0, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_index, align 8
  br label %317

317:                                              ; preds = %316, %293
  %318 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %319 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 4
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @_rtl92e_process_phyinfo.slide_beacon_adc_pwdb_statistics, align 8
  %323 = udiv i64 %321, %322
  %324 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %325 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %324, i32 0, i32 3
  store i64 %323, i64* %325, align 8
  %326 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %327 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = icmp uge i64 %328, 3
  br i1 %329, label %330, label %335

330:                                              ; preds = %317
  %331 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %332 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = sub i64 %333, 3
  store i64 %334, i64* %332, align 8
  br label %335

335:                                              ; preds = %330, %317
  br label %336

336:                                              ; preds = %335, %268
  %337 = load i32, i32* @COMP_RXDESC, align 4
  %338 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %339 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %338, i32 0, i32 9
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %344 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %345 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %344, i32 0, i32 3
  %346 = load i64, i64* %345, align 8
  %347 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %337, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %343, i64 %346)
  %348 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %349 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %348, i32 0, i32 8
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %362, label %352

352:                                              ; preds = %336
  %353 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %354 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %353, i32 0, i32 7
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %352
  %358 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %359 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %358, i32 0, i32 6
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %429

362:                                              ; preds = %357, %352, %336
  %363 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %364 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %362
  %368 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %369 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %368, i32 0, i32 3
  %370 = load i64, i64* %369, align 8
  %371 = trunc i64 %370 to i32
  %372 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %373 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %372, i32 0, i32 0
  store i32 %371, i32* %373, align 8
  br label %374

374:                                              ; preds = %367, %362
  %375 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %376 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %375, i32 0, i32 3
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %379 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = icmp ugt i64 %377, %381
  br i1 %382, label %383, label %407

383:                                              ; preds = %374
  %384 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %385 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @RX_SMOOTH, align 4
  %388 = sub nsw i32 %387, 1
  %389 = mul nsw i32 %386, %388
  %390 = sext i32 %389 to i64
  %391 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %392 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = add i64 %390, %393
  %395 = load i32, i32* @RX_SMOOTH, align 4
  %396 = sext i32 %395 to i64
  %397 = udiv i64 %394, %396
  %398 = trunc i64 %397 to i32
  %399 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %400 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %399, i32 0, i32 0
  store i32 %398, i32* %400, align 8
  %401 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %402 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = add nsw i32 %403, 1
  %405 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %406 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %405, i32 0, i32 0
  store i32 %404, i32* %406, align 8
  br label %425

407:                                              ; preds = %374
  %408 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %409 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @RX_SMOOTH, align 4
  %412 = sub nsw i32 %411, 1
  %413 = mul nsw i32 %410, %412
  %414 = sext i32 %413 to i64
  %415 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %416 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %415, i32 0, i32 3
  %417 = load i64, i64* %416, align 8
  %418 = add i64 %414, %417
  %419 = load i32, i32* @RX_SMOOTH, align 4
  %420 = sext i32 %419 to i64
  %421 = udiv i64 %418, %420
  %422 = trunc i64 %421 to i32
  %423 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %424 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %423, i32 0, i32 0
  store i32 %422, i32* %424, align 8
  br label %425

425:                                              ; preds = %407, %383
  %426 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %427 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %428 = call i32 @rtl92e_update_rx_statistics(%struct.r8192_priv* %426, %struct.rtllib_rx_stats* %427)
  br label %429

429:                                              ; preds = %425, %357
  %430 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %431 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %430, i32 0, i32 4
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %588

434:                                              ; preds = %429
  %435 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %436 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %435, i32 0, i32 8
  %437 = load i64, i64* %436, align 8
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %449, label %439

439:                                              ; preds = %434
  %440 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %441 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %440, i32 0, i32 7
  %442 = load i64, i64* %441, align 8
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %449, label %444

444:                                              ; preds = %439
  %445 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %446 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %445, i32 0, i32 6
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %507

449:                                              ; preds = %444, %439, %434
  %450 = load i64, i64* @_rtl92e_process_phyinfo.slide_evm_statistics, align 8
  %451 = add i64 %450, 1
  store i64 %451, i64* @_rtl92e_process_phyinfo.slide_evm_statistics, align 8
  %452 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %453 = icmp uge i64 %450, %452
  br i1 %453, label %454, label %469

454:                                              ; preds = %449
  %455 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  store i64 %455, i64* @_rtl92e_process_phyinfo.slide_evm_statistics, align 8
  %456 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %457 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %457, i32 0, i32 5
  %459 = load i64*, i64** %458, align 8
  %460 = load i64, i64* @_rtl92e_process_phyinfo.slide_evm_index, align 8
  %461 = getelementptr inbounds i64, i64* %459, i64 %460
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* @_rtl92e_process_phyinfo.last_evm, align 8
  %463 = load i64, i64* @_rtl92e_process_phyinfo.last_evm, align 8
  %464 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %465 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %465, i32 0, i32 6
  %467 = load i64, i64* %466, align 8
  %468 = sub i64 %467, %463
  store i64 %468, i64* %466, align 8
  br label %469

469:                                              ; preds = %454, %449
  %470 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %471 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %470, i32 0, i32 4
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %474 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 6
  %476 = load i64, i64* %475, align 8
  %477 = add i64 %476, %472
  store i64 %477, i64* %475, align 8
  %478 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %479 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %478, i32 0, i32 4
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %482 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %482, i32 0, i32 5
  %484 = load i64*, i64** %483, align 8
  %485 = load i64, i64* @_rtl92e_process_phyinfo.slide_evm_index, align 8
  %486 = add i64 %485, 1
  store i64 %486, i64* @_rtl92e_process_phyinfo.slide_evm_index, align 8
  %487 = getelementptr inbounds i64, i64* %484, i64 %485
  store i64 %480, i64* %487, align 8
  %488 = load i64, i64* @_rtl92e_process_phyinfo.slide_evm_index, align 8
  %489 = load i64, i64* @PHY_RSSI_SLID_WIN_MAX, align 8
  %490 = icmp uge i64 %488, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %469
  store i64 0, i64* @_rtl92e_process_phyinfo.slide_evm_index, align 8
  br label %492

492:                                              ; preds = %491, %469
  %493 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %494 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %494, i32 0, i32 6
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @_rtl92e_process_phyinfo.slide_evm_statistics, align 8
  %498 = udiv i64 %496, %497
  store i64 %498, i64* %12, align 8
  %499 = load i64, i64* %12, align 8
  %500 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %501 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %501, i32 0, i32 7
  store i64 %499, i64* %502, align 8
  %503 = load i64, i64* %12, align 8
  %504 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %505 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %505, i32 0, i32 8
  store i64 %503, i64* %506, align 8
  br label %507

507:                                              ; preds = %492, %444
  %508 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %509 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %508, i32 0, i32 8
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %522, label %512

512:                                              ; preds = %507
  %513 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %514 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %513, i32 0, i32 7
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %522, label %517

517:                                              ; preds = %512
  %518 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %519 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %518, i32 0, i32 6
  %520 = load i64, i64* %519, align 8
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %587

522:                                              ; preds = %517, %512, %507
  store i64 0, i64* %11, align 8
  br label %523

523:                                              ; preds = %583, %522
  %524 = load i64, i64* %11, align 8
  %525 = icmp ult i64 %524, 2
  br i1 %525, label %526, label %586

526:                                              ; preds = %523
  %527 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %528 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %527, i32 0, i32 5
  %529 = load i32*, i32** %528, align 8
  %530 = load i64, i64* %11, align 8
  %531 = getelementptr inbounds i32, i32* %529, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = icmp ne i32 %532, -1
  br i1 %533, label %534, label %582

534:                                              ; preds = %526
  %535 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %536 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %536, i32 0, i32 9
  %538 = load i32*, i32** %537, align 8
  %539 = load i64, i64* %11, align 8
  %540 = getelementptr inbounds i32, i32* %538, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %556

543:                                              ; preds = %534
  %544 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %545 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %544, i32 0, i32 5
  %546 = load i32*, i32** %545, align 8
  %547 = load i64, i64* %11, align 8
  %548 = getelementptr inbounds i32, i32* %546, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %551 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %551, i32 0, i32 9
  %553 = load i32*, i32** %552, align 8
  %554 = load i64, i64* %11, align 8
  %555 = getelementptr inbounds i32, i32* %553, i64 %554
  store i32 %549, i32* %555, align 4
  br label %556

556:                                              ; preds = %543, %534
  %557 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %558 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %558, i32 0, i32 9
  %560 = load i32*, i32** %559, align 8
  %561 = load i64, i64* %11, align 8
  %562 = getelementptr inbounds i32, i32* %560, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* @RX_SMOOTH, align 4
  %565 = sub nsw i32 %564, 1
  %566 = mul nsw i32 %563, %565
  %567 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %7, align 8
  %568 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %567, i32 0, i32 5
  %569 = load i32*, i32** %568, align 8
  %570 = load i64, i64* %11, align 8
  %571 = getelementptr inbounds i32, i32* %569, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = add nsw i32 %566, %572
  %574 = load i32, i32* @RX_SMOOTH, align 4
  %575 = sdiv i32 %573, %574
  %576 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %577 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %577, i32 0, i32 9
  %579 = load i32*, i32** %578, align 8
  %580 = load i64, i64* %11, align 8
  %581 = getelementptr inbounds i32, i32* %579, i64 %580
  store i32 %575, i32* %581, align 4
  br label %582

582:                                              ; preds = %556, %526
  br label %583

583:                                              ; preds = %582
  %584 = load i64, i64* %11, align 8
  %585 = add i64 %584, 1
  store i64 %585, i64* %11, align 8
  br label %523

586:                                              ; preds = %523
  br label %587

587:                                              ; preds = %586, %517
  br label %588

588:                                              ; preds = %106, %111, %587, %429
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_FRAG(i32) #1

declare dso_local i32 @WLAN_GET_SEQ_SEQ(i32) #1

declare dso_local i32 @rtl92e_translate_to_dbm(%struct.r8192_priv*, i64) #1

declare dso_local i32 @rtl92e_is_legal_rf_path(i32, i64) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @rtl92e_update_rx_statistics(%struct.r8192_priv*, %struct.rtllib_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
