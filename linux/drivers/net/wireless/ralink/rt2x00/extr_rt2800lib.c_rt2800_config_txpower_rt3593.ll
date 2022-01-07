; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_txpower_rt3593.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_txpower_rt3593.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_channel = type { i32 }

@TX_PWR_CFG_IDX_COUNT = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@CONFIG_CHANNEL_HT40 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_0_CCK1_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_CCK1_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_EXT_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_0_EXT_CCK1_CH2 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_CCK5_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_CCK5_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_EXT_CCK5_CH2 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_OFDM6_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_OFDM6_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_EXT_OFDM6_CH2 = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_BYRATE_RATE3 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_OFDM12_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_OFDM12_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_EXT_OFDM12_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_1_OFDM24_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_OFDM24_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_EXT_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_1_EXT_OFDM24_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_OFDM48_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_OFDM48_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_EXT_OFDM48_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_7_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_7_OFDM54_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_7_OFDM54_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_7_OFDM54_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_MCS0_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_MCS0_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_EXT_MCS0_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_MCS2_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_MCS2_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_EXT_MCS2_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_2_MCS4_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_MCS4_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_EXT_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_2_EXT_MCS4_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_MCS6_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_MCS6_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_EXT_MCS6_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_7_MCS7_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_7_MCS7_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_7_MCS7_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_MCS8_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_MCS8_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_EXT_MCS8_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_MCS10_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_MCS10_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_EXT_MCS10_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_3_MCS12_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_MCS12_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_EXT_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_3_EXT_MCS12_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_MCS14_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_MCS14_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_EXT_MCS14_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_8_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_8_MCS15_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_8_MCS15_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_8_MCS15_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_5_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_5_MCS16_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_5_MCS16_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_5_MCS16_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_5_MCS18_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_5_MCS18_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_5_MCS18_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_6_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_6_MCS20_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_6_MCS20_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_6_MCS20_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_6_MCS22_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_6_MCS22_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_6_MCS22_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_8_MCS23_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_8_MCS23_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_8_MCS23_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_STBC0_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_STBC0_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_EXT_STBC0_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_STBC2_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_STBC2_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_EXT_STBC2_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_4_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_RATE0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_4_EXT_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_RATE2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_RATE3 = common dso_local global i32 0, align 4
@TX_PWR_CFG_9_IDX = common dso_local global i64 0, align 8
@TX_PWR_CFG_9_STBC7_CH0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_9_STBC7_CH1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_9_STBC7_CH2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0 = common dso_local global i32 0, align 4
@TX_PWR_CFG_1 = common dso_local global i32 0, align 4
@TX_PWR_CFG_2 = common dso_local global i32 0, align 4
@TX_PWR_CFG_3 = common dso_local global i32 0, align 4
@TX_PWR_CFG_4 = common dso_local global i32 0, align 4
@TX_PWR_CFG_5 = common dso_local global i32 0, align 4
@TX_PWR_CFG_6 = common dso_local global i32 0, align 4
@TX_PWR_CFG_7 = common dso_local global i32 0, align 4
@TX_PWR_CFG_8 = common dso_local global i32 0, align 4
@TX_PWR_CFG_9 = common dso_local global i32 0, align 4
@TX_PWR_CFG_0_EXT = common dso_local global i32 0, align 4
@TX_PWR_CFG_1_EXT = common dso_local global i32 0, align 4
@TX_PWR_CFG_2_EXT = common dso_local global i32 0, align 4
@TX_PWR_CFG_3_EXT = common dso_local global i32 0, align 4
@TX_PWR_CFG_4_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"band:%cGHz, BW:%c0MHz, TX_PWR_CFG_%d%s = %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_EXT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_channel*, i32)* @rt2800_config_txpower_rt3593 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_txpower_rt3593(%struct.rt2x00_dev* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @TX_PWR_CFG_IDX_COUNT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i64, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = mul nuw i64 8, %16
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(i64* %18, i8 signext 0, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = call i32 @rt2800_get_gain_calibration_delta(%struct.rt2x00_dev* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 16, i32* %11, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 0
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 8
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %43 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %48 = call i32 @rt2x00_get_field16(i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %49, i32 1, i32 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i64, i64* @TX_PWR_CFG_0_IDX, align 8
  %56 = getelementptr inbounds i64, i64* %18, i64 %55
  %57 = load i32, i32* @TX_PWR_CFG_0_CCK1_CH0, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @rt2x00_set_field32(i64* %56, i32 %57, i32 %58)
  %60 = load i64, i64* @TX_PWR_CFG_0_IDX, align 8
  %61 = getelementptr inbounds i64, i64* %18, i64 %60
  %62 = load i32, i32* @TX_PWR_CFG_0_CCK1_CH1, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @rt2x00_set_field32(i64* %61, i32 %62, i32 %63)
  %65 = load i64, i64* @TX_PWR_CFG_0_EXT_IDX, align 8
  %66 = getelementptr inbounds i64, i64* %18, i64 %65
  %67 = load i32, i32* @TX_PWR_CFG_0_EXT_CCK1_CH2, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @rt2x00_set_field32(i64* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %72 = call i32 @rt2x00_get_field16(i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %73, i32 1, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i64, i64* @TX_PWR_CFG_0_IDX, align 8
  %80 = getelementptr inbounds i64, i64* %18, i64 %79
  %81 = load i32, i32* @TX_PWR_CFG_0_CCK5_CH0, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @rt2x00_set_field32(i64* %80, i32 %81, i32 %82)
  %84 = load i64, i64* @TX_PWR_CFG_0_IDX, align 8
  %85 = getelementptr inbounds i64, i64* %18, i64 %84
  %86 = load i32, i32* @TX_PWR_CFG_0_CCK5_CH1, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @rt2x00_set_field32(i64* %85, i32 %86, i32 %87)
  %89 = load i64, i64* @TX_PWR_CFG_0_EXT_IDX, align 8
  %90 = getelementptr inbounds i64, i64* %18, i64 %89
  %91 = load i32, i32* @TX_PWR_CFG_0_EXT_CCK5_CH2, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @rt2x00_set_field32(i64* %90, i32 %91, i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %96 = call i32 @rt2x00_get_field16(i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %97, i32 0, i32 %98, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %7, align 4
  %103 = load i64, i64* @TX_PWR_CFG_0_IDX, align 8
  %104 = getelementptr inbounds i64, i64* %18, i64 %103
  %105 = load i32, i32* @TX_PWR_CFG_0_OFDM6_CH0, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @rt2x00_set_field32(i64* %104, i32 %105, i32 %106)
  %108 = load i64, i64* @TX_PWR_CFG_0_IDX, align 8
  %109 = getelementptr inbounds i64, i64* %18, i64 %108
  %110 = load i32, i32* @TX_PWR_CFG_0_OFDM6_CH1, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @rt2x00_set_field32(i64* %109, i32 %110, i32 %111)
  %113 = load i64, i64* @TX_PWR_CFG_0_EXT_IDX, align 8
  %114 = getelementptr inbounds i64, i64* %18, i64 %113
  %115 = load i32, i32* @TX_PWR_CFG_0_EXT_OFDM6_CH2, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @rt2x00_set_field32(i64* %114, i32 %115, i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE3, align 4
  %120 = call i32 @rt2x00_get_field16(i32 %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %121, i32 0, i32 %122, i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i64, i64* @TX_PWR_CFG_0_IDX, align 8
  %128 = getelementptr inbounds i64, i64* %18, i64 %127
  %129 = load i32, i32* @TX_PWR_CFG_0_OFDM12_CH0, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @rt2x00_set_field32(i64* %128, i32 %129, i32 %130)
  %132 = load i64, i64* @TX_PWR_CFG_0_IDX, align 8
  %133 = getelementptr inbounds i64, i64* %18, i64 %132
  %134 = load i32, i32* @TX_PWR_CFG_0_OFDM12_CH1, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @rt2x00_set_field32(i64* %133, i32 %134, i32 %135)
  %137 = load i64, i64* @TX_PWR_CFG_0_EXT_IDX, align 8
  %138 = getelementptr inbounds i64, i64* %18, i64 %137
  %139 = load i32, i32* @TX_PWR_CFG_0_EXT_OFDM12_CH2, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @rt2x00_set_field32(i64* %138, i32 %139, i32 %140)
  %142 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %143 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 1
  %146 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %142, i32 %143, i32 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %149 = call i32 @rt2x00_get_field16(i32 %147, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %150, i32 0, i32 %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %7, align 4
  %156 = load i64, i64* @TX_PWR_CFG_1_IDX, align 8
  %157 = getelementptr inbounds i64, i64* %18, i64 %156
  %158 = load i32, i32* @TX_PWR_CFG_1_OFDM24_CH0, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @rt2x00_set_field32(i64* %157, i32 %158, i32 %159)
  %161 = load i64, i64* @TX_PWR_CFG_1_IDX, align 8
  %162 = getelementptr inbounds i64, i64* %18, i64 %161
  %163 = load i32, i32* @TX_PWR_CFG_1_OFDM24_CH1, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @rt2x00_set_field32(i64* %162, i32 %163, i32 %164)
  %166 = load i64, i64* @TX_PWR_CFG_1_EXT_IDX, align 8
  %167 = getelementptr inbounds i64, i64* %18, i64 %166
  %168 = load i32, i32* @TX_PWR_CFG_1_EXT_OFDM24_CH2, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @rt2x00_set_field32(i64* %167, i32 %168, i32 %169)
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %173 = call i32 @rt2x00_get_field16(i32 %171, i32 %172)
  store i32 %173, i32* %7, align 4
  %174 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %174, i32 0, i32 %175, i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %7, align 4
  %180 = load i64, i64* @TX_PWR_CFG_1_IDX, align 8
  %181 = getelementptr inbounds i64, i64* %18, i64 %180
  %182 = load i32, i32* @TX_PWR_CFG_1_OFDM48_CH0, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @rt2x00_set_field32(i64* %181, i32 %182, i32 %183)
  %185 = load i64, i64* @TX_PWR_CFG_1_IDX, align 8
  %186 = getelementptr inbounds i64, i64* %18, i64 %185
  %187 = load i32, i32* @TX_PWR_CFG_1_OFDM48_CH1, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @rt2x00_set_field32(i64* %186, i32 %187, i32 %188)
  %190 = load i64, i64* @TX_PWR_CFG_1_EXT_IDX, align 8
  %191 = getelementptr inbounds i64, i64* %18, i64 %190
  %192 = load i32, i32* @TX_PWR_CFG_1_EXT_OFDM48_CH2, align 4
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @rt2x00_set_field32(i64* %191, i32 %192, i32 %193)
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %197 = call i32 @rt2x00_get_field16(i32 %195, i32 %196)
  store i32 %197, i32* %7, align 4
  %198 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %198, i32 0, i32 %199, i32 %200, i32 %201, i32 %202)
  store i32 %203, i32* %7, align 4
  %204 = load i64, i64* @TX_PWR_CFG_7_IDX, align 8
  %205 = getelementptr inbounds i64, i64* %18, i64 %204
  %206 = load i32, i32* @TX_PWR_CFG_7_OFDM54_CH0, align 4
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @rt2x00_set_field32(i64* %205, i32 %206, i32 %207)
  %209 = load i64, i64* @TX_PWR_CFG_7_IDX, align 8
  %210 = getelementptr inbounds i64, i64* %18, i64 %209
  %211 = load i32, i32* @TX_PWR_CFG_7_OFDM54_CH1, align 4
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @rt2x00_set_field32(i64* %210, i32 %211, i32 %212)
  %214 = load i64, i64* @TX_PWR_CFG_7_IDX, align 8
  %215 = getelementptr inbounds i64, i64* %18, i64 %214
  %216 = load i32, i32* @TX_PWR_CFG_7_OFDM54_CH2, align 4
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @rt2x00_set_field32(i64* %215, i32 %216, i32 %217)
  %219 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %220 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %221 = load i32, i32* %11, align 4
  %222 = add i32 %221, 2
  %223 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %219, i32 %220, i32 %222)
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %226 = call i32 @rt2x00_get_field16(i32 %224, i32 %225)
  store i32 %226, i32* %7, align 4
  %227 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* %7, align 4
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %227, i32 0, i32 %228, i32 %229, i32 %230, i32 %231)
  store i32 %232, i32* %7, align 4
  %233 = load i64, i64* @TX_PWR_CFG_1_IDX, align 8
  %234 = getelementptr inbounds i64, i64* %18, i64 %233
  %235 = load i32, i32* @TX_PWR_CFG_1_MCS0_CH0, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @rt2x00_set_field32(i64* %234, i32 %235, i32 %236)
  %238 = load i64, i64* @TX_PWR_CFG_1_IDX, align 8
  %239 = getelementptr inbounds i64, i64* %18, i64 %238
  %240 = load i32, i32* @TX_PWR_CFG_1_MCS0_CH1, align 4
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @rt2x00_set_field32(i64* %239, i32 %240, i32 %241)
  %243 = load i64, i64* @TX_PWR_CFG_1_EXT_IDX, align 8
  %244 = getelementptr inbounds i64, i64* %18, i64 %243
  %245 = load i32, i32* @TX_PWR_CFG_1_EXT_MCS0_CH2, align 4
  %246 = load i32, i32* %7, align 4
  %247 = call i32 @rt2x00_set_field32(i64* %244, i32 %245, i32 %246)
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %250 = call i32 @rt2x00_get_field16(i32 %248, i32 %249)
  store i32 %250, i32* %7, align 4
  %251 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %251, i32 0, i32 %252, i32 %253, i32 %254, i32 %255)
  store i32 %256, i32* %7, align 4
  %257 = load i64, i64* @TX_PWR_CFG_1_IDX, align 8
  %258 = getelementptr inbounds i64, i64* %18, i64 %257
  %259 = load i32, i32* @TX_PWR_CFG_1_MCS2_CH0, align 4
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @rt2x00_set_field32(i64* %258, i32 %259, i32 %260)
  %262 = load i64, i64* @TX_PWR_CFG_1_IDX, align 8
  %263 = getelementptr inbounds i64, i64* %18, i64 %262
  %264 = load i32, i32* @TX_PWR_CFG_1_MCS2_CH1, align 4
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @rt2x00_set_field32(i64* %263, i32 %264, i32 %265)
  %267 = load i64, i64* @TX_PWR_CFG_1_EXT_IDX, align 8
  %268 = getelementptr inbounds i64, i64* %18, i64 %267
  %269 = load i32, i32* @TX_PWR_CFG_1_EXT_MCS2_CH2, align 4
  %270 = load i32, i32* %7, align 4
  %271 = call i32 @rt2x00_set_field32(i64* %268, i32 %269, i32 %270)
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %274 = call i32 @rt2x00_get_field16(i32 %272, i32 %273)
  store i32 %274, i32* %7, align 4
  %275 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %275, i32 0, i32 %276, i32 %277, i32 %278, i32 %279)
  store i32 %280, i32* %7, align 4
  %281 = load i64, i64* @TX_PWR_CFG_2_IDX, align 8
  %282 = getelementptr inbounds i64, i64* %18, i64 %281
  %283 = load i32, i32* @TX_PWR_CFG_2_MCS4_CH0, align 4
  %284 = load i32, i32* %7, align 4
  %285 = call i32 @rt2x00_set_field32(i64* %282, i32 %283, i32 %284)
  %286 = load i64, i64* @TX_PWR_CFG_2_IDX, align 8
  %287 = getelementptr inbounds i64, i64* %18, i64 %286
  %288 = load i32, i32* @TX_PWR_CFG_2_MCS4_CH1, align 4
  %289 = load i32, i32* %7, align 4
  %290 = call i32 @rt2x00_set_field32(i64* %287, i32 %288, i32 %289)
  %291 = load i64, i64* @TX_PWR_CFG_2_EXT_IDX, align 8
  %292 = getelementptr inbounds i64, i64* %18, i64 %291
  %293 = load i32, i32* @TX_PWR_CFG_2_EXT_MCS4_CH2, align 4
  %294 = load i32, i32* %7, align 4
  %295 = call i32 @rt2x00_set_field32(i64* %292, i32 %293, i32 %294)
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE3, align 4
  %298 = call i32 @rt2x00_get_field16(i32 %296, i32 %297)
  store i32 %298, i32* %7, align 4
  %299 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %6, align 4
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %299, i32 0, i32 %300, i32 %301, i32 %302, i32 %303)
  store i32 %304, i32* %7, align 4
  %305 = load i64, i64* @TX_PWR_CFG_2_IDX, align 8
  %306 = getelementptr inbounds i64, i64* %18, i64 %305
  %307 = load i32, i32* @TX_PWR_CFG_2_MCS6_CH0, align 4
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @rt2x00_set_field32(i64* %306, i32 %307, i32 %308)
  %310 = load i64, i64* @TX_PWR_CFG_2_IDX, align 8
  %311 = getelementptr inbounds i64, i64* %18, i64 %310
  %312 = load i32, i32* @TX_PWR_CFG_2_MCS6_CH1, align 4
  %313 = load i32, i32* %7, align 4
  %314 = call i32 @rt2x00_set_field32(i64* %311, i32 %312, i32 %313)
  %315 = load i64, i64* @TX_PWR_CFG_2_EXT_IDX, align 8
  %316 = getelementptr inbounds i64, i64* %18, i64 %315
  %317 = load i32, i32* @TX_PWR_CFG_2_EXT_MCS6_CH2, align 4
  %318 = load i32, i32* %7, align 4
  %319 = call i32 @rt2x00_set_field32(i64* %316, i32 %317, i32 %318)
  %320 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %321 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %322 = load i32, i32* %11, align 4
  %323 = add i32 %322, 3
  %324 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %320, i32 %321, i32 %323)
  store i32 %324, i32* %8, align 4
  %325 = load i32, i32* %8, align 4
  %326 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %327 = call i32 @rt2x00_get_field16(i32 %325, i32 %326)
  store i32 %327, i32* %7, align 4
  %328 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %329 = load i32, i32* %12, align 4
  %330 = load i32, i32* %6, align 4
  %331 = load i32, i32* %7, align 4
  %332 = load i32, i32* %13, align 4
  %333 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %328, i32 0, i32 %329, i32 %330, i32 %331, i32 %332)
  store i32 %333, i32* %7, align 4
  %334 = load i64, i64* @TX_PWR_CFG_7_IDX, align 8
  %335 = getelementptr inbounds i64, i64* %18, i64 %334
  %336 = load i32, i32* @TX_PWR_CFG_7_MCS7_CH0, align 4
  %337 = load i32, i32* %7, align 4
  %338 = call i32 @rt2x00_set_field32(i64* %335, i32 %336, i32 %337)
  %339 = load i64, i64* @TX_PWR_CFG_7_IDX, align 8
  %340 = getelementptr inbounds i64, i64* %18, i64 %339
  %341 = load i32, i32* @TX_PWR_CFG_7_MCS7_CH1, align 4
  %342 = load i32, i32* %7, align 4
  %343 = call i32 @rt2x00_set_field32(i64* %340, i32 %341, i32 %342)
  %344 = load i64, i64* @TX_PWR_CFG_7_IDX, align 8
  %345 = getelementptr inbounds i64, i64* %18, i64 %344
  %346 = load i32, i32* @TX_PWR_CFG_7_MCS7_CH2, align 4
  %347 = load i32, i32* %7, align 4
  %348 = call i32 @rt2x00_set_field32(i64* %345, i32 %346, i32 %347)
  %349 = load i32, i32* %8, align 4
  %350 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %351 = call i32 @rt2x00_get_field16(i32 %349, i32 %350)
  store i32 %351, i32* %7, align 4
  %352 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* %6, align 4
  %355 = load i32, i32* %7, align 4
  %356 = load i32, i32* %13, align 4
  %357 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %352, i32 0, i32 %353, i32 %354, i32 %355, i32 %356)
  store i32 %357, i32* %7, align 4
  %358 = load i64, i64* @TX_PWR_CFG_2_IDX, align 8
  %359 = getelementptr inbounds i64, i64* %18, i64 %358
  %360 = load i32, i32* @TX_PWR_CFG_2_MCS8_CH0, align 4
  %361 = load i32, i32* %7, align 4
  %362 = call i32 @rt2x00_set_field32(i64* %359, i32 %360, i32 %361)
  %363 = load i64, i64* @TX_PWR_CFG_2_IDX, align 8
  %364 = getelementptr inbounds i64, i64* %18, i64 %363
  %365 = load i32, i32* @TX_PWR_CFG_2_MCS8_CH1, align 4
  %366 = load i32, i32* %7, align 4
  %367 = call i32 @rt2x00_set_field32(i64* %364, i32 %365, i32 %366)
  %368 = load i64, i64* @TX_PWR_CFG_2_EXT_IDX, align 8
  %369 = getelementptr inbounds i64, i64* %18, i64 %368
  %370 = load i32, i32* @TX_PWR_CFG_2_EXT_MCS8_CH2, align 4
  %371 = load i32, i32* %7, align 4
  %372 = call i32 @rt2x00_set_field32(i64* %369, i32 %370, i32 %371)
  %373 = load i32, i32* %8, align 4
  %374 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %375 = call i32 @rt2x00_get_field16(i32 %373, i32 %374)
  store i32 %375, i32* %7, align 4
  %376 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %377 = load i32, i32* %12, align 4
  %378 = load i32, i32* %6, align 4
  %379 = load i32, i32* %7, align 4
  %380 = load i32, i32* %13, align 4
  %381 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %376, i32 0, i32 %377, i32 %378, i32 %379, i32 %380)
  store i32 %381, i32* %7, align 4
  %382 = load i64, i64* @TX_PWR_CFG_2_IDX, align 8
  %383 = getelementptr inbounds i64, i64* %18, i64 %382
  %384 = load i32, i32* @TX_PWR_CFG_2_MCS10_CH0, align 4
  %385 = load i32, i32* %7, align 4
  %386 = call i32 @rt2x00_set_field32(i64* %383, i32 %384, i32 %385)
  %387 = load i64, i64* @TX_PWR_CFG_2_IDX, align 8
  %388 = getelementptr inbounds i64, i64* %18, i64 %387
  %389 = load i32, i32* @TX_PWR_CFG_2_MCS10_CH1, align 4
  %390 = load i32, i32* %7, align 4
  %391 = call i32 @rt2x00_set_field32(i64* %388, i32 %389, i32 %390)
  %392 = load i64, i64* @TX_PWR_CFG_2_EXT_IDX, align 8
  %393 = getelementptr inbounds i64, i64* %18, i64 %392
  %394 = load i32, i32* @TX_PWR_CFG_2_EXT_MCS10_CH2, align 4
  %395 = load i32, i32* %7, align 4
  %396 = call i32 @rt2x00_set_field32(i64* %393, i32 %394, i32 %395)
  %397 = load i32, i32* %8, align 4
  %398 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE3, align 4
  %399 = call i32 @rt2x00_get_field16(i32 %397, i32 %398)
  store i32 %399, i32* %7, align 4
  %400 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %401 = load i32, i32* %12, align 4
  %402 = load i32, i32* %6, align 4
  %403 = load i32, i32* %7, align 4
  %404 = load i32, i32* %13, align 4
  %405 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %400, i32 0, i32 %401, i32 %402, i32 %403, i32 %404)
  store i32 %405, i32* %7, align 4
  %406 = load i64, i64* @TX_PWR_CFG_3_IDX, align 8
  %407 = getelementptr inbounds i64, i64* %18, i64 %406
  %408 = load i32, i32* @TX_PWR_CFG_3_MCS12_CH0, align 4
  %409 = load i32, i32* %7, align 4
  %410 = call i32 @rt2x00_set_field32(i64* %407, i32 %408, i32 %409)
  %411 = load i64, i64* @TX_PWR_CFG_3_IDX, align 8
  %412 = getelementptr inbounds i64, i64* %18, i64 %411
  %413 = load i32, i32* @TX_PWR_CFG_3_MCS12_CH1, align 4
  %414 = load i32, i32* %7, align 4
  %415 = call i32 @rt2x00_set_field32(i64* %412, i32 %413, i32 %414)
  %416 = load i64, i64* @TX_PWR_CFG_3_EXT_IDX, align 8
  %417 = getelementptr inbounds i64, i64* %18, i64 %416
  %418 = load i32, i32* @TX_PWR_CFG_3_EXT_MCS12_CH2, align 4
  %419 = load i32, i32* %7, align 4
  %420 = call i32 @rt2x00_set_field32(i64* %417, i32 %418, i32 %419)
  %421 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %422 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %423 = load i32, i32* %11, align 4
  %424 = add i32 %423, 4
  %425 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %421, i32 %422, i32 %424)
  store i32 %425, i32* %8, align 4
  %426 = load i32, i32* %8, align 4
  %427 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %428 = call i32 @rt2x00_get_field16(i32 %426, i32 %427)
  store i32 %428, i32* %7, align 4
  %429 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %430 = load i32, i32* %12, align 4
  %431 = load i32, i32* %6, align 4
  %432 = load i32, i32* %7, align 4
  %433 = load i32, i32* %13, align 4
  %434 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %429, i32 0, i32 %430, i32 %431, i32 %432, i32 %433)
  store i32 %434, i32* %7, align 4
  %435 = load i64, i64* @TX_PWR_CFG_3_IDX, align 8
  %436 = getelementptr inbounds i64, i64* %18, i64 %435
  %437 = load i32, i32* @TX_PWR_CFG_3_MCS14_CH0, align 4
  %438 = load i32, i32* %7, align 4
  %439 = call i32 @rt2x00_set_field32(i64* %436, i32 %437, i32 %438)
  %440 = load i64, i64* @TX_PWR_CFG_3_IDX, align 8
  %441 = getelementptr inbounds i64, i64* %18, i64 %440
  %442 = load i32, i32* @TX_PWR_CFG_3_MCS14_CH1, align 4
  %443 = load i32, i32* %7, align 4
  %444 = call i32 @rt2x00_set_field32(i64* %441, i32 %442, i32 %443)
  %445 = load i64, i64* @TX_PWR_CFG_3_EXT_IDX, align 8
  %446 = getelementptr inbounds i64, i64* %18, i64 %445
  %447 = load i32, i32* @TX_PWR_CFG_3_EXT_MCS14_CH2, align 4
  %448 = load i32, i32* %7, align 4
  %449 = call i32 @rt2x00_set_field32(i64* %446, i32 %447, i32 %448)
  %450 = load i32, i32* %8, align 4
  %451 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %452 = call i32 @rt2x00_get_field16(i32 %450, i32 %451)
  store i32 %452, i32* %7, align 4
  %453 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %454 = load i32, i32* %12, align 4
  %455 = load i32, i32* %6, align 4
  %456 = load i32, i32* %7, align 4
  %457 = load i32, i32* %13, align 4
  %458 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %453, i32 0, i32 %454, i32 %455, i32 %456, i32 %457)
  store i32 %458, i32* %7, align 4
  %459 = load i64, i64* @TX_PWR_CFG_8_IDX, align 8
  %460 = getelementptr inbounds i64, i64* %18, i64 %459
  %461 = load i32, i32* @TX_PWR_CFG_8_MCS15_CH0, align 4
  %462 = load i32, i32* %7, align 4
  %463 = call i32 @rt2x00_set_field32(i64* %460, i32 %461, i32 %462)
  %464 = load i64, i64* @TX_PWR_CFG_8_IDX, align 8
  %465 = getelementptr inbounds i64, i64* %18, i64 %464
  %466 = load i32, i32* @TX_PWR_CFG_8_MCS15_CH1, align 4
  %467 = load i32, i32* %7, align 4
  %468 = call i32 @rt2x00_set_field32(i64* %465, i32 %466, i32 %467)
  %469 = load i64, i64* @TX_PWR_CFG_8_IDX, align 8
  %470 = getelementptr inbounds i64, i64* %18, i64 %469
  %471 = load i32, i32* @TX_PWR_CFG_8_MCS15_CH2, align 4
  %472 = load i32, i32* %7, align 4
  %473 = call i32 @rt2x00_set_field32(i64* %470, i32 %471, i32 %472)
  %474 = load i32, i32* %8, align 4
  %475 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %476 = call i32 @rt2x00_get_field16(i32 %474, i32 %475)
  store i32 %476, i32* %7, align 4
  %477 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %478 = load i32, i32* %12, align 4
  %479 = load i32, i32* %6, align 4
  %480 = load i32, i32* %7, align 4
  %481 = load i32, i32* %13, align 4
  %482 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %477, i32 0, i32 %478, i32 %479, i32 %480, i32 %481)
  store i32 %482, i32* %7, align 4
  %483 = load i64, i64* @TX_PWR_CFG_5_IDX, align 8
  %484 = getelementptr inbounds i64, i64* %18, i64 %483
  %485 = load i32, i32* @TX_PWR_CFG_5_MCS16_CH0, align 4
  %486 = load i32, i32* %7, align 4
  %487 = call i32 @rt2x00_set_field32(i64* %484, i32 %485, i32 %486)
  %488 = load i64, i64* @TX_PWR_CFG_5_IDX, align 8
  %489 = getelementptr inbounds i64, i64* %18, i64 %488
  %490 = load i32, i32* @TX_PWR_CFG_5_MCS16_CH1, align 4
  %491 = load i32, i32* %7, align 4
  %492 = call i32 @rt2x00_set_field32(i64* %489, i32 %490, i32 %491)
  %493 = load i64, i64* @TX_PWR_CFG_5_IDX, align 8
  %494 = getelementptr inbounds i64, i64* %18, i64 %493
  %495 = load i32, i32* @TX_PWR_CFG_5_MCS16_CH2, align 4
  %496 = load i32, i32* %7, align 4
  %497 = call i32 @rt2x00_set_field32(i64* %494, i32 %495, i32 %496)
  %498 = load i32, i32* %8, align 4
  %499 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE3, align 4
  %500 = call i32 @rt2x00_get_field16(i32 %498, i32 %499)
  store i32 %500, i32* %7, align 4
  %501 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %502 = load i32, i32* %12, align 4
  %503 = load i32, i32* %6, align 4
  %504 = load i32, i32* %7, align 4
  %505 = load i32, i32* %13, align 4
  %506 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %501, i32 0, i32 %502, i32 %503, i32 %504, i32 %505)
  store i32 %506, i32* %7, align 4
  %507 = load i64, i64* @TX_PWR_CFG_5_IDX, align 8
  %508 = getelementptr inbounds i64, i64* %18, i64 %507
  %509 = load i32, i32* @TX_PWR_CFG_5_MCS18_CH0, align 4
  %510 = load i32, i32* %7, align 4
  %511 = call i32 @rt2x00_set_field32(i64* %508, i32 %509, i32 %510)
  %512 = load i64, i64* @TX_PWR_CFG_5_IDX, align 8
  %513 = getelementptr inbounds i64, i64* %18, i64 %512
  %514 = load i32, i32* @TX_PWR_CFG_5_MCS18_CH1, align 4
  %515 = load i32, i32* %7, align 4
  %516 = call i32 @rt2x00_set_field32(i64* %513, i32 %514, i32 %515)
  %517 = load i64, i64* @TX_PWR_CFG_5_IDX, align 8
  %518 = getelementptr inbounds i64, i64* %18, i64 %517
  %519 = load i32, i32* @TX_PWR_CFG_5_MCS18_CH2, align 4
  %520 = load i32, i32* %7, align 4
  %521 = call i32 @rt2x00_set_field32(i64* %518, i32 %519, i32 %520)
  %522 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %523 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %524 = load i32, i32* %11, align 4
  %525 = add i32 %524, 5
  %526 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %522, i32 %523, i32 %525)
  store i32 %526, i32* %8, align 4
  %527 = load i32, i32* %8, align 4
  %528 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %529 = call i32 @rt2x00_get_field16(i32 %527, i32 %528)
  store i32 %529, i32* %7, align 4
  %530 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %531 = load i32, i32* %12, align 4
  %532 = load i32, i32* %6, align 4
  %533 = load i32, i32* %7, align 4
  %534 = load i32, i32* %13, align 4
  %535 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %530, i32 0, i32 %531, i32 %532, i32 %533, i32 %534)
  store i32 %535, i32* %7, align 4
  %536 = load i64, i64* @TX_PWR_CFG_6_IDX, align 8
  %537 = getelementptr inbounds i64, i64* %18, i64 %536
  %538 = load i32, i32* @TX_PWR_CFG_6_MCS20_CH0, align 4
  %539 = load i32, i32* %7, align 4
  %540 = call i32 @rt2x00_set_field32(i64* %537, i32 %538, i32 %539)
  %541 = load i64, i64* @TX_PWR_CFG_6_IDX, align 8
  %542 = getelementptr inbounds i64, i64* %18, i64 %541
  %543 = load i32, i32* @TX_PWR_CFG_6_MCS20_CH1, align 4
  %544 = load i32, i32* %7, align 4
  %545 = call i32 @rt2x00_set_field32(i64* %542, i32 %543, i32 %544)
  %546 = load i64, i64* @TX_PWR_CFG_6_IDX, align 8
  %547 = getelementptr inbounds i64, i64* %18, i64 %546
  %548 = load i32, i32* @TX_PWR_CFG_6_MCS20_CH2, align 4
  %549 = load i32, i32* %7, align 4
  %550 = call i32 @rt2x00_set_field32(i64* %547, i32 %548, i32 %549)
  %551 = load i32, i32* %8, align 4
  %552 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %553 = call i32 @rt2x00_get_field16(i32 %551, i32 %552)
  store i32 %553, i32* %7, align 4
  %554 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %555 = load i32, i32* %12, align 4
  %556 = load i32, i32* %6, align 4
  %557 = load i32, i32* %7, align 4
  %558 = load i32, i32* %13, align 4
  %559 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %554, i32 0, i32 %555, i32 %556, i32 %557, i32 %558)
  store i32 %559, i32* %7, align 4
  %560 = load i64, i64* @TX_PWR_CFG_6_IDX, align 8
  %561 = getelementptr inbounds i64, i64* %18, i64 %560
  %562 = load i32, i32* @TX_PWR_CFG_6_MCS22_CH0, align 4
  %563 = load i32, i32* %7, align 4
  %564 = call i32 @rt2x00_set_field32(i64* %561, i32 %562, i32 %563)
  %565 = load i64, i64* @TX_PWR_CFG_6_IDX, align 8
  %566 = getelementptr inbounds i64, i64* %18, i64 %565
  %567 = load i32, i32* @TX_PWR_CFG_6_MCS22_CH1, align 4
  %568 = load i32, i32* %7, align 4
  %569 = call i32 @rt2x00_set_field32(i64* %566, i32 %567, i32 %568)
  %570 = load i64, i64* @TX_PWR_CFG_6_IDX, align 8
  %571 = getelementptr inbounds i64, i64* %18, i64 %570
  %572 = load i32, i32* @TX_PWR_CFG_6_MCS22_CH2, align 4
  %573 = load i32, i32* %7, align 4
  %574 = call i32 @rt2x00_set_field32(i64* %571, i32 %572, i32 %573)
  %575 = load i32, i32* %8, align 4
  %576 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %577 = call i32 @rt2x00_get_field16(i32 %575, i32 %576)
  store i32 %577, i32* %7, align 4
  %578 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %579 = load i32, i32* %12, align 4
  %580 = load i32, i32* %6, align 4
  %581 = load i32, i32* %7, align 4
  %582 = load i32, i32* %13, align 4
  %583 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %578, i32 0, i32 %579, i32 %580, i32 %581, i32 %582)
  store i32 %583, i32* %7, align 4
  %584 = load i64, i64* @TX_PWR_CFG_8_IDX, align 8
  %585 = getelementptr inbounds i64, i64* %18, i64 %584
  %586 = load i32, i32* @TX_PWR_CFG_8_MCS23_CH0, align 4
  %587 = load i32, i32* %7, align 4
  %588 = call i32 @rt2x00_set_field32(i64* %585, i32 %586, i32 %587)
  %589 = load i64, i64* @TX_PWR_CFG_8_IDX, align 8
  %590 = getelementptr inbounds i64, i64* %18, i64 %589
  %591 = load i32, i32* @TX_PWR_CFG_8_MCS23_CH1, align 4
  %592 = load i32, i32* %7, align 4
  %593 = call i32 @rt2x00_set_field32(i64* %590, i32 %591, i32 %592)
  %594 = load i64, i64* @TX_PWR_CFG_8_IDX, align 8
  %595 = getelementptr inbounds i64, i64* %18, i64 %594
  %596 = load i32, i32* @TX_PWR_CFG_8_MCS23_CH2, align 4
  %597 = load i32, i32* %7, align 4
  %598 = call i32 @rt2x00_set_field32(i64* %595, i32 %596, i32 %597)
  %599 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %600 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %601 = load i32, i32* %11, align 4
  %602 = add i32 %601, 6
  %603 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %599, i32 %600, i32 %602)
  store i32 %603, i32* %8, align 4
  %604 = load i32, i32* %8, align 4
  %605 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %606 = call i32 @rt2x00_get_field16(i32 %604, i32 %605)
  store i32 %606, i32* %7, align 4
  %607 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %608 = load i32, i32* %12, align 4
  %609 = load i32, i32* %6, align 4
  %610 = load i32, i32* %7, align 4
  %611 = load i32, i32* %13, align 4
  %612 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %607, i32 0, i32 %608, i32 %609, i32 %610, i32 %611)
  store i32 %612, i32* %7, align 4
  %613 = load i64, i64* @TX_PWR_CFG_3_IDX, align 8
  %614 = getelementptr inbounds i64, i64* %18, i64 %613
  %615 = load i32, i32* @TX_PWR_CFG_3_STBC0_CH0, align 4
  %616 = load i32, i32* %7, align 4
  %617 = call i32 @rt2x00_set_field32(i64* %614, i32 %615, i32 %616)
  %618 = load i64, i64* @TX_PWR_CFG_3_IDX, align 8
  %619 = getelementptr inbounds i64, i64* %18, i64 %618
  %620 = load i32, i32* @TX_PWR_CFG_3_STBC0_CH1, align 4
  %621 = load i32, i32* %7, align 4
  %622 = call i32 @rt2x00_set_field32(i64* %619, i32 %620, i32 %621)
  %623 = load i64, i64* @TX_PWR_CFG_3_EXT_IDX, align 8
  %624 = getelementptr inbounds i64, i64* %18, i64 %623
  %625 = load i32, i32* @TX_PWR_CFG_3_EXT_STBC0_CH2, align 4
  %626 = load i32, i32* %7, align 4
  %627 = call i32 @rt2x00_set_field32(i64* %624, i32 %625, i32 %626)
  %628 = load i32, i32* %8, align 4
  %629 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE1, align 4
  %630 = call i32 @rt2x00_get_field16(i32 %628, i32 %629)
  store i32 %630, i32* %7, align 4
  %631 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %632 = load i32, i32* %12, align 4
  %633 = load i32, i32* %6, align 4
  %634 = load i32, i32* %7, align 4
  %635 = load i32, i32* %13, align 4
  %636 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %631, i32 0, i32 %632, i32 %633, i32 %634, i32 %635)
  store i32 %636, i32* %7, align 4
  %637 = load i64, i64* @TX_PWR_CFG_3_IDX, align 8
  %638 = getelementptr inbounds i64, i64* %18, i64 %637
  %639 = load i32, i32* @TX_PWR_CFG_3_STBC2_CH0, align 4
  %640 = load i32, i32* %7, align 4
  %641 = call i32 @rt2x00_set_field32(i64* %638, i32 %639, i32 %640)
  %642 = load i64, i64* @TX_PWR_CFG_3_IDX, align 8
  %643 = getelementptr inbounds i64, i64* %18, i64 %642
  %644 = load i32, i32* @TX_PWR_CFG_3_STBC2_CH1, align 4
  %645 = load i32, i32* %7, align 4
  %646 = call i32 @rt2x00_set_field32(i64* %643, i32 %644, i32 %645)
  %647 = load i64, i64* @TX_PWR_CFG_3_EXT_IDX, align 8
  %648 = getelementptr inbounds i64, i64* %18, i64 %647
  %649 = load i32, i32* @TX_PWR_CFG_3_EXT_STBC2_CH2, align 4
  %650 = load i32, i32* %7, align 4
  %651 = call i32 @rt2x00_set_field32(i64* %648, i32 %649, i32 %650)
  %652 = load i32, i32* %8, align 4
  %653 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE2, align 4
  %654 = call i32 @rt2x00_get_field16(i32 %652, i32 %653)
  store i32 %654, i32* %7, align 4
  %655 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %656 = load i32, i32* %12, align 4
  %657 = load i32, i32* %6, align 4
  %658 = load i32, i32* %7, align 4
  %659 = load i32, i32* %13, align 4
  %660 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %655, i32 0, i32 %656, i32 %657, i32 %658, i32 %659)
  store i32 %660, i32* %7, align 4
  %661 = load i64, i64* @TX_PWR_CFG_4_IDX, align 8
  %662 = getelementptr inbounds i64, i64* %18, i64 %661
  %663 = load i32, i32* @TX_PWR_CFG_RATE0, align 4
  %664 = load i32, i32* %7, align 4
  %665 = call i32 @rt2x00_set_field32(i64* %662, i32 %663, i32 %664)
  %666 = load i64, i64* @TX_PWR_CFG_4_IDX, align 8
  %667 = getelementptr inbounds i64, i64* %18, i64 %666
  %668 = load i32, i32* @TX_PWR_CFG_RATE1, align 4
  %669 = load i32, i32* %7, align 4
  %670 = call i32 @rt2x00_set_field32(i64* %667, i32 %668, i32 %669)
  %671 = load i64, i64* @TX_PWR_CFG_4_EXT_IDX, align 8
  %672 = getelementptr inbounds i64, i64* %18, i64 %671
  %673 = load i32, i32* @TX_PWR_CFG_RATE0, align 4
  %674 = load i32, i32* %7, align 4
  %675 = call i32 @rt2x00_set_field32(i64* %672, i32 %673, i32 %674)
  %676 = load i32, i32* %8, align 4
  %677 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE3, align 4
  %678 = call i32 @rt2x00_get_field16(i32 %676, i32 %677)
  store i32 %678, i32* %7, align 4
  %679 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %680 = load i32, i32* %12, align 4
  %681 = load i32, i32* %6, align 4
  %682 = load i32, i32* %7, align 4
  %683 = load i32, i32* %13, align 4
  %684 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %679, i32 0, i32 %680, i32 %681, i32 %682, i32 %683)
  store i32 %684, i32* %7, align 4
  %685 = load i64, i64* @TX_PWR_CFG_4_IDX, align 8
  %686 = getelementptr inbounds i64, i64* %18, i64 %685
  %687 = load i32, i32* @TX_PWR_CFG_RATE2, align 4
  %688 = load i32, i32* %7, align 4
  %689 = call i32 @rt2x00_set_field32(i64* %686, i32 %687, i32 %688)
  %690 = load i64, i64* @TX_PWR_CFG_4_IDX, align 8
  %691 = getelementptr inbounds i64, i64* %18, i64 %690
  %692 = load i32, i32* @TX_PWR_CFG_RATE3, align 4
  %693 = load i32, i32* %7, align 4
  %694 = call i32 @rt2x00_set_field32(i64* %691, i32 %692, i32 %693)
  %695 = load i64, i64* @TX_PWR_CFG_4_EXT_IDX, align 8
  %696 = getelementptr inbounds i64, i64* %18, i64 %695
  %697 = load i32, i32* @TX_PWR_CFG_RATE2, align 4
  %698 = load i32, i32* %7, align 4
  %699 = call i32 @rt2x00_set_field32(i64* %696, i32 %697, i32 %698)
  %700 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %701 = load i32, i32* @EEPROM_TXPOWER_BYRATE, align 4
  %702 = load i32, i32* %11, align 4
  %703 = add i32 %702, 7
  %704 = call i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev* %700, i32 %701, i32 %703)
  store i32 %704, i32* %8, align 4
  %705 = load i32, i32* %8, align 4
  %706 = load i32, i32* @EEPROM_TXPOWER_BYRATE_RATE0, align 4
  %707 = call i32 @rt2x00_get_field16(i32 %705, i32 %706)
  store i32 %707, i32* %7, align 4
  %708 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %709 = load i32, i32* %12, align 4
  %710 = load i32, i32* %6, align 4
  %711 = load i32, i32* %7, align 4
  %712 = load i32, i32* %13, align 4
  %713 = call i32 @rt2800_compensate_txpower(%struct.rt2x00_dev* %708, i32 0, i32 %709, i32 %710, i32 %711, i32 %712)
  store i32 %713, i32* %7, align 4
  %714 = load i64, i64* @TX_PWR_CFG_9_IDX, align 8
  %715 = getelementptr inbounds i64, i64* %18, i64 %714
  %716 = load i32, i32* @TX_PWR_CFG_9_STBC7_CH0, align 4
  %717 = load i32, i32* %7, align 4
  %718 = call i32 @rt2x00_set_field32(i64* %715, i32 %716, i32 %717)
  %719 = load i64, i64* @TX_PWR_CFG_9_IDX, align 8
  %720 = getelementptr inbounds i64, i64* %18, i64 %719
  %721 = load i32, i32* @TX_PWR_CFG_9_STBC7_CH1, align 4
  %722 = load i32, i32* %7, align 4
  %723 = call i32 @rt2x00_set_field32(i64* %720, i32 %721, i32 %722)
  %724 = load i64, i64* @TX_PWR_CFG_9_IDX, align 8
  %725 = getelementptr inbounds i64, i64* %18, i64 %724
  %726 = load i32, i32* @TX_PWR_CFG_9_STBC7_CH2, align 4
  %727 = load i32, i32* %7, align 4
  %728 = call i32 @rt2x00_set_field32(i64* %725, i32 %726, i32 %727)
  %729 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %730 = load i32, i32* @TX_PWR_CFG_0, align 4
  %731 = load i64, i64* @TX_PWR_CFG_0_IDX, align 8
  %732 = getelementptr inbounds i64, i64* %18, i64 %731
  %733 = load i64, i64* %732, align 8
  %734 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %729, i32 %730, i64 %733)
  %735 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %736 = load i32, i32* @TX_PWR_CFG_1, align 4
  %737 = load i64, i64* @TX_PWR_CFG_1_IDX, align 8
  %738 = getelementptr inbounds i64, i64* %18, i64 %737
  %739 = load i64, i64* %738, align 8
  %740 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %735, i32 %736, i64 %739)
  %741 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %742 = load i32, i32* @TX_PWR_CFG_2, align 4
  %743 = load i64, i64* @TX_PWR_CFG_2_IDX, align 8
  %744 = getelementptr inbounds i64, i64* %18, i64 %743
  %745 = load i64, i64* %744, align 8
  %746 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %741, i32 %742, i64 %745)
  %747 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %748 = load i32, i32* @TX_PWR_CFG_3, align 4
  %749 = load i64, i64* @TX_PWR_CFG_3_IDX, align 8
  %750 = getelementptr inbounds i64, i64* %18, i64 %749
  %751 = load i64, i64* %750, align 8
  %752 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %747, i32 %748, i64 %751)
  %753 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %754 = load i32, i32* @TX_PWR_CFG_4, align 4
  %755 = load i64, i64* @TX_PWR_CFG_4_IDX, align 8
  %756 = getelementptr inbounds i64, i64* %18, i64 %755
  %757 = load i64, i64* %756, align 8
  %758 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %753, i32 %754, i64 %757)
  %759 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %760 = load i32, i32* @TX_PWR_CFG_5, align 4
  %761 = load i64, i64* @TX_PWR_CFG_5_IDX, align 8
  %762 = getelementptr inbounds i64, i64* %18, i64 %761
  %763 = load i64, i64* %762, align 8
  %764 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %759, i32 %760, i64 %763)
  %765 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %766 = load i32, i32* @TX_PWR_CFG_6, align 4
  %767 = load i64, i64* @TX_PWR_CFG_6_IDX, align 8
  %768 = getelementptr inbounds i64, i64* %18, i64 %767
  %769 = load i64, i64* %768, align 8
  %770 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %765, i32 %766, i64 %769)
  %771 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %772 = load i32, i32* @TX_PWR_CFG_7, align 4
  %773 = load i64, i64* @TX_PWR_CFG_7_IDX, align 8
  %774 = getelementptr inbounds i64, i64* %18, i64 %773
  %775 = load i64, i64* %774, align 8
  %776 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %771, i32 %772, i64 %775)
  %777 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %778 = load i32, i32* @TX_PWR_CFG_8, align 4
  %779 = load i64, i64* @TX_PWR_CFG_8_IDX, align 8
  %780 = getelementptr inbounds i64, i64* %18, i64 %779
  %781 = load i64, i64* %780, align 8
  %782 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %777, i32 %778, i64 %781)
  %783 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %784 = load i32, i32* @TX_PWR_CFG_9, align 4
  %785 = load i64, i64* @TX_PWR_CFG_9_IDX, align 8
  %786 = getelementptr inbounds i64, i64* %18, i64 %785
  %787 = load i64, i64* %786, align 8
  %788 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %783, i32 %784, i64 %787)
  %789 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %790 = load i32, i32* @TX_PWR_CFG_0_EXT, align 4
  %791 = load i64, i64* @TX_PWR_CFG_0_EXT_IDX, align 8
  %792 = getelementptr inbounds i64, i64* %18, i64 %791
  %793 = load i64, i64* %792, align 8
  %794 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %789, i32 %790, i64 %793)
  %795 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %796 = load i32, i32* @TX_PWR_CFG_1_EXT, align 4
  %797 = load i64, i64* @TX_PWR_CFG_1_EXT_IDX, align 8
  %798 = getelementptr inbounds i64, i64* %18, i64 %797
  %799 = load i64, i64* %798, align 8
  %800 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %795, i32 %796, i64 %799)
  %801 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %802 = load i32, i32* @TX_PWR_CFG_2_EXT, align 4
  %803 = load i64, i64* @TX_PWR_CFG_2_EXT_IDX, align 8
  %804 = getelementptr inbounds i64, i64* %18, i64 %803
  %805 = load i64, i64* %804, align 8
  %806 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %801, i32 %802, i64 %805)
  %807 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %808 = load i32, i32* @TX_PWR_CFG_3_EXT, align 4
  %809 = load i64, i64* @TX_PWR_CFG_3_EXT_IDX, align 8
  %810 = getelementptr inbounds i64, i64* %18, i64 %809
  %811 = load i64, i64* %810, align 8
  %812 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %807, i32 %808, i64 %811)
  %813 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %814 = load i32, i32* @TX_PWR_CFG_4_EXT, align 4
  %815 = load i64, i64* @TX_PWR_CFG_4_EXT_IDX, align 8
  %816 = getelementptr inbounds i64, i64* %18, i64 %815
  %817 = load i64, i64* %816, align 8
  %818 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %813, i32 %814, i64 %817)
  store i32 0, i32* %14, align 4
  br label %819

