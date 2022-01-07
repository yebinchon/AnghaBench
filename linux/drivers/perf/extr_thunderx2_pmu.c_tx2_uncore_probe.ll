; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_thunderx2_pmu.c_tx2_uncore_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@tx2_uncore_pmu_add = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to probe PMU devices\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"node%d: pmu uncore registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tx2_uncore_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx2_uncore_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @ACPI_HANDLE(%struct.device* %10)
  %12 = call i32 @acpi_get_node(i32 %11)
  %13 = call i32 @set_dev_node(%struct.device* %9, i32 %12)
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @has_acpi_companion(%struct.device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @ACPI_HANDLE(%struct.device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %20
  %29 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @tx2_uncore_pmu_add, align 4
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @acpi_walk_namespace(i32 %29, i32 %30, i32 1, i32 %31, i32* null, %struct.device* %32, i32* null)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @return_ACPI_STATUS(i32 %40)
  br label %42

42:                                               ; preds = %37, %28
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = call i32 @dev_to_node(%struct.device* %44)
  %46 = call i32 @dev_info(%struct.device* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %25, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @set_dev_node(%struct.device*, i32) #1

declare dso_local i32 @acpi_get_node(i32) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @has_acpi_companion(%struct.device*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, %struct.device*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
