; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_find_next_ext_capability.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci.c_pci_find_next_ext_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_CFG_SPACE_SIZE = common dso_local global i32 0, align 4
@PCI_CFG_SPACE_EXP_SIZE = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_find_next_ext_capability(%struct.pci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @PCI_CFG_SPACE_EXP_SIZE, align 4
  %13 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sdiv i32 %14, 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @pci_read_config_dword(%struct.pci_dev* %28, i32 %29, i64* %8)
  %31 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %70

34:                                               ; preds = %27
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %70

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  %42 = icmp sgt i32 %40, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @PCI_EXT_CAP_ID(i64 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %70

54:                                               ; preds = %48, %43
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @PCI_EXT_CAP_NEXT(i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @PCI_CFG_SPACE_SIZE, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %69

61:                                               ; preds = %54
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @pci_read_config_dword(%struct.pci_dev* %62, i32 %63, i64* %8)
  %65 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %69

68:                                               ; preds = %61
  br label %39

69:                                               ; preds = %67, %60, %39
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %52, %37, %33, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @PCI_EXT_CAP_ID(i64) #1

declare dso_local i32 @PCI_EXT_CAP_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
