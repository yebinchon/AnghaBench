; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_erp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_config_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i32, i32 }

@TXRX_CSR0 = common dso_local global i32 0, align 4
@TXRX_CSR0_RX_ACK_TIMEOUT = common dso_local global i32 0, align 4
@TXRX_CSR0_TSF_OFFSET = common dso_local global i32 0, align 4
@IEEE80211_HEADER = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@TXRX_CSR4 = common dso_local global i32 0, align 4
@TXRX_CSR4_AUTORESPOND_ENABLE = common dso_local global i32 0, align 4
@TXRX_CSR4_AUTORESPOND_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@TXRX_CSR5 = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@TXRX_CSR9 = common dso_local global i32 0, align 4
@TXRX_CSR9_BEACON_INTERVAL = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@MAC_CSR9 = common dso_local global i32 0, align 4
@MAC_CSR9_SLOT_TIME = common dso_local global i32 0, align 4
@MAC_CSR8 = common dso_local global i32 0, align 4
@MAC_CSR8_SIFS = common dso_local global i32 0, align 4
@MAC_CSR8_SIFS_AFTER_RX_OFDM = common dso_local global i32 0, align 4
@MAC_CSR8_EIFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_erp*, i32)* @rt61pci_config_erp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_config_erp(%struct.rt2x00_dev* %0, %struct.rt2x00lib_erp* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rt2x00lib_erp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rt2x00lib_erp* %1, %struct.rt2x00lib_erp** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %9 = load i32, i32* @TXRX_CSR0, align 4
  %10 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @TXRX_CSR0_RX_ACK_TIMEOUT, align 4
  %12 = call i32 @rt2x00_set_field32(i32* %7, i32 %11, i32 50)
  %13 = load i32, i32* @TXRX_CSR0_TSF_OFFSET, align 4
  %14 = load i32, i32* @IEEE80211_HEADER, align 4
  %15 = call i32 @rt2x00_set_field32(i32* %7, i32 %13, i32 %14)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %17 = load i32, i32* @TXRX_CSR0, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %3
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = load i32, i32* @TXRX_CSR4, align 4
  %27 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @TXRX_CSR4_AUTORESPOND_ENABLE, align 4
  %29 = call i32 @rt2x00_set_field32(i32* %7, i32 %28, i32 1)
  %30 = load i32, i32* @TXRX_CSR4_AUTORESPOND_PREAMBLE, align 4
  %31 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %32 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @rt2x00_set_field32(i32* %7, i32 %30, i32 %37)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %40 = load i32, i32* @TXRX_CSR4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %24, %3
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %50 = load i32, i32* @TXRX_CSR5, align 4
  %51 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %52 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %49, i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %62 = load i32, i32* @TXRX_CSR9, align 4
  %63 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @TXRX_CSR9_BEACON_INTERVAL, align 4
  %65 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %66 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 16
  %69 = call i32 @rt2x00_set_field32(i32* %7, i32 %64, i32 %68)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %71 = load i32, i32* @TXRX_CSR9, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %60, %55
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %111

79:                                               ; preds = %74
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %81 = load i32, i32* @MAC_CSR9, align 4
  %82 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @MAC_CSR9_SLOT_TIME, align 4
  %84 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %85 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rt2x00_set_field32(i32* %7, i32 %83, i32 %86)
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %89 = load i32, i32* @MAC_CSR9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %88, i32 %89, i32 %90)
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %93 = load i32, i32* @MAC_CSR8, align 4
  %94 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* @MAC_CSR8_SIFS, align 4
  %96 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %97 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @rt2x00_set_field32(i32* %7, i32 %95, i32 %98)
  %100 = load i32, i32* @MAC_CSR8_SIFS_AFTER_RX_OFDM, align 4
  %101 = call i32 @rt2x00_set_field32(i32* %7, i32 %100, i32 3)
  %102 = load i32, i32* @MAC_CSR8_EIFS, align 4
  %103 = load %struct.rt2x00lib_erp*, %struct.rt2x00lib_erp** %5, align 8
  %104 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rt2x00_set_field32(i32* %7, i32 %102, i32 %105)
  %107 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %108 = load i32, i32* @MAC_CSR8, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %79, %74
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
