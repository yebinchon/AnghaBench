; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_choose_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_choose_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64 }

@PCI_POWER_ERROR = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4
@PCI_D1 = common dso_local global i32 0, align 4
@PCI_D2 = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@PCI_D3cold = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @acpi_pci_choose_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_choose_state(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 128, i32* %5, align 4
  br label %12

11:                                               ; preds = %1
  store i32 129, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @acpi_pm_device_sleep_state(i32* %14, i32* null, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @PCI_POWER_ERROR, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %33 [
    i32 132, label %23
    i32 131, label %25
    i32 130, label %27
    i32 128, label %29
    i32 129, label %31
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @PCI_D0, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %21
  %26 = load i32, i32* @PCI_D1, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %21
  %28 = load i32, i32* @PCI_D2, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @PCI_D3hot, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @PCI_D3cold, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %21
  %34 = load i32, i32* @PCI_POWER_ERROR, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %29, %27, %25, %23, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @acpi_pm_device_sleep_state(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
