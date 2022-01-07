; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_sys_get_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_sys_get_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.zone_device* }
%struct.zone_device = type { i64, i32 }

@MAX_NUMBER_OF_TRIPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@THERM_MASK_THRESHOLD1 = common dso_local global i64 0, align 8
@THERM_SHIFT_THRESHOLD1 = common dso_local global i64 0, align 8
@THERM_MASK_THRESHOLD0 = common dso_local global i64 0, align 8
@THERM_SHIFT_THRESHOLD0 = common dso_local global i64 0, align 8
@MSR_IA32_PACKAGE_THERM_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sys_get_trip_temp %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32*)* @sys_get_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_get_trip_temp(%struct.thermal_zone_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.zone_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %16 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %15, i32 0, i32 0
  %17 = load %struct.zone_device*, %struct.zone_device** %16, align 8
  store %struct.zone_device* %17, %struct.zone_device** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_NUMBER_OF_TRIPS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %66

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @THERM_MASK_THRESHOLD1, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* @THERM_SHIFT_THRESHOLD1, align 8
  store i64 %29, i64* %11, align 8
  br label %33

30:                                               ; preds = %24
  %31 = load i64, i64* @THERM_MASK_THRESHOLD0, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* @THERM_SHIFT_THRESHOLD0, align 8
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.zone_device*, %struct.zone_device** %8, align 8
  %35 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %38 = call i32 @rdmsr_on_cpu(i32 %36, i32 %37, i64* %12, i64* %13)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %4, align 4
  br label %66

43:                                               ; preds = %33
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* %11, align 8
  %48 = lshr i64 %46, %47
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = load %struct.zone_device*, %struct.zone_device** %8, align 8
  %53 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = mul i64 %55, 1000
  %57 = sub i64 %54, %56
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %62

60:                                               ; preds = %43
  %61 = load i32*, i32** %7, align 8
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %51
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %41, %21
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @rdmsr_on_cpu(i32, i32, i64*, i64*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
