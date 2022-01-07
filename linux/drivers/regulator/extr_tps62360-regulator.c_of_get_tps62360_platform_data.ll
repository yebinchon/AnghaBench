; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps62360-regulator.c_of_get_tps62360_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps62360-regulator.c_of_get_tps62360_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps62360_regulator_platform_data = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Not able to get OF regulator init data\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"vsel0-gpio\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"vsel1-gpio\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ti,vsel0-state-high\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ti,vsel1-state-high\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ti,enable-pull-down\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"ti,enable-vout-discharge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tps62360_regulator_platform_data* (%struct.device*, %struct.regulator_desc*)* @of_get_tps62360_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tps62360_regulator_platform_data* @of_get_tps62360_platform_data(%struct.device* %0, %struct.regulator_desc* %1) #0 {
  %3 = alloca %struct.tps62360_regulator_platform_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.tps62360_regulator_platform_data*, align 8
  %7 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tps62360_regulator_platform_data* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  store %struct.tps62360_regulator_platform_data* %13, %struct.tps62360_regulator_platform_data** %6, align 8
  %14 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  %15 = icmp ne %struct.tps62360_regulator_platform_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.tps62360_regulator_platform_data* null, %struct.tps62360_regulator_platform_data** %3, align 8
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  %22 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %23 = call i32 @of_get_regulator_init_data(%struct.device* %18, %struct.device_node* %21, %struct.regulator_desc* %22)
  %24 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  %25 = getelementptr inbounds %struct.tps62360_regulator_platform_data, %struct.tps62360_regulator_platform_data* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  %27 = getelementptr inbounds %struct.tps62360_regulator_platform_data, %struct.tps62360_regulator_platform_data* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.tps62360_regulator_platform_data* null, %struct.tps62360_regulator_platform_data** %3, align 8
  br label %71

33:                                               ; preds = %17
  %34 = load %struct.device_node*, %struct.device_node** %7, align 8
  %35 = call i8* @of_get_named_gpio(%struct.device_node* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %36 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  %37 = getelementptr inbounds %struct.tps62360_regulator_platform_data, %struct.tps62360_regulator_platform_data* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.device_node*, %struct.device_node** %7, align 8
  %39 = call i8* @of_get_named_gpio(%struct.device_node* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %40 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  %41 = getelementptr inbounds %struct.tps62360_regulator_platform_data, %struct.tps62360_regulator_platform_data* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.device_node*, %struct.device_node** %7, align 8
  %43 = call i64 @of_find_property(%struct.device_node* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  %47 = getelementptr inbounds %struct.tps62360_regulator_platform_data, %struct.tps62360_regulator_platform_data* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %33
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = call i64 @of_find_property(%struct.device_node* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  %54 = getelementptr inbounds %struct.tps62360_regulator_platform_data, %struct.tps62360_regulator_platform_data* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.device_node*, %struct.device_node** %7, align 8
  %57 = call i64 @of_find_property(%struct.device_node* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  %61 = getelementptr inbounds %struct.tps62360_regulator_platform_data, %struct.tps62360_regulator_platform_data* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %55
  %63 = load %struct.device_node*, %struct.device_node** %7, align 8
  %64 = call i64 @of_find_property(%struct.device_node* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  %68 = getelementptr inbounds %struct.tps62360_regulator_platform_data, %struct.tps62360_regulator_platform_data* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %6, align 8
  store %struct.tps62360_regulator_platform_data* %70, %struct.tps62360_regulator_platform_data** %3, align 8
  br label %71

71:                                               ; preds = %69, %30, %16
  %72 = load %struct.tps62360_regulator_platform_data*, %struct.tps62360_regulator_platform_data** %3, align 8
  ret %struct.tps62360_regulator_platform_data* %72
}

declare dso_local %struct.tps62360_regulator_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_get_regulator_init_data(%struct.device*, %struct.device_node*, %struct.regulator_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
