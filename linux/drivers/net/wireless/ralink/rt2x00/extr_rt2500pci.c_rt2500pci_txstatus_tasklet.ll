; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_txstatus_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2500pci.c_rt2500pci_txstatus_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32 }

@QID_ATIM = common dso_local global i32 0, align 4
@QID_AC_VO = common dso_local global i32 0, align 4
@QID_AC_VI = common dso_local global i32 0, align 4
@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@CSR8 = common dso_local global i32 0, align 4
@CSR8_TXDONE_TXRING = common dso_local global i32 0, align 4
@CSR8_TXDONE_ATIMRING = common dso_local global i32 0, align 4
@CSR8_TXDONE_PRIORING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @rt2500pci_txstatus_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2500pci_txstatus_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.rt2x00_dev*
  store %struct.rt2x00_dev* %6, %struct.rt2x00_dev** %3, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = load i32, i32* @QID_ATIM, align 4
  %9 = call i32 @rt2500pci_txdone(%struct.rt2x00_dev* %7, i32 %8)
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = load i32, i32* @QID_AC_VO, align 4
  %12 = call i32 @rt2500pci_txdone(%struct.rt2x00_dev* %10, i32 %11)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = load i32, i32* @QID_AC_VI, align 4
  %15 = call i32 @rt2500pci_txdone(%struct.rt2x00_dev* %13, i32 %14)
  %16 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @CSR8, align 4
  %27 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @CSR8_TXDONE_TXRING, align 4
  %29 = call i32 @rt2x00_set_field32(i32* %4, i32 %28, i32 0)
  %30 = load i32, i32* @CSR8_TXDONE_ATIMRING, align 4
  %31 = call i32 @rt2x00_set_field32(i32* %4, i32 %30, i32 0)
  %32 = load i32, i32* @CSR8_TXDONE_PRIORING, align 4
  %33 = call i32 @rt2x00_set_field32(i32* %4, i32 %32, i32 0)
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = load i32, i32* @CSR8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %39 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_irq(i32* %39)
  br label %41

41:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @rt2500pci_txdone(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
