; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-meson.c_meson_add_pcie_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-meson.c_meson_add_pcie_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_pcie = type { %struct.TYPE_2__, %struct.dw_pcie }
%struct.TYPE_2__ = type { i32 }
%struct.dw_pcie = type { i32, %struct.pcie_port }
%struct.pcie_port = type { i64, i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to get MSI IRQ\0A\00", align 1
@meson_pcie_host_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_pcie*, %struct.platform_device*)* @meson_add_pcie_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_add_pcie_port(%struct.meson_pcie* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.meson_pcie*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca %struct.pcie_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.meson_pcie* %0, %struct.meson_pcie** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.meson_pcie*, %struct.meson_pcie** %4, align 8
  %11 = getelementptr inbounds %struct.meson_pcie, %struct.meson_pcie* %10, i32 0, i32 1
  store %struct.dw_pcie* %11, %struct.dw_pcie** %6, align 8
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %13 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %12, i32 0, i32 1
  store %struct.pcie_port* %13, %struct.pcie_port** %7, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %17 = call i64 @IS_ENABLED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %21 = call i64 @platform_get_irq(%struct.platform_device* %20, i32 0)
  %22 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %23 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %25 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %32 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %54

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %38 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %37, i32 0, i32 1
  store i32* @meson_pcie_host_ops, i32** %38, align 8
  %39 = load %struct.meson_pcie*, %struct.meson_pcie** %4, align 8
  %40 = getelementptr inbounds %struct.meson_pcie, %struct.meson_pcie* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %44 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %46 = call i32 @dw_pcie_host_init(%struct.pcie_port* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load %struct.device*, %struct.device** %8, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %49, %28
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dw_pcie_host_init(%struct.pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
