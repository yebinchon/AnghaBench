; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal_memmap.c_st_mmap_regmap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/st/extr_st_thermal_memmap.c_st_mmap_regmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_thermal_sensor = type { i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no memory resources defined\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to remap IO\0A\00", align 1
@st_416mpe_regmap_config = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to initialise regmap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_thermal_sensor*)* @st_mmap_regmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_mmap_regmap_init(%struct.st_thermal_sensor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_thermal_sensor*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.st_thermal_sensor* %0, %struct.st_thermal_sensor** %3, align 8
  %7 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %8 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %7, i32 0, i32 2
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = load i32, i32* @IORESOURCE_MEM, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %12, i32 %13, i32 0)
  store %struct.resource* %14, %struct.resource** %6, align 8
  %15 = load %struct.resource*, %struct.resource** %6, align 8
  %16 = icmp ne %struct.resource* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.resource*, %struct.resource** %6, align 8
  %25 = call i32 @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %27 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %29 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %37 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %61

40:                                               ; preds = %22
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %43 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @devm_regmap_init_mmio(%struct.device* %41, i32 %44, i32* @st_416mpe_regmap_config)
  %46 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %47 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %49 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.st_thermal_sensor*, %struct.st_thermal_sensor** %3, align 8
  %57 = getelementptr inbounds %struct.st_thermal_sensor, %struct.st_thermal_sensor* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %53, %33, %17
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_init_mmio(%struct.device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
