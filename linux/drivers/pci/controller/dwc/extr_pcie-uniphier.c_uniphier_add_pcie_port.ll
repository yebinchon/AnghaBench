; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_add_pcie_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-uniphier.c_uniphier_add_pcie_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_pcie_priv = type { %struct.dw_pcie }
%struct.dw_pcie = type { %struct.pcie_port }
%struct.pcie_port = type { i64, i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@uniphier_pcie_host_ops = common dso_local global i32 0, align 4
@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to initialize host (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_pcie_priv*, %struct.platform_device*)* @uniphier_add_pcie_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_add_pcie_port(%struct.uniphier_pcie_priv* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uniphier_pcie_priv*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca %struct.pcie_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.uniphier_pcie_priv* %0, %struct.uniphier_pcie_priv** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.uniphier_pcie_priv*, %struct.uniphier_pcie_priv** %4, align 8
  %11 = getelementptr inbounds %struct.uniphier_pcie_priv, %struct.uniphier_pcie_priv* %10, i32 0, i32 0
  store %struct.dw_pcie* %11, %struct.dw_pcie** %6, align 8
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %13 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %12, i32 0, i32 0
  store %struct.pcie_port* %13, %struct.pcie_port** %7, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %17 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %16, i32 0, i32 1
  store i32* @uniphier_pcie_host_ops, i32** %17, align 8
  %18 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = call i64 @platform_get_irq_byname(%struct.platform_device* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %25 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %27 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %32 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %47

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %38 = call i32 @dw_pcie_host_init(%struct.pcie_port* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %41, %30
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dw_pcie_host_init(%struct.pcie_port*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
