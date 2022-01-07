; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_scan_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_scan_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }
%struct.pci_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_scan_slot(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %10 = call i64 @only_one_child(%struct.pci_bus* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %76

16:                                               ; preds = %12, %2
  %17 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus* %17, i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %8, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %21 = icmp ne %struct.pci_dev* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %76

23:                                               ; preds = %16
  %24 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %25 = call i32 @pci_dev_is_added(%struct.pci_dev* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %33 = call i32 @next_fn(%struct.pci_bus* %31, %struct.pci_dev* %32, i32 0)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %56, %30
  %35 = load i32, i32* %6, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %39, %40
  %42 = call %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus* %38, i32 %41)
  store %struct.pci_dev* %42, %struct.pci_dev** %8, align 8
  %43 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %44 = icmp ne %struct.pci_dev* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %47 = call i32 @pci_dev_is_added(%struct.pci_dev* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %37
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %58 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @next_fn(%struct.pci_bus* %57, %struct.pci_dev* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %63 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %71 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @pcie_aspm_init_link_state(i64 %72)
  br label %74

74:                                               ; preds = %69, %66, %61
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %22, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @only_one_child(%struct.pci_bus*) #1

declare dso_local %struct.pci_dev* @pci_scan_single_device(%struct.pci_bus*, i32) #1

declare dso_local i32 @pci_dev_is_added(%struct.pci_dev*) #1

declare dso_local i32 @next_fn(%struct.pci_bus*, %struct.pci_dev*, i32) #1

declare dso_local i32 @pcie_aspm_init_link_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
