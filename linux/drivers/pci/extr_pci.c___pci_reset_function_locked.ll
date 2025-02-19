; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_reset_function_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c___pci_reset_function_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pci_reset_function_locked(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = call i32 (...) @might_sleep()
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call i32 @pci_dev_specific_reset(%struct.pci_dev* %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ENOTTY, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i64 @pcie_has_flr(%struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pcie_flr(%struct.pci_dev* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ENOTTY, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp ne i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %58

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %14
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = call i32 @pci_af_flr(%struct.pci_dev* %29, i32 0)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @ENOTTY, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp ne i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %58

37:                                               ; preds = %28
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = call i32 @pci_pm_reset(%struct.pci_dev* %38, i32 0)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ENOTTY, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %58

46:                                               ; preds = %37
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = call i32 @pci_dev_reset_slot_function(%struct.pci_dev* %47, i32 0)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @ENOTTY, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %58

55:                                               ; preds = %46
  %56 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %57 = call i32 @pci_parent_bus_reset(%struct.pci_dev* %56, i32 0)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %53, %44, %35, %25, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @pci_dev_specific_reset(%struct.pci_dev*, i32) #1

declare dso_local i64 @pcie_has_flr(%struct.pci_dev*) #1

declare dso_local i32 @pcie_flr(%struct.pci_dev*) #1

declare dso_local i32 @pci_af_flr(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_pm_reset(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_dev_reset_slot_function(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_parent_bus_reset(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
