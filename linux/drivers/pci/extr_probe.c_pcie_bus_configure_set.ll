; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pcie_bus_configure_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_probe.c_pcie_bus_configure_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@pcie_bus_config = common dso_local global i64 0, align 8
@PCIE_BUS_TUNE_OFF = common dso_local global i64 0, align 8
@PCIE_BUS_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"Max Payload Size set to %4d/%4d (was %4d), Max Read Rq %4d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @pcie_bus_configure_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_bus_configure_set(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i32 @pci_is_pcie(%struct.pci_dev* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

12:                                               ; preds = %2
  %13 = load i64, i64* @pcie_bus_config, align 8
  %14 = load i64, i64* @PCIE_BUS_TUNE_OFF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @pcie_bus_config, align 8
  %18 = load i64, i64* @PCIE_BUS_DEFAULT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12
  store i32 0, i32* %3, align 4
  br label %44

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 128, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pcie_get_mps(%struct.pci_dev* %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pcie_write_mps(%struct.pci_dev* %28, i32 %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pcie_write_mrrs(%struct.pci_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pcie_get_mps(%struct.pci_dev* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 128, %38
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i32 @pcie_get_readrq(%struct.pci_dev* %41)
  %43 = call i32 @pci_info(%struct.pci_dev* %33, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %40, i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %21, %20, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_get_mps(%struct.pci_dev*) #1

declare dso_local i32 @pcie_write_mps(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcie_write_mrrs(%struct.pci_dev*) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pcie_get_readrq(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
