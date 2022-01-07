; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_piix4_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_piix4_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_BRIDGE_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"PIIX4 ACPI\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"PIIX4 SMB\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"PIIX4 devres B\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PIIX4 devres C\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"PIIX4 devres E\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"PIIX4 devres F\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"PIIX4 devres G\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"PIIX4 devres H\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"PIIX4 devres I\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"PIIX4 devres J\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_piix4_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_piix4_acpi(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %6 = call i32 @quirk_io_region(%struct.pci_dev* %4, i32 64, i32 64, i64 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = load i64, i64* @PCI_BRIDGE_RESOURCES, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @quirk_io_region(%struct.pci_dev* %7, i32 144, i32 16, i64 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i32 @pci_read_config_dword(%struct.pci_dev* %11, i32 92, i32* %3)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = call i32 @piix4_io_quirk(%struct.pci_dev* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 96, i32 6291456)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = call i32 @piix4_io_quirk(%struct.pci_dev* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 100, i32 6291456)
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 536870912
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @piix4_io_quirk(%struct.pci_dev* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 104, i32 1048576)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = call i32 @piix4_mem_quirk(%struct.pci_dev* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 108, i32 128)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 1073741824
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %31 = call i32 @piix4_io_quirk(%struct.pci_dev* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 112, i32 1048576)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = call i32 @piix4_mem_quirk(%struct.pci_dev* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 116, i32 128)
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @piix4_io_quirk(%struct.pci_dev* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 120, i32 1048576)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = call i32 @piix4_io_quirk(%struct.pci_dev* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 124, i32 1048576)
  ret void
}

declare dso_local i32 @quirk_io_region(%struct.pci_dev*, i32, i32, i64, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @piix4_io_quirk(%struct.pci_dev*, i8*, i32, i32) #1

declare dso_local i32 @piix4_mem_quirk(%struct.pci_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
