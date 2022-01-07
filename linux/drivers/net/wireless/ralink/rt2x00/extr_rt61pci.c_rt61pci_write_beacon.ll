; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_write_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_write_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_5__*, i32, %struct.queue_entry_priv_mmio*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.TYPE_4__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.txentry_desc = type { i32 }

@TXRX_CSR9 = common dso_local global i32 0, align 4
@TXRX_CSR9_BEACON_GEN = common dso_local global i32 0, align 4
@DUMP_FRAME_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failure padding beacon, aborting\0A\00", align 1
@TXINFO_SIZE = common dso_local global i32 0, align 4
@TXRX_CSR10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.txentry_desc*)* @rt61pci_write_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt61pci_write_beacon(%struct.queue_entry* %0, %struct.txentry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.txentry_desc*, align 8
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.txentry_desc* %1, %struct.txentry_desc** %4, align 8
  %11 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %12 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %14, align 8
  store %struct.rt2x00_dev* %15, %struct.rt2x00_dev** %5, align 8
  %16 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %17 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %16, i32 0, i32 2
  %18 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %17, align 8
  store %struct.queue_entry_priv_mmio* %18, %struct.queue_entry_priv_mmio** %6, align 8
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %20 = load i32, i32* @TXRX_CSR9, align 4
  %21 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %24 = call i32 @rt2x00_set_field32(i32* %10, i32 %23, i32 0)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %26 = load i32, i32* @TXRX_CSR9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 %27)
  %29 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %30 = load %struct.txentry_desc*, %struct.txentry_desc** %4, align 8
  %31 = call i32 @rt61pci_write_tx_desc(%struct.queue_entry* %29, %struct.txentry_desc* %30)
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %33 = load i32, i32* @DUMP_FRAME_BEACON, align 4
  %34 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %35 = call i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev* %32, i32 %33, %struct.queue_entry* %34)
  %36 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %37 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @roundup(i32 %40, i32 4)
  %42 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %43 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub i32 %41, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %2
  %51 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %52 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @skb_pad(%struct.TYPE_5__* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %59 = call i32 @rt2x00_err(%struct.rt2x00_dev* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %61 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %60, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %61, align 8
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %63 = load i32, i32* @TXRX_CSR9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %62, i32 %63, i32 %64)
  br label %110

66:                                               ; preds = %50, %2
  %67 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %68 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @HW_BEACON_OFFSET(i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %74 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TXINFO_SIZE, align 4
  %77 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %71, i32 %72, i32 %75, i32 %76)
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @TXINFO_SIZE, align 4
  %81 = add i32 %79, %80
  %82 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %83 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %88 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %91, %92
  %94 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %78, i32 %81, i32 %86, i32 %93)
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %96 = load i32, i32* @TXRX_CSR10, align 4
  %97 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %95, i32 %96, i32 4104)
  %98 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %99 = call i32 @rt2x00_set_field32(i32* %10, i32 %98, i32 1)
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %101 = load i32, i32* @TXRX_CSR9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %100, i32 %101, i32 %102)
  %104 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %105 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = call i32 @dev_kfree_skb_any(%struct.TYPE_5__* %106)
  %108 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %109 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %108, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %109, align 8
  br label %110

110:                                              ; preds = %66, %57
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt61pci_write_tx_desc(%struct.queue_entry*, %struct.txentry_desc*) #1

declare dso_local i32 @rt2x00debug_dump_frame(%struct.rt2x00_dev*, i32, %struct.queue_entry*) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @skb_pad(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @HW_BEACON_OFFSET(i32) #1

declare dso_local i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
