; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_thermal_zone_of_add_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_thermal_zone_of_add_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { i32, %struct.TYPE_2__*, %struct.__thermal_zone* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.__thermal_zone = type { i8*, %struct.thermal_zone_of_device_ops* }
%struct.device_node = type { i32 }
%struct.thermal_zone_of_device_ops = type { i64, i64 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@of_thermal_get_temp = common dso_local global i32 0, align 4
@of_thermal_get_trend = common dso_local global i32 0, align 4
@of_thermal_set_trips = common dso_local global i32 0, align 4
@of_thermal_set_emul_temp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thermal_zone_device* (%struct.device_node*, %struct.device_node*, i8*, %struct.thermal_zone_of_device_ops*)* @thermal_zone_of_add_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thermal_zone_device* @thermal_zone_of_add_sensor(%struct.device_node* %0, %struct.device_node* %1, i8* %2, %struct.thermal_zone_of_device_ops* %3) #0 {
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.thermal_zone_of_device_ops*, align 8
  %10 = alloca %struct.thermal_zone_device*, align 8
  %11 = alloca %struct.__thermal_zone*, align 8
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.thermal_zone_of_device_ops* %3, %struct.thermal_zone_of_device_ops** %9, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = getelementptr inbounds %struct.device_node, %struct.device_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.thermal_zone_device* @thermal_zone_get_zone_by_name(i32 %14)
  store %struct.thermal_zone_device* %15, %struct.thermal_zone_device** %10, align 8
  %16 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %17 = call i64 @IS_ERR(%struct.thermal_zone_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @EPROBE_DEFER, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.thermal_zone_device* @ERR_PTR(i32 %21)
  store %struct.thermal_zone_device* %22, %struct.thermal_zone_device** %5, align 8
  br label %79

23:                                               ; preds = %4
  %24 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %25 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %24, i32 0, i32 2
  %26 = load %struct.__thermal_zone*, %struct.__thermal_zone** %25, align 8
  store %struct.__thermal_zone* %26, %struct.__thermal_zone** %11, align 8
  %27 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %9, align 8
  %28 = icmp ne %struct.thermal_zone_of_device_ops* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.thermal_zone_device* @ERR_PTR(i32 %31)
  store %struct.thermal_zone_device* %32, %struct.thermal_zone_device** %5, align 8
  br label %79

33:                                               ; preds = %23
  %34 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %35 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %9, align 8
  %38 = load %struct.__thermal_zone*, %struct.__thermal_zone** %11, align 8
  %39 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %38, i32 0, i32 1
  store %struct.thermal_zone_of_device_ops* %37, %struct.thermal_zone_of_device_ops** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.__thermal_zone*, %struct.__thermal_zone** %11, align 8
  %42 = getelementptr inbounds %struct.__thermal_zone, %struct.__thermal_zone* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @of_thermal_get_temp, align 4
  %44 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %45 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @of_thermal_get_trend, align 4
  %49 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %50 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 4
  %53 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %9, align 8
  %54 = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %33
  %58 = load i32, i32* @of_thermal_set_trips, align 4
  %59 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %60 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %33
  %64 = load %struct.thermal_zone_of_device_ops*, %struct.thermal_zone_of_device_ops** %9, align 8
  %65 = getelementptr inbounds %struct.thermal_zone_of_device_ops, %struct.thermal_zone_of_device_ops* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @of_thermal_set_emul_temp, align 4
  %70 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %71 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %76 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  store %struct.thermal_zone_device* %78, %struct.thermal_zone_device** %5, align 8
  br label %79

79:                                               ; preds = %74, %29, %19
  %80 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  ret %struct.thermal_zone_device* %80
}

declare dso_local %struct.thermal_zone_device* @thermal_zone_get_zone_by_name(i32) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local %struct.thermal_zone_device* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
