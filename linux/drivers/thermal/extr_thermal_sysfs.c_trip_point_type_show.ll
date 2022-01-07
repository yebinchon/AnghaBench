; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_trip_point_type_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_trip_point_type_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.thermal_zone_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.thermal_zone_device*, i32, i32*)* }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"trip_point_%d_type\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"critical\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hot\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"passive\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"active\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @trip_point_type_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trip_point_type_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.thermal_zone_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.thermal_zone_device* @to_thermal_zone(%struct.device* %12)
  store %struct.thermal_zone_device* %13, %struct.thermal_zone_device** %8, align 8
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %15 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %17, align 8
  %19 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %3
  %24 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %25 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @sscanf(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %10)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %63

33:                                               ; preds = %23
  %34 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %35 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %37, align 8
  %39 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 %38(%struct.thermal_zone_device* %39, i32 %40, i32* %9)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %4, align 4
  br label %63

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %60 [
    i32 130, label %48
    i32 129, label %51
    i32 128, label %54
    i32 131, label %57
  ]

48:                                               ; preds = %46
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %4, align 4
  br label %63

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %46
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %56, i32* %4, align 4
  br label %63

57:                                               ; preds = %46
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %46
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %57, %54, %51, %48, %44, %30, %20
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.thermal_zone_device* @to_thermal_zone(%struct.device*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
