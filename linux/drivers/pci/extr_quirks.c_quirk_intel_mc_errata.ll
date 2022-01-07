; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_intel_mc_errata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_quirks.c_quirk_intel_mc_errata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@pcie_bus_config = common dso_local global i64 0, align 8
@PCIE_BUS_TUNE_OFF = common dso_local global i64 0, align 8
@PCIE_BUS_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"Error attempting to read the read completion coalescing register\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Error attempting to write the read completion coalescing register\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"Read completion coalescing disabled due to hardware erratum relating to 256B MPS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @quirk_intel_mc_errata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_intel_mc_errata(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load i64, i64* @pcie_bus_config, align 8
  %6 = load i64, i64* @PCIE_BUS_TUNE_OFF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @pcie_bus_config, align 8
  %10 = load i64, i64* @PCIE_BUS_DEFAULT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  br label %39

13:                                               ; preds = %8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @pci_read_config_word(%struct.pci_dev* %14, i32 72, i32* %4)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @pci_err(%struct.pci_dev* %19, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %39

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 1024
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, -1025
  store i32 %28, i32* %4, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @pci_write_config_word(%struct.pci_dev* %29, i32 72, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_err(%struct.pci_dev* %35, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %39

37:                                               ; preds = %26
  %38 = call i32 @pr_info_once(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34, %25, %18, %12
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pr_info_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
