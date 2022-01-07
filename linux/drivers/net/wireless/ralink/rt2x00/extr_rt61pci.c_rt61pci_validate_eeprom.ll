; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.eeprom_93cx6 = type { i64, i64, i64, i64, i32, i32, i32, %struct.rt2x00_dev* }

@E2PROM_CSR = common dso_local global i32 0, align 4
@rt61pci_eepromregister_read = common dso_local global i32 0, align 4
@rt61pci_eepromregister_write = common dso_local global i32 0, align 4
@E2PROM_CSR_TYPE_93C46 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C46 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C66 = common dso_local global i32 0, align 4
@EEPROM_BASE = common dso_local global i32 0, align 4
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
@RF5225 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Antenna: 0x%04x\0A\00", align 1
@EEPROM_NIC = common dso_local global i32 0, align 4
@EEPROM_NIC_ENABLE_DIVERSITY = common dso_local global i32 0, align 4
@EEPROM_NIC_TX_DIVERSITY = common dso_local global i32 0, align 4
@EEPROM_NIC_RX_FIXED = common dso_local global i32 0, align 4
@EEPROM_NIC_TX_FIXED = common dso_local global i32 0, align 4
@EEPROM_NIC_EXTERNAL_LNA_BG = common dso_local global i32 0, align 4
@EEPROM_NIC_CARDBUS_ACCEL = common dso_local global i32 0, align 4
@EEPROM_NIC_EXTERNAL_LNA_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"NIC: 0x%04x\0A\00", align 1
@EEPROM_LED = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.eeprom_93cx6, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = load i32, i32* @E2PROM_CSR, align 4
  %10 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %12 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 7
  store %struct.rt2x00_dev* %11, %struct.rt2x00_dev** %12, align 8
  %13 = load i32, i32* @rt61pci_eepromregister_read, align 4
  %14 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 6
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* @rt61pci_eepromregister_write, align 4
  %16 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 5
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @E2PROM_CSR_TYPE_93C46, align 4
  %19 = call i64 @rt2x00_get_field32(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @PCI_EEPROM_WIDTH_93C46, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @PCI_EEPROM_WIDTH_93C66, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @EEPROM_BASE, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EEPROM_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6* %3, i32 %32, i32 %35, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %42 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %43 = call i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %41, i32 %42)
  store i32* %43, i32** %6, align 8
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @rt2x00lib_set_mac_address(%struct.rt2x00_dev* %44, i32* %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %48 = load i32, i32* @EEPROM_ANTENNA, align 4
  %49 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 65535
  br i1 %51, label %52, label %77

52:                                               ; preds = %25
  %53 = load i32, i32* @EEPROM_ANTENNA_NUM, align 4
  %54 = call i32 @rt2x00_set_field16(i32* %5, i32 %53, i32 2)
  %55 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %56 = load i32, i32* @ANTENNA_B, align 4
  %57 = call i32 @rt2x00_set_field16(i32* %5, i32 %55, i32 %56)
  %58 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %59 = load i32, i32* @ANTENNA_B, align 4
  %60 = call i32 @rt2x00_set_field16(i32* %5, i32 %58, i32 %59)
  %61 = load i32, i32* @EEPROM_ANTENNA_FRAME_TYPE, align 4
  %62 = call i32 @rt2x00_set_field16(i32* %5, i32 %61, i32 0)
  %63 = load i32, i32* @EEPROM_ANTENNA_DYN_TXAGC, align 4
  %64 = call i32 @rt2x00_set_field16(i32* %5, i32 %63, i32 0)
  %65 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %66 = call i32 @rt2x00_set_field16(i32* %5, i32 %65, i32 0)
  %67 = load i32, i32* @EEPROM_ANTENNA_RF_TYPE, align 4
  %68 = load i32, i32* @RF5225, align 4
  %69 = call i32 @rt2x00_set_field16(i32* %5, i32 %67, i32 %68)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = load i32, i32* @EEPROM_ANTENNA, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %52, %25
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %79 = load i32, i32* @EEPROM_NIC, align 4
  %80 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 65535
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = load i32, i32* @EEPROM_NIC_ENABLE_DIVERSITY, align 4
  %85 = call i32 @rt2x00_set_field16(i32* %5, i32 %84, i32 0)
  %86 = load i32, i32* @EEPROM_NIC_TX_DIVERSITY, align 4
  %87 = call i32 @rt2x00_set_field16(i32* %5, i32 %86, i32 0)
  %88 = load i32, i32* @EEPROM_NIC_RX_FIXED, align 4
  %89 = call i32 @rt2x00_set_field16(i32* %5, i32 %88, i32 0)
  %90 = load i32, i32* @EEPROM_NIC_TX_FIXED, align 4
  %91 = call i32 @rt2x00_set_field16(i32* %5, i32 %90, i32 0)
  %92 = load i32, i32* @EEPROM_NIC_EXTERNAL_LNA_BG, align 4
  %93 = call i32 @rt2x00_set_field16(i32* %5, i32 %92, i32 0)
  %94 = load i32, i32* @EEPROM_NIC_CARDBUS_ACCEL, align 4
  %95 = call i32 @rt2x00_set_field16(i32* %5, i32 %94, i32 0)
  %96 = load i32, i32* @EEPROM_NIC_EXTERNAL_LNA_A, align 4
  %97 = call i32 @rt2x00_set_field16(i32* %5, i32 %96, i32 0)
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %99 = load i32, i32* @EEPROM_NIC, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %83, %77
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %107 = load i32, i32* @EEPROM_LED, align 4
  %108 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %106, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 65535
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i32, i32* @EEPROM_LED_LED_MODE, align 4
  %113 = load i32, i32* @LED_MODE_DEFAULT, align 4
  %114 = call i32 @rt2x00_set_field16(i32* %5, i32 %112, i32 %113)
  %115 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %116 = load i32, i32* @EEPROM_LED, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %115, i32 %116, i32 %117)
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %111, %105
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %124 = load i32, i32* @EEPROM_FREQ, align 4
  %125 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %123, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp eq i32 %126, 65535
  br i1 %127, label %128, label %140

