; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_save_last_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_save_last_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i64, i32 }

@SC27XX_FGU_USER_AREA_CLEAR = common dso_local global i64 0, align 8
@SC27XX_FGU_CAP_AREA_MASK = common dso_local global i32 0, align 4
@SC27XX_FGU_USER_AREA_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_fgu_data*, i32)* @sc27xx_fgu_save_last_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_save_last_cap(%struct.sc27xx_fgu_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc27xx_fgu_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sc27xx_fgu_data* %0, %struct.sc27xx_fgu_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %8 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %11 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SC27XX_FGU_USER_AREA_CLEAR, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @SC27XX_FGU_CAP_AREA_MASK, align 4
  %16 = load i32, i32* @SC27XX_FGU_CAP_AREA_MASK, align 4
  %17 = call i32 @regmap_update_bits(i32 %9, i64 %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = call i32 @udelay(i32 200)
  %24 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %25 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %28 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SC27XX_FGU_USER_AREA_SET, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @SC27XX_FGU_CAP_AREA_MASK, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @regmap_update_bits(i32 %26, i64 %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %22
  %40 = call i32 @udelay(i32 200)
  %41 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %42 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %45 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SC27XX_FGU_USER_AREA_CLEAR, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* @SC27XX_FGU_CAP_AREA_MASK, align 4
  %50 = call i32 @regmap_update_bits(i32 %43, i64 %48, i32 %49, i32 0)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %37, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
