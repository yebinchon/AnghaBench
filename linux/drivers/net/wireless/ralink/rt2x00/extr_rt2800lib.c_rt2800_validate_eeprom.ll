; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.rt2800_drv_data* }
%struct.rt2800_drv_data = type { i32, i32 }

@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RXPATH = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_TXPATH = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF0_RF_TYPE = common dso_local global i32 0, align 4
@RF2820 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Antenna: 0x%04x\0A\00", align 1
@RT2860 = common dso_local global i32 0, align 4
@RT2872 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1 = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_HW_RADIO = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_TX_ALC = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_LNA_2G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_EXTERNAL_LNA_5G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_CARDBUS_ACCEL = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BW40M_SB_2G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BW40M_SB_5G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_WPS_PBC = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BW40M_2G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BW40M_5G = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BROADBAND_EXT_LNA = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_ANT_DIVERSITY = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_INTERNAL_TX_ALC = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_BT_COEXIST = common dso_local global i32 0, align 4
@EEPROM_NIC_CONF1_DAC_TEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"NIC: 0x%04x\0A\00", align 1
@EEPROM_FREQ = common dso_local global i32 0, align 4
@EEPROM_FREQ_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Freq: 0x%04x\0A\00", align 1
@EEPROM_FREQ_LED_MODE = common dso_local global i32 0, align 4
@LED_MODE_TXRX_ACTIVITY = common dso_local global i32 0, align 4
@EEPROM_FREQ_LED_POLARITY = common dso_local global i32 0, align 4
@EEPROM_LED_AG_CONF = common dso_local global i32 0, align 4
@EEPROM_LED_ACT_CONF = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Led Mode: 0x%04x\0A\00", align 1
@EEPROM_LNA = common dso_local global i32 0, align 4
@EEPROM_LNA_A0 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG_OFFSET0 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG_OFFSET1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2_OFFSET2 = common dso_local global i32 0, align 4
@RT3593 = common dso_local global i32 0, align 4
@RT3883 = common dso_local global i32 0, align 4
@EEPROM_RSSI_BG2_LNA_A1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A = common dso_local global i32 0, align 4
@EEPROM_RSSI_A_OFFSET0 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A_OFFSET1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2_OFFSET2 = common dso_local global i32 0, align 4
@EEPROM_RSSI_A2_LNA_A2 = common dso_local global i32 0, align 4
@EEPROM_EXT_LNA2 = common dso_local global i32 0, align 4
@EEPROM_EXT_LNA2_A1 = common dso_local global i32 0, align 4
@EEPROM_EXT_LNA2_A2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2800_drv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 0
  %11 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %10, align 8
  store %struct.rt2800_drv_data* %11, %struct.rt2800_drv_data** %4, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = call i32 @rt2800_read_eeprom(%struct.rt2x00_dev* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %349

18:                                               ; preds = %1
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %20 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %21 = call i32* @rt2800_eeprom_addr(%struct.rt2x00_dev* %19, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @rt2x00lib_set_mac_address(%struct.rt2x00_dev* %22, i32* %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %27 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %30, label %45

30:                                               ; preds = %18
  %31 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %32 = call i32 @rt2x00_set_field16(i32* %5, i32 %31, i32 2)
  %33 = load i32, i32* @EEPROM_NIC_CONF0_TXPATH, align 4
  %34 = call i32 @rt2x00_set_field16(i32* %5, i32 %33, i32 1)
  %35 = load i32, i32* @EEPROM_NIC_CONF0_RF_TYPE, align 4
  %36 = load i32, i32* @RF2820, align 4
  %37 = call i32 @rt2x00_set_field16(i32* %5, i32 %35, i32 %36)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %38, i32 %39, i32 %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %69

45:                                               ; preds = %18
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = load i32, i32* @RT2860, align 4
  %48 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %52 = load i32, i32* @RT2872, align 4
  %53 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %58 = call i32 @rt2x00_get_field16(i32 %56, i32 %57)
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EEPROM_NIC_CONF0_RXPATH, align 4
  %62 = call i32 @rt2x00_set_field16(i32* %5, i32 %61, i32 2)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = load i32, i32* @EEPROM_NIC_CONF0, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %50
  br label %69

69:                                               ; preds = %68, %30
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %71 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %72 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %73, 65535
  br i1 %74, label %75, label %113

75:                                               ; preds = %69
  %76 = load i32, i32* @EEPROM_NIC_CONF1_HW_RADIO, align 4
  %77 = call i32 @rt2x00_set_field16(i32* %5, i32 %76, i32 0)
  %78 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_TX_ALC, align 4
  %79 = call i32 @rt2x00_set_field16(i32* %5, i32 %78, i32 0)
  %80 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_LNA_2G, align 4
  %81 = call i32 @rt2x00_set_field16(i32* %5, i32 %80, i32 0)
  %82 = load i32, i32* @EEPROM_NIC_CONF1_EXTERNAL_LNA_5G, align 4
  %83 = call i32 @rt2x00_set_field16(i32* %5, i32 %82, i32 0)
  %84 = load i32, i32* @EEPROM_NIC_CONF1_CARDBUS_ACCEL, align 4
  %85 = call i32 @rt2x00_set_field16(i32* %5, i32 %84, i32 0)
  %86 = load i32, i32* @EEPROM_NIC_CONF1_BW40M_SB_2G, align 4
  %87 = call i32 @rt2x00_set_field16(i32* %5, i32 %86, i32 0)
  %88 = load i32, i32* @EEPROM_NIC_CONF1_BW40M_SB_5G, align 4
  %89 = call i32 @rt2x00_set_field16(i32* %5, i32 %88, i32 0)
  %90 = load i32, i32* @EEPROM_NIC_CONF1_WPS_PBC, align 4
  %91 = call i32 @rt2x00_set_field16(i32* %5, i32 %90, i32 0)
  %92 = load i32, i32* @EEPROM_NIC_CONF1_BW40M_2G, align 4
  %93 = call i32 @rt2x00_set_field16(i32* %5, i32 %92, i32 0)
  %94 = load i32, i32* @EEPROM_NIC_CONF1_BW40M_5G, align 4
  %95 = call i32 @rt2x00_set_field16(i32* %5, i32 %94, i32 0)
  %96 = load i32, i32* @EEPROM_NIC_CONF1_BROADBAND_EXT_LNA, align 4
  %97 = call i32 @rt2x00_set_field16(i32* %5, i32 %96, i32 0)
  %98 = load i32, i32* @EEPROM_NIC_CONF1_ANT_DIVERSITY, align 4
  %99 = call i32 @rt2x00_set_field16(i32* %5, i32 %98, i32 0)
  %100 = load i32, i32* @EEPROM_NIC_CONF1_INTERNAL_TX_ALC, align 4
  %101 = call i32 @rt2x00_set_field16(i32* %5, i32 %100, i32 0)
  %102 = load i32, i32* @EEPROM_NIC_CONF1_BT_COEXIST, align 4
  %103 = call i32 @rt2x00_set_field16(i32* %5, i32 %102, i32 0)
  %104 = load i32, i32* @EEPROM_NIC_CONF1_DAC_TEST, align 4
  %105 = call i32 @rt2x00_set_field16(i32* %5, i32 %104, i32 0)
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %107 = load i32, i32* @EEPROM_NIC_CONF1, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %106, i32 %107, i32 %108)
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %75, %69
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %115 = load i32, i32* @EEPROM_FREQ, align 4
  %116 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %114, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, 255
  %119 = icmp eq i32 %118, 255
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %122 = call i32 @rt2x00_set_field16(i32* %5, i32 %121, i32 0)
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %124 = load i32, i32* @EEPROM_FREQ, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %123, i32 %124, i32 %125)
  %127 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %120, %113
  %131 = load i32, i32* %5, align 4
  %132 = and i32 %131, 65280
  %133 = icmp eq i32 %132, 65280
  br i1 %133, label %134, label %156

134:                                              ; preds = %130
  %135 = load i32, i32* @EEPROM_FREQ_LED_MODE, align 4
  %136 = load i32, i32* @LED_MODE_TXRX_ACTIVITY, align 4
  %137 = call i32 @rt2x00_set_field16(i32* %5, i32 %135, i32 %136)
  %138 = load i32, i32* @EEPROM_FREQ_LED_POLARITY, align 4
  %139 = call i32 @rt2x00_set_field16(i32* %5, i32 %138, i32 0)
  %140 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %141 = load i32, i32* @EEPROM_FREQ, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %145 = load i32, i32* @EEPROM_LED_AG_CONF, align 4
  %146 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %144, i32 %145, i32 21845)
  %147 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %148 = load i32, i32* @EEPROM_LED_ACT_CONF, align 4
  %149 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %147, i32 %148, i32 8737)
  %150 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %151 = load i32, i32* @EEPROM_LED_POLARITY, align 4
  %152 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %150, i32 %151, i32 43512)
  %153 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %134, %130
  %157 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %158 = load i32, i32* @EEPROM_LNA, align 4
  %159 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %157, i32 %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @EEPROM_LNA_A0, align 4
  %162 = call i32 @rt2x00_get_field16(i32 %160, i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %164 = load i32, i32* @EEPROM_RSSI_BG, align 4
  %165 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %163, i32 %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @EEPROM_RSSI_BG_OFFSET0, align 4
  %168 = call i32 @rt2x00_get_field16(i32 %166, i32 %167)
  %169 = call i32 @abs(i32 %168) #3
  %170 = icmp sgt i32 %169, 10
  br i1 %170, label %171, label %174

171:                                              ; preds = %156
  %172 = load i32, i32* @EEPROM_RSSI_BG_OFFSET0, align 4
  %173 = call i32 @rt2x00_set_field16(i32* %5, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %171, %156
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @EEPROM_RSSI_BG_OFFSET1, align 4
  %177 = call i32 @rt2x00_get_field16(i32 %175, i32 %176)
  %178 = call i32 @abs(i32 %177) #3
  %179 = icmp sgt i32 %178, 10
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i32, i32* @EEPROM_RSSI_BG_OFFSET1, align 4
  %182 = call i32 @rt2x00_set_field16(i32* %5, i32 %181, i32 0)
  br label %183

183:                                              ; preds = %180, %174
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %185 = load i32, i32* @EEPROM_RSSI_BG, align 4
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %184, i32 %185, i32 %186)
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %189 = call i32 @rt2800_get_txmixer_gain_24g(%struct.rt2x00_dev* %188)
  %190 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %191 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %193 = load i32, i32* @EEPROM_RSSI_BG2, align 4
  %194 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %192, i32 %193)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @EEPROM_RSSI_BG2_OFFSET2, align 4
  %197 = call i32 @rt2x00_get_field16(i32 %195, i32 %196)
  %198 = call i32 @abs(i32 %197) #3
  %199 = icmp sgt i32 %198, 10
  br i1 %199, label %200, label %203

