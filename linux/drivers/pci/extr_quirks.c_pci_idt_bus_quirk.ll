; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_idt_bus_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_pci_idt_bus_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_ACS = common dso_local global i32 0, align 4
@PCI_ACS_CTRL = common dso_local global i64 0, align 8
@PCI_ACS_SV = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_idt_bus_quirk(%struct.pci_bus* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pci_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 0
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %12, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %17 = load i32, i32* @PCI_EXT_CAP_ID_ACS, align 4
  %18 = call i32 @pci_find_ext_capability(%struct.pci_dev* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @PCI_ACS_CTRL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @pci_read_config_word(%struct.pci_dev* %22, i64 %26, i32* %10)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PCI_ACS_SV, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %21
  %33 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @PCI_ACS_CTRL, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @PCI_ACS_SV, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 @pci_write_config_word(%struct.pci_dev* %33, i64 %37, i32 %41)
  br label %43

43:                                               ; preds = %32, %21
  br label %44

44:                                               ; preds = %43, %4
  %45 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @pci_bus_generic_read_dev_vendor_id(%struct.pci_bus* %45, i32 %46, i32* %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.pci_bus*, %struct.pci_bus** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PCI_VENDOR_ID, align 4
  %56 = call i32 @pci_bus_write_config_word(%struct.pci_bus* %53, i32 %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %52, %44
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @PCI_ACS_SV, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* @PCI_ACS_CTRL, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @pci_write_config_word(%struct.pci_dev* %63, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %57
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_bus_generic_read_dev_vendor_id(%struct.pci_bus*, i32, i32*, i32) #1

declare dso_local i32 @pci_bus_write_config_word(%struct.pci_bus*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
