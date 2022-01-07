; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_attr_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-hotplug.c_mlxreg_hotplug_attr_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mlxreg_hotplug_priv_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlxreg_core_hotplug_platform_data = type { %struct.mlxreg_core_item* }
%struct.mlxreg_core_item = type { i64, i64, %struct.mlxreg_core_data* }
%struct.mlxreg_core_data = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mlxreg_hotplug_attr_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_hotplug_attr_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlxreg_hotplug_priv_data*, align 8
  %9 = alloca %struct.mlxreg_core_hotplug_platform_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlxreg_core_item*, align 8
  %13 = alloca %struct.mlxreg_core_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.mlxreg_hotplug_priv_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.mlxreg_hotplug_priv_data* %17, %struct.mlxreg_hotplug_priv_data** %8, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %19 = call %struct.TYPE_4__* @to_sensor_dev_attr_2(%struct.device_attribute* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %23 = call %struct.TYPE_4__* @to_sensor_dev_attr_2(%struct.device_attribute* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %8, align 8
  %27 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call %struct.mlxreg_core_hotplug_platform_data* @dev_get_platdata(i32* %29)
  store %struct.mlxreg_core_hotplug_platform_data* %30, %struct.mlxreg_core_hotplug_platform_data** %9, align 8
  %31 = load %struct.mlxreg_core_hotplug_platform_data*, %struct.mlxreg_core_hotplug_platform_data** %9, align 8
  %32 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, %struct.mlxreg_core_hotplug_platform_data* %31, i32 0, i32 0
  %33 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %33, i64 %35
  store %struct.mlxreg_core_item* %36, %struct.mlxreg_core_item** %12, align 8
  %37 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %12, align 8
  %38 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %37, i32 0, i32 2
  %39 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %39, i64 %41
  store %struct.mlxreg_core_data* %42, %struct.mlxreg_core_data** %13, align 8
  %43 = load %struct.mlxreg_hotplug_priv_data*, %struct.mlxreg_hotplug_priv_data** %8, align 8
  %44 = getelementptr inbounds %struct.mlxreg_hotplug_priv_data, %struct.mlxreg_hotplug_priv_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %13, align 8
  %47 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regmap_read(i32 %45, i32 %48, i32* %14)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %3
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %4, align 4
  br label %94

54:                                               ; preds = %3
  %55 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %12, align 8
  %56 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %13, align 8
  %61 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %14, align 4
  br label %90

65:                                               ; preds = %54
  %66 = load %struct.mlxreg_core_item*, %struct.mlxreg_core_item** %12, align 8
  %67 = getelementptr inbounds %struct.mlxreg_core_item, %struct.mlxreg_core_item* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load i32, i32* %14, align 4
  %72 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %13, align 8
  %73 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %14, align 4
  br label %89

79:                                               ; preds = %65
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %13, align 8
  %82 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %79, %70
  br label %90

90:                                               ; preds = %89, %59
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @sprintf(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %52
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.mlxreg_hotplug_priv_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_4__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.mlxreg_core_hotplug_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