819:                                              ; preds = %866, %41
  %820 = load i32, i32* %14, align 4
  %821 = load i32, i32* @TX_PWR_CFG_IDX_COUNT, align 4
  %822 = icmp slt i32 %820, %821
  br i1 %822, label %823, label %869

823:                                              ; preds = %819
  %824 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %825 = load i32, i32* %12, align 4
  %826 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %827 = icmp eq i32 %825, %826
  %828 = zext i1 %827 to i64
  %829 = select i1 %827, i32 53, i32 50
  %830 = trunc i32 %829 to i8
  %831 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %832 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %833 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %832, i32 0, i32 0
  %834 = call i64 @test_bit(i32 %831, i32* %833)
  %835 = icmp ne i64 %834, 0
  %836 = zext i1 %835 to i64
  %837 = select i1 %835, i32 52, i32 50
  %838 = trunc i32 %837 to i8
  %839 = load i32, i32* %14, align 4
  %840 = sext i32 %839 to i64
  %841 = load i64, i64* @TX_PWR_CFG_9_IDX, align 8
  %842 = icmp ugt i64 %840, %841
  br i1 %842, label %843, label %849

843:                                              ; preds = %823
  %844 = load i32, i32* %14, align 4
  %845 = sext i32 %844 to i64
  %846 = load i64, i64* @TX_PWR_CFG_9_IDX, align 8
  %847 = sub i64 %845, %846
  %848 = sub i64 %847, 1
  br label %852

