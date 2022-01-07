; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_bus_find_cap_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_bus_find_cap_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_CAP_LIST = common dso_local global i32 0, align 4
@PCI_CAPABILITY_LIST = common dso_local global i32 0, align 4
@PCI_CB_CAPABILITY_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32)* @__pci_bus_find_cap_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pci_bus_find_cap_start(%struct.pci_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PCI_STATUS, align 4
  %12 = call i32 @pci_bus_read_config_word(%struct.pci_bus* %9, i32 %10, i32 %11, i32* %8)
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @PCI_STATUS_CAP_LIST, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %24 [
    i32 128, label %20
    i32 130, label %20
    i32 129, label %22
  ]

20:                                               ; preds = %18, %18
  %21 = load i32, i32* @PCI_CAPABILITY_LIST, align 4
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @PCI_CB_CAPABILITY_LIST, align 4
  store i32 %23, i32* %4, align 4
  br label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %22, %20, %17
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @pci_bus_read_config_word(%struct.pci_bus*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
