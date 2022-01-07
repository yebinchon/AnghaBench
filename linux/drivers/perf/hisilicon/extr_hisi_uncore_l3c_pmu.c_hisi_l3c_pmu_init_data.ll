; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_l3c_pmu.c_hisi_l3c_pmu_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_l3c_pmu.c_hisi_l3c_pmu_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hisi_pmu = type { i64, i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_UID\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hisilicon,scl-id\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Can not read l3c sccl-id!\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"hisilicon,ccl-id\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Can not read l3c ccl-id!\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"ioremap failed for l3c_pmu resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hisi_pmu*)* @hisi_l3c_pmu_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_l3c_pmu_init_data(%struct.platform_device* %0, %struct.hisi_pmu* %1) #0 {
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
  br label %72

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
  br label %72

35:                                               ; preds = %19
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %39 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %38, i32 0, i32 2
  %40 = call i64 @device_property_read_u32(i32* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %35
  %49 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %7, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = call i32 @devm_ioremap_resource(i32* %53, %struct.resource* %54)
  %56 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %57 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %59 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %48
  %64 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %67 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %68 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %63, %42, %29, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
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
