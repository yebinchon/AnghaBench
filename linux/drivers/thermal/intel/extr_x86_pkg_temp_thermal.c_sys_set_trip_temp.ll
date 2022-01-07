; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_sys_set_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_x86_pkg_temp_thermal.c_sys_set_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.zone_device* }
%struct.zone_device = type { i32, i32 }

@MAX_NUMBER_OF_TRIPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSR_IA32_PACKAGE_THERM_INTERRUPT = common dso_local global i32 0, align 4
@THERM_MASK_THRESHOLD1 = common dso_local global i32 0, align 4
@THERM_SHIFT_THRESHOLD1 = common dso_local global i32 0, align 4
@THERM_INT_THRESHOLD1_ENABLE = common dso_local global i32 0, align 4
@THERM_MASK_THRESHOLD0 = common dso_local global i32 0, align 4
@THERM_SHIFT_THRESHOLD0 = common dso_local global i32 0, align 4
@THERM_INT_THRESHOLD0_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32, i32)* @sys_set_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_set_trip_temp(%struct.thermal_zone_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thermal_zone_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zone_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %5, align 8
  %16 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %15, i32 0, i32 0
  %17 = load %struct.zone_device*, %struct.zone_device** %16, align 8
  store %struct.zone_device* %17, %struct.zone_device** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_NUMBER_OF_TRIPS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.zone_device*, %struct.zone_device** %8, align 8
  %24 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %85

30:                                               ; preds = %21
  %31 = load %struct.zone_device*, %struct.zone_device** %8, align 8
  %32 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %35 = call i32 @rdmsr_on_cpu(i32 %33, i32 %34, i32* %9, i32* %10)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %4, align 4
  br label %85

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @THERM_MASK_THRESHOLD1, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @THERM_SHIFT_THRESHOLD1, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* @THERM_INT_THRESHOLD1_ENABLE, align 4
  store i32 %46, i32* %13, align 4
  br label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @THERM_MASK_THRESHOLD0, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @THERM_SHIFT_THRESHOLD0, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @THERM_INT_THRESHOLD0_ENABLE, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %11, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %13, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %77

63:                                               ; preds = %51
  %64 = load %struct.zone_device*, %struct.zone_device** %8, align 8
  %65 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sdiv i32 %68, 1000
  %70 = load i32, i32* %12, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %63, %58
  %78 = load %struct.zone_device*, %struct.zone_device** %8, align 8
  %79 = getelementptr inbounds %struct.zone_device, %struct.zone_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MSR_IA32_PACKAGE_THERM_INTERRUPT, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @wrmsr_on_cpu(i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %77, %38, %27
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @rdmsr_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i32 @wrmsr_on_cpu(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
