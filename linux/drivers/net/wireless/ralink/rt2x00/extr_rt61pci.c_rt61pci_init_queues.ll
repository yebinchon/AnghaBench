; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_init_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.queue_entry_priv_mmio* }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.queue_entry_priv_mmio* }

@TX_RING_CSR0 = common dso_local global i32 0, align 4
@TX_RING_CSR0_AC0_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_CSR0_AC1_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_CSR0_AC2_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_CSR0_AC3_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_CSR1 = common dso_local global i32 0, align 4
@TX_RING_CSR1_TXD_SIZE = common dso_local global i32 0, align 4
@AC0_BASE_CSR = common dso_local global i32 0, align 4
@AC0_BASE_CSR_RING_REGISTER = common dso_local global i32 0, align 4
@AC1_BASE_CSR = common dso_local global i32 0, align 4
@AC1_BASE_CSR_RING_REGISTER = common dso_local global i32 0, align 4
@AC2_BASE_CSR = common dso_local global i32 0, align 4
@AC2_BASE_CSR_RING_REGISTER = common dso_local global i32 0, align 4
@AC3_BASE_CSR = common dso_local global i32 0, align 4
@AC3_BASE_CSR_RING_REGISTER = common dso_local global i32 0, align 4
@RX_RING_CSR = common dso_local global i32 0, align 4
@RX_RING_CSR_RING_SIZE = common dso_local global i32 0, align 4
@RX_RING_CSR_RXD_SIZE = common dso_local global i32 0, align 4
@RX_RING_CSR_RXD_WRITEBACK_SIZE = common dso_local global i32 0, align 4
@RX_BASE_CSR = common dso_local global i32 0, align 4
@RX_BASE_CSR_RING_REGISTER = common dso_local global i32 0, align 4
@TX_DMA_DST_CSR = common dso_local global i32 0, align 4
@TX_DMA_DST_CSR_DEST_AC0 = common dso_local global i32 0, align 4
@TX_DMA_DST_CSR_DEST_AC1 = common dso_local global i32 0, align 4
@TX_DMA_DST_CSR_DEST_AC2 = common dso_local global i32 0, align 4
@TX_DMA_DST_CSR_DEST_AC3 = common dso_local global i32 0, align 4
@LOAD_TX_RING_CSR = common dso_local global i32 0, align 4
@LOAD_TX_RING_CSR_LOAD_TXD_AC0 = common dso_local global i32 0, align 4
@LOAD_TX_RING_CSR_LOAD_TXD_AC1 = common dso_local global i32 0, align 4
@LOAD_TX_RING_CSR_LOAD_TXD_AC2 = common dso_local global i32 0, align 4
@LOAD_TX_RING_CSR_LOAD_TXD_AC3 = common dso_local global i32 0, align 4
@RX_CNTL_CSR = common dso_local global i32 0, align 4
@RX_CNTL_CSR_LOAD_RXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt61pci_init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_init_queues(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.queue_entry_priv_mmio*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = load i32, i32* @TX_RING_CSR0, align 4
  %7 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @TX_RING_CSR0_AC0_RING_SIZE, align 4
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @rt2x00_set_field32(i32* %4, i32 %8, i32 %14)
  %16 = load i32, i32* @TX_RING_CSR0_AC1_RING_SIZE, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @rt2x00_set_field32(i32* %4, i32 %16, i32 %22)
  %24 = load i32, i32* @TX_RING_CSR0_AC2_RING_SIZE, align 4
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @rt2x00_set_field32(i32* %4, i32 %24, i32 %30)
  %32 = load i32, i32* @TX_RING_CSR0_AC3_RING_SIZE, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @rt2x00_set_field32(i32* %4, i32 %32, i32 %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %41 = load i32, i32* @TX_RING_CSR0, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %45 = load i32, i32* @TX_RING_CSR1, align 4
  %46 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @TX_RING_CSR1_TXD_SIZE, align 4
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 4
  %55 = call i32 @rt2x00_set_field32(i32* %4, i32 %47, i32 %54)
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %57 = load i32, i32* @TX_RING_CSR1, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %56, i32 %57, i32 %58)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %67, align 8
  store %struct.queue_entry_priv_mmio* %68, %struct.queue_entry_priv_mmio** %3, align 8
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %70 = load i32, i32* @AC0_BASE_CSR, align 4
  %71 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @AC0_BASE_CSR_RING_REGISTER, align 4
  %73 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %74 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @rt2x00_set_field32(i32* %4, i32 %72, i32 %75)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = load i32, i32* @AC0_BASE_CSR, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %77, i32 %78, i32 %79)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %82 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %88, align 8
  store %struct.queue_entry_priv_mmio* %89, %struct.queue_entry_priv_mmio** %3, align 8
  %90 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %91 = load i32, i32* @AC1_BASE_CSR, align 4
  %92 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %90, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @AC1_BASE_CSR_RING_REGISTER, align 4
  %94 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %95 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @rt2x00_set_field32(i32* %4, i32 %93, i32 %96)
  %98 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %99 = load i32, i32* @AC1_BASE_CSR, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %98, i32 %99, i32 %100)
  %102 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %103 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %109, align 8
  store %struct.queue_entry_priv_mmio* %110, %struct.queue_entry_priv_mmio** %3, align 8
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %112 = load i32, i32* @AC2_BASE_CSR, align 4
  %113 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %111, i32 %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* @AC2_BASE_CSR_RING_REGISTER, align 4
  %115 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %116 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @rt2x00_set_field32(i32* %4, i32 %114, i32 %117)
  %119 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %120 = load i32, i32* @AC2_BASE_CSR, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %119, i32 %120, i32 %121)
  %123 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %124 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 3
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %130, align 8
  store %struct.queue_entry_priv_mmio* %131, %struct.queue_entry_priv_mmio** %3, align 8
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %133 = load i32, i32* @AC3_BASE_CSR, align 4
  %134 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %132, i32 %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* @AC3_BASE_CSR_RING_REGISTER, align 4
  %136 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %137 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @rt2x00_set_field32(i32* %4, i32 %135, i32 %138)
  %140 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %141 = load i32, i32* @AC3_BASE_CSR, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %145 = load i32, i32* @RX_RING_CSR, align 4
  %146 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %144, i32 %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* @RX_RING_CSR_RING_SIZE, align 4
  %148 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %149 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @rt2x00_set_field32(i32* %4, i32 %147, i32 %152)
  %154 = load i32, i32* @RX_RING_CSR_RXD_SIZE, align 4
  %155 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %156 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %155, i32 0, i32 0
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sdiv i32 %159, 4
  %161 = call i32 @rt2x00_set_field32(i32* %4, i32 %154, i32 %160)
  %162 = load i32, i32* @RX_RING_CSR_RXD_WRITEBACK_SIZE, align 4
  %163 = call i32 @rt2x00_set_field32(i32* %4, i32 %162, i32 4)
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %165 = load i32, i32* @RX_RING_CSR, align 4
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %164, i32 %165, i32 %166)
  %168 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %169 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %174, align 8
  store %struct.queue_entry_priv_mmio* %175, %struct.queue_entry_priv_mmio** %3, align 8
  %176 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %177 = load i32, i32* @RX_BASE_CSR, align 4
  %178 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %176, i32 %177)
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* @RX_BASE_CSR_RING_REGISTER, align 4
  %180 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %181 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @rt2x00_set_field32(i32* %4, i32 %179, i32 %182)
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %185 = load i32, i32* @RX_BASE_CSR, align 4
  %186 = load i32, i32* %4, align 4
  %187 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %184, i32 %185, i32 %186)
  %188 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %189 = load i32, i32* @TX_DMA_DST_CSR, align 4
  %190 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %188, i32 %189)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* @TX_DMA_DST_CSR_DEST_AC0, align 4
  %192 = call i32 @rt2x00_set_field32(i32* %4, i32 %191, i32 2)
  %193 = load i32, i32* @TX_DMA_DST_CSR_DEST_AC1, align 4
  %194 = call i32 @rt2x00_set_field32(i32* %4, i32 %193, i32 2)
  %195 = load i32, i32* @TX_DMA_DST_CSR_DEST_AC2, align 4
  %196 = call i32 @rt2x00_set_field32(i32* %4, i32 %195, i32 2)
  %197 = load i32, i32* @TX_DMA_DST_CSR_DEST_AC3, align 4
  %198 = call i32 @rt2x00_set_field32(i32* %4, i32 %197, i32 2)
  %199 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %200 = load i32, i32* @TX_DMA_DST_CSR, align 4
  %201 = load i32, i32* %4, align 4
  %202 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %199, i32 %200, i32 %201)
  %203 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %204 = load i32, i32* @LOAD_TX_RING_CSR, align 4
  %205 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %203, i32 %204)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* @LOAD_TX_RING_CSR_LOAD_TXD_AC0, align 4
  %207 = call i32 @rt2x00_set_field32(i32* %4, i32 %206, i32 1)
  %208 = load i32, i32* @LOAD_TX_RING_CSR_LOAD_TXD_AC1, align 4
  %209 = call i32 @rt2x00_set_field32(i32* %4, i32 %208, i32 1)
  %210 = load i32, i32* @LOAD_TX_RING_CSR_LOAD_TXD_AC2, align 4
  %211 = call i32 @rt2x00_set_field32(i32* %4, i32 %210, i32 1)
  %212 = load i32, i32* @LOAD_TX_RING_CSR_LOAD_TXD_AC3, align 4
  %213 = call i32 @rt2x00_set_field32(i32* %4, i32 %212, i32 1)
  %214 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %215 = load i32, i32* @LOAD_TX_RING_CSR, align 4
  %216 = load i32, i32* %4, align 4
  %217 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %214, i32 %215, i32 %216)
  %218 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %219 = load i32, i32* @RX_CNTL_CSR, align 4
  %220 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %218, i32 %219)
  store i32 %220, i32* %4, align 4
  %221 = load i32, i32* @RX_CNTL_CSR_LOAD_RXD, align 4
  %222 = call i32 @rt2x00_set_field32(i32* %4, i32 %221, i32 1)
  %223 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %224 = load i32, i32* @RX_CNTL_CSR, align 4
  %225 = load i32, i32* %4, align 4
  %226 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %223, i32 %224, i32 %225)
  ret i32 0
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
