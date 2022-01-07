; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800pci.c_rt2800pci_enable_radio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800pci.c_rt2800pci_enable_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@H2M_MAILBOX_STATUS = common dso_local global i32 0, align 4
@H2M_MAILBOX_CID = common dso_local global i32 0, align 4
@MCU_SLEEP = common dso_local global i32 0, align 4
@TOKEN_RADIO_OFF = common dso_local global i32 0, align 4
@MCU_WAKEUP = common dso_local global i32 0, align 4
@TOKEN_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800pci_enable_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800pci_enable_radio(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = call i32 @rt2800mmio_enable_radio(%struct.rt2x00_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = load i32, i32* @H2M_MAILBOX_STATUS, align 4
  %14 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %12, i32 %13, i32 -1)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load i32, i32* @H2M_MAILBOX_CID, align 4
  %17 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %15, i32 %16, i32 -1)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = load i32, i32* @MCU_SLEEP, align 4
  %20 = load i32, i32* @TOKEN_RADIO_OFF, align 4
  %21 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %18, i32 %19, i32 %20, i32 255, i32 2)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = load i32, i32* @TOKEN_RADIO_OFF, align 4
  %24 = call i32 @rt2800pci_mcu_status(%struct.rt2x00_dev* %22, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @MCU_WAKEUP, align 4
  %27 = load i32, i32* @TOKEN_WAKEUP, align 4
  %28 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %25, i32 %26, i32 %27, i32 0, i32 0)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = load i32, i32* @TOKEN_WAKEUP, align 4
  %31 = call i32 @rt2800pci_mcu_status(%struct.rt2x00_dev* %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %11, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @rt2800mmio_enable_radio(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_mcu_request(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rt2800pci_mcu_status(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
