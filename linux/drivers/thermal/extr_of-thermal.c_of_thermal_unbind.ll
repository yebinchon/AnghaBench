; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_of_thermal_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.__thermal_zone* }
%struct.__thermal_zone = type { i32, %struct.__thermal_bind_params* }
%struct.__thermal_bind_params = type { i32, i32, %struct.__thermal_cooling_bind_param* }
%struct.__thermal_cooling_bind_param = type { i64 }
%struct.thermal_cooling_device = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*)* @of_thermal_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_thermal_unbind(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca %struct.__thermal_zone*, align 8
  %7 = alloca %struct.__thermal_bind_params*, align 8
  %8 = alloca %struct.__thermal_cooling_bind_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %5, align 8
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %13 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 0
  %14 = load %struct.__thermal_zone*, %struct.__thermal_zone** %13, align 8
  store %struct.__thermal_zone* %14, %struct.__thermal_zone** %6, align 8
  %15 = load %struct.__thermal_zone*, %struct.__thermal_zone** %6, align 8
  %16 = icmp ne %struct.__thermal_zone* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.__thermal_zone*, %struct.__thermal_zone** %6, align 8
  %19 = call i64 @IS_ERR(%struct.__thermal_zone* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %75, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.__thermal_zone*, %struct.__thermal_zone** %6, align 8
  %28 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %25
  %32 = load %struct.__thermal_zone*, %struct.__thermal_zone** %6, align 8
  %33 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %32, i32 0, i32 1
  %34 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %34, i64 %36
  store %struct.__thermal_bind_params* %37, %struct.__thermal_bind_params** %7, align 8
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %71, %31
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %7, align 8
  %41 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %7, align 8
  %46 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %45, i32 0, i32 2
  %47 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %47, i64 %49
  store %struct.__thermal_cooling_bind_param* %50, %struct.__thermal_cooling_bind_param** %8, align 8
  %51 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %8, align 8
  %52 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %55 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %44
  %59 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %60 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %7, align 8
  %61 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %64 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %59, i32 %62, %struct.thermal_cooling_device* %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %3, align 4
  br label %79

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %38

74:                                               ; preds = %38
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %25

78:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %67, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @IS_ERR(%struct.__thermal_zone*) #1

declare dso_local i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
