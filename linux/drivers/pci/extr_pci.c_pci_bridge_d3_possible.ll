; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_bridge_d3_possible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_bridge_d3_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@pci_bridge_d3_disable = common dso_local global i32 0, align 4
@pci_bridge_d3_force = common dso_local global i32 0, align 4
@bridge_d3_blacklist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_bridge_d3_possible(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %5 = call i32 @pci_is_pcie(%struct.pci_dev* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call i32 @pci_pcie_type(%struct.pci_dev* %9)
  switch i32 %10, label %56 [
    i32 129, label %11
    i32 128, label %11
    i32 130, label %11
  ]

11:                                               ; preds = %8, %8, %8
  %12 = load i32, i32* @pci_bridge_d3_disable, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %57

15:                                               ; preds = %11
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pciehp_is_native(%struct.pci_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %57

25:                                               ; preds = %20, %15
  %26 = load i32, i32* @pci_bridge_d3_force, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %57

29:                                               ; preds = %25
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %57

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = call i32 @platform_pci_bridge_d3(%struct.pci_dev* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %57

40:                                               ; preds = %35
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %57

46:                                               ; preds = %40
  %47 = load i32, i32* @bridge_d3_blacklist, align 4
  %48 = call i32 @dmi_check_system(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %57

51:                                               ; preds = %46
  %52 = call i32 (...) @dmi_get_bios_year()
  %53 = icmp sge i32 %52, 2015
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %57

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %8, %55
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %54, %50, %45, %39, %34, %28, %24, %14, %7
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i32 @pciehp_is_native(%struct.pci_dev*) #1

declare dso_local i32 @platform_pci_bridge_d3(%struct.pci_dev*) #1

declare dso_local i32 @dmi_check_system(i32) #1

declare dso_local i32 @dmi_get_bios_year(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
