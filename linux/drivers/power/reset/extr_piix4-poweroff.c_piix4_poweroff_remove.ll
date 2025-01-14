; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_piix4-poweroff.c_piix4_poweroff_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_piix4-poweroff.c_piix4_poweroff_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@pm_power_off = common dso_local global i32* null, align 8
@piix4_poweroff = common dso_local global i32* null, align 8
@piix4_pm_io_region = common dso_local global i32 0, align 4
@pm_dev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @piix4_poweroff_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @piix4_poweroff_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load i32*, i32** @pm_power_off, align 8
  %4 = load i32*, i32** @piix4_poweroff, align 8
  %5 = icmp eq i32* %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32* null, i32** @pm_power_off, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = load i32, i32* @piix4_pm_io_region, align 4
  %10 = call i32 @pci_release_region(%struct.pci_dev* %8, i32 %9)
  store i32* null, i32** @pm_dev, align 8
  ret void
}

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
