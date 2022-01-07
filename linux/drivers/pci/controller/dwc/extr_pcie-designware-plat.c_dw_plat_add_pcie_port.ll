; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-plat.c_dw_plat_add_pcie_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-designware-plat.c_dw_plat_add_pcie_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_plat_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.pcie_port }
%struct.pcie_port = type { i64, i64, i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@dw_plat_pcie_host_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to initialize host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_plat_pcie*, %struct.platform_device*)* @dw_plat_add_pcie_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_plat_add_pcie_port(%struct.dw_plat_pcie* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_plat_pcie*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca %struct.pcie_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.dw_plat_pcie* %0, %struct.dw_plat_pcie** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.dw_plat_pcie*, %struct.dw_plat_pcie** %4, align 8
  %11 = getelementptr inbounds %struct.dw_plat_pcie, %struct.dw_plat_pcie* %10, i32 0, i32 0
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %11, align 8
  store %struct.dw_pcie* %12, %struct.dw_pcie** %6, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %14 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %13, i32 0, i32 0
  store %struct.pcie_port* %14, %struct.pcie_port** %7, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = call i8* @platform_get_irq(%struct.platform_device* %17, i32 1)
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %21 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %23 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %28 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %2
  %32 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %33 = call i64 @IS_ENABLED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = call i8* @platform_get_irq(%struct.platform_device* %36, i32 0)
  %38 = ptrtoint i8* %37 to i64
  %39 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %40 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %42 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %47 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %53 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %52, i32 0, i32 2
  store i32* @dw_plat_pcie_host_ops, i32** %53, align 8
  %54 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %55 = call i32 @dw_pcie_host_init(%struct.pcie_port* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %8, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %58, %45, %26
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dw_pcie_host_init(%struct.pcie_port*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
