; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_get_boot_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_get_boot_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i32, i32, i32, i64, i32 }

@SC27XX_FGU_NORMAIL_POWERTON = common dso_local global i32 0, align 4
@SC27XX_FGU_CLBCNT_QMAXL = common dso_local global i64 0, align 8
@SC27XX_FGU_CUR_BASIC_ADC = common dso_local global i64 0, align 8
@SC27XX_FGU_POCV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_fgu_data*, i32*)* @sc27xx_fgu_get_boot_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_get_boot_capacity(%struct.sc27xx_fgu_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc27xx_fgu_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sc27xx_fgu_data* %0, %struct.sc27xx_fgu_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %13 = call i32 @sc27xx_fgu_is_first_poweron(%struct.sc27xx_fgu_data* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @sc27xx_fgu_read_last_cap(%struct.sc27xx_fgu_data* %17, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %3, align 4
  br label %97

24:                                               ; preds = %16
  %25 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %26 = load i32, i32* @SC27XX_FGU_NORMAIL_POWERTON, align 4
  %27 = call i32 @sc27xx_fgu_save_boot_mode(%struct.sc27xx_fgu_data* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %2
  %29 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %30 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %33 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SC27XX_FGU_CLBCNT_QMAXL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @regmap_read(i32 %31, i64 %36, i32* %7)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %97

42:                                               ; preds = %28
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @SC27XX_FGU_CUR_BASIC_ADC, align 8
  %49 = sub nsw i64 %47, %48
  %50 = call i32 @sc27xx_fgu_adc_to_current(%struct.sc27xx_fgu_data* %45, i64 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %52 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %55 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SC27XX_FGU_POCV, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @regmap_read(i32 %53, i64 %58, i32* %6)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %97

64:                                               ; preds = %42
  %65 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @sc27xx_fgu_adc_to_voltage(%struct.sc27xx_fgu_data* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %68, 1000
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %72 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = sub nsw i32 %69, %74
  store i32 %75, i32* %9, align 4
  %76 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %77 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %80 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @power_supply_ocv2cap_simple(i32 %78, i32 %81, i32 %82)
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sc27xx_fgu_save_last_cap(%struct.sc27xx_fgu_data* %85, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %64
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %97

93:                                               ; preds = %64
  %94 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %95 = load i32, i32* @SC27XX_FGU_NORMAIL_POWERTON, align 4
  %96 = call i32 @sc27xx_fgu_save_boot_mode(%struct.sc27xx_fgu_data* %94, i32 %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %91, %62, %40, %24, %22
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @sc27xx_fgu_is_first_poweron(%struct.sc27xx_fgu_data*) #1

declare dso_local i32 @sc27xx_fgu_read_last_cap(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_save_boot_mode(%struct.sc27xx_fgu_data*, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @sc27xx_fgu_adc_to_current(%struct.sc27xx_fgu_data*, i64) #1

declare dso_local i32 @sc27xx_fgu_adc_to_voltage(%struct.sc27xx_fgu_data*, i32) #1

declare dso_local i32 @power_supply_ocv2cap_simple(i32, i32, i32) #1

declare dso_local i32 @sc27xx_fgu_save_last_cap(%struct.sc27xx_fgu_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
