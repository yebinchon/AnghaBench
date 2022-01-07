; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_userspace-consumer.c_regulator_userspace_consumer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_userspace-consumer.c_regulator_userspace_consumer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.regulator_userspace_consumer_data = type { i64, i32, i32, i32 }
%struct.userspace_consumer_data = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to get supplies: %d\0A\00", align 1
@attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to set initial state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @regulator_userspace_consumer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_userspace_consumer_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regulator_userspace_consumer_data*, align 8
  %5 = alloca %struct.userspace_consumer_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.regulator_userspace_consumer_data* @dev_get_platdata(%struct.TYPE_5__* %8)
  store %struct.regulator_userspace_consumer_data* %9, %struct.regulator_userspace_consumer_data** %4, align 8
  %10 = load %struct.regulator_userspace_consumer_data*, %struct.regulator_userspace_consumer_data** %4, align 8
  %11 = icmp ne %struct.regulator_userspace_consumer_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %106

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.userspace_consumer_data* @devm_kzalloc(%struct.TYPE_5__* %17, i32 24, i32 %18)
  store %struct.userspace_consumer_data* %19, %struct.userspace_consumer_data** %5, align 8
  %20 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %21 = icmp eq %struct.userspace_consumer_data* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %106

25:                                               ; preds = %15
  %26 = load %struct.regulator_userspace_consumer_data*, %struct.regulator_userspace_consumer_data** %4, align 8
  %27 = getelementptr inbounds %struct.regulator_userspace_consumer_data, %struct.regulator_userspace_consumer_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %30 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.regulator_userspace_consumer_data*, %struct.regulator_userspace_consumer_data** %4, align 8
  %32 = getelementptr inbounds %struct.regulator_userspace_consumer_data, %struct.regulator_userspace_consumer_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %35 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.regulator_userspace_consumer_data*, %struct.regulator_userspace_consumer_data** %4, align 8
  %37 = getelementptr inbounds %struct.regulator_userspace_consumer_data, %struct.regulator_userspace_consumer_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %40 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %42 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %41, i32 0, i32 3
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %47 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %50 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @devm_regulator_bulk_get(%struct.TYPE_5__* %45, i32 %48, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %25
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_err(%struct.TYPE_5__* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %106

61:                                               ; preds = %25
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = call i32 @sysfs_create_group(i32* %64, i32* @attr_group)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %106

70:                                               ; preds = %61
  %71 = load %struct.regulator_userspace_consumer_data*, %struct.regulator_userspace_consumer_data** %4, align 8
  %72 = getelementptr inbounds %struct.regulator_userspace_consumer_data, %struct.regulator_userspace_consumer_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %77 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %80 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @regulator_bulk_enable(i32 %78, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @dev_err(%struct.TYPE_5__* %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %100

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %70
  %92 = load %struct.regulator_userspace_consumer_data*, %struct.regulator_userspace_consumer_data** %4, align 8
  %93 = getelementptr inbounds %struct.regulator_userspace_consumer_data, %struct.regulator_userspace_consumer_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %96 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %5, align 8
  %99 = call i32 @platform_set_drvdata(%struct.platform_device* %97, %struct.userspace_consumer_data* %98)
  store i32 0, i32* %2, align 4
  br label %106

100:                                              ; preds = %85
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = call i32 @sysfs_remove_group(i32* %103, i32* @attr_group)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %100, %91, %68, %55, %22, %12
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.regulator_userspace_consumer_data* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local %struct.userspace_consumer_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.userspace_consumer_data*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
