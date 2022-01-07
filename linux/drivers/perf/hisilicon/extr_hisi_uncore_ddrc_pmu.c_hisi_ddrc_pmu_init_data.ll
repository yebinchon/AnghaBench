; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_ddrc_pmu.c_hisi_ddrc_pmu_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/hisilicon/extr_hisi_uncore_ddrc_pmu.c_hisi_ddrc_pmu_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hisi_pmu = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"hisilicon,ch-id\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Can not read ddrc channel-id!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hisilicon,scl-id\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Can not read ddrc sccl-id!\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"ioremap failed for ddrc_pmu resource\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hisi_pmu*)* @hisi_ddrc_pmu_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_ddrc_pmu_init_data(%struct.platform_device* %0, %struct.hisi_pmu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hisi_pmu*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hisi_pmu* %1, %struct.hisi_pmu** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %10 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %9, i32 0, i32 3
  %11 = call i64 @device_property_read_u32(i32* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %23 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %22, i32 0, i32 2
  %24 = call i64 @device_property_read_u32(i32* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %19
  %33 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %34 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %6, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.resource*, %struct.resource** %6, align 8
  %41 = call i32 @devm_ioremap_resource(i32* %39, %struct.resource* %40)
  %42 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %43 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %45 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %32
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.hisi_pmu*, %struct.hisi_pmu** %5, align 8
  %54 = getelementptr inbounds %struct.hisi_pmu, %struct.hisi_pmu* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %49, %26, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

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
