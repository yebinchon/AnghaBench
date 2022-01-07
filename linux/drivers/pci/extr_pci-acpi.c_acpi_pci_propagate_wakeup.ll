; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_propagate_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_propagate_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32*, %struct.pci_bus*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32)* @acpi_pci_propagate_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_propagate_wakeup(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %8 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 1
  %9 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  %10 = icmp ne %struct.pci_bus* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %13 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @acpi_pm_device_can_wakeup(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %20 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @acpi_pm_set_bridge_wakeup(i32* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %11
  %26 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %27 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %26, i32 0, i32 1
  %28 = load %struct.pci_bus*, %struct.pci_bus** %27, align 8
  store %struct.pci_bus* %28, %struct.pci_bus** %4, align 8
  br label %6

29:                                               ; preds = %6
  %30 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %31 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %36 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @acpi_pm_device_can_wakeup(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %42 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @acpi_pm_set_bridge_wakeup(i32* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %29
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %40, %18
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @acpi_pm_device_can_wakeup(i32*) #1

declare dso_local i32 @acpi_pm_set_bridge_wakeup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
