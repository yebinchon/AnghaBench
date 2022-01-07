; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500usb.c_rt2500usb_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EEPROM_SIZE = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_NUM = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_TX_DEFAULT = common dso_local global i32 0, align 4
@ANTENNA_SW_DIVERSITY = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_LED_MODE = common dso_local global i32 0, align 4
@LED_MODE_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_DYN_TXAGC = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_HARDWARE_RADIO = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RF_TYPE = common dso_local global i32 0, align 4
@RF2522 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Antenna: 0x%04x\0A\00", align 1
@EEPROM_NIC = common dso_local global i32 0, align 4
@EEPROM_NIC_CARDBUS_ACCEL = common dso_local global i32 0, align 4
@EEPROM_NIC_DYN_BBP_TUNE = common dso_local global i32 0, align 4
@EEPROM_NIC_CCK_TX_POWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"NIC: 0x%04x\0A\00", align 1
@EEPROM_CALIBRATE_OFFSET = common dso_local global i32 0, align 4
@EEPROM_CALIBRATE_OFFSET_RSSI = common dso_local global i32 0, align 4
@DEFAULT_RSSI_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Calibrate offset: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_THRESHOLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"BBPtune: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_VGC = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_VGCUPPER = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_VGCLOWER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"BBPtune vgc: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_R17 = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R17_LOW = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R17_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"BBPtune r17: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_R24 = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R24_LOW = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R24_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"BBPtune r24: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_R25 = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R25_LOW = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R25_HIGH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"BBPtune r25: 0x%04x\0A\00", align 1
@EEPROM_BBPTUNE_R61 = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R61_LOW = common dso_local global i32 0, align 4
@EEPROM_BBPTUNE_R61_HIGH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"BBPtune r61: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500usb_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500usb_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EEPROM_SIZE, align 4
  %11 = call i32 @rt2x00usb_eeprom_read(%struct.rt2x00_dev* %6, i32 %9, i32 %10)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %14 = call i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %12, i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @rt2x00lib_set_mac_address(%struct.rt2x00_dev* %15, i32* %16)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = load i32, i32* @EEPROM_ANTENNA, align 4
  %20 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 65535
  br i1 %22, label %23, label %49

23:                                               ; preds = %1
  %24 = load i32, i32* @EEPROM_ANTENNA_NUM, align 4
  %25 = call i32 @rt2x00_set_field16(i32* %3, i32 %24, i32 2)
  %26 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %27 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %28 = call i32 @rt2x00_set_field16(i32* %3, i32 %26, i32 %27)
  %29 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %30 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %31 = call i32 @rt2x00_set_field16(i32* %3, i32 %29, i32 %30)
  %32 = load i32, i32* @EEPROM_ANTENNA_LED_MODE, align 4
  %33 = load i32, i32* @LED_MODE_DEFAULT, align 4
  %34 = call i32 @rt2x00_set_field16(i32* %3, i32 %32, i32 %33)
  %35 = load i32, i32* @EEPROM_ANTENNA_DYN_TXAGC, align 4
  %36 = call i32 @rt2x00_set_field16(i32* %3, i32 %35, i32 0)
  %37 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %38 = call i32 @rt2x00_set_field16(i32* %3, i32 %37, i32 0)
  %39 = load i32, i32* @EEPROM_ANTENNA_RF_TYPE, align 4
  %40 = load i32, i32* @RF2522, align 4
  %41 = call i32 @rt2x00_set_field16(i32* %3, i32 %39, i32 %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = load i32, i32* @EEPROM_ANTENNA, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %23, %1
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %51 = load i32, i32* @EEPROM_NIC, align 4
  %52 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 65535
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load i32, i32* @EEPROM_NIC_CARDBUS_ACCEL, align 4
  %57 = call i32 @rt2x00_set_field16(i32* %3, i32 %56, i32 0)
  %58 = load i32, i32* @EEPROM_NIC_DYN_BBP_TUNE, align 4
  %59 = call i32 @rt2x00_set_field16(i32* %3, i32 %58, i32 0)
  %60 = load i32, i32* @EEPROM_NIC_CCK_TX_POWER, align 4
  %61 = call i32 @rt2x00_set_field16(i32* %3, i32 %60, i32 0)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = load i32, i32* @EEPROM_NIC, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %62, i32 %63, i32 %64)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %55, %49
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = load i32, i32* @EEPROM_CALIBRATE_OFFSET, align 4
  %72 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %70, i32 %71)
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp eq i32 %73, 65535
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i32, i32* @EEPROM_CALIBRATE_OFFSET_RSSI, align 4
  %77 = load i32, i32* @DEFAULT_RSSI_OFFSET, align 4
  %78 = call i32 @rt2x00_set_field16(i32* %3, i32 %76, i32 %77)
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %80 = load i32, i32* @EEPROM_CALIBRATE_OFFSET, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %79, i32 %80, i32 %81)
  %83 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %75, %69
  %87 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %88 = load i32, i32* @EEPROM_BBPTUNE, align 4
  %89 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %87, i32 %88)
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = icmp eq i32 %90, 65535
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load i32, i32* @EEPROM_BBPTUNE_THRESHOLD, align 4
  %94 = call i32 @rt2x00_set_field16(i32* %3, i32 %93, i32 45)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %96 = load i32, i32* @EEPROM_BBPTUNE, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %95, i32 %96, i32 %97)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %92, %86
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %104 = call i32 @rt2500usb_bbp_read(%struct.rt2x00_dev* %103, i32 17)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = sub nsw i32 %105, 6
  store i32 %106, i32* %5, align 4
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = load i32, i32* @EEPROM_BBPTUNE_VGC, align 4
  %109 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %107, i32 %108)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = icmp eq i32 %110, 65535
  br i1 %111, label %112, label %125

