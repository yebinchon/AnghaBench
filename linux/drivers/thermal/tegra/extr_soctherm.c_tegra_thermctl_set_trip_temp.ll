; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tegra_thermctl_set_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_tegra_thermctl_set_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_thermctl_zone = type { %struct.device*, %struct.tegra_tsensor_group*, %struct.tegra_soctherm*, %struct.thermal_zone_device* }
%struct.device = type { i32 }
%struct.tegra_tsensor_group = type { i32 }
%struct.tegra_soctherm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.thermal_cooling_device*, i32 }
%struct.thermal_cooling_device = type { i32 }
%struct.thermal_zone_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.thermal_zone_device*, i32, i32*)* }
%struct.soctherm_throt_cfg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THERMAL_TRIP_CRITICAL = common dso_local global i32 0, align 4
@min_low_temp = common dso_local global i64 0, align 8
@THERMAL_TRIP_HOT = common dso_local global i32 0, align 4
@THROTTLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @tegra_thermctl_set_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_thermctl_set_trip_temp(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_thermctl_zone*, align 8
  %9 = alloca %struct.thermal_zone_device*, align 8
  %10 = alloca %struct.tegra_soctherm*, align 8
  %11 = alloca %struct.tegra_tsensor_group*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.thermal_cooling_device*, align 8
  %17 = alloca %struct.soctherm_throt_cfg*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.tegra_thermctl_zone*
  store %struct.tegra_thermctl_zone* %19, %struct.tegra_thermctl_zone** %8, align 8
  %20 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %8, align 8
  %21 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %20, i32 0, i32 3
  %22 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %21, align 8
  store %struct.thermal_zone_device* %22, %struct.thermal_zone_device** %9, align 8
  %23 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %8, align 8
  %24 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %23, i32 0, i32 2
  %25 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %24, align 8
  store %struct.tegra_soctherm* %25, %struct.tegra_soctherm** %10, align 8
  %26 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %8, align 8
  %27 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %26, i32 0, i32 1
  %28 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %27, align 8
  store %struct.tegra_tsensor_group* %28, %struct.tegra_tsensor_group** %11, align 8
  %29 = load %struct.tegra_thermctl_zone*, %struct.tegra_thermctl_zone** %8, align 8
  %30 = getelementptr inbounds %struct.tegra_thermctl_zone, %struct.tegra_thermctl_zone* %29, i32 0, i32 0
  %31 = load %struct.device*, %struct.device** %30, align 8
  store %struct.device* %31, %struct.device** %12, align 8
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %33 = icmp ne %struct.thermal_zone_device* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %121

37:                                               ; preds = %3
  %38 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %39 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %41, align 8
  %43 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 %42(%struct.thermal_zone_device* %43, i32 %44, i32* %13)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %4, align 4
  br label %121

50:                                               ; preds = %37
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load i64, i64* @min_low_temp, align 8
  %56 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %10, align 8
  %57 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %11, align 8
  %58 = getelementptr inbounds %struct.tegra_tsensor_group, %struct.tegra_tsensor_group* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @tsensor_group_thermtrip_get(%struct.tegra_soctherm* %56, i32 %59)
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.device*, %struct.device** %12, align 8
  %64 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @thermtrip_program(%struct.device* %63, %struct.tegra_tsensor_group* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %121

67:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %121

68:                                               ; preds = %50
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @THERMAL_TRIP_HOT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %119

72:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %115, %72
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @THROTTLE_SIZE, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %118

77:                                               ; preds = %73
  %78 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %10, align 8
  %79 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %115

88:                                               ; preds = %77
  %89 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %10, align 8
  %90 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %95, align 8
  store %struct.thermal_cooling_device* %96, %struct.thermal_cooling_device** %16, align 8
  %97 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %9, align 8
  %98 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %16, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @get_thermal_instance(%struct.thermal_zone_device* %97, %struct.thermal_cooling_device* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %88
  %103 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %10, align 8
  %104 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %16, align 8
  %105 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.soctherm_throt_cfg* @find_throttle_cfg_by_name(%struct.tegra_soctherm* %103, i32 %106)
  store %struct.soctherm_throt_cfg* %107, %struct.soctherm_throt_cfg** %17, align 8
  br label %109

108:                                              ; preds = %88
  br label %115

109:                                              ; preds = %102
  %110 = load %struct.device*, %struct.device** %12, align 8
  %111 = load %struct.tegra_tsensor_group*, %struct.tegra_tsensor_group** %11, align 8
  %112 = load %struct.soctherm_throt_cfg*, %struct.soctherm_throt_cfg** %17, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @throttrip_program(%struct.device* %110, %struct.tegra_tsensor_group* %111, %struct.soctherm_throt_cfg* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  br label %121

115:                                              ; preds = %108, %87
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %73

118:                                              ; preds = %73
  br label %119

119:                                              ; preds = %118, %68
  br label %120

120:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %109, %67, %62, %48, %34
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @tsensor_group_thermtrip_get(%struct.tegra_soctherm*, i32) #1

declare dso_local i32 @thermtrip_program(%struct.device*, %struct.tegra_tsensor_group*, i32) #1

declare dso_local i64 @get_thermal_instance(%struct.thermal_zone_device*, %struct.thermal_cooling_device*, i32) #1

declare dso_local %struct.soctherm_throt_cfg* @find_throttle_cfg_by_name(%struct.tegra_soctherm*, i32) #1

declare dso_local i32 @throttrip_program(%struct.device*, %struct.tegra_tsensor_group*, %struct.soctherm_throt_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
