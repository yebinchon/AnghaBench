; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_regulator_virtual_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_regulator_virtual_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.virtual_consumer_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to obtain supply '%s': %d\0A\00", align 1
@regulator_virtual_attr_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to create attribute group: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @regulator_virtual_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_virtual_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.virtual_consumer_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call i8* @dev_get_platdata(%struct.TYPE_5__* %8)
  store i8* %9, i8** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.virtual_consumer_data* @devm_kzalloc(%struct.TYPE_5__* %11, i32 12, i32 %12)
  store %struct.virtual_consumer_data* %13, %struct.virtual_consumer_data** %5, align 8
  %14 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %15 = icmp eq %struct.virtual_consumer_data* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %68

19:                                               ; preds = %1
  %20 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %21 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %20, i32 0, i32 2
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @devm_regulator_get(%struct.TYPE_5__* %24, i8* %25)
  %27 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %28 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %30 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %19
  %35 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %36 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %68

45:                                               ; preds = %19
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @sysfs_create_group(i32* %48, i32* @regulator_virtual_attr_group)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %68

58:                                               ; preds = %45
  %59 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %60 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regulator_get_mode(i32 %61)
  %63 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %64 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %5, align 8
  %67 = call i32 @platform_set_drvdata(%struct.platform_device* %65, %struct.virtual_consumer_data* %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %58, %52, %34, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i8* @dev_get_platdata(%struct.TYPE_5__*) #1

declare dso_local %struct.virtual_consumer_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @regulator_get_mode(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.virtual_consumer_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
