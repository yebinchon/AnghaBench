; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pci_acpi_program_hp_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pci_acpi_program_hp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { %struct.pci_bus* }

@acpi_pci_disabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_acpi_program_hp_params(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pci_bus*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load i64, i64* @acpi_pci_disabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  store i32* null, i32** %5, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load %struct.pci_bus*, %struct.pci_bus** %15, align 8
  store %struct.pci_bus* %16, %struct.pci_bus** %7, align 8
  br label %17

17:                                               ; preds = %27, %13
  %18 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %19 = icmp ne %struct.pci_bus* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %22 = call i32* @acpi_pci_get_bridge_handle(%struct.pci_bus* %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %31

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.pci_bus*, %struct.pci_bus** %7, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 0
  %30 = load %struct.pci_bus*, %struct.pci_bus** %29, align 8
  store %struct.pci_bus* %30, %struct.pci_bus** %7, align 8
  br label %17

31:                                               ; preds = %25, %17
  br label %32

32:                                               ; preds = %63, %31
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @acpi_run_hpx(%struct.pci_dev* %36, i32* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @ACPI_SUCCESS(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %68

43:                                               ; preds = %35
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @acpi_run_hpp(%struct.pci_dev* %44, i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @ACPI_SUCCESS(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %68

51:                                               ; preds = %43
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @acpi_is_root_bridge(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %65

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @acpi_get_parent(i32* %57, i32** %6)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i64 @ACPI_FAILURE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %65

63:                                               ; preds = %56
  %64 = load i32*, i32** %6, align 8
  store i32* %64, i32** %5, align 8
  br label %32

65:                                               ; preds = %62, %55, %32
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %50, %42, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32* @acpi_pci_get_bridge_handle(%struct.pci_bus*) #1

declare dso_local i32 @acpi_run_hpx(%struct.pci_dev*, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_run_hpp(%struct.pci_dev*, i32*) #1

declare dso_local i64 @acpi_is_root_bridge(i32*) #1

declare dso_local i32 @acpi_get_parent(i32*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
