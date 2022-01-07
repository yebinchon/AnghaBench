; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_mid_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_mid_thermal.c_mid_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.thermal_device_info* }
%struct.thermal_device_info = type { i32, i32, i32 }

@INTEL_MSIC_ADC1CNTL3 = common dso_local global i32 0, align 4
@MSIC_ADCRRDATA_ENBL = common dso_local global i32 0, align 4
@MSIC_ADCTHERM_ENBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, i32*)* @mid_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mid_read_temp(%struct.thermal_zone_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.thermal_device_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %13 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %12, i32 0, i32 0
  %14 = load %struct.thermal_device_info*, %struct.thermal_device_info** %13, align 8
  store %struct.thermal_device_info* %14, %struct.thermal_device_info** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.thermal_device_info*, %struct.thermal_device_info** %6, align 8
  %16 = getelementptr inbounds %struct.thermal_device_info, %struct.thermal_device_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @INTEL_MSIC_ADC1CNTL3, align 4
  %19 = load i32, i32* @MSIC_ADCRRDATA_ENBL, align 4
  %20 = call i32 @intel_msic_reg_write(i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %2
  %26 = load i32, i32* @INTEL_MSIC_ADC1CNTL3, align 4
  %27 = load i32, i32* @MSIC_ADCTHERM_ENBL, align 4
  %28 = call i32 @intel_msic_reg_write(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %71

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @intel_msic_reg_read(i32 %34, i32* %9)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 2
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @intel_msic_reg_read(i32 %45, i32* %9)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %71

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 3
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.thermal_device_info*, %struct.thermal_device_info** %6, align 8
  %58 = getelementptr inbounds %struct.thermal_device_info, %struct.thermal_device_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @adc_to_temp(i32 %59, i32 %60, i32* %11)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.thermal_device_info*, %struct.thermal_device_info** %6, align 8
  %67 = getelementptr inbounds %struct.thermal_device_info, %struct.thermal_device_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %51
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %49, %38, %31, %23
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @intel_msic_reg_write(i32, i32) #1

declare dso_local i32 @intel_msic_reg_read(i32, i32*) #1

declare dso_local i32 @adc_to_temp(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