200:                                              ; preds = %183
  %201 = load i32, i32* @EEPROM_RSSI_BG2_OFFSET2, align 4
  %202 = call i32 @rt2x00_set_field16(i32* %5, i32 %201, i32 0)
  br label %203

203:                                              ; preds = %200, %183
  %204 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %205 = load i32, i32* @RT3593, align 4
  %206 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %228, label %208

208:                                              ; preds = %203
  %209 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %210 = load i32, i32* @RT3883, align 4
  %211 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %228, label %213

213:                                              ; preds = %208
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @EEPROM_RSSI_BG2_LNA_A1, align 4
  %216 = call i32 @rt2x00_get_field16(i32 %214, i32 %215)
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* @EEPROM_RSSI_BG2_LNA_A1, align 4
  %221 = call i32 @rt2x00_get_field16(i32 %219, i32 %220)
  %222 = icmp eq i32 %221, 255
  br i1 %222, label %223, label %227

223:                                              ; preds = %218, %213
  %224 = load i32, i32* @EEPROM_RSSI_BG2_LNA_A1, align 4
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @rt2x00_set_field16(i32* %5, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %223, %218
  br label %228

228:                                              ; preds = %227, %208, %203
  %229 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %230 = load i32, i32* @EEPROM_RSSI_BG2, align 4
  %231 = load i32, i32* %5, align 4
  %232 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %229, i32 %230, i32 %231)
  %233 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %234 = call i32 @rt2800_get_txmixer_gain_5g(%struct.rt2x00_dev* %233)
  %235 = load %struct.rt2800_drv_data*, %struct.rt2800_drv_data** %4, align 8
  %236 = getelementptr inbounds %struct.rt2800_drv_data, %struct.rt2800_drv_data* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  %237 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %238 = load i32, i32* @EEPROM_RSSI_A, align 4
  %239 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %237, i32 %238)
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* @EEPROM_RSSI_A_OFFSET0, align 4
  %242 = call i32 @rt2x00_get_field16(i32 %240, i32 %241)
  %243 = call i32 @abs(i32 %242) #3
  %244 = icmp sgt i32 %243, 10
  br i1 %244, label %245, label %248

