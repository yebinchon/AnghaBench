; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_check_pme_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_check_pme_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_PM_CTRL = common dso_local global i32 0, align 4
@PCI_PM_CTRL_PME_STATUS = common dso_local global i32 0, align 4
@PCI_PM_CTRL_PME_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_check_pme_status(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCI_PM_CTRL, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pci_read_config_word(%struct.pci_dev* %18, i32 %19, i32* %5)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PCI_PM_CTRL_PME_STATUS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %45

26:                                               ; preds = %12
  %27 = load i32, i32* @PCI_PM_CTRL_PME_STATUS, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PCI_PM_CTRL_PME_ENABLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @PCI_PM_CTRL_PME_ENABLE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %26
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @pci_write_config_word(%struct.pci_dev* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %25, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
