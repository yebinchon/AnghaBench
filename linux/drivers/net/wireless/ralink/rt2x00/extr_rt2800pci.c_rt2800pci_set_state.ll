; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800pci.c_rt2800pci_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800pci.c_rt2800pci_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@STATE_AWAKE = common dso_local global i32 0, align 4
@MCU_WAKEUP = common dso_local global i32 0, align 4
@TOKEN_WAKEUP = common dso_local global i32 0, align 4
@STATE_SLEEP = common dso_local global i32 0, align 4
@H2M_MAILBOX_STATUS = common dso_local global i32 0, align 4
@H2M_MAILBOX_CID = common dso_local global i32 0, align 4
@MCU_SLEEP = common dso_local global i32 0, align 4
@TOKEN_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32)* @rt2800pci_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800pci_set_state(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @STATE_AWAKE, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = load i32, i32* @MCU_WAKEUP, align 4
  %11 = load i32, i32* @TOKEN_WAKEUP, align 4
  %12 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %9, i32 %10, i32 %11, i32 0, i32 2)
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %14 = load i32, i32* @TOKEN_WAKEUP, align 4
  %15 = call i32 @rt2800pci_mcu_status(%struct.rt2x00_dev* %13, i32 %14)
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @STATE_SLEEP, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %22 = load i32, i32* @H2M_MAILBOX_STATUS, align 4
  %23 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %21, i32 %22, i32 -1)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = load i32, i32* @H2M_MAILBOX_CID, align 4
  %26 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %24, i32 %25, i32 -1)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = load i32, i32* @MCU_SLEEP, align 4
  %29 = load i32, i32* @TOKEN_SLEEP, align 4
  %30 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %27, i32 %28, i32 %29, i32 255, i32 1)
  br label %31

31:                                               ; preds = %20, %16
  br label %32

32:                                               ; preds = %31, %8
  ret i32 0
}

declare dso_local i32 @rt2800_mcu_request(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @rt2800pci_mcu_status(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
