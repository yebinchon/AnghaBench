; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_get_regulator_dt_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_as3722-regulator.c_as3722_get_regulator_dt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.as3722_regulators = type { %struct.as3722_regulator_config_data* }
%struct.as3722_regulator_config_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Device is not having regulators node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@as3722_regulator_matches = common dso_local global %struct.TYPE_10__* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Parsing of regulator node failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ams,ext-control\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"ext-control have invalid option: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"ams,enable-tracking\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.as3722_regulators*)* @as3722_get_regulator_dt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_get_regulator_dt_data(%struct.platform_device* %0, %struct.as3722_regulators* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.as3722_regulators*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.as3722_regulator_config_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.as3722_regulators* %1, %struct.as3722_regulators** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.device_node* @of_get_child_by_name(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %18, %struct.device_node** %6, align 8
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %2
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store %struct.device_node* %28, %struct.device_node** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @as3722_regulator_matches, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @as3722_regulator_matches, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %36)
  %38 = call i32 @of_regulator_match(%struct.TYPE_9__* %33, %struct.device_node* %34, %struct.TYPE_10__* %35, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %111

49:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %107, %49
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @as3722_regulator_matches, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %110

55:                                               ; preds = %50
  %56 = load %struct.as3722_regulators*, %struct.as3722_regulators** %5, align 8
  %57 = getelementptr inbounds %struct.as3722_regulators, %struct.as3722_regulators* %56, i32 0, i32 0
  %58 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %58, i64 %60
  store %struct.as3722_regulator_config_data* %61, %struct.as3722_regulator_config_data** %7, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @as3722_regulator_matches, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %7, align 8
  %69 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @as3722_regulator_matches, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.device_node*, %struct.device_node** %74, align 8
  store %struct.device_node* %75, %struct.device_node** %11, align 8
  %76 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %7, align 8
  %77 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %55
  %81 = load %struct.device_node*, %struct.device_node** %11, align 8
  %82 = icmp ne %struct.device_node* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80, %55
  br label %107

84:                                               ; preds = %80
  %85 = load %struct.device_node*, %struct.device_node** %11, align 8
  %86 = call i32 @of_property_read_u32(%struct.device_node* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 3
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %7, align 8
  %95 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %101

96:                                               ; preds = %89
  %97 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @dev_warn(%struct.TYPE_9__* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %92
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.device_node*, %struct.device_node** %11, align 8
  %104 = call i32 @of_property_read_bool(%struct.device_node* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.as3722_regulator_config_data*, %struct.as3722_regulator_config_data** %7, align 8
  %106 = getelementptr inbounds %struct.as3722_regulator_config_data, %struct.as3722_regulator_config_data* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %83
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %50

110:                                              ; preds = %50
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %43, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @of_regulator_match(%struct.TYPE_9__*, %struct.device_node*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
