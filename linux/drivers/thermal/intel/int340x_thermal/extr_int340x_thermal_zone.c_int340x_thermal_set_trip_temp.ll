; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_set_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_set_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.int34x_thermal_zone* }
%struct.int34x_thermal_zone = type { i32*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { {}* }

@.str = private unnamed_addr constant [6 x i8] c"PAT%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32)* @int340x_thermal_set_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int340x_thermal_set_trip_temp(%struct.thermal_zone_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.int34x_thermal_zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %12 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 0
  %13 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %12, align 8
  store %struct.int34x_thermal_zone* %13, %struct.int34x_thermal_zone** %8, align 8
  %14 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %15 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %20 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.thermal_zone_device*, i32, i32)**
  %24 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32)* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %28 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.thermal_zone_device*, i32, i32)**
  %32 = load i32 (%struct.thermal_zone_device*, i32, i32)*, i32 (%struct.thermal_zone_device*, i32, i32)** %31, align 8
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %32(%struct.thermal_zone_device* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %64

37:                                               ; preds = %18, %3
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @snprintf(i8* %38, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %42 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @MILLICELSIUS_TO_DECI_KELVIN(i32 %47)
  %49 = call i32 @acpi_execute_simple_method(i32 %45, i8* %46, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %64

56:                                               ; preds = %37
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %59 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %56, %53, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @acpi_execute_simple_method(i32, i8*, i32) #1

declare dso_local i32 @MILLICELSIUS_TO_DECI_KELVIN(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
