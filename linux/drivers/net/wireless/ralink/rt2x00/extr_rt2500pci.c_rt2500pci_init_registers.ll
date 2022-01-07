; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_init_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_init_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.rt2x00_dev*, i32)* }
%struct.TYPE_6__ = type { i32 }

@PSCSR0 = common dso_local global i32 0, align 4
@PSCSR1 = common dso_local global i32 0, align 4
@PSCSR2 = common dso_local global i32 0, align 4
@PSCSR3 = common dso_local global i32 0, align 4
@TIMECSR = common dso_local global i32 0, align 4
@TIMECSR_US_COUNT = common dso_local global i32 0, align 4
@TIMECSR_US_64_COUNT = common dso_local global i32 0, align 4
@TIMECSR_BEACON_EXPECT = common dso_local global i32 0, align 4
@CSR9 = common dso_local global i32 0, align 4
@CSR9_MAX_FRAME_UNIT = common dso_local global i32 0, align 4
@CSR11 = common dso_local global i32 0, align 4
@CSR11_CW_SELECT = common dso_local global i32 0, align 4
@CSR14 = common dso_local global i32 0, align 4
@CSR14_TSF_COUNT = common dso_local global i32 0, align 4
@CSR14_TSF_SYNC = common dso_local global i32 0, align 4
@CSR14_TBCN = common dso_local global i32 0, align 4
@CSR14_TCFP = common dso_local global i32 0, align 4
@CSR14_TATIMW = common dso_local global i32 0, align 4
@CSR14_BEACON_GEN = common dso_local global i32 0, align 4
@CSR14_CFP_COUNT_PRELOAD = common dso_local global i32 0, align 4
@CSR14_TBCM_PRELOAD = common dso_local global i32 0, align 4
@CNT3 = common dso_local global i32 0, align 4
@TXCSR8 = common dso_local global i32 0, align 4
@TXCSR8_BBP_ID0 = common dso_local global i32 0, align 4
@TXCSR8_BBP_ID0_VALID = common dso_local global i32 0, align 4
@TXCSR8_BBP_ID1 = common dso_local global i32 0, align 4
@TXCSR8_BBP_ID1_VALID = common dso_local global i32 0, align 4
@TXCSR8_BBP_ID2 = common dso_local global i32 0, align 4
@TXCSR8_BBP_ID2_VALID = common dso_local global i32 0, align 4
@TXCSR8_BBP_ID3 = common dso_local global i32 0, align 4
@TXCSR8_BBP_ID3_VALID = common dso_local global i32 0, align 4
@ARTCSR0 = common dso_local global i32 0, align 4
@ARTCSR0_ACK_CTS_1MBS = common dso_local global i32 0, align 4
@ARTCSR0_ACK_CTS_2MBS = common dso_local global i32 0, align 4
@ARTCSR0_ACK_CTS_5_5MBS = common dso_local global i32 0, align 4
@ARTCSR0_ACK_CTS_11MBS = common dso_local global i32 0, align 4
@ARTCSR1 = common dso_local global i32 0, align 4
@ARTCSR1_ACK_CTS_6MBS = common dso_local global i32 0, align 4
@ARTCSR1_ACK_CTS_9MBS = common dso_local global i32 0, align 4
@ARTCSR1_ACK_CTS_12MBS = common dso_local global i32 0, align 4
@ARTCSR1_ACK_CTS_18MBS = common dso_local global i32 0, align 4
@ARTCSR2 = common dso_local global i32 0, align 4
@ARTCSR2_ACK_CTS_24MBS = common dso_local global i32 0, align 4
@ARTCSR2_ACK_CTS_36MBS = common dso_local global i32 0, align 4
@ARTCSR2_ACK_CTS_48MBS = common dso_local global i32 0, align 4
@ARTCSR2_ACK_CTS_54MBS = common dso_local global i32 0, align 4
@RXCSR3 = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID0 = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID0_VALID = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID1 = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID1_VALID = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID2 = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID2_VALID = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID3 = common dso_local global i32 0, align 4
@RXCSR3_BBP_ID3_VALID = common dso_local global i32 0, align 4
@PCICSR = common dso_local global i32 0, align 4
@PCICSR_BIG_ENDIAN = common dso_local global i32 0, align 4
@PCICSR_RX_TRESHOLD = common dso_local global i32 0, align 4
@PCICSR_TX_TRESHOLD = common dso_local global i32 0, align 4
@PCICSR_BURST_LENTH = common dso_local global i32 0, align 4
@PCICSR_ENABLE_CLK = common dso_local global i32 0, align 4
@PCICSR_READ_MULTIPLE = common dso_local global i32 0, align 4
@PCICSR_WRITE_INVALID = common dso_local global i32 0, align 4
@PWRCSR0 = common dso_local global i32 0, align 4
@GPIOCSR = common dso_local global i32 0, align 4
@TESTCSR = common dso_local global i32 0, align 4
@STATE_AWAKE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MACCSR0 = common dso_local global i32 0, align 4
@MACCSR1 = common dso_local global i32 0, align 4
@MACCSR2 = common dso_local global i32 0, align 4
@MACCSR2_DELAY = common dso_local global i32 0, align 4
@RALINKCSR = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_DATA0 = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_ID0 = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_VALID0 = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_DATA1 = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_ID1 = common dso_local global i32 0, align 4
@RALINKCSR_AR_BBP_VALID1 = common dso_local global i32 0, align 4
@BBPCSR1 = common dso_local global i32 0, align 4
@TXACKCSR0 = common dso_local global i32 0, align 4
@CSR1 = common dso_local global i32 0, align 4
@CSR1_SOFT_RESET = common dso_local global i32 0, align 4
@CSR1_BBP_RESET = common dso_local global i32 0, align 4
@CSR1_HOST_READY = common dso_local global i32 0, align 4
@CNT0 = common dso_local global i32 0, align 4
@CNT4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500pci_init_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500pci_init_registers(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = load i32, i32* @PSCSR0, align 4
  %7 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %5, i32 %6, i32 131074)
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = load i32, i32* @PSCSR1, align 4
  %10 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %8, i32 %9, i32 2)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = load i32, i32* @PSCSR2, align 4
  %13 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %11, i32 %12, i32 131074)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %15 = load i32, i32* @PSCSR3, align 4
  %16 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %14, i32 %15, i32 2)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = load i32, i32* @TIMECSR, align 4
  %19 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @TIMECSR_US_COUNT, align 4
  %21 = call i32 @rt2x00_set_field32(i32* %4, i32 %20, i32 33)
  %22 = load i32, i32* @TIMECSR_US_64_COUNT, align 4
  %23 = call i32 @rt2x00_set_field32(i32* %4, i32 %22, i32 63)
  %24 = load i32, i32* @TIMECSR_BEACON_EXPECT, align 4
  %25 = call i32 @rt2x00_set_field32(i32* %4, i32 %24, i32 0)
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* @TIMECSR, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = load i32, i32* @CSR9, align 4
  %32 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @CSR9_MAX_FRAME_UNIT, align 4
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 128
  %40 = call i32 @rt2x00_set_field32(i32* %4, i32 %33, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load i32, i32* @CSR9, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = load i32, i32* @CSR11, align 4
  %47 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @CSR11_CW_SELECT, align 4
  %49 = call i32 @rt2x00_set_field32(i32* %4, i32 %48, i32 0)
  %50 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %51 = load i32, i32* @CSR11, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %50, i32 %51, i32 %52)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = load i32, i32* @CSR14, align 4
  %56 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @CSR14_TSF_COUNT, align 4
  %58 = call i32 @rt2x00_set_field32(i32* %4, i32 %57, i32 0)
  %59 = load i32, i32* @CSR14_TSF_SYNC, align 4
  %60 = call i32 @rt2x00_set_field32(i32* %4, i32 %59, i32 0)
  %61 = load i32, i32* @CSR14_TBCN, align 4
  %62 = call i32 @rt2x00_set_field32(i32* %4, i32 %61, i32 0)
  %63 = load i32, i32* @CSR14_TCFP, align 4
  %64 = call i32 @rt2x00_set_field32(i32* %4, i32 %63, i32 0)
  %65 = load i32, i32* @CSR14_TATIMW, align 4
  %66 = call i32 @rt2x00_set_field32(i32* %4, i32 %65, i32 0)
  %67 = load i32, i32* @CSR14_BEACON_GEN, align 4
  %68 = call i32 @rt2x00_set_field32(i32* %4, i32 %67, i32 0)
  %69 = load i32, i32* @CSR14_CFP_COUNT_PRELOAD, align 4
  %70 = call i32 @rt2x00_set_field32(i32* %4, i32 %69, i32 0)
  %71 = load i32, i32* @CSR14_TBCM_PRELOAD, align 4
  %72 = call i32 @rt2x00_set_field32(i32* %4, i32 %71, i32 0)
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %74 = load i32, i32* @CSR14, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %73, i32 %74, i32 %75)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %78 = load i32, i32* @CNT3, align 4
  %79 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %77, i32 %78, i32 0)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %81 = load i32, i32* @TXCSR8, align 4
  %82 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @TXCSR8_BBP_ID0, align 4
  %84 = call i32 @rt2x00_set_field32(i32* %4, i32 %83, i32 10)
  %85 = load i32, i32* @TXCSR8_BBP_ID0_VALID, align 4
  %86 = call i32 @rt2x00_set_field32(i32* %4, i32 %85, i32 1)
  %87 = load i32, i32* @TXCSR8_BBP_ID1, align 4
  %88 = call i32 @rt2x00_set_field32(i32* %4, i32 %87, i32 11)
  %89 = load i32, i32* @TXCSR8_BBP_ID1_VALID, align 4
  %90 = call i32 @rt2x00_set_field32(i32* %4, i32 %89, i32 1)
  %91 = load i32, i32* @TXCSR8_BBP_ID2, align 4
  %92 = call i32 @rt2x00_set_field32(i32* %4, i32 %91, i32 13)
  %93 = load i32, i32* @TXCSR8_BBP_ID2_VALID, align 4
  %94 = call i32 @rt2x00_set_field32(i32* %4, i32 %93, i32 1)
  %95 = load i32, i32* @TXCSR8_BBP_ID3, align 4
  %96 = call i32 @rt2x00_set_field32(i32* %4, i32 %95, i32 12)
  %97 = load i32, i32* @TXCSR8_BBP_ID3_VALID, align 4
  %98 = call i32 @rt2x00_set_field32(i32* %4, i32 %97, i32 1)
  %99 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %100 = load i32, i32* @TXCSR8, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %99, i32 %100, i32 %101)
  %103 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %104 = load i32, i32* @ARTCSR0, align 4
  %105 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %103, i32 %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* @ARTCSR0_ACK_CTS_1MBS, align 4
  %107 = call i32 @rt2x00_set_field32(i32* %4, i32 %106, i32 112)
  %108 = load i32, i32* @ARTCSR0_ACK_CTS_2MBS, align 4
  %109 = call i32 @rt2x00_set_field32(i32* %4, i32 %108, i32 56)
  %110 = load i32, i32* @ARTCSR0_ACK_CTS_5_5MBS, align 4
  %111 = call i32 @rt2x00_set_field32(i32* %4, i32 %110, i32 20)
  %112 = load i32, i32* @ARTCSR0_ACK_CTS_11MBS, align 4
  %113 = call i32 @rt2x00_set_field32(i32* %4, i32 %112, i32 10)
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %115 = load i32, i32* @ARTCSR0, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %114, i32 %115, i32 %116)
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %119 = load i32, i32* @ARTCSR1, align 4
  %120 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %118, i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* @ARTCSR1_ACK_CTS_6MBS, align 4
  %122 = call i32 @rt2x00_set_field32(i32* %4, i32 %121, i32 45)
  %123 = load i32, i32* @ARTCSR1_ACK_CTS_9MBS, align 4
  %124 = call i32 @rt2x00_set_field32(i32* %4, i32 %123, i32 37)
  %125 = load i32, i32* @ARTCSR1_ACK_CTS_12MBS, align 4
  %126 = call i32 @rt2x00_set_field32(i32* %4, i32 %125, i32 33)
  %127 = load i32, i32* @ARTCSR1_ACK_CTS_18MBS, align 4
  %128 = call i32 @rt2x00_set_field32(i32* %4, i32 %127, i32 29)
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %130 = load i32, i32* @ARTCSR1, align 4
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %129, i32 %130, i32 %131)
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %134 = load i32, i32* @ARTCSR2, align 4
  %135 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %133, i32 %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* @ARTCSR2_ACK_CTS_24MBS, align 4
  %137 = call i32 @rt2x00_set_field32(i32* %4, i32 %136, i32 29)
  %138 = load i32, i32* @ARTCSR2_ACK_CTS_36MBS, align 4
  %139 = call i32 @rt2x00_set_field32(i32* %4, i32 %138, i32 25)
  %140 = load i32, i32* @ARTCSR2_ACK_CTS_48MBS, align 4
  %141 = call i32 @rt2x00_set_field32(i32* %4, i32 %140, i32 25)
  %142 = load i32, i32* @ARTCSR2_ACK_CTS_54MBS, align 4
  %143 = call i32 @rt2x00_set_field32(i32* %4, i32 %142, i32 25)
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %145 = load i32, i32* @ARTCSR2, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %144, i32 %145, i32 %146)
  %148 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %149 = load i32, i32* @RXCSR3, align 4
  %150 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %148, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* @RXCSR3_BBP_ID0, align 4
  %152 = call i32 @rt2x00_set_field32(i32* %4, i32 %151, i32 47)
  %153 = load i32, i32* @RXCSR3_BBP_ID0_VALID, align 4
  %154 = call i32 @rt2x00_set_field32(i32* %4, i32 %153, i32 1)
  %155 = load i32, i32* @RXCSR3_BBP_ID1, align 4
  %156 = call i32 @rt2x00_set_field32(i32* %4, i32 %155, i32 51)
  %157 = load i32, i32* @RXCSR3_BBP_ID1_VALID, align 4
  %158 = call i32 @rt2x00_set_field32(i32* %4, i32 %157, i32 1)
  %159 = load i32, i32* @RXCSR3_BBP_ID2, align 4
  %160 = call i32 @rt2x00_set_field32(i32* %4, i32 %159, i32 42)
  %161 = load i32, i32* @RXCSR3_BBP_ID2_VALID, align 4
  %162 = call i32 @rt2x00_set_field32(i32* %4, i32 %161, i32 1)
  %163 = load i32, i32* @RXCSR3_BBP_ID3, align 4
  %164 = call i32 @rt2x00_set_field32(i32* %4, i32 %163, i32 51)
  %165 = load i32, i32* @RXCSR3_BBP_ID3_VALID, align 4
  %166 = call i32 @rt2x00_set_field32(i32* %4, i32 %165, i32 1)
  %167 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %168 = load i32, i32* @RXCSR3, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %167, i32 %168, i32 %169)
  %171 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %172 = load i32, i32* @PCICSR, align 4
  %173 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %171, i32 %172)
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* @PCICSR_BIG_ENDIAN, align 4
  %175 = call i32 @rt2x00_set_field32(i32* %4, i32 %174, i32 0)
  %176 = load i32, i32* @PCICSR_RX_TRESHOLD, align 4
  %177 = call i32 @rt2x00_set_field32(i32* %4, i32 %176, i32 0)
  %178 = load i32, i32* @PCICSR_TX_TRESHOLD, align 4
  %179 = call i32 @rt2x00_set_field32(i32* %4, i32 %178, i32 3)
  %180 = load i32, i32* @PCICSR_BURST_LENTH, align 4
  %181 = call i32 @rt2x00_set_field32(i32* %4, i32 %180, i32 1)
  %182 = load i32, i32* @PCICSR_ENABLE_CLK, align 4
  %183 = call i32 @rt2x00_set_field32(i32* %4, i32 %182, i32 1)
  %184 = load i32, i32* @PCICSR_READ_MULTIPLE, align 4
  %185 = call i32 @rt2x00_set_field32(i32* %4, i32 %184, i32 1)
  %186 = load i32, i32* @PCICSR_WRITE_INVALID, align 4
  %187 = call i32 @rt2x00_set_field32(i32* %4, i32 %186, i32 1)
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %189 = load i32, i32* @PCICSR, align 4
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %188, i32 %189, i32 %190)
  %192 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %193 = load i32, i32* @PWRCSR0, align 4
  %194 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %192, i32 %193, i32 1060843776)
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %196 = load i32, i32* @GPIOCSR, align 4
  %197 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %195, i32 %196, i32 65280)
  %198 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %199 = load i32, i32* @TESTCSR, align 4
  %200 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %198, i32 %199, i32 240)
  %201 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %202 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %201, i32 0, i32 0
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i64 (%struct.rt2x00_dev*, i32)*, i64 (%struct.rt2x00_dev*, i32)** %206, align 8
  %208 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %209 = load i32, i32* @STATE_AWAKE, align 4
  %210 = call i64 %207(%struct.rt2x00_dev* %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %1
  %213 = load i32, i32* @EBUSY, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %2, align 4
  br label %286

215:                                              ; preds = %1
  %216 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %217 = load i32, i32* @MACCSR0, align 4
  %218 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %216, i32 %217, i32 2175523)
  %219 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %220 = load i32, i32* @MACCSR1, align 4
  %221 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %219, i32 %220, i32 2315544)
  %222 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %223 = load i32, i32* @MACCSR2, align 4
  %224 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %222, i32 %223)
  store i32 %224, i32* %4, align 4
  %225 = load i32, i32* @MACCSR2_DELAY, align 4
  %226 = call i32 @rt2x00_set_field32(i32* %4, i32 %225, i32 64)
  %227 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %228 = load i32, i32* @MACCSR2, align 4
  %229 = load i32, i32* %4, align 4
  %230 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %227, i32 %228, i32 %229)
  %231 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %232 = load i32, i32* @RALINKCSR, align 4
  %233 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %231, i32 %232)
  store i32 %233, i32* %4, align 4
  %234 = load i32, i32* @RALINKCSR_AR_BBP_DATA0, align 4
  %235 = call i32 @rt2x00_set_field32(i32* %4, i32 %234, i32 17)
  %236 = load i32, i32* @RALINKCSR_AR_BBP_ID0, align 4
  %237 = call i32 @rt2x00_set_field32(i32* %4, i32 %236, i32 26)
  %238 = load i32, i32* @RALINKCSR_AR_BBP_VALID0, align 4
  %239 = call i32 @rt2x00_set_field32(i32* %4, i32 %238, i32 1)
  %240 = load i32, i32* @RALINKCSR_AR_BBP_DATA1, align 4
  %241 = call i32 @rt2x00_set_field32(i32* %4, i32 %240, i32 0)
  %242 = load i32, i32* @RALINKCSR_AR_BBP_ID1, align 4
  %243 = call i32 @rt2x00_set_field32(i32* %4, i32 %242, i32 26)
  %244 = load i32, i32* @RALINKCSR_AR_BBP_VALID1, align 4
  %245 = call i32 @rt2x00_set_field32(i32* %4, i32 %244, i32 1)
  %246 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %247 = load i32, i32* @RALINKCSR, align 4
  %248 = load i32, i32* %4, align 4
  %249 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %246, i32 %247, i32 %248)
  %250 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %251 = load i32, i32* @BBPCSR1, align 4
  %252 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %250, i32 %251, i32 -2112323072)
  %253 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %254 = load i32, i32* @TXACKCSR0, align 4
  %255 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %253, i32 %254, i32 32)
  %256 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %257 = load i32, i32* @CSR1, align 4
  %258 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %256, i32 %257)
  store i32 %258, i32* %4, align 4
  %259 = load i32, i32* @CSR1_SOFT_RESET, align 4
  %260 = call i32 @rt2x00_set_field32(i32* %4, i32 %259, i32 1)
  %261 = load i32, i32* @CSR1_BBP_RESET, align 4
  %262 = call i32 @rt2x00_set_field32(i32* %4, i32 %261, i32 0)
  %263 = load i32, i32* @CSR1_HOST_READY, align 4
  %264 = call i32 @rt2x00_set_field32(i32* %4, i32 %263, i32 0)
  %265 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %266 = load i32, i32* @CSR1, align 4
  %267 = load i32, i32* %4, align 4
  %268 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %265, i32 %266, i32 %267)
  %269 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %270 = load i32, i32* @CSR1, align 4
  %271 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %269, i32 %270)
  store i32 %271, i32* %4, align 4
  %272 = load i32, i32* @CSR1_SOFT_RESET, align 4
  %273 = call i32 @rt2x00_set_field32(i32* %4, i32 %272, i32 0)
  %274 = load i32, i32* @CSR1_HOST_READY, align 4
  %275 = call i32 @rt2x00_set_field32(i32* %4, i32 %274, i32 1)
  %276 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %277 = load i32, i32* @CSR1, align 4
  %278 = load i32, i32* %4, align 4
  %279 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %276, i32 %277, i32 %278)
  %280 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %281 = load i32, i32* @CNT0, align 4
  %282 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %280, i32 %281)
  store i32 %282, i32* %4, align 4
  %283 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %284 = load i32, i32* @CNT4, align 4
  %285 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %283, i32 %284)
  store i32 %285, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %286

286:                                              ; preds = %215, %212
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
