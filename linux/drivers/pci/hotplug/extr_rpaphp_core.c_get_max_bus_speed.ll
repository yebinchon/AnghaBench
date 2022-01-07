; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_core.c_get_max_bus_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_rpaphp_core.c_get_max_bus_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32 }

@PCI_SPEED_33MHz = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz = common dso_local global i32 0, align 4
@PCI_SPEED_66MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_100MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_133MHz_PCIX = common dso_local global i32 0, align 4
@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot*)* @get_max_bus_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_bus_speed(%struct.slot* %0) #0 {
  %2 = alloca %struct.slot*, align 8
  %3 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %2, align 8
  %4 = load %struct.slot*, %struct.slot** %2, align 8
  %5 = getelementptr inbounds %struct.slot, %struct.slot* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 1, label %7
    i32 2, label %7
    i32 3, label %7
    i32 4, label %7
    i32 5, label %7
    i32 6, label %7
    i32 7, label %9
    i32 8, label %9
    i32 11, label %11
    i32 14, label %11
    i32 12, label %13
    i32 15, label %13
    i32 13, label %15
    i32 16, label %15
  ]

7:                                                ; preds = %1, %1, %1, %1, %1, %1
  %8 = load i32, i32* @PCI_SPEED_33MHz, align 4
  store i32 %8, i32* %3, align 4
  br label %19

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @PCI_SPEED_66MHz, align 4
  store i32 %10, i32* %3, align 4
  br label %19

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @PCI_SPEED_66MHz_PCIX, align 4
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @PCI_SPEED_100MHz_PCIX, align 4
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @PCI_SPEED_133MHz_PCIX, align 4
  store i32 %16, i32* %3, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %17, %15, %13, %11, %9, %7
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
