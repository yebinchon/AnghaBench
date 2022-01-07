; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_configure_extended_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_configure_extended_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_host_bridge = type { i64 }

@PCI_EXP_DEVCAP = common dso_local global i32 0, align 4
@PCI_EXP_DEVCAP_EXT_TAG = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_EXT_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"disabling Extended Tags\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"enabling Extended Tags\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_configure_extended_tags(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_host_bridge*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_is_pcie(%struct.pci_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

14:                                               ; preds = %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* @PCI_EXP_DEVCAP, align 4
  %17 = call i32 @pcie_capability_read_dword(%struct.pci_dev* %15, i32 %16, i32* %7)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %73

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PCI_EXP_DEVCAP_EXT_TAG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %73

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %30 = call i32 @pcie_capability_read_word(%struct.pci_dev* %28, i32 %29, i32* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %73

34:                                               ; preds = %27
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.pci_host_bridge* @pci_find_host_bridge(i32 %37)
  store %struct.pci_host_bridge* %38, %struct.pci_host_bridge** %6, align 8
  %39 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %40 = icmp ne %struct.pci_host_bridge* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %73

42:                                               ; preds = %34
  %43 = load %struct.pci_host_bridge*, %struct.pci_host_bridge** %6, align 8
  %44 = getelementptr inbounds %struct.pci_host_bridge, %struct.pci_host_bridge* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PCI_EXP_DEVCTL_EXT_TAG, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call i32 @pci_info(%struct.pci_dev* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %57 = load i32, i32* @PCI_EXP_DEVCTL_EXT_TAG, align 4
  %58 = call i32 @pcie_capability_clear_word(%struct.pci_dev* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  store i32 0, i32* %3, align 4
  br label %73

60:                                               ; preds = %42
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @PCI_EXP_DEVCTL_EXT_TAG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @pci_info(%struct.pci_dev* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %70 = load i32, i32* @PCI_EXP_DEVCTL_EXT_TAG, align 4
  %71 = call i32 @pcie_capability_set_word(%struct.pci_dev* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %60
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %59, %41, %33, %26, %20, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_read_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pcie_capability_read_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local %struct.pci_host_bridge* @pci_find_host_bridge(i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pcie_capability_clear_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pcie_capability_set_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
