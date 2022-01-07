; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip-host.c_rockchip_pcie_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"missing sys IRQ resource\0A\00", align 1
@rockchip_pcie_subsys_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pcie-sys\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to request PCIe subsystem IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"missing legacy IRQ resource\0A\00", align 1
@rockchip_pcie_legacy_int_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"missing client IRQ resource\0A\00", align 1
@rockchip_pcie_client_irq_handler = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"pcie-client\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to request PCIe client IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pcie*)* @rockchip_pcie_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_setup_irq(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %8 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.platform_device* @to_platform_device(%struct.device* %11)
  store %struct.platform_device* %12, %struct.platform_device** %7, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %14 = call i32 @platform_get_irq_byname(%struct.platform_device* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %70

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @rockchip_pcie_subsys_irq_handler, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %27 = call i32 @devm_request_irq(%struct.device* %22, i32 %23, i32 %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.rockchip_pcie* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %70

34:                                               ; preds = %21
  %35 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %36 = call i32 @platform_get_irq_byname(%struct.platform_device* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %70

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @rockchip_pcie_legacy_int_handler, align 4
  %46 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %47 = call i32 @irq_set_chained_handler_and_data(i32 %44, i32 %45, %struct.rockchip_pcie* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %49 = call i32 @platform_get_irq_byname(%struct.platform_device* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %70

56:                                               ; preds = %43
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @rockchip_pcie_client_irq_handler, align 4
  %60 = load i32, i32* @IRQF_SHARED, align 4
  %61 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %62 = call i32 @devm_request_irq(%struct.device* %57, i32 %58, i32 %59, i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), %struct.rockchip_pcie* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.device*, %struct.device** %6, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %65, %52, %39, %30, %17
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.rockchip_pcie*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.rockchip_pcie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
