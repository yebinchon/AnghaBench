; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_main.c_wl18xx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32* }
%struct.wl1271 = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.wl18xx_priv* }
%struct.TYPE_6__ = type { i32 }
%struct.wl18xx_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@WL18XX_MAX_LINKS = common dso_local global i64 0, align 8
@WLCORE_MAX_LINKS = common dso_local global i64 0, align 8
@WL18XX_MAX_AP_STATIONS = common dso_local global i64 0, align 8
@WL18XX_CONF_SG_PARAMS_MAX = common dso_local global i64 0, align 8
@WLCORE_CONF_SG_PARAMS_MAX = common dso_local global i64 0, align 8
@wl18xx_rtable = common dso_local global i32 0, align 4
@WL18XX_NUM_TX_DESCRIPTORS = common dso_local global i32 0, align 4
@WL18XX_NUM_RX_DESCRIPTORS = common dso_local global i32 0, align 4
@wl18xx_iface_combinations = common dso_local global i32 0, align 4
@WL18XX_NUM_MAC_ADDRESSES = common dso_local global i32 0, align 4
@wl18xx_band_rate_to_idx = common dso_local global i32 0, align 4
@WL18XX_CONF_HW_RXTX_RATE_MAX = common dso_local global i32 0, align 4
@WL18XX_CONF_HW_RXTX_RATE_MCS0 = common dso_local global i32 0, align 4
@num_rx_desc_param = common dso_local global i32 0, align 4
@board_type_param = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"fpga\00", align 1
@BOARD_TYPE_FPGA_18XX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"hdk\00", align 1
@BOARD_TYPE_HDK_18XX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"dvp\00", align 1
@BOARD_TYPE_DVP_18XX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"evb\00", align 1
@BOARD_TYPE_EVB_18XX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"com8\00", align 1
@BOARD_TYPE_COM8_18XX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"invalid board type '%s'\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NUM_BOARD_TYPES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"invalid board type '%d'\00", align 1
@low_band_component_param = common dso_local global i32 0, align 4
@low_band_component_type_param = common dso_local global i32 0, align 4
@high_band_component_param = common dso_local global i32 0, align 4
@high_band_component_type_param = common dso_local global i32 0, align 4
@pwr_limit_reference_11_abg_param = common dso_local global i32 0, align 4
@n_antennas_2_param = common dso_local global i32 0, align 4
@n_antennas_5_param = common dso_local global i32 0, align 4
@dc2dc_param = common dso_local global i32 0, align 4
@ht_mode_param = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@HT_MODE_DEFAULT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"wide\00", align 1
@HT_MODE_WIDE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"siso20\00", align 1
@HT_MODE_SISO20 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"invalid ht_mode '%s'\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@wl18xx_mimo_ht_cap_2ghz = common dso_local global i32 0, align 4
@wl18xx_siso40_ht_cap_2ghz = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@wl18xx_siso40_ht_cap_5ghz = common dso_local global i32 0, align 4
@wl18xx_siso20_ht_cap = common dso_local global i32 0, align 4
@checksum_param = common dso_local global i32 0, align 4
@wl18xx_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wl18xx_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl18xx_setup(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl18xx_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %6 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 17
  %8 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %7, align 8
  store %struct.wl18xx_priv* %8, %struct.wl18xx_priv** %4, align 8
  %9 = load i64, i64* @WL18XX_MAX_LINKS, align 8
  %10 = load i64, i64* @WLCORE_MAX_LINKS, align 8
  %11 = icmp sgt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  %14 = load i64, i64* @WL18XX_MAX_AP_STATIONS, align 8
  %15 = load i64, i64* @WL18XX_MAX_LINKS, align 8
  %16 = icmp sgt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUILD_BUG_ON(i32 %17)
  %19 = load i64, i64* @WL18XX_CONF_SG_PARAMS_MAX, align 8
  %20 = load i64, i64* @WLCORE_CONF_SG_PARAMS_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load i32, i32* @wl18xx_rtable, align 4
  %25 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 16
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @WL18XX_NUM_TX_DESCRIPTORS, align 4
  %28 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %29 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @WL18XX_NUM_RX_DESCRIPTORS, align 4
  %31 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* @WL18XX_MAX_LINKS, align 8
  %34 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 14
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* @WL18XX_MAX_AP_STATIONS, align 8
  %37 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 13
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @wl18xx_iface_combinations, align 4
  %40 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @wl18xx_iface_combinations, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 11
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @WL18XX_NUM_MAC_ADDRESSES, align 4
  %47 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %48 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @wl18xx_band_rate_to_idx, align 4
  %50 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @WL18XX_CONF_HW_RXTX_RATE_MAX, align 4
  %53 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @WL18XX_CONF_HW_RXTX_RATE_MCS0, align 4
  %56 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 1
  store i32 4, i32* %59, align 4
  %60 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %61 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %60, i32 0, i32 2
  store i32 4, i32* %61, align 8
  %62 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 4, i32* %64, align 8
  %65 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 3
  store i32 4, i32* %66, align 4
  %67 = load i32, i32* @num_rx_desc_param, align 4
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %69, label %73

69:                                               ; preds = %1
  %70 = load i32, i32* @num_rx_desc_param, align 4
  %71 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %1
  %74 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %75 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %76 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wl18xx_conf_init(%struct.wl1271* %74, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %346

83:                                               ; preds = %73
  %84 = load i64, i64* @board_type_param, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %146

86:                                               ; preds = %83
  %87 = load i64, i64* @board_type_param, align 8
  %88 = call i32 @strcmp(i64 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* @BOARD_TYPE_FPGA_18XX, align 8
  %92 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %93 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i64 %91, i64* %95, align 8
  br label %145

96:                                               ; preds = %86
  %97 = load i64, i64* @board_type_param, align 8
  %98 = call i32 @strcmp(i64 %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* @BOARD_TYPE_HDK_18XX, align 8
  %102 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %103 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i64 %101, i64* %105, align 8
  br label %144

106:                                              ; preds = %96
  %107 = load i64, i64* @board_type_param, align 8
  %108 = call i32 @strcmp(i64 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* @BOARD_TYPE_DVP_18XX, align 8
  %112 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %113 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i64 %111, i64* %115, align 8
  br label %143

116:                                              ; preds = %106
  %117 = load i64, i64* @board_type_param, align 8
  %118 = call i32 @strcmp(i64 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load i64, i64* @BOARD_TYPE_EVB_18XX, align 8
  %122 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %123 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  store i64 %121, i64* %125, align 8
  br label %142

126:                                              ; preds = %116
  %127 = load i64, i64* @board_type_param, align 8
  %128 = call i32 @strcmp(i64 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = load i64, i64* @BOARD_TYPE_COM8_18XX, align 8
  %132 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %133 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i64 %131, i64* %135, align 8
  br label %141

136:                                              ; preds = %126
  %137 = load i64, i64* @board_type_param, align 8
  %138 = call i32 @wl1271_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %346

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %120
  br label %143

143:                                              ; preds = %142, %110
  br label %144

144:                                              ; preds = %143, %100
  br label %145

145:                                              ; preds = %144, %90
  br label %146

146:                                              ; preds = %145, %83
  %147 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %148 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @NUM_BOARD_TYPES, align 8
  %153 = icmp sge i64 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %146
  %155 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %156 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @wl1271_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %159)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %346

163:                                              ; preds = %146
  %164 = load i32, i32* @low_band_component_param, align 4
  %165 = icmp ne i32 %164, -1
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i32, i32* @low_band_component_param, align 4
  %168 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %169 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  store i32 %167, i32* %171, align 8
  br label %172

172:                                              ; preds = %166, %163
  %173 = load i32, i32* @low_band_component_type_param, align 4
  %174 = icmp ne i32 %173, -1
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i32, i32* @low_band_component_type_param, align 4
  %177 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %178 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %172
  %182 = load i32, i32* @high_band_component_param, align 4
  %183 = icmp ne i32 %182, -1
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load i32, i32* @high_band_component_param, align 4
  %186 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %187 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 3
  store i32 %185, i32* %189, align 8
  br label %190

190:                                              ; preds = %184, %181
  %191 = load i32, i32* @high_band_component_type_param, align 4
  %192 = icmp ne i32 %191, -1
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load i32, i32* @high_band_component_type_param, align 4
  %195 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %196 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 4
  store i32 %194, i32* %198, align 4
  br label %199

199:                                              ; preds = %193, %190
  %200 = load i32, i32* @pwr_limit_reference_11_abg_param, align 4
  %201 = icmp ne i32 %200, -1
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load i32, i32* @pwr_limit_reference_11_abg_param, align 4
  %204 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %205 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 5
  store i32 %203, i32* %207, align 8
  br label %208

208:                                              ; preds = %202, %199
  %209 = load i32, i32* @n_antennas_2_param, align 4
  %210 = icmp ne i32 %209, -1
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load i32, i32* @n_antennas_2_param, align 4
  %213 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %214 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 6
  store i32 %212, i32* %216, align 4
  br label %217

217:                                              ; preds = %211, %208
  %218 = load i32, i32* @n_antennas_5_param, align 4
  %219 = icmp ne i32 %218, -1
  br i1 %219, label %220, label %226

220:                                              ; preds = %217
  %221 = load i32, i32* @n_antennas_5_param, align 4
  %222 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %223 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 7
  store i32 %221, i32* %225, align 8
  br label %226

226:                                              ; preds = %220, %217
  %227 = load i32, i32* @dc2dc_param, align 4
  %228 = icmp ne i32 %227, -1
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load i32, i32* @dc2dc_param, align 4
  %231 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %232 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 8
  store i32 %230, i32* %234, align 4
  br label %235

235:                                              ; preds = %229, %226
  %236 = load i64, i64* @ht_mode_param, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %276

238:                                              ; preds = %235
  %239 = load i64, i64* @ht_mode_param, align 8
  %240 = call i32 @strcmp(i64 %239, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %238
  %243 = load i64, i64* @HT_MODE_DEFAULT, align 8
  %244 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %245 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  store i64 %243, i64* %247, align 8
  br label %275

248:                                              ; preds = %238
  %249 = load i64, i64* @ht_mode_param, align 8
  %250 = call i32 @strcmp(i64 %249, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %248
  %253 = load i64, i64* @HT_MODE_WIDE, align 8
  %254 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %255 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  store i64 %253, i64* %257, align 8
  br label %274

258:                                              ; preds = %248
  %259 = load i64, i64* @ht_mode_param, align 8
  %260 = call i32 @strcmp(i64 %259, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %258
  %263 = load i64, i64* @HT_MODE_SISO20, align 8
  %264 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %265 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  store i64 %263, i64* %267, align 8
  br label %273

268:                                              ; preds = %258
  %269 = load i64, i64* @ht_mode_param, align 8
  %270 = call i32 @wl1271_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64 %269)
  %271 = load i32, i32* @EINVAL, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %2, align 4
  br label %346

273:                                              ; preds = %262
  br label %274

274:                                              ; preds = %273, %252
  br label %275

275:                                              ; preds = %274, %242
  br label %276

276:                                              ; preds = %275, %235
  %277 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %278 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @HT_MODE_DEFAULT, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %300

284:                                              ; preds = %276
  %285 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %286 = call i64 @wl18xx_is_mimo_supported(%struct.wl1271* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  %289 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %290 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %291 = call i32 @wlcore_set_ht_cap(%struct.wl1271* %289, i32 %290, i32* @wl18xx_mimo_ht_cap_2ghz)
  br label %296

292:                                              ; preds = %284
  %293 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %294 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %295 = call i32 @wlcore_set_ht_cap(%struct.wl1271* %293, i32 %294, i32* @wl18xx_siso40_ht_cap_2ghz)
  br label %296

296:                                              ; preds = %292, %288
  %297 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %298 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %299 = call i32 @wlcore_set_ht_cap(%struct.wl1271* %297, i32 %298, i32* @wl18xx_siso40_ht_cap_5ghz)
  br label %332

300:                                              ; preds = %276
  %301 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %302 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @HT_MODE_WIDE, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %315

308:                                              ; preds = %300
  %309 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %310 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %311 = call i32 @wlcore_set_ht_cap(%struct.wl1271* %309, i32 %310, i32* @wl18xx_siso40_ht_cap_2ghz)
  %312 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %313 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %314 = call i32 @wlcore_set_ht_cap(%struct.wl1271* %312, i32 %313, i32* @wl18xx_siso40_ht_cap_5ghz)
  br label %331

315:                                              ; preds = %300
  %316 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %317 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @HT_MODE_SISO20, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %330

323:                                              ; preds = %315
  %324 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %325 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %326 = call i32 @wlcore_set_ht_cap(%struct.wl1271* %324, i32 %325, i32* @wl18xx_siso20_ht_cap)
  %327 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %328 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %329 = call i32 @wlcore_set_ht_cap(%struct.wl1271* %327, i32 %328, i32* @wl18xx_siso20_ht_cap)
  br label %330

330:                                              ; preds = %323, %315
  br label %331

331:                                              ; preds = %330, %308
  br label %332

332:                                              ; preds = %331, %296
  %333 = load i32, i32* @checksum_param, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %332
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @wl18xx_ops, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @wl18xx_ops, i32 0, i32 0), align 8
  br label %336

336:                                              ; preds = %335, %332
  %337 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %4, align 8
  %338 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 8
  %342 = icmp ne i32 %341, 0
  %343 = zext i1 %342 to i32
  %344 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %345 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %344, i32 0, i32 4
  store i32 %343, i32* %345, align 8
  store i32 0, i32* %2, align 4
  br label %346

346:                                              ; preds = %336, %268, %154, %136, %81
  %347 = load i32, i32* %2, align 4
  ret i32 %347
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @wl18xx_conf_init(%struct.wl1271*, i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @wl1271_error(i8*, i64) #1

declare dso_local i64 @wl18xx_is_mimo_supported(%struct.wl1271*) #1

declare dso_local i32 @wlcore_set_ht_cap(%struct.wl1271*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
