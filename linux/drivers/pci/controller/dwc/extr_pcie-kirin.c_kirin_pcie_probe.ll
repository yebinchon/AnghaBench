; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-kirin.c_kirin_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.kirin_pcie = type { i64, %struct.dw_pcie* }
%struct.dw_pcie = type { i32*, %struct.device* }

@.str = private unnamed_addr constant [11 x i8] c"NULL node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kirin_dw_pcie_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kirin_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirin_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kirin_pcie*, align 8
  %6 = alloca %struct.dw_pcie*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %91

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.device* %20, i32 16, i32 %21)
  %23 = bitcast i8* %22 to %struct.kirin_pcie*
  store %struct.kirin_pcie* %23, %struct.kirin_pcie** %5, align 8
  %24 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %25 = icmp ne %struct.kirin_pcie* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %91

29:                                               ; preds = %19
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(%struct.device* %30, i32 16, i32 %31)
  %33 = bitcast i8* %32 to %struct.dw_pcie*
  store %struct.dw_pcie* %33, %struct.dw_pcie** %6, align 8
  %34 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %35 = icmp ne %struct.dw_pcie* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %29
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %42 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %41, i32 0, i32 1
  store %struct.device* %40, %struct.device** %42, align 8
  %43 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %44 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %43, i32 0, i32 0
  store i32* @kirin_dw_pcie_ops, i32** %44, align 8
  %45 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %46 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %47 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %46, i32 0, i32 1
  store %struct.dw_pcie* %45, %struct.dw_pcie** %47, align 8
  %48 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i32 @kirin_pcie_get_clk(%struct.kirin_pcie* %48, %struct.platform_device* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %91

55:                                               ; preds = %39
  %56 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = call i32 @kirin_pcie_get_resource(%struct.kirin_pcie* %56, %struct.platform_device* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %91

63:                                               ; preds = %55
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = getelementptr inbounds %struct.device, %struct.device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @of_get_named_gpio(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %68 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %69 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %71 = getelementptr inbounds %struct.kirin_pcie, %struct.kirin_pcie* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %91

77:                                               ; preds = %63
  %78 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %79 = call i32 @kirin_pcie_power_on(%struct.kirin_pcie* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %91

84:                                               ; preds = %77
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.kirin_pcie*, %struct.kirin_pcie** %5, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.kirin_pcie* %86)
  %88 = load %struct.dw_pcie*, %struct.dw_pcie** %6, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i32 @kirin_add_pcie_port(%struct.dw_pcie* %88, %struct.platform_device* %89)
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %84, %82, %74, %61, %53, %36, %26, %14
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @kirin_pcie_get_clk(%struct.kirin_pcie*, %struct.platform_device*) #1

declare dso_local i32 @kirin_pcie_get_resource(%struct.kirin_pcie*, %struct.platform_device*) #1

declare dso_local i64 @of_get_named_gpio(i32, i8*, i32) #1

declare dso_local i32 @kirin_pcie_power_on(%struct.kirin_pcie*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.kirin_pcie*) #1

declare dso_local i32 @kirin_add_pcie_port(%struct.dw_pcie*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