128:                                              ; preds = %122
  %129 = load i32, i32* @EEPROM_FREQ_OFFSET, align 4
  %130 = call i32 @rt2x00_set_field16(i32* %5, i32 %129, i32 0)
  %131 = load i32, i32* @EEPROM_FREQ_SEQ, align 4
  %132 = call i32 @rt2x00_set_field16(i32* %5, i32 %131, i32 0)
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %134 = load i32, i32* @EEPROM_FREQ, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %133, i32 %134, i32 %135)
  %137 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %128, %122
  %141 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %142 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %143 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %141, i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp eq i32 %144, 65535
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %148 = call i32 @rt2x00_set_field16(i32* %5, i32 %147, i32 0)
  %149 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %150 = call i32 @rt2x00_set_field16(i32* %5, i32 %149, i32 0)
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %152 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %151, i32 %152, i32 %153)
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %155, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  br label %187

158:                                              ; preds = %140
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %161 = call i32 @rt2x00_get_field16(i32 %159, i32 %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, -10
  br i1 %163, label %167, label %164

164:                                              ; preds = %158
  %165 = load i32, i32* %7, align 4
  %166 = icmp sgt i32 %165, 10
  br i1 %166, label %167, label %170

167:                                              ; preds = %164, %158
  %168 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_1, align 4
  %169 = call i32 @rt2x00_set_field16(i32* %5, i32 %168, i32 0)
  br label %170

170:                                              ; preds = %167, %164
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %173 = call i32 @rt2x00_get_field16(i32 %171, i32 %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp slt i32 %174, -10
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = load i32, i32* %7, align 4
  %178 = icmp sgt i32 %177, 10
  br i1 %178, label %179, label %182

179:                                              ; preds = %176, %170
  %180 = load i32, i32* @EEPROM_RSSI_OFFSET_BG_2, align 4
  %181 = call i32 @rt2x00_set_field16(i32* %5, i32 %180, i32 0)
  br label %182

182:                                              ; preds = %179, %176
  %183 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %184 = load i32, i32* @EEPROM_RSSI_OFFSET_BG, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %182, %146
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %189 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %190 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %188, i32 %189)
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %5, align 4
  %192 = icmp eq i32 %191, 65535
  br i1 %192, label %193, label %205

193:                                              ; preds = %187
  %194 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %195 = call i32 @rt2x00_set_field16(i32* %5, i32 %194, i32 0)
  %196 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %197 = call i32 @rt2x00_set_field16(i32* %5, i32 %196, i32 0)
  %198 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %199 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %198, i32 %199, i32 %200)
  %202 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %202, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  br label %234

205:                                              ; preds = %187
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %208 = call i32 @rt2x00_get_field16(i32 %206, i32 %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp slt i32 %209, -10
  br i1 %210, label %214, label %211

211:                                              ; preds = %205
  %212 = load i32, i32* %7, align 4
  %213 = icmp sgt i32 %212, 10
  br i1 %213, label %214, label %217

214:                                              ; preds = %211, %205
  %215 = load i32, i32* @EEPROM_RSSI_OFFSET_A_1, align 4
  %216 = call i32 @rt2x00_set_field16(i32* %5, i32 %215, i32 0)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %220 = call i32 @rt2x00_get_field16(i32 %218, i32 %219)
  store i32 %220, i32* %7, align 4
  %221 = load i32, i32* %7, align 4
  %222 = icmp slt i32 %221, -10
  br i1 %222, label %226, label %223

223:                                              ; preds = %217
  %224 = load i32, i32* %7, align 4
  %225 = icmp sgt i32 %224, 10
  br i1 %225, label %226, label %229

226:                                              ; preds = %223, %217
  %227 = load i32, i32* @EEPROM_RSSI_OFFSET_A_2, align 4
  %228 = call i32 @rt2x00_set_field16(i32* %5, i32 %227, i32 0)
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %231 = load i32, i32* @EEPROM_RSSI_OFFSET_A, align 4
  %232 = load i32, i32* %5, align 4
  %233 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %230, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %229, %193
  ret i32 0
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6*, i32, i32, i32) #1

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
