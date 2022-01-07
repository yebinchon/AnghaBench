; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_generic_read_dev_vendor_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pci_bus_generic_read_dev_vendor_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@PCI_VENDOR_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_bus_generic_read_dev_vendor_id(%struct.pci_bus* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PCI_VENDOR_ID, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i64 @pci_bus_read_config_dword(%struct.pci_bus* %10, i32 %11, i32 %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %46

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 65535
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, -65536
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %21, %17
  store i32 0, i32* %5, align 4
  br label %46

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pci_bus_crs_vendor_id(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @pci_bus_wait_crs(%struct.pci_bus* %40, i32 %41, i32* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %39, %33, %16
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @pci_bus_read_config_dword(%struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i64 @pci_bus_crs_vendor_id(i32) #1

declare dso_local i32 @pci_bus_wait_crs(%struct.pci_bus*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
