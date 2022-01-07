; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp5100_tco.c_tco_timer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sp5100_tco.c_tco_timer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp5100_tco = type { i32 }

@SB800_PM_WATCHDOG_CONFIG = common dso_local global i32 0, align 4
@SB800_PM_WATCHDOG_SECOND_RES = common dso_local global i32 0, align 4
@SB800_PM_WATCHDOG_CONTROL = common dso_local global i32 0, align 4
@SB800_PM_WATCHDOG_DISABLE = common dso_local global i32 0, align 4
@SB800_PCI_WATCHDOG_DECODE_EN = common dso_local global i32 0, align 4
@sp5100_tco_pci = common dso_local global i32 0, align 4
@SP5100_PCI_WATCHDOG_MISC_REG = common dso_local global i32 0, align 4
@SP5100_PCI_WATCHDOG_DECODE_EN = common dso_local global i32 0, align 4
@SP5100_PM_WATCHDOG_CONTROL = common dso_local global i32 0, align 4
@SP5100_PM_WATCHDOG_DISABLE = common dso_local global i32 0, align 4
@SP5100_PM_WATCHDOG_SECOND_RES = common dso_local global i32 0, align 4
@EFCH_PM_DECODEEN3 = common dso_local global i32 0, align 4
@EFCH_PM_WATCHDOG_DISABLE = common dso_local global i32 0, align 4
@EFCH_PM_DECODEEN_SECOND_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sp5100_tco*)* @tco_timer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tco_timer_enable(%struct.sp5100_tco* %0) #0 {
  %2 = alloca %struct.sp5100_tco*, align 8
  %3 = alloca i32, align 4
  store %struct.sp5100_tco* %0, %struct.sp5100_tco** %2, align 8
  %4 = load %struct.sp5100_tco*, %struct.sp5100_tco** %2, align 8
  %5 = getelementptr inbounds %struct.sp5100_tco, %struct.sp5100_tco* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %38 [
    i32 129, label %7
    i32 128, label %16
    i32 130, label %32
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @SB800_PM_WATCHDOG_CONFIG, align 4
  %9 = load i32, i32* @SB800_PM_WATCHDOG_SECOND_RES, align 4
  %10 = call i32 @sp5100_tco_update_pm_reg8(i32 %8, i32 255, i32 %9)
  %11 = load i32, i32* @SB800_PM_WATCHDOG_CONTROL, align 4
  %12 = load i32, i32* @SB800_PM_WATCHDOG_DISABLE, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @SB800_PCI_WATCHDOG_DECODE_EN, align 4
  %15 = call i32 @sp5100_tco_update_pm_reg8(i32 %11, i32 %13, i32 %14)
  br label %38

16:                                               ; preds = %1
  %17 = load i32, i32* @sp5100_tco_pci, align 4
  %18 = load i32, i32* @SP5100_PCI_WATCHDOG_MISC_REG, align 4
  %19 = call i32 @pci_read_config_dword(i32 %17, i32 %18, i32* %3)
  %20 = load i32, i32* @SP5100_PCI_WATCHDOG_DECODE_EN, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @sp5100_tco_pci, align 4
  %24 = load i32, i32* @SP5100_PCI_WATCHDOG_MISC_REG, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pci_write_config_dword(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @SP5100_PM_WATCHDOG_CONTROL, align 4
  %28 = load i32, i32* @SP5100_PM_WATCHDOG_DISABLE, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @SP5100_PM_WATCHDOG_SECOND_RES, align 4
  %31 = call i32 @sp5100_tco_update_pm_reg8(i32 %27, i32 %29, i32 %30)
  br label %38

32:                                               ; preds = %1
  %33 = load i32, i32* @EFCH_PM_DECODEEN3, align 4
  %34 = load i32, i32* @EFCH_PM_WATCHDOG_DISABLE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @EFCH_PM_DECODEEN_SECOND_RES, align 4
  %37 = call i32 @sp5100_tco_update_pm_reg8(i32 %33, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %1, %32, %16, %7
  ret void
}

declare dso_local i32 @sp5100_tco_update_pm_reg8(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
