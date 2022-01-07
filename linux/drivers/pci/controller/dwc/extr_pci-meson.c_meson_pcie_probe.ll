; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-meson.c_meson_pcie_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-meson.c_meson_pcie_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dw_pcie = type { i32*, %struct.device* }
%struct.meson_pcie = type { i32, %struct.dw_pcie }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_pcie_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"get reset gpio failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"get reset resource failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"get memory resource failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"init clock resources failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Add PCIe port failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_pcie_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_pcie_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dw_pcie*, align 8
  %6 = alloca %struct.meson_pcie*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.meson_pcie* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.meson_pcie* %12, %struct.meson_pcie** %6, align 8
  %13 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %14 = icmp ne %struct.meson_pcie* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %93

18:                                               ; preds = %1
  %19 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %20 = getelementptr inbounds %struct.meson_pcie, %struct.meson_pcie* %19, i32 0, i32 1
  store %struct.dw_pcie* %20, %struct.dw_pcie** %5, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %23 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %22, i32 0, i32 1
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.dw_pcie*, %struct.dw_pcie** %5, align 8
  %25 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %24, i32 0, i32 0
  store i32* @dw_pcie_ops, i32** %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %28 = call i32 @devm_gpiod_get(%struct.device* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %30 = getelementptr inbounds %struct.meson_pcie, %struct.meson_pcie* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %32 = getelementptr inbounds %struct.meson_pcie, %struct.meson_pcie* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %18
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %40 = getelementptr inbounds %struct.meson_pcie, %struct.meson_pcie* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %93

43:                                               ; preds = %18
  %44 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %45 = call i32 @meson_pcie_get_resets(%struct.meson_pcie* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %93

53:                                               ; preds = %43
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %56 = call i32 @meson_pcie_get_mems(%struct.platform_device* %54, %struct.meson_pcie* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %93

64:                                               ; preds = %53
  %65 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %66 = call i32 @meson_pcie_power_on(%struct.meson_pcie* %65)
  %67 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %68 = call i32 @meson_pcie_reset(%struct.meson_pcie* %67)
  %69 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %70 = call i32 @meson_pcie_probe_clocks(%struct.meson_pcie* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %93

78:                                               ; preds = %64
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %81 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.meson_pcie* %80)
  %82 = load %struct.meson_pcie*, %struct.meson_pcie** %6, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = call i32 @meson_add_pcie_port(%struct.meson_pcie* %82, %struct.platform_device* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %87, %73, %59, %48, %36, %15
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.meson_pcie* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @meson_pcie_get_resets(%struct.meson_pcie*) #1

declare dso_local i32 @meson_pcie_get_mems(%struct.platform_device*, %struct.meson_pcie*) #1

declare dso_local i32 @meson_pcie_power_on(%struct.meson_pcie*) #1

declare dso_local i32 @meson_pcie_reset(%struct.meson_pcie*) #1

declare dso_local i32 @meson_pcie_probe_clocks(%struct.meson_pcie*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_pcie*) #1

declare dso_local i32 @meson_add_pcie_port(%struct.meson_pcie*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
