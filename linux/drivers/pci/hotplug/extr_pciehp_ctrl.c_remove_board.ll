; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_remove_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pciehp_ctrl.c_remove_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }

@PCI_EXP_SLTSTA_DLLSC = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_PDC = common dso_local global i32 0, align 4
@PCI_EXP_SLTCTL_PWR_IND_OFF = common dso_local global i32 0, align 4
@INDICATOR_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*, i32)* @remove_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_board(%struct.controller* %0, i32 %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.controller*, %struct.controller** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @pciehp_unconfigure_device(%struct.controller* %5, i32 %6)
  %8 = load %struct.controller*, %struct.controller** %3, align 8
  %9 = call i64 @POWER_CTRL(%struct.controller* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.controller*, %struct.controller** %3, align 8
  %13 = call i32 @pciehp_power_off_slot(%struct.controller* %12)
  %14 = call i32 @msleep(i32 1000)
  %15 = load i32, i32* @PCI_EXP_SLTSTA_DLLSC, align 4
  %16 = load i32, i32* @PCI_EXP_SLTSTA_PDC, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.controller*, %struct.controller** %3, align 8
  %20 = getelementptr inbounds %struct.controller, %struct.controller* %19, i32 0, i32 0
  %21 = call i32 @atomic_and(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %11, %2
  %23 = load %struct.controller*, %struct.controller** %3, align 8
  %24 = load i32, i32* @PCI_EXP_SLTCTL_PWR_IND_OFF, align 4
  %25 = load i32, i32* @INDICATOR_NOOP, align 4
  %26 = call i32 @pciehp_set_indicators(%struct.controller* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @pciehp_unconfigure_device(%struct.controller*, i32) #1

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i32 @pciehp_power_off_slot(%struct.controller*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atomic_and(i32, i32*) #1

declare dso_local i32 @pciehp_set_indicators(%struct.controller*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
