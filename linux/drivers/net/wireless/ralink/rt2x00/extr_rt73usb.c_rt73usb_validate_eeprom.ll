; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EEPROM_SIZE = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@EEPROM_ANTENNA = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_NUM = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_TX_DEFAULT = common dso_local global i32 0, align 4
@ANTENNA_B = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RX_DEFAULT = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_FRAME_TYPE = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_DYN_TXAGC = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_HARDWARE_RADIO = common dso_local global i32 0, align 4
@EEPROM_ANTENNA_RF_TYPE = common dso_local global i32 0, align 4
@RF5226 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Antenna: 0x%04x\0A\00", align 1
@EEPROM_NIC = common dso_local global i32 0, align 4
@EEPROM_NIC_EXTERNAL_LNA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"NIC: 0x%04x\0A\00", align 1
@EEPROM_LED = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_RDY_G = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_RDY_A = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_ACT = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_0 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_1 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_2 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_3 = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY_GPIO_4 = common dso_local global i32 0, align 4
@EEPROM_LED_LED_MODE = common dso_local global i32 0, align 4
@LED_MODE_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Led: 0x%04x\0A\00", align 1
@EEPROM_FREQ = common dso_local global i32 0, align 4
@EEPROM_FREQ_OFFSET = common dso_local global i32 0, align 4
@EEPROM_FREQ_SEQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Freq: 0x%04x\0A\00", align 1
@EEPROM_RSSI_OFFSET_BG = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_BG_1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_BG_2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"RSSI OFFSET BG: 0x%04x\0A\00", align 1
@EEPROM_RSSI_OFFSET_A = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_A_1 = common dso_local global i32 0, align 4
@EEPROM_RSSI_OFFSET_A_2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"RSSI OFFSET A: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt73usb_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt73usb_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
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
  br i1 %22, label %23, label %48

23:                                               ; preds = %1
  %24 = load i32, i32* @EEPROM_ANTENNA_NUM, align 4
  %25 = call i32 @rt2x00_set_field16(i32* %3, i32 %24, i32 2)
  %26 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %27 = load i32, i32* @ANTENNA_B, align 4
  %28 = call i32 @rt2x00_set_field16(i32* %3, i32 %26, i32 %27)
  %29 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %30 = load i32, i32* @ANTENNA_B, align 4
  %31 = call i32 @rt2x00_set_field16(i32* %3, i32 %29, i32 %30)
  %32 = load i32, i32* @EEPROM_ANTENNA_FRAME_TYPE, align 4
  %33 = call i32 @rt2x00_set_field16(i32* %3, i32 %32, i32 0)
  %34 = load i32, i32* @EEPROM_ANTENNA_DYN_TXAGC, align 4
  %35 = call i32 @rt2x00_set_field16(i32* %3, i32 %34, i32 0)
  %36 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %37 = call i32 @rt2x00_set_field16(i32* %3, i32 %36, i32 0)
  %38 = load i32, i32* @EEPROM_ANTENNA_RF_TYPE, align 4
  %39 = load i32, i32* @RF5226, align 4
  %40 = call i32 @rt2x00_set_field16(i32* %3, i32 %38, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = load i32, i32* @EEPROM_ANTENNA, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %23, %1
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %50 = load i32, i32* @EEPROM_NIC, align 4
  %51 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 65535
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i32, i32* @EEPROM_NIC_EXTERNAL_LNA, align 4
  %56 = call i32 @rt2x00_set_field16(i32* %3, i32 %55, i32 0)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %58 = load i32, i32* @EEPROM_NIC, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %57, i32 %58, i32 %59)
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %54, %48
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %66 = load i32, i32* @EEPROM_LED, align 4
  %67 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %65, i32 %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, 65535
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load i32, i32* @EEPROM_LED_POLARITY_RDY_G, align 4
  %72 = call i32 @rt2x00_set_field16(i32* %3, i32 %71, i32 0)
  %73 = load i32, i32* @EEPROM_LED_POLARITY_RDY_A, align 4
  %74 = call i32 @rt2x00_set_field16(i32* %3, i32 %73, i32 0)
  %75 = load i32, i32* @EEPROM_LED_POLARITY_ACT, align 4
  %76 = call i32 @rt2x00_set_field16(i32* %3, i32 %75, i32 0)
  %77 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_0, align 4
  %78 = call i32 @rt2x00_set_field16(i32* %3, i32 %77, i32 0)
  %79 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_1, align 4
  %80 = call i32 @rt2x00_set_field16(i32* %3, i32 %79, i32 0)
  %81 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_2, align 4
  %82 = call i32 @rt2x00_set_field16(i32* %3, i32 %81, i32 0)
  %83 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_3, align 4
  %84 = call i32 @rt2x00_set_field16(i32* %3, i32 %83, i32 0)
  %85 = load i32, i32* @EEPROM_LED_POLARITY_GPIO_4, align 4
  %86 = call i32 @rt2x00_set_field16(i32* %3, i32 %85, i32 0)
  %87 = load i32, i32* @EEPROM_LED_LED_MODE, align 4
  %88 = load i32, i32* @LED_MODE_DEFAULT, align 4
  %89 = call i32 @rt2x00_set_field16(i32* %3, i32 %87, i32 %88)
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %91 = load i32, i32* @EEPROM_LED, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %90, i32 %91, i32 %92)
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %70, %64
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %99 = load i32, i32* @EEPROM_FREQ, align 4
  %100 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %98, i32 %99)
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = icmp eq i32 %101, 65535
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %105 = call i32 @rt2x00_set_field16(i32* %3, i32 %104, i32 0)
  %106 = load i32, i32* @EEPROM_FREQ_SEQ, align 4
  %107 = call i32 @rt2x00_set_field16(i32* %3, i32 %106, i32 0)
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %109 = load i32, i32* @EEPROM_FREQ, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %108, i32 %109, i32 %110)
  %112 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %103, %97
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %117 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %118 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %116, i32 %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 65535
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %123 = call i32 @rt2x00_set_field16(i32* %3, i32 %122, i32 0)
  %124 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %125 = call i32 @rt2x00_set_field16(i32* %3, i32 %124, i32 0)
  %126 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %127 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %126, i32 %127, i32 %128)
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %162

