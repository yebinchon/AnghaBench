; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_get_zone_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/int340x_thermal/extr_int340x_thermal_zone.c_int340x_thermal_get_zone_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.int34x_thermal_zone* }
%struct.int34x_thermal_zone = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { {}* }

@.str = private unnamed_addr constant [5 x i8] c"_TMP\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @int340x_thermal_get_zone_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int340x_thermal_get_zone_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.int34x_thermal_zone*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %11 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %10, i32 0, i32 0
  %12 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %11, align 8
  store %struct.int34x_thermal_zone* %12, %struct.int34x_thermal_zone** %6, align 8
  %13 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %14 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %19 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.thermal_zone_device*, i32*)**
  %23 = load i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32*)** %22, align 8
  %24 = icmp ne i32 (%struct.thermal_zone_device*, i32*)* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %27 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.thermal_zone_device*, i32*)**
  %31 = load i32 (%struct.thermal_zone_device*, i32*)*, i32 (%struct.thermal_zone_device*, i32*)** %30, align 8
  %32 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 %31(%struct.thermal_zone_device* %32, i32* %33)
  store i32 %34, i32* %3, align 4
  br label %75

35:                                               ; preds = %17, %2
  %36 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %37 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @acpi_evaluate_integer(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %7)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %75

48:                                               ; preds = %35
  %49 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %50 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.int34x_thermal_zone*, %struct.int34x_thermal_zone** %6, align 8
  %55 = getelementptr inbounds %struct.int34x_thermal_zone, %struct.int34x_thermal_zone* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @acpi_lpat_raw_to_temp(i64 %56, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %75

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 10
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %74

70:                                               ; preds = %48
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @DECI_KELVIN_TO_MILLICELSIUS(i64 %71)
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %64
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %62, %45, %25
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_lpat_raw_to_temp(i64, i32) #1

declare dso_local i32 @DECI_KELVIN_TO_MILLICELSIUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
