; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_trip_point_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal_sysfs.c_trip_point_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.thermal_zone_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.thermal_zone_device*, i32, i32)* }

@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"trip_point_%d_hyst\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @trip_point_hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trip_point_hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.thermal_zone_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.thermal_zone_device* @to_thermal_zone(%struct.device* %14)
  store %struct.thermal_zone_device* %15, %struct.thermal_zone_device** %10, align 8
  %16 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %17 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %68

25:                                               ; preds = %4
  %26 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %27 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sscanf(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %11)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %68

35:                                               ; preds = %25
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @kstrtoint(i8* %36, i32 10, i32* %13)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %68

42:                                               ; preds = %35
  %43 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %44 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %46, align 8
  %48 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 %47(%struct.thermal_zone_device* %48, i32 %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %42
  %55 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %10, align 8
  %56 = call i32 @thermal_zone_set_trips(%struct.thermal_zone_device* %55)
  br label %57

57:                                               ; preds = %54, %42
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  br label %65

63:                                               ; preds = %57
  %64 = load i64, i64* %9, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i64 [ %62, %60 ], [ %64, %63 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %39, %32, %22
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.thermal_zone_device* @to_thermal_zone(%struct.device*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @thermal_zone_set_trips(%struct.thermal_zone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