133:                                              ; preds = %115
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %136 = call i32 @rt2x00_get_field16(i32 %134, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, -10
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %5, align 4
  %141 = icmp sgt i32 %140, 10
  br i1 %141, label %142, label %145

142:                                              ; preds = %139, %133
  %143 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %144 = call i32 @rt2x00_set_field16(i32* %3, i32 %143, i32 0)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %148 = call i32 @rt2x00_get_field16(i32 %146, i32 %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %149, -10
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %5, align 4
  %153 = icmp sgt i32 %152, 10
  br i1 %153, label %154, label %157

154:                                              ; preds = %151, %145
  %155 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %156 = call i32 @rt2x00_set_field16(i32* %3, i32 %155, i32 0)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %159 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %160 = load i32, i32* %3, align 4
  %161 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %121
  %163 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %164 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %165 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %163, i32 %164)
  store i32 %165, i32* %3, align 4
  %166 = load i32, i32* %3, align 4
  %167 = icmp eq i32 %166, 65535
  br i1 %167, label %168, label %180

168:                                              ; preds = %162
  %169 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %170 = call i32 @rt2x00_set_field16(i32* %3, i32 %169, i32 0)
  %171 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %172 = call i32 @rt2x00_set_field16(i32* %3, i32 %171, i32 0)
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %174 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %175 = load i32, i32* %3, align 4
  %176 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %173, i32 %174, i32 %175)
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %178 = load i32, i32* %3, align 4
  %179 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %178)
  br label %209

180:                                              ; preds = %162
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %183 = call i32 @rt2x00_get_field16(i32 %181, i32 %182)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %184, -10
  br i1 %185, label %189, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %5, align 4
  %188 = icmp sgt i32 %187, 10
  br i1 %188, label %189, label %192

189:                                              ; preds = %186, %180
  %190 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %191 = call i32 @rt2x00_set_field16(i32* %3, i32 %190, i32 0)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32, i32* %3, align 4
  %194 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %195 = call i32 @rt2x00_get_field16(i32 %193, i32 %194)
  store i32 %195, i32* %5, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp slt i32 %196, -10
  br i1 %197, label %201, label %198

198:                                              ; preds = %192
  %199 = load i32, i32* %5, align 4
  %200 = icmp sgt i32 %199, 10
  br i1 %200, label %201, label %204

201:                                              ; preds = %198, %192
  %202 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %203 = call i32 @rt2x00_set_field16(i32* %3, i32 %202, i32 0)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %206 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %205, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %204, %168
  ret i32 0
}

declare dso_local i32 @rt2x00usb_eeprom_read(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00lib_set_mac_address(%struct.rt2x00_dev*, i32*) #1

declare dso_local i32 @rt2x00_eeprom_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field16(i32*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local i32 @rt2x00_get_field16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
