; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_hha_pmu.c_hisi_hha_pmu_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_hha_pmu.c_hisi_hha_pmu_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hisi_pmu = type { i64, i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hisilicon,scl-id\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Can not read hha sccl-id!\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"ioremap failed for hha_pmu resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hisi_pmu*)* @hisi_hha_pmu_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_hha_pmu_init_data(%struct.platform_device* %0, %struct.hisi_pmu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hisi_pmu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hisi_pmu* %1, %struct.hisi_pmu** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @ACPI_HANDLE(i32* %10)
  %12 = call i32 @acpi_evaluate_integer(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %6)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %22 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %26 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %25, i32 0, i32 3
  %27 = call i64 @device_property_read_u32(i32* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %61

35:                                               ; preds = %19
  %36 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %37 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = load i32, i32* @IORESOURCE_MEM, align 4
  %40 = call %struct.resource* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 0)
  store %struct.resource* %40, %struct.resource** %7, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = call i32 @devm_ioremap_resource(i32* %42, %struct.resource* %43)
  %45 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %46 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %48 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @IS_ERR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %35
  %53 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %57 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %52, %29, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i32 @ACPI_HANDLE(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
