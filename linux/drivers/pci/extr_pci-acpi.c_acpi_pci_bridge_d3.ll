; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_bridge_d3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_acpi_pci_bridge_d3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.fwnode_handle = type { i32 }
%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"HotPlugSupportInD3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @acpi_pci_bridge_d3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_bridge_d3(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call %struct.pci_dev* @pci_find_pcie_root_port(%struct.pci_dev* %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %6, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = icmp ne %struct.pci_dev* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %53

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call %struct.acpi_device* @ACPI_COMPANION(i32* %21)
  store %struct.acpi_device* %22, %struct.acpi_device** %5, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = icmp eq %struct.pci_dev* %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %28 = icmp ne %struct.acpi_device* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = call i32 @pci_dev_is_added(%struct.pci_dev* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = call %struct.acpi_device* @acpi_pci_find_companion(i32* %35)
  store %struct.acpi_device* %36, %struct.acpi_device** %5, align 8
  br label %37

37:                                               ; preds = %33, %29, %26
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %40 = icmp ne %struct.acpi_device* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %53

42:                                               ; preds = %38
  %43 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %44 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %43)
  store %struct.fwnode_handle* %44, %struct.fwnode_handle** %4, align 8
  %45 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %46 = call i64 @fwnode_property_read_u8(%struct.fwnode_handle* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %7)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %48, %41, %18, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.pci_dev* @pci_find_pcie_root_port(%struct.pci_dev*) #1

declare dso_local %struct.acpi_device* @ACPI_COMPANION(i32*) #1

declare dso_local i32 @pci_dev_is_added(%struct.pci_dev*) #1

declare dso_local %struct.acpi_device* @acpi_pci_find_companion(i32*) #1

declare dso_local %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device*) #1

declare dso_local i64 @fwnode_property_read_u8(%struct.fwnode_handle*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
