; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_add_pcie_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-artpec6.c_artpec6_add_pcie_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.artpec6_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.device*, %struct.pcie_port }
%struct.device = type { i32 }
%struct.pcie_port = type { i64, i32* }
%struct.platform_device = type { i32 }

@CONFIG_PCI_MSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get MSI irq\0A\00", align 1
@artpec6_pcie_host_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.artpec6_pcie*, %struct.platform_device*)* @artpec6_add_pcie_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_add_pcie_port(%struct.artpec6_pcie* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.artpec6_pcie*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca %struct.pcie_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.artpec6_pcie* %0, %struct.artpec6_pcie** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.artpec6_pcie*, %struct.artpec6_pcie** %4, align 8
  %11 = getelementptr inbounds %struct.artpec6_pcie, %struct.artpec6_pcie* %10, i32 0, i32 0
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %11, align 8
  store %struct.dw_pcie* %12, %struct.dw_pcie** %6, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %14 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %13, i32 0, i32 1
  store %struct.pcie_port* %14, %struct.pcie_port** %7, align 8
  %15 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %16 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load i32, i32* @CONFIG_PCI_MSI, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

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
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %34 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %50

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %40 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %39, i32 0, i32 1
  store i32* @artpec6_pcie_host_ops, i32** %40, align 8
  %41 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %42 = call i32 @dw_pcie_host_init(%struct.pcie_port* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %8, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %45, %30
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dw_pcie_host_init(%struct.pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
