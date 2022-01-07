; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_probe_hw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_probe_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, %struct.TYPE_11__, %struct.TYPE_13__, %struct.TYPE_14__*, i32, %struct.hw_mode_spec }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.hw_mode_spec = type { i32, i32, %struct.channel_info*, %struct.TYPE_12__, i32, i8* }
%struct.channel_info = type { i8, i8, i8 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@MFP_CAPABLE = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@SUPPORT_RATE_OFDM = common dso_local global i32 0, align 4
@rf_vals = common dso_local global i8* null, align 8
@rf_vals_3x_xtal20 = common dso_local global i8* null, align 8
@rf_vals_3x = common dso_local global i8* null, align 8
@rf_vals_7620 = common dso_local global i8* null, align 8
@rf_vals_3853 = common dso_local global i8* null, align 8
@MAC_DEBUG_INDEX = common dso_local global i32 0, align 4
@MAC_DEBUG_INDEX_XTAL = common dso_local global i32 0, align 4
@rf_vals_5592_xtal40 = common dso_local global i8* null, align 8
@rf_vals_5592_xtal20 = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@SUPPORT_BAND_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_GRN_FLD = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_RX_DIFF = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BG1 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BG2 = common dso_local global i32 0, align 4
@EEPROM_EXT_TXPOWER_BG3 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_A1 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_A2 = common dso_local global i32 0, align 4
@EEPROM_EXT_TXPOWER_A3 = common dso_local global i32 0, align 4
@CAPABILITY_VCO_RECALIBRATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_probe_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_probe_hw_mode(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.hw_mode_spec*, align 8
  %5 = alloca %struct.channel_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %13, i32 0, i32 5
  store %struct.hw_mode_spec* %14, %struct.hw_mode_spec** %4, align 8
  %15 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %16
  store i32 %24, i32* %22, align 4
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 3
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 2, i32* %30, align 4
  %31 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %32 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  store i32 2, i32* %36, align 4
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %37, i32 0, i32 3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %41 = call i32 @ieee80211_hw_set(%struct.TYPE_14__* %39, i32 %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %42, i32 0, i32 3
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %46 = call i32 @ieee80211_hw_set(%struct.TYPE_14__* %44, i32 %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 3
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %51 = call i32 @ieee80211_hw_set(%struct.TYPE_14__* %49, i32 %50)
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %53 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %52, i32 0, i32 3
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = load i32, i32* @SIGNAL_DBM, align 4
  %56 = call i32 @ieee80211_hw_set(%struct.TYPE_14__* %54, i32 %55)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %58 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %57, i32 0, i32 3
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load i32, i32* @SUPPORTS_PS, align 4
  %61 = call i32 @ieee80211_hw_set(%struct.TYPE_14__* %59, i32 %60)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = call i32 @rt2x00_is_usb(%struct.rt2x00_dev* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %1
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 3
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i32, i32* @HOST_BROADCAST_PS_BUFFERING, align 4
  %70 = call i32 @ieee80211_hw_set(%struct.TYPE_14__* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %1
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %73 = call i64 @rt2800_hwcrypt_disabled(%struct.rt2x00_dev* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %77 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %76, i32 0, i32 3
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = load i32, i32* @MFP_CAPABLE, align 4
  %80 = call i32 @ieee80211_hw_set(%struct.TYPE_14__* %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %71
  %82 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %83 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %82, i32 0, i32 3
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %86 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @SET_IEEE80211_DEV(%struct.TYPE_14__* %84, i32 %87)
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %90 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %89, i32 0, i32 3
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %94 = call i8* @rt2800_eeprom_addr(%struct.rt2x00_dev* %92, i32 %93)
  %95 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_14__* %91, i8* %94)
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %97 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %96, i32 0, i32 3
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %101 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %100, i32 0, i32 3
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store i32 7, i32* %103, align 4
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %105 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %104, i32 0, i32 3
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %109 = load i32, i32* @SUPPORT_RATE_OFDM, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %112 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %114 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %201 [
    i32 150, label %117
    i32 148, label %117
    i32 149, label %123
    i32 147, label %123
    i32 151, label %132
    i32 146, label %132
    i32 145, label %132
    i32 144, label %132
    i32 141, label %132
    i32 140, label %132
    i32 139, label %132
    i32 138, label %132
    i32 136, label %132
    i32 135, label %132
    i32 134, label %132
    i32 133, label %132
    i32 132, label %132
    i32 131, label %132
    i32 130, label %132
    i32 128, label %147
    i32 143, label %156
    i32 142, label %156
    i32 137, label %165
    i32 129, label %174
  ]

117:                                              ; preds = %81, %81
  %118 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %119 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %118, i32 0, i32 1
  store i32 14, i32* %119, align 4
  %120 = load i8*, i8** @rf_vals, align 8
  %121 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %122 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  br label %201

123:                                              ; preds = %81, %81
  %124 = load i8*, i8** @rf_vals, align 8
  %125 = call i8* @ARRAY_SIZE(i8* %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %128 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i8*, i8** @rf_vals, align 8
  %130 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %131 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %130, i32 0, i32 5
  store i8* %129, i8** %131, align 8
  br label %201

132:                                              ; preds = %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81, %81
  %133 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %134 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %133, i32 0, i32 1
  store i32 14, i32* %134, align 4
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %136 = call i32 @rt2800_clk_is_20mhz(%struct.rt2x00_dev* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i8*, i8** @rf_vals_3x_xtal20, align 8
  %140 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %141 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %140, i32 0, i32 5
  store i8* %139, i8** %141, align 8
  br label %146

142:                                              ; preds = %132
  %143 = load i8*, i8** @rf_vals_3x, align 8
  %144 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %145 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %142, %138
  br label %201

147:                                              ; preds = %81
  %148 = load i8*, i8** @rf_vals_7620, align 8
  %149 = call i8* @ARRAY_SIZE(i8* %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %152 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i8*, i8** @rf_vals_7620, align 8
  %154 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %155 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %154, i32 0, i32 5
  store i8* %153, i8** %155, align 8
  br label %201

156:                                              ; preds = %81, %81
  %157 = load i8*, i8** @rf_vals_3x, align 8
  %158 = call i8* @ARRAY_SIZE(i8* %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %161 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i8*, i8** @rf_vals_3x, align 8
  %163 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %164 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %163, i32 0, i32 5
  store i8* %162, i8** %164, align 8
  br label %201

165:                                              ; preds = %81
  %166 = load i8*, i8** @rf_vals_3853, align 8
  %167 = call i8* @ARRAY_SIZE(i8* %166)
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %170 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i8*, i8** @rf_vals_3853, align 8
  %172 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %173 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %172, i32 0, i32 5
  store i8* %171, i8** %173, align 8
  br label %201

174:                                              ; preds = %81
  %175 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %176 = load i32, i32* @MAC_DEBUG_INDEX, align 4
  %177 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %175, i32 %176)
  store i32 %177, i32* %12, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @MAC_DEBUG_INDEX_XTAL, align 4
  %180 = call i32 @rt2x00_get_field32(i32 %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load i8*, i8** @rf_vals_5592_xtal40, align 8
  %184 = call i8* @ARRAY_SIZE(i8* %183)
  %185 = ptrtoint i8* %184 to i32
  %186 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %187 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load i8*, i8** @rf_vals_5592_xtal40, align 8
  %189 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %190 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  br label %200

191:                                              ; preds = %174
  %192 = load i8*, i8** @rf_vals_5592_xtal20, align 8
  %193 = call i8* @ARRAY_SIZE(i8* %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %196 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load i8*, i8** @rf_vals_5592_xtal20, align 8
  %198 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %199 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %198, i32 0, i32 5
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %191, %182
  br label %201

201:                                              ; preds = %81, %200, %165, %156, %147, %146, %123, %117
  %202 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %203 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %202, i32 0, i32 5
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  %206 = xor i1 %205, true
  %207 = zext i1 %206 to i32
  %208 = call i64 @WARN_ON_ONCE(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %201
  %211 = load i32, i32* @ENODEV, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %2, align 4
  br label %496

213:                                              ; preds = %201
  %214 = load i32, i32* @SUPPORT_BAND_2GHZ, align 4
  %215 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %216 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %215, i32 0, i32 4
  store i32 %214, i32* %216, align 8
  %217 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %218 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %219, 14
  br i1 %220, label %221, label %227

221:                                              ; preds = %213
  %222 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %223 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %224 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %221, %213
  %228 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %229 = call i32 @rt2x00_rf(%struct.rt2x00_dev* %228, i32 151)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %233 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  store i32 1, i32* %234, align 8
  br label %239

235:                                              ; preds = %227
  %236 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %237 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  store i32 0, i32* %238, align 8
  br label %239

239:                                              ; preds = %235, %231
  %240 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %241 = load i32, i32* @IEEE80211_HT_CAP_GRN_FLD, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %246 = or i32 %244, %245
  %247 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %248 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  store i32 %246, i32* %249, align 4
  %250 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %251 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  store i32 %253, i32* %10, align 4
  %254 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %255 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp uge i32 %258, 2
  br i1 %259, label %260, label %267

260:                                              ; preds = %239
  %261 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %262 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %263 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %261
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %260, %239
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %270 = shl i32 %268, %269
  %271 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %272 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %270
  store i32 %275, i32* %273, align 4
  %276 = load i32, i32* %11, align 4
  %277 = icmp ugt i32 %276, 1
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 3, i32 2
  %280 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %281 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 2
  store i32 %279, i32* %282, align 8
  %283 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %284 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 3
  store i32 4, i32* %285, align 4
  %286 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %287 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %288 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 0
  store i32 %286, i32* %290, align 8
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* %11, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %312

294:                                              ; preds = %267
  %295 = load i32, i32* @IEEE80211_HT_MCS_TX_RX_DIFF, align 4
  %296 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %297 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %295
  store i32 %301, i32* %299, align 8
  %302 = load i32, i32* %10, align 4
  %303 = sub i32 %302, 1
  %304 = load i32, i32* @IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT, align 4
  %305 = shl i32 %303, %304
  %306 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %307 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %306, i32 0, i32 3
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = or i32 %310, %305
  store i32 %311, i32* %309, align 8
  br label %312

312:                                              ; preds = %294, %267
  %313 = load i32, i32* %11, align 4
  switch i32 %313, label %341 [
    i32 3, label %314
    i32 2, label %321
    i32 1, label %328
  ]

314:                                              ; preds = %312
  %315 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %316 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 4
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 2
  store i32 255, i32* %320, align 4
  br label %321

321:                                              ; preds = %312, %314
  %322 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %323 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 1
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 1
  store i32 255, i32* %327, align 4
  br label %328

328:                                              ; preds = %312, %321
  %329 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %330 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 4
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  store i32 255, i32* %334, align 4
  %335 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %336 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 4
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 4
  store i32 1, i32* %340, align 4
  br label %341

341:                                              ; preds = %312, %328
  %342 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %343 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @GFP_KERNEL, align 4
  %346 = call %struct.channel_info* @kcalloc(i32 %344, i32 3, i32 %345)
  store %struct.channel_info* %346, %struct.channel_info** %5, align 8
  %347 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %348 = icmp ne %struct.channel_info* %347, null
  br i1 %348, label %352, label %349

349:                                              ; preds = %341
  %350 = load i32, i32* @ENOMEM, align 4
  %351 = sub nsw i32 0, %350
  store i32 %351, i32* %2, align 4
  br label %496

352:                                              ; preds = %341
  %353 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %354 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %355 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %354, i32 0, i32 2
  store %struct.channel_info* %353, %struct.channel_info** %355, align 8
  %356 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %357 = load i32, i32* @EEPROM_TXPOWER_BG1, align 4
  %358 = call i8* @rt2800_eeprom_addr(%struct.rt2x00_dev* %356, i32 %357)
  store i8* %358, i8** %6, align 8
  %359 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %360 = load i32, i32* @EEPROM_TXPOWER_BG2, align 4
  %361 = call i8* @rt2800_eeprom_addr(%struct.rt2x00_dev* %359, i32 %360)
  store i8* %361, i8** %7, align 8
  %362 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %363 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = icmp ugt i32 %365, 2
  br i1 %366, label %367, label %371

367:                                              ; preds = %352
  %368 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %369 = load i32, i32* @EEPROM_EXT_TXPOWER_BG3, align 4
  %370 = call i8* @rt2800_eeprom_addr(%struct.rt2x00_dev* %368, i32 %369)
  store i8* %370, i8** %8, align 8
  br label %372

371:                                              ; preds = %352
  store i8* null, i8** %8, align 8
  br label %372

372:                                              ; preds = %371, %367
  store i32 0, i32* %9, align 4
  br label %373

373:                                              ; preds = %411, %372
  %374 = load i32, i32* %9, align 4
  %375 = icmp ult i32 %374, 14
  br i1 %375, label %376, label %414

376:                                              ; preds = %373
  %377 = load i8*, i8** %6, align 8
  %378 = load i32, i32* %9, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %377, i64 %379
  %381 = load i8, i8* %380, align 1
  %382 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %383 = load i32, i32* %9, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %382, i64 %384
  %386 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %385, i32 0, i32 0
  store i8 %381, i8* %386, align 1
  %387 = load i8*, i8** %7, align 8
  %388 = load i32, i32* %9, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %387, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %393 = load i32, i32* %9, align 4
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %392, i64 %394
  %396 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %395, i32 0, i32 1
  store i8 %391, i8* %396, align 1
  %397 = load i8*, i8** %8, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %410

399:                                              ; preds = %376
  %400 = load i8*, i8** %8, align 8
  %401 = load i32, i32* %9, align 4
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %400, i64 %402
  %404 = load i8, i8* %403, align 1
  %405 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %406 = load i32, i32* %9, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %405, i64 %407
  %409 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %408, i32 0, i32 2
  store i8 %404, i8* %409, align 1
  br label %410

410:                                              ; preds = %399, %376
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %9, align 4
  %413 = add i32 %412, 1
  store i32 %413, i32* %9, align 4
  br label %373

414:                                              ; preds = %373
  %415 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %416 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = icmp sgt i32 %417, 14
  br i1 %418, label %419, label %485

419:                                              ; preds = %414
  %420 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %421 = load i32, i32* @EEPROM_TXPOWER_A1, align 4
  %422 = call i8* @rt2800_eeprom_addr(%struct.rt2x00_dev* %420, i32 %421)
  store i8* %422, i8** %6, align 8
  %423 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %424 = load i32, i32* @EEPROM_TXPOWER_A2, align 4
  %425 = call i8* @rt2800_eeprom_addr(%struct.rt2x00_dev* %423, i32 %424)
  store i8* %425, i8** %7, align 8
  %426 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %427 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %426, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp ugt i32 %429, 2
  br i1 %430, label %431, label %435

431:                                              ; preds = %419
  %432 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %433 = load i32, i32* @EEPROM_EXT_TXPOWER_A3, align 4
  %434 = call i8* @rt2800_eeprom_addr(%struct.rt2x00_dev* %432, i32 %433)
  store i8* %434, i8** %8, align 8
  br label %436

435:                                              ; preds = %419
  store i8* null, i8** %8, align 8
  br label %436

436:                                              ; preds = %435, %431
  store i32 14, i32* %9, align 4
  br label %437

437:                                              ; preds = %481, %436
  %438 = load i32, i32* %9, align 4
  %439 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %440 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = icmp ult i32 %438, %441
  br i1 %442, label %443, label %484

443:                                              ; preds = %437
  %444 = load i8*, i8** %6, align 8
  %445 = load i32, i32* %9, align 4
  %446 = sub i32 %445, 14
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds i8, i8* %444, i64 %447
  %449 = load i8, i8* %448, align 1
  %450 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %451 = load i32, i32* %9, align 4
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %450, i64 %452
  %454 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %453, i32 0, i32 0
  store i8 %449, i8* %454, align 1
  %455 = load i8*, i8** %7, align 8
  %456 = load i32, i32* %9, align 4
  %457 = sub i32 %456, 14
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds i8, i8* %455, i64 %458
  %460 = load i8, i8* %459, align 1
  %461 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %462 = load i32, i32* %9, align 4
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %461, i64 %463
  %465 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %464, i32 0, i32 1
  store i8 %460, i8* %465, align 1
  %466 = load i8*, i8** %8, align 8
  %467 = icmp ne i8* %466, null
  br i1 %467, label %468, label %480

468:                                              ; preds = %443
  %469 = load i8*, i8** %8, align 8
  %470 = load i32, i32* %9, align 4
  %471 = sub i32 %470, 14
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds i8, i8* %469, i64 %472
  %474 = load i8, i8* %473, align 1
  %475 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %476 = load i32, i32* %9, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %475, i64 %477
  %479 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %478, i32 0, i32 2
  store i8 %474, i8* %479, align 1
  br label %480

480:                                              ; preds = %468, %443
  br label %481

481:                                              ; preds = %480
  %482 = load i32, i32* %9, align 4
  %483 = add i32 %482, 1
  store i32 %483, i32* %9, align 4
  br label %437

484:                                              ; preds = %437
  br label %485

485:                                              ; preds = %484, %414
  %486 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %487 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  switch i32 %489, label %495 [
    i32 151, label %490
    i32 146, label %490
    i32 145, label %490
    i32 144, label %490
    i32 139, label %490
    i32 143, label %490
    i32 142, label %490
    i32 141, label %490
    i32 140, label %490
    i32 137, label %490
    i32 136, label %490
    i32 135, label %490
    i32 134, label %490
    i32 133, label %490
    i32 132, label %490
    i32 131, label %490
    i32 130, label %490
    i32 129, label %490
    i32 128, label %490
  ]

490:                                              ; preds = %485, %485, %485, %485, %485, %485, %485, %485, %485, %485, %485, %485, %485, %485, %485, %485, %485, %485, %485
  %491 = load i32, i32* @CAPABILITY_VCO_RECALIBRATION, align 4
  %492 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %493 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %492, i32 0, i32 0
  %494 = call i32 @__set_bit(i32 %491, i32* %493)
  br label %495

495:                                              ; preds = %485, %490
  store i32 0, i32* %2, align 4
  br label %496

496:                                              ; preds = %495, %349, %210
  %497 = load i32, i32* %2, align 4
  ret i32 %497
}

declare dso_local i32 @ieee80211_hw_set(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2800_hwcrypt_disabled(%struct.rt2x00_dev*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @rt2800_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @rt2800_clk_is_20mhz(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local %struct.channel_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
