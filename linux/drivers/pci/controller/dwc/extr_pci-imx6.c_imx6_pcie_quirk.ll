; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-imx6.c_imx6_pcie_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.pci_dev = type { i64, i32, %struct.pci_bus* }
%struct.pci_bus = type { i64, %struct.TYPE_8__, %struct.pcie_port* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.pcie_port = type { i64 }
%struct.dw_pcie = type { i32 }
%struct.imx6_pcie = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@imx6_pcie_driver = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"Limiting cfg_size to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @imx6_pcie_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6_pcie_quirk(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pcie_port*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.imx6_pcie*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 2
  %9 = load %struct.pci_bus*, %struct.pci_bus** %8, align 8
  store %struct.pci_bus* %9, %struct.pci_bus** %3, align 8
  %10 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %11 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %10, i32 0, i32 2
  %12 = load %struct.pcie_port*, %struct.pcie_port** %11, align 8
  store %struct.pcie_port* %12, %struct.pcie_port** %4, align 8
  %13 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %14 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %20 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %18, %1
  br label %72

27:                                               ; preds = %18
  %28 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %29 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @imx6_pcie_driver, i32 0, i32 0)
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %72

38:                                               ; preds = %27
  %39 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  %40 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.pcie_port*, %struct.pcie_port** %4, align 8
  %43 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %38
  %47 = load %struct.pcie_port*, %struct.pcie_port** %4, align 8
  %48 = call %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port* %47)
  store %struct.dw_pcie* %48, %struct.dw_pcie** %5, align 8
  %49 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %50 = call %struct.imx6_pcie* @to_imx6_pcie(%struct.dw_pcie* %49)
  store %struct.imx6_pcie* %50, %struct.imx6_pcie** %6, align 8
  %51 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %52 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %46
  %58 = load %struct.imx6_pcie*, %struct.imx6_pcie** %6, align 8
  %59 = getelementptr inbounds %struct.imx6_pcie, %struct.imx6_pcie* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 1
  %67 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %57, %46
  br label %72

72:                                               ; preds = %26, %37, %71, %38
  ret void
}

declare dso_local %struct.dw_pcie* @to_dw_pcie_from_pp(%struct.pcie_port*) #1

declare dso_local %struct.imx6_pcie* @to_imx6_pcie(%struct.dw_pcie*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
