; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_get_trip_hyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_get_trip_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.int34x_thermal_zone* }
%struct.int34x_thermal_zone = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { {}* }

@.str = private unnamed_addr constant [5 x i8] c"GTSH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @int340x_thermal_get_trip_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int340x_thermal_get_trip_hyst(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.int34x_thermal_zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %12 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %11, i32 0, i32 0
  %13 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %12, align 8
  store %struct.int34x_thermal_zone* %13, %struct.int34x_thermal_zone** %8, align 8
  %14 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %15 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %20 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.thermal_zone_device*, i32, i32*)**
  %24 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %23, align 8
  %25 = icmp ne i32 (%struct.thermal_zone_device*, i32, i32*)* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %28 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.thermal_zone_device*, i32, i32*)**
  %32 = load i32 (%struct.thermal_zone_device*, i32, i32*)*, i32 (%struct.thermal_zone_device*, i32, i32*)** %31, align 8
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 %32(%struct.thermal_zone_device* %33, i32 %34, i32* %35)
  store i32 %36, i32* %4, align 4
  br label %55

37:                                               ; preds = %18, %3
  %38 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %8, align 8
  %39 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @acpi_evaluate_integer(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %10)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32*, i32** %7, align 8
  store i32 0, i32* %48, align 4
  br label %54

49:                                               ; preds = %37
  %50 = load i64, i64* %10, align 8
  %51 = mul i64 %50, 100
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %47
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %26
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
