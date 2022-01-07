; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tegra_soctherm_set_hwtrips.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tegra_soctherm_set_hwtrips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_tsensor_group = type { i32, i32 }
%struct.thermal_zone_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.thermal_zone_device*, i32*)* }
%struct.tegra_soctherm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.thermal_cooling_device*, i32 }
%struct.thermal_cooling_device = type { i32 }
%struct.soctherm_throt_cfg = type { i32 }

@min_low_temp = common dso_local global i32 0, align 4
@max_high_temp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"thermtrip: %s: error during enable\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"thermtrip: will shut down when %s reaches %d mC\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"throttrip: %s: missing hot temperature\0A\00", align 1
@THROTTLE_OC1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"throttrip: %s: error during enable\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"throttrip: will throttle when %s reaches %d mC\0A\00", align 1
@THROTTLE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"throttrip: %s: missing throttle cdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tegra_tsensor_group*, %struct.thermal_zone_device*)* @tegra_soctherm_set_hwtrips to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_soctherm_set_hwtrips(%struct.device* %0, %struct.tegra_tsensor_group* %1, %struct.thermal_zone_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.tegra_tsensor_group*, align 8
  %7 = alloca %struct.thermal_zone_device*, align 8
  %8 = alloca %struct.tegra_soctherm*, align 8
  %9 = alloca %struct.soctherm_throt_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.thermal_cooling_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.tegra_tsensor_group* %1, %struct.tegra_tsensor_group** %6, align 8
  store %struct.thermal_zone_device* %2, %struct.thermal_zone_device** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.tegra_soctherm* @dev_get_drvdata(%struct.device* %15)
  store %struct.tegra_soctherm* %16, %struct.tegra_soctherm** %8, align 8
  %17 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %18 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %19 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @tsensor_group_thermtrip_get(%struct.tegra_soctherm* %17, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* @min_low_temp, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %3
  %26 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %7, align 8
  %27 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64 (%struct.thermal_zone_device*, i32*)*, i64 (%struct.thermal_zone_device*, i32*)** %29, align 8
  %31 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %7, align 8
  %32 = call i64 %30(%struct.thermal_zone_device* %31, i32* %12)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @max_high_temp, align 4
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %34, %25
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @thermtrip_program(%struct.device* %38, %struct.tegra_tsensor_group* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %47 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %4, align 4
  br label %141

51:                                               ; preds = %37
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %54 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %7, align 8
  %59 = call i32 @get_hot_temp(%struct.thermal_zone_device* %58, i32* %11, i32* %12)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %65 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  store i32 0, i32* %4, align 4
  br label %141

68:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %127, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @THROTTLE_OC1, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %130

73:                                               ; preds = %69
  %74 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %75 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  br label %127

84:                                               ; preds = %73
  %85 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %86 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %91, align 8
  store %struct.thermal_cooling_device* %92, %struct.thermal_cooling_device** %14, align 8
  %93 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %7, align 8
  %94 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %14, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i64 @get_thermal_instance(%struct.thermal_zone_device* %93, %struct.thermal_cooling_device* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %84
  %99 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %8, align 8
  %100 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %14, align 8
  %101 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.soctherm_throt_cfg* @find_throttle_cfg_by_name(%struct.tegra_soctherm* %99, i32 %102)
  store %struct.soctherm_throt_cfg* %103, %struct.soctherm_throt_cfg** %9, align 8
  br label %105

104:                                              ; preds = %84
  br label %127

105:                                              ; preds = %98
  %106 = load %struct.device*, %struct.device** %5, align 8
  %107 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %108 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %9, align 8
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @throttrip_program(%struct.device* %106, %struct.tegra_tsensor_group* %107, %struct.soctherm_throt_cfg* %108, i32 %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %116 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %4, align 4
  br label %141

120:                                              ; preds = %105
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %123 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %121, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %125)
  br label %130

127:                                              ; preds = %104, %83
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %69

130:                                              ; preds = %120, %69
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @THROTTLE_SIZE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.device*, %struct.device** %5, align 8
  %136 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %6, align 8
  %137 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (%struct.device*, i8*, i32, ...) @dev_info(%struct.device* %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %134, %130
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %113, %62, %44
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local %struct.tegra_soctherm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tsensor_group_thermtrip_get(%struct.tegra_soctherm*, i32) #1

declare dso_local i32 @thermtrip_program(%struct.device*, %struct.tegra_tsensor_group*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @get_hot_temp(%struct.thermal_zone_device*, i32*, i32*) #1

declare dso_local i64 @get_thermal_instance(%struct.thermal_zone_device*, %struct.thermal_cooling_device*, i32) #1

declare dso_local %struct.soctherm_throt_cfg* @find_throttle_cfg_by_name(%struct.tegra_soctherm*, i32) #1

declare dso_local i32 @throttrip_program(%struct.device*, %struct.tegra_tsensor_group*, %struct.soctherm_throt_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
