; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_add_pcie_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-spear13xx.c_spear13xx_add_pcie_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear13xx_pcie = type { %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.pcie_port }
%struct.pcie_port = type { i64, i32* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@spear13xx_pcie_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_NO_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"spear1340-pcie\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@spear13xx_pcie_host_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to initialize host\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear13xx_pcie*, %struct.platform_device*)* @spear13xx_add_pcie_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear13xx_add_pcie_port(%struct.spear13xx_pcie* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spear13xx_pcie*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca %struct.pcie_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.spear13xx_pcie* %0, %struct.spear13xx_pcie** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %4, align 8
  %11 = getelementptr inbounds %struct.spear13xx_pcie, %struct.spear13xx_pcie* %10, i32 0, i32 0
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %11, align 8
  store %struct.dw_pcie* %12, %struct.dw_pcie** %6, align 8
  %13 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %14 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %13, i32 0, i32 0
  store %struct.pcie_port* %14, %struct.pcie_port** %7, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = call i64 @platform_get_irq(%struct.platform_device* %17, i32 0)
  %19 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %20 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %22 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %29 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %2
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %35 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @spear13xx_pcie_irq_handler, align 4
  %39 = load i32, i32* @IRQF_SHARED, align 4
  %40 = load i32, i32* @IRQF_NO_THREAD, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.spear13xx_pcie*, %struct.spear13xx_pcie** %4, align 8
  %43 = call i32 @devm_request_irq(%struct.device* %33, i32 %37, i32 %38, i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.spear13xx_pcie* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %49 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %65

53:                                               ; preds = %32
  %54 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %55 = getelementptr inbounds %struct.pcie_port, %struct.pcie_port* %54, i32 0, i32 1
  store i32* @spear13xx_pcie_host_ops, i32** %55, align 8
  %56 = load %struct.pcie_port*, %struct.pcie_port** %7, align 8
  %57 = call i32 @dw_pcie_host_init(%struct.pcie_port* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.device*, %struct.device** %8, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %60, %46, %25
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.spear13xx_pcie*) #1

declare dso_local i32 @dw_pcie_host_init(%struct.pcie_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
