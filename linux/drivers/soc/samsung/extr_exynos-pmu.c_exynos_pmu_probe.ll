; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos-pmu.c_exynos_pmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos-pmu.c_exynos_pmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.device* }
%struct.TYPE_6__ = type { i32 (...)* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@pmu_base_addr = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pmu_context = common dso_local global %struct.TYPE_5__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Error populating children, reboot and poweroff might not work properly\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Exynos PMU Driver probe done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_pmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_pmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.resource*, %struct.resource** %5, align 8
  %13 = call i32 @devm_ioremap_resource(%struct.device* %11, %struct.resource* %12)
  store i32 %13, i32* @pmu_base_addr, align 4
  %14 = load i32, i32* @pmu_base_addr, align 4
  %15 = call i64 @IS_ERR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @pmu_base_addr, align 4
  %19 = call i32 @PTR_ERR(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.TYPE_5__* @devm_kzalloc(%struct.device* %22, i32 4, i32 %23)
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** @pmu_context, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu_context, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %69

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu_context, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store %struct.device* %31, %struct.device** %33, align 8
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call %struct.TYPE_6__* @of_device_get_match_data(%struct.device* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu_context, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu_context, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %30
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu_context, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (...)*, i32 (...)** %46, align 8
  %48 = icmp ne i32 (...)* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu_context, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (...)*, i32 (...)** %53, align 8
  %55 = call i32 (...) %54()
  br label %56

56:                                               ; preds = %49, %42, %30
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pmu_context, align 8
  %59 = call i32 @platform_set_drvdata(%struct.platform_device* %57, %struct.TYPE_5__* %58)
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i64 @devm_of_platform_populate(%struct.device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %56
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i32 @dev_dbg(%struct.device* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %27, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_5__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_5__*) #1

declare dso_local i64 @devm_of_platform_populate(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
