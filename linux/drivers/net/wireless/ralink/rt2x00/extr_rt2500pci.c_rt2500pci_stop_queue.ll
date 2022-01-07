; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_stop_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_stop_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }

@TXCSR0 = common dso_local global i32 0, align 4
@TXCSR0_ABORT = common dso_local global i32 0, align 4
@RXCSR0 = common dso_local global i32 0, align 4
@RXCSR0_DISABLE_RX = common dso_local global i32 0, align 4
@CSR14 = common dso_local global i32 0, align 4
@CSR14_TSF_COUNT = common dso_local global i32 0, align 4
@CSR14_TBCN = common dso_local global i32 0, align 4
@CSR14_BEACON_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data_queue*)* @rt2500pci_stop_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_stop_queue(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %5 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %6 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %5, i32 0, i32 1
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  store %struct.rt2x00_dev* %7, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %9 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %48 [
    i32 131, label %11
    i32 132, label %11
    i32 130, label %11
    i32 128, label %21
    i32 129, label %31
  ]

11:                                               ; preds = %1, %1, %1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = load i32, i32* @TXCSR0, align 4
  %14 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @TXCSR0_ABORT, align 4
  %16 = call i32 @rt2x00_set_field32(i32* %4, i32 %15, i32 1)
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = load i32, i32* @TXCSR0, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %17, i32 %18, i32 %19)
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = load i32, i32* @RXCSR0, align 4
  %24 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @RXCSR0_DISABLE_RX, align 4
  %26 = call i32 @rt2x00_set_field32(i32* %4, i32 %25, i32 1)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = load i32, i32* @RXCSR0, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %27, i32 %28, i32 %29)
  br label %49

31:                                               ; preds = %1
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = load i32, i32* @CSR14, align 4
  %34 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @CSR14_TSF_COUNT, align 4
  %36 = call i32 @rt2x00_set_field32(i32* %4, i32 %35, i32 0)
  %37 = load i32, i32* @CSR14_TBCN, align 4
  %38 = call i32 @rt2x00_set_field32(i32* %4, i32 %37, i32 0)
  %39 = load i32, i32* @CSR14_BEACON_GEN, align 4
  %40 = call i32 @rt2x00_set_field32(i32* %4, i32 %39, i32 0)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = load i32, i32* @CSR14, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %46 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %45, i32 0, i32 0
  %47 = call i32 @tasklet_kill(i32* %46)
  br label %49

48:                                               ; preds = %1
  br label %49

49:                                               ; preds = %48, %31, %21, %11
  ret void
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
