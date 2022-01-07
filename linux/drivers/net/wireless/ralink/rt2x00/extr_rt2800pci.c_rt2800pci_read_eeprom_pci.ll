; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800pci.c_rt2800pci_read_eeprom_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800pci.c_rt2800pci_read_eeprom_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.eeprom_93cx6 = type { i64, i64, i64, i64, i32, i32, i32, %struct.rt2x00_dev* }

@E2PROM_CSR = common dso_local global i32 0, align 4
@rt2800pci_eepromregister_read = common dso_local global i32 0, align 4
@rt2800pci_eepromregister_write = common dso_local global i32 0, align 4
@E2PROM_CSR_TYPE = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C46 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C66 = common dso_local global i32 0, align 4
@PCI_EEPROM_WIDTH_93C86 = common dso_local global i32 0, align 4
@EEPROM_BASE = common dso_local global i32 0, align 4
@EEPROM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800pci_read_eeprom_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800pci_read_eeprom_pci(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.eeprom_93cx6, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = load i32, i32* @E2PROM_CSR, align 4
  %7 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %9 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 7
  store %struct.rt2x00_dev* %8, %struct.rt2x00_dev** %9, align 8
  %10 = load i32, i32* @rt2800pci_eepromregister_read, align 4
  %11 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 6
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @rt2800pci_eepromregister_write, align 4
  %13 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 5
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @E2PROM_CSR_TYPE, align 4
  %16 = call i32 @rt2x00_get_field32(i32 %14, i32 %15)
  switch i32 %16, label %23 [
    i32 0, label %17
    i32 1, label %20
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @PCI_EEPROM_WIDTH_93C46, align 4
  %19 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @PCI_EEPROM_WIDTH_93C66, align 4
  %22 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @PCI_EEPROM_WIDTH_93C86, align 4
  %25 = getelementptr inbounds %struct.eeprom_93cx6, %struct.eeprom_93cx6* %3, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %20, %17
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
  ret i32 0
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @eeprom_93cx6_multiread(%struct.eeprom_93cx6*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