245:                                              ; preds = %228
  %246 = load i32, i32* @EEPROM_RSSI_A_OFFSET0, align 4
  %247 = call i32 @rt2x00_set_field16(i32* %5, i32 %246, i32 0)
  br label %248

248:                                              ; preds = %245, %228
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* @EEPROM_RSSI_A_OFFSET1, align 4
  %251 = call i32 @rt2x00_get_field16(i32 %249, i32 %250)
  %252 = call i32 @abs(i32 %251) #3
  %253 = icmp sgt i32 %252, 10
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load i32, i32* @EEPROM_RSSI_A_OFFSET1, align 4
  %256 = call i32 @rt2x00_set_field16(i32* %5, i32 %255, i32 0)
  br label %257

257:                                              ; preds = %254, %248
  %258 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %259 = load i32, i32* @EEPROM_RSSI_A, align 4
  %260 = load i32, i32* %5, align 4
  %261 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %258, i32 %259, i32 %260)
  %262 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %263 = load i32, i32* @EEPROM_RSSI_A2, align 4
  %264 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %262, i32 %263)
  store i32 %264, i32* %5, align 4
  %265 = load i32, i32* %5, align 4
  %266 = load i32, i32* @EEPROM_RSSI_A2_OFFSET2, align 4
  %267 = call i32 @rt2x00_get_field16(i32 %265, i32 %266)
  %268 = call i32 @abs(i32 %267) #3
  %269 = icmp sgt i32 %268, 10
  br i1 %269, label %270, label %273

