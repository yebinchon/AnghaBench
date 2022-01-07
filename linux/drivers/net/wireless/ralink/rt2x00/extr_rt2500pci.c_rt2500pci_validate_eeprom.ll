; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_validate_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_validate_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.eeprom_93cx6 = type { i64, i64, i64, i64, i32, i32, i32, %struct.rt2x00_dev* }

@CSR21 = common dso_local global i32 0, align 4
@rt2500pci_eepromregister_read = common dso_local global i32 0, align 4
@rt2500pci_eepromregister_write = common dso_local global i32 0, align 4
@CSR21_TYPE_93C46 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C46 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C66 = common dso_local global i32 0, align 4
@EEPROM_BASE = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500pci_validate_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500pci_validate_eeprom(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.eeprom_93cx6, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = load i32, i32* @CSR21, align 4
  %9 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 7
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %11, align 8
  %12 = load i32, i32* @rt2500pci_eepromregister_read, align 4
  %13 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 6
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @rt2500pci_eepromregister_write, align 4
  %15 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @CSR21_TYPE_93C46, align 4
  %18 = call i64 @rt2x00_get_field32(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @PCI_EEPROM_WIDTH_93C46, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @PCI_EEPROM_WIDTH_93C66, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 4
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @EEPROM_BASE, align 4
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EEPROM_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6* %3, i32 %31, i32 %34, i32 %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %42 = call i32* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %40, i32 %41)
  store i32* %42, i32** %6, align 8
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @rt2x00lib_set_mac_address(%struct.rt2x00_dev* %43, i32* %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %47 = load i32, i32* @EEPROM_ANTENNA, align 4
  %48 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %51, label %77

51:                                               ; preds = %24
  %52 = load i32, i32* @EEPROM_ANTENNA_NUM, align 4
  %53 = call i32 @rt2x00_set_field16(i32* %5, i32 %52, i32 2)
  %54 = load i32, i32* @EEPROM_ANTENNA_TX_DEFAULT, align 4
  %55 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %56 = call i32 @rt2x00_set_field16(i32* %5, i32 %54, i32 %55)
  %57 = load i32, i32* @EEPROM_ANTENNA_RX_DEFAULT, align 4
  %58 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %59 = call i32 @rt2x00_set_field16(i32* %5, i32 %57, i32 %58)
  %60 = load i32, i32* @EEPROM_ANTENNA_LED_MODE, align 4
  %61 = load i32, i32* @LED_MODE_DEFAULT, align 4
  %62 = call i32 @rt2x00_set_field16(i32* %5, i32 %60, i32 %61)
  %63 = load i32, i32* @EEPROM_ANTENNA_DYN_TXAGC, align 4
  %64 = call i32 @rt2x00_set_field16(i32* %5, i32 %63, i32 0)
  %65 = load i32, i32* @EEPROM_ANTENNA_HARDWARE_RADIO, align 4
  %66 = call i32 @rt2x00_set_field16(i32* %5, i32 %65, i32 0)
  %67 = load i32, i32* @EEPROM_ANTENNA_RF_TYPE, align 4
  %68 = load i32, i32* @RF2522, align 4
  %69 = call i32 @rt2x00_set_field16(i32* %5, i32 %67, i32 %68)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = load i32, i32* @EEPROM_ANTENNA, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %51, %24
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %79 = load i32, i32* @EEPROM_NIC, align 4
  %80 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 65535
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load i32, i32* @EEPROM_NIC_CARDBUS_ACCEL, align 4
  %85 = call i32 @rt2x00_set_field16(i32* %5, i32 %84, i32 0)
  %86 = load i32, i32* @EEPROM_NIC_DYN_BBP_TUNE, align 4
  %87 = call i32 @rt2x00_set_field16(i32* %5, i32 %86, i32 0)
  %88 = load i32, i32* @EEPROM_NIC_CCK_TX_POWER, align 4
  %89 = call i32 @rt2x00_set_field16(i32* %5, i32 %88, i32 0)
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %91 = load i32, i32* @EEPROM_NIC, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %90, i32 %91, i32 %92)
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %94, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %83, %77
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %99 = load i32, i32* @EEPROM_CALIBRATE_OFFSET, align 4
  %100 = call i32 @rt2x00_eeprom_read(%struct.rt2x00_dev* %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 65535
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load i32, i32* @EEPROM_CALIBRATE_OFFSET_RSSI, align 4
  %105 = load i32, i32* @DEFAULT_RSSI_OFFSET, align 4
  %106 = call i32 @rt2x00_set_field16(i32* %5, i32 %104, i32 %105)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %108 = load i32, i32* @EEPROM_CALIBRATE_OFFSET, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @rt2x00_eeprom_write(%struct.rt2x00_dev* %107, i32 %108, i32 %109)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @rt2x00_eeprom_dbg(%struct.rt2x00_dev* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %103, %97
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
