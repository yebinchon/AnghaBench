; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pci_acpi_set_untrusted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_pci-acpi.c_pci_acpi_set_untrusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@PCI_EXP_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"ExternalFacingPort\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_acpi_set_untrusted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_acpi_set_untrusted(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i64 @pci_pcie_type(%struct.pci_dev* %4)
  %6 = load i64, i64* @PCI_EXP_TYPE_ROOT_PORT, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = call i64 @device_property_read_u8(i32* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* %3)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %21

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %8, %14, %18, %15
  ret void
}

declare dso_local i64 @pci_pcie_type(%struct.pci_dev*) #1

declare dso_local i64 @device_property_read_u8(i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
