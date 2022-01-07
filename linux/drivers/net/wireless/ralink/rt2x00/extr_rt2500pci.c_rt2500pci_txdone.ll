; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_txdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.data_queue = type { i32 }
%struct.queue_entry_priv_mmio = type { i32 }
%struct.queue_entry = type { %struct.queue_entry_priv_mmio* }
%struct.txdone_entry_desc = type { i32, i64 }

@Q_INDEX_DONE = common dso_local global i32 0, align 4
@TXD_W0_OWNER_NIC = common dso_local global i32 0, align 4
@TXD_W0_VALID = common dso_local global i32 0, align 4
@TXD_W0_RESULT = common dso_local global i32 0, align 4
@TXDONE_SUCCESS = common dso_local global i32 0, align 4
@TXDONE_EXCESSIVE_RETRY = common dso_local global i32 0, align 4
@TXDONE_FAILURE = common dso_local global i32 0, align 4
@TXD_W0_RETRY_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32)* @rt2500pci_txdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_txdone(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.data_queue*, align 8
  %6 = alloca %struct.queue_entry_priv_mmio*, align 8
  %7 = alloca %struct.queue_entry*, align 8
  %8 = alloca %struct.txdone_entry_desc, align 8
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %10, i32 %11)
  store %struct.data_queue* %12, %struct.data_queue** %5, align 8
  br label %13

13:                                               ; preds = %56, %2
  %14 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %15 = call i32 @rt2x00queue_empty(%struct.data_queue* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %63

18:                                               ; preds = %13
  %19 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %20 = load i32, i32* @Q_INDEX_DONE, align 4
  %21 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %19, i32 %20)
  store %struct.queue_entry* %21, %struct.queue_entry** %7, align 8
  %22 = load %struct.queue_entry*, %struct.queue_entry** %7, align 8
  %23 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %22, i32 0, i32 0
  %24 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %23, align 8
  store %struct.queue_entry_priv_mmio* %24, %struct.queue_entry_priv_mmio** %6, align 8
  %25 = load %struct.queue_entry_priv_mmio*, %struct.queue_entry_priv_mmio** %6, align 8
  %26 = getelementptr inbounds %struct.queue_entry_priv_mmio, %struct.queue_entry_priv_mmio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rt2x00_desc_read(i32 %27, i32 0)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @TXD_W0_OWNER_NIC, align 4
  %31 = call i32 @rt2x00_get_field32(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @TXD_W0_VALID, align 4
  %36 = call i32 @rt2x00_get_field32(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %18
  br label %63

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %8, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @TXD_W0_RESULT, align 4
  %43 = call i32 @rt2x00_get_field32(i32 %41, i32 %42)
  switch i32 %43, label %52 [
    i32 0, label %44
    i32 1, label %44
    i32 2, label %48
  ]

44:                                               ; preds = %39, %39
  %45 = load i32, i32* @TXDONE_SUCCESS, align 4
  %46 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %8, i32 0, i32 1
  %47 = call i32 @__set_bit(i32 %45, i64* %46)
  br label %56

48:                                               ; preds = %39
  %49 = load i32, i32* @TXDONE_EXCESSIVE_RETRY, align 4
  %50 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %8, i32 0, i32 1
  %51 = call i32 @__set_bit(i32 %49, i64* %50)
  br label %52

52:                                               ; preds = %39, %48
  %53 = load i32, i32* @TXDONE_FAILURE, align 4
  %54 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %8, i32 0, i32 1
  %55 = call i32 @__set_bit(i32 %53, i64* %54)
  br label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @TXD_W0_RETRY_COUNT, align 4
  %59 = call i32 @rt2x00_get_field32(i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.txdone_entry_desc, %struct.txdone_entry_desc* %8, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.queue_entry*, %struct.queue_entry** %7, align 8
  %62 = call i32 @rt2x00lib_txdone(%struct.queue_entry* %61, %struct.txdone_entry_desc* %8)
  br label %13

63:                                               ; preds = %38, %13
  ret void
}

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i32 @rt2x00_desc_read(i32, i32) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @rt2x00lib_txdone(%struct.queue_entry*, %struct.txdone_entry_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