270:                                              ; preds = %257
  %271 = load i32, i32* @EEPROM_RSSI_A2_OFFSET2, align 4
  %272 = call i32 @rt2x00_set_field16(i32* %5, i32 %271, i32 0)
  br label %273

273:                                              ; preds = %270, %257
  %274 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %275 = load i32, i32* @RT3593, align 4
  %276 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %274, i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %298, label %278

278:                                              ; preds = %273
  %279 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %280 = load i32, i32* @RT3883, align 4
  %281 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %279, i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %298, label %283

283:                                              ; preds = %278
  %284 = load i32, i32* %5, align 4
  %285 = load i32, i32* @EEPROM_RSSI_A2_LNA_A2, align 4
  %286 = call i32 @rt2x00_get_field16(i32 %284, i32 %285)
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %283
  %289 = load i32, i32* %5, align 4
  %290 = load i32, i32* @EEPROM_RSSI_A2_LNA_A2, align 4
  %291 = call i32 @rt2x00_get_field16(i32 %289, i32 %290)
  %292 = icmp eq i32 %291, 255
  br i1 %292, label %293, label %297

293:                                              ; preds = %288, %283
  %294 = load i32, i32* @EEPROM_RSSI_A2_LNA_A2, align 4
  %295 = load i32, i32* %7, align 4
  %296 = call i32 @rt2x00_set_field16(i32* %5, i32 %294, i32 %295)
  br label %297

297:                                              ; preds = %293, %288
  br label %298

298:                                              ; preds = %297, %278, %273
  %299 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %300 = load i32, i32* @EEPROM_RSSI_A2, align 4
  %301 = load i32, i32* %5, align 4
  %302 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %299, i32 %300, i32 %301)
  %303 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %304 = load i32, i32* @RT3593, align 4
  %305 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %303, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %298
  %308 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %309 = load i32, i32* @RT3883, align 4
  %310 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %308, i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %348

312:                                              ; preds = %307, %298
  %313 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %314 = load i32, i32* @EEPROM_EXT_LNA2, align 4
  %315 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %313, i32 %314)
  store i32 %315, i32* %5, align 4
  %316 = load i32, i32* %5, align 4
  %317 = load i32, i32* @EEPROM_EXT_LNA2_A1, align 4
  %318 = call i32 @rt2x00_get_field16(i32 %316, i32 %317)
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %325, label %320

320:                                              ; preds = %312
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* @EEPROM_EXT_LNA2_A1, align 4
  %323 = call i32 @rt2x00_get_field16(i32 %321, i32 %322)
  %324 = icmp eq i32 %323, 255
  br i1 %324, label %325, label %329

325:                                              ; preds = %320, %312
  %326 = load i32, i32* @EEPROM_EXT_LNA2_A1, align 4
  %327 = load i32, i32* %7, align 4
  %328 = call i32 @rt2x00_set_field16(i32* %5, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %325, %320
  %330 = load i32, i32* %5, align 4
  %331 = load i32, i32* @EEPROM_EXT_LNA2_A2, align 4
  %332 = call i32 @rt2x00_get_field16(i32 %330, i32 %331)
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %339, label %334

334:                                              ; preds = %329
  %335 = load i32, i32* %5, align 4
  %336 = load i32, i32* @EEPROM_EXT_LNA2_A2, align 4
  %337 = call i32 @rt2x00_get_field16(i32 %335, i32 %336)
  %338 = icmp eq i32 %337, 255
  br i1 %338, label %339, label %343

339:                                              ; preds = %334, %329
  %340 = load i32, i32* @EEPROM_EXT_LNA2_A1, align 4
  %341 = load i32, i32* %7, align 4
  %342 = call i32 @rt2x00_set_field16(i32* %5, i32 %340, i32 %341)
  br label %343

343:                                              ; preds = %339, %334
  %344 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %345 = load i32, i32* @EEPROM_EXT_LNA2, align 4
  %346 = load i32, i32* %5, align 4
  %347 = call i32 @rt2800_eeprom_write(%struct.rt2x00_dev* %344, i32 %345, i32 %346)
  br label %348

348:                                              ; preds = %343, %307
  store i32 0, i32* %2, align 4
  br label %349

349:                                              ; preds = %348, %16
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local i32 @rt2800_read_eeprom(%struct.rt2x00_dev*) #1

declare dso_local i32* @rt2800_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00lib_set_mac_address(%struct.rt2x00_dev*, i32*) #1

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2800_eeprom_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @rt2800_get_txmixer_gain_24g(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_get_txmixer_gain_5g(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