849:                                              ; preds = %823
  %850 = load i32, i32* %14, align 4
  %851 = sext i32 %850 to i64
  br label %852

852:                                              ; preds = %849, %843
  %853 = phi i64 [ %848, %843 ], [ %851, %849 ]
  %854 = trunc i64 %853 to i32
  %855 = load i32, i32* %14, align 4
  %856 = sext i32 %855 to i64
  %857 = load i64, i64* @TX_PWR_CFG_9_IDX, align 8
  %858 = icmp ugt i64 %856, %857
  %859 = zext i1 %858 to i64
  %860 = select i1 %858, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %861 = load i32, i32* %14, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds i64, i64* %18, i64 %862
  %864 = load i64, i64* %863, align 8
  %865 = call i32 @rt2x00_dbg(%struct.rt2x00_dev* %824, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8 signext %830, i8 signext %838, i32 %854, i8* %860, i64 %864)
  br label %866

866:                                              ; preds = %852
  %867 = load i32, i32* %14, align 4
  %868 = add nsw i32 %867, 1
  store i32 %868, i32* %14, align 4
  br label %819

869:                                              ; preds = %819
  %870 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %870)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i8 signext, i32) #2

declare dso_local i32 @rt2800_get_gain_calibration_delta(%struct.rt2x00_dev*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @rt2800_eeprom_read_from_array(%struct.rt2x00_dev*, i32, i32) #2

declare dso_local i32 @rt2x00_get_field16(i32, i32) #2

declare dso_local i32 @rt2800_compensate_txpower(%struct.rt2x00_dev*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #2

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i64) #2

declare dso_local i32 @rt2x00_dbg(%struct.rt2x00_dev*, i8*, i8 signext, i8 signext, i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
