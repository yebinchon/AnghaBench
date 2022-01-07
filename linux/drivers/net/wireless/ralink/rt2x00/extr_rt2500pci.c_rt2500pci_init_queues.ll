; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_init_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { %struct.queue_entry_priv_mmio* }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.queue_entry_priv_mmio* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.queue_entry_priv_mmio* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { %struct.queue_entry_priv_mmio* }

@TXCSR2 = common dso_local global i32 0, align 4
@TXCSR2_TXD_SIZE = common dso_local global i32 0, align 4
@TXCSR2_NUM_TXD = common dso_local global i32 0, align 4
@TXCSR2_NUM_ATIM = common dso_local global i32 0, align 4
@TXCSR2_NUM_PRIO = common dso_local global i32 0, align 4
@TXCSR3 = common dso_local global i32 0, align 4
@TXCSR3_TX_RING_REGISTER = common dso_local global i32 0, align 4
@TXCSR5 = common dso_local global i32 0, align 4
@TXCSR5_PRIO_RING_REGISTER = common dso_local global i32 0, align 4
@TXCSR4 = common dso_local global i32 0, align 4
@TXCSR4_ATIM_RING_REGISTER = common dso_local global i32 0, align 4
@TXCSR6 = common dso_local global i32 0, align 4
@TXCSR6_BEACON_RING_REGISTER = common dso_local global i32 0, align 4
@RXCSR1 = common dso_local global i32 0, align 4
@RXCSR1_RXD_SIZE = common dso_local global i32 0, align 4
@RXCSR1_NUM_RXD = common dso_local global i32 0, align 4
@RXCSR2 = common dso_local global i32 0, align 4
@RXCSR2_RX_RING_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2500pci_init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500pci_init_queues(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.queue_entry_priv_mmio*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %6 = load i32, i32* @TXCSR2, align 4
  %7 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @TXCSR2_TXD_SIZE, align 4
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rt2x00_set_field32(i32* %4, i32 %8, i32 %14)
  %16 = load i32, i32* @TXCSR2_NUM_TXD, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @rt2x00_set_field32(i32* %4, i32 %16, i32 %22)
  %24 = load i32, i32* @TXCSR2_NUM_ATIM, align 4
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rt2x00_set_field32(i32* %4, i32 %24, i32 %29)
  %31 = load i32, i32* @TXCSR2_NUM_PRIO, align 4
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 3
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @rt2x00_set_field32(i32* %4, i32 %31, i32 %37)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = load i32, i32* @TXCSR2, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %39, i32 %40, i32 %41)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %44 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %43, i32 0, i32 3
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %50, align 8
  store %struct.queue_entry_priv_mmio* %51, %struct.queue_entry_priv_mmio** %3, align 8
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %53 = load i32, i32* @TXCSR3, align 4
  %54 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @TXCSR3_TX_RING_REGISTER, align 4
  %56 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %57 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rt2x00_set_field32(i32* %4, i32 %55, i32 %58)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = load i32, i32* @TXCSR3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %60, i32 %61, i32 %62)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %64, i32 0, i32 3
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %71, align 8
  store %struct.queue_entry_priv_mmio* %72, %struct.queue_entry_priv_mmio** %3, align 8
  %73 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %74 = load i32, i32* @TXCSR5, align 4
  %75 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @TXCSR5_PRIO_RING_REGISTER, align 4
  %77 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %78 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rt2x00_set_field32(i32* %4, i32 %76, i32 %79)
  %81 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %82 = load i32, i32* @TXCSR5, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %81, i32 %82, i32 %83)
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %86 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %91, align 8
  store %struct.queue_entry_priv_mmio* %92, %struct.queue_entry_priv_mmio** %3, align 8
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %94 = load i32, i32* @TXCSR4, align 4
  %95 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* @TXCSR4_ATIM_RING_REGISTER, align 4
  %97 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %98 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @rt2x00_set_field32(i32* %4, i32 %96, i32 %99)
  %101 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %102 = load i32, i32* @TXCSR4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %101, i32 %102, i32 %103)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %106 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %105, i32 0, i32 1
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %111, align 8
  store %struct.queue_entry_priv_mmio* %112, %struct.queue_entry_priv_mmio** %3, align 8
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %114 = load i32, i32* @TXCSR6, align 4
  %115 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* @TXCSR6_BEACON_RING_REGISTER, align 4
  %117 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %118 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @rt2x00_set_field32(i32* %4, i32 %116, i32 %119)
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %122 = load i32, i32* @TXCSR6, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %121, i32 %122, i32 %123)
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %126 = load i32, i32* @RXCSR1, align 4
  %127 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %125, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @RXCSR1_RXD_SIZE, align 4
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %130 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @rt2x00_set_field32(i32* %4, i32 %128, i32 %133)
  %135 = load i32, i32* @RXCSR1_NUM_RXD, align 4
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %137 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @rt2x00_set_field32(i32* %4, i32 %135, i32 %140)
  %142 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %143 = load i32, i32* @RXCSR1, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %142, i32 %143, i32 %144)
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %147 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %146, i32 0, i32 0
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %152, align 8
  store %struct.queue_entry_priv_mmio* %153, %struct.queue_entry_priv_mmio** %3, align 8
  %154 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %155 = load i32, i32* @RXCSR2, align 4
  %156 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %154, i32 %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* @RXCSR2_RX_RING_REGISTER, align 4
  %158 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %3, align 8
  %159 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @rt2x00_set_field32(i32* %4, i32 %157, i32 %160)
  %162 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %163 = load i32, i32* @RXCSR2, align 4
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %162, i32 %163, i32 %164)
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
