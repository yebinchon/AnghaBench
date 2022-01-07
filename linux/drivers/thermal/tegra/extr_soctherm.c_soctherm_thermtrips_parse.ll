; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_thermtrips_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_thermtrips_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.tegra_soctherm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.tsensor_group_thermtrips* }
%struct.tsensor_group_thermtrips = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"nvidia,thermtrips\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"missing thermtrips, will use critical trips as shut down temp\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid num ele: thermtrips:%d\0A\00", align 1
@TEGRA124_SOCTHERM_SENSOR_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @soctherm_thermtrips_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_thermtrips_parse(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_soctherm*, align 8
  %6 = alloca %struct.tsensor_group_thermtrips*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.tegra_soctherm* @dev_get_drvdata(%struct.device* %15)
  store %struct.tegra_soctherm* %16, %struct.tegra_soctherm** %5, align 8
  %17 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.tsensor_group_thermtrips*, %struct.tsensor_group_thermtrips** %20, align 8
  store %struct.tsensor_group_thermtrips* %21, %struct.tsensor_group_thermtrips** %6, align 8
  %22 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %5, align 8
  %23 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %7, align 4
  %28 = load %struct.tsensor_group_thermtrips*, %struct.tsensor_group_thermtrips** %6, align 8
  %29 = icmp ne %struct.tsensor_group_thermtrips* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %114

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @of_property_count_u32_elems(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_info(%struct.device* %41, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %2, align 4
  br label %114

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @min(i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i64* @devm_kcalloc(%struct.device* %49, i32 %50, i32 8, i32 %51)
  store i64* %52, i64** %8, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %114

58:                                               ; preds = %44
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64*, i64** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @of_property_read_u32_array(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %2, align 4
  br label %114

72:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %110, %72
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  %78 = load i64*, i64** %8, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TEGRA124_SOCTHERM_SENSOR_NUM, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %110

86:                                               ; preds = %77
  %87 = load i64*, i64** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.tsensor_group_thermtrips*, %struct.tsensor_group_thermtrips** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.tsensor_group_thermtrips, %struct.tsensor_group_thermtrips* %92, i64 %94
  %96 = getelementptr inbounds %struct.tsensor_group_thermtrips, %struct.tsensor_group_thermtrips* %95, i32 0, i32 1
  store i64 %91, i64* %96, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.tsensor_group_thermtrips*, %struct.tsensor_group_thermtrips** %6, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.tsensor_group_thermtrips, %struct.tsensor_group_thermtrips* %103, i64 %105
  %107 = getelementptr inbounds %struct.tsensor_group_thermtrips, %struct.tsensor_group_thermtrips* %106, i32 0, i32 0
  store i64 %102, i64* %107, align 8
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %86, %85
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %10, align 4
  br label %73

113:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %67, %55, %40, %30
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.tegra_soctherm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @of_property_count_u32_elems(i32, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_array(i32, i8*, i64*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
