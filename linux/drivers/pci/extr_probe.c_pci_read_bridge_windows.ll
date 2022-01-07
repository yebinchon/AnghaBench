; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bridge_windows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_read_bridge_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i64, i32, i32, i32 }

@PCI_IO_BASE = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_DEC = common dso_local global i64 0, align 8
@PCI_PREF_MEMORY_BASE = common dso_local global i32 0, align 4
@PCI_PREF_RANGE_TYPE_MASK = common dso_local global i32 0, align 4
@PCI_PREF_RANGE_TYPE_64 = common dso_local global i32 0, align 4
@PCI_PREF_BASE_UPPER32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_read_bridge_windows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_read_bridge_windows(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32, i32* @PCI_IO_BASE, align 4
  %8 = call i32 @pci_read_config_word(%struct.pci_dev* %6, i32 %7, i64* %3)
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = load i32, i32* @PCI_IO_BASE, align 4
  %14 = call i32 @pci_write_config_word(%struct.pci_dev* %12, i32 %13, i32 57584)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = load i32, i32* @PCI_IO_BASE, align 4
  %17 = call i32 @pci_read_config_word(%struct.pci_dev* %15, i32 %16, i64* %3)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = load i32, i32* @PCI_IO_BASE, align 4
  %20 = call i32 @pci_write_config_word(%struct.pci_dev* %18, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_VENDOR_ID_DEC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %87

39:                                               ; preds = %33, %27
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %42 = call i32 @pci_read_config_dword(%struct.pci_dev* %40, i32 %41, i32* %4)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %39
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %48 = call i32 @pci_write_config_dword(%struct.pci_dev* %46, i32 %47, i32 -2031632)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %51 = call i32 @pci_read_config_dword(%struct.pci_dev* %49, i32 %50, i32* %4)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %53 = load i32, i32* @PCI_PREF_MEMORY_BASE, align 4
  %54 = call i32 @pci_write_config_dword(%struct.pci_dev* %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %45, %39
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %87

59:                                               ; preds = %55
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @PCI_PREF_RANGE_TYPE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @PCI_PREF_RANGE_TYPE_64, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %59
  %68 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %69 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %70 = call i32 @pci_read_config_dword(%struct.pci_dev* %68, i32 %69, i32* %4)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %72 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %73 = call i32 @pci_write_config_dword(%struct.pci_dev* %71, i32 %72, i32 -1)
  %74 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %75 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %76 = call i32 @pci_read_config_dword(%struct.pci_dev* %74, i32 %75, i32* %5)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %78 = load i32, i32* @PCI_PREF_BASE_UPPER32, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @pci_write_config_dword(%struct.pci_dev* %77, i32 %78, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  %84 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 4
  store i32 1, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %67
  br label %87

87:                                               ; preds = %38, %58, %86, %59
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