112:                                              ; preds = %102
  %113 = load i32, i32* @EEPROM_BBPTUNE_VGCUPPER, align 4
  %114 = call i32 @rt2x00_set_field16(i32* %3, i32 %113, i32 64)
  %115 = load i32, i32* @EEPROM_BBPTUNE_VGCLOWER, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @rt2x00_set_field16(i32* %3, i32 %115, i32 %116)
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %119 = load i32, i32* @EEPROM_BBPTUNE_VGC, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %118, i32 %119, i32 %120)
  %122 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  br label %133

125:                                              ; preds = %102
  %126 = load i32, i32* @EEPROM_BBPTUNE_VGCLOWER, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @rt2x00_set_field16(i32* %3, i32 %126, i32 %127)
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %130 = load i32, i32* @EEPROM_BBPTUNE_VGC, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %125, %112
  %134 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %135 = load i32, i32* @EEPROM_BBPTUNE_R17, align 4
  %136 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %134, i32 %135)
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, 65535
  br i1 %138, label %139, label %151

139:                                              ; preds = %133
  %140 = load i32, i32* @EEPROM_BBPTUNE_R17_LOW, align 4
  %141 = call i32 @rt2x00_set_field16(i32* %3, i32 %140, i32 72)
  %142 = load i32, i32* @EEPROM_BBPTUNE_R17_HIGH, align 4
  %143 = call i32 @rt2x00_set_field16(i32* %3, i32 %142, i32 65)
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %145 = load i32, i32* @EEPROM_BBPTUNE_R17, align 4
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %144, i32 %145, i32 %146)
  %148 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %139, %133
  %152 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %153 = load i32, i32* @EEPROM_BBPTUNE_R24, align 4
  %154 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %152, i32 %153)
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %3, align 4
  %156 = icmp eq i32 %155, 65535
  br i1 %156, label %157, label %169

157:                                              ; preds = %151
  %158 = load i32, i32* @EEPROM_BBPTUNE_R24_LOW, align 4
  %159 = call i32 @rt2x00_set_field16(i32* %3, i32 %158, i32 64)
  %160 = load i32, i32* @EEPROM_BBPTUNE_R24_HIGH, align 4
  %161 = call i32 @rt2x00_set_field16(i32* %3, i32 %160, i32 128)
  %162 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %163 = load i32, i32* @EEPROM_BBPTUNE_R24, align 4
  %164 = load i32, i32* %3, align 4
  %165 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %162, i32 %163, i32 %164)
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %157, %151
  %170 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %171 = load i32, i32* @EEPROM_BBPTUNE_R25, align 4
  %172 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %170, i32 %171)
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = icmp eq i32 %173, 65535
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load i32, i32* @EEPROM_BBPTUNE_R25_LOW, align 4
  %177 = call i32 @rt2x00_set_field16(i32* %3, i32 %176, i32 64)
  %178 = load i32, i32* @EEPROM_BBPTUNE_R25_HIGH, align 4
  %179 = call i32 @rt2x00_set_field16(i32* %3, i32 %178, i32 80)
  %180 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %181 = load i32, i32* @EEPROM_BBPTUNE_R25, align 4
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %180, i32 %181, i32 %182)
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %185 = load i32, i32* %3, align 4
  %186 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %175, %169
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %189 = load i32, i32* @EEPROM_BBPTUNE_R61, align 4
  %190 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %188, i32 %189)
  store i32 %190, i32* %3, align 4
  %191 = load i32, i32* %3, align 4
  %192 = icmp eq i32 %191, 65535
  br i1 %192, label %193, label %205

193:                                              ; preds = %187
  %194 = load i32, i32* @EEPROM_BBPTUNE_R61_LOW, align 4
  %195 = call i32 @rt2x00_set_field16(i32* %3, i32 %194, i32 96)
  %196 = load i32, i32* @EEPROM_BBPTUNE_R61_HIGH, align 4
  %197 = call i32 @rt2x00_set_field16(i32* %3, i32 %196, i32 109)
  %198 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %199 = load i32, i32* @EEPROM_BBPTUNE_R61, align 4
  %200 = load i32, i32* %3, align 4
  %201 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %198, i32 %199, i32 %200)
  %202 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %203 = load i32, i32* %3, align 4
  %204 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %202, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %193, %187
  ret i32 0
}

declare dso_local i32 @rt2x00usb_eeprom_read(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00lib_set_mac_address(%struct.rt2x00_dev*, i32*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local i32 @rt2500usb_bbp_read(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
