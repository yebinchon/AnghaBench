; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_is_first_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_is_first_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i64, i32 }

@SC27XX_FGU_USER_AREA_STATUS = common dso_local global i64 0, align 8
@SC27XX_FGU_MODE_AREA_MASK = common dso_local global i32 0, align 4
@SC27XX_FGU_MODE_AREA_SHIFT = common dso_local global i32 0, align 4
@SC27XX_FGU_CAP_AREA_MASK = common dso_local global i32 0, align 4
@SC27XX_FGU_FIRST_POWERTON = common dso_local global i32 0, align 4
@SC27XX_FGU_DEFAULT_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_fgu_data*)* @sc27xx_fgu_is_first_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_is_first_poweron(%struct.sc27xx_fgu_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc27xx_fgu_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sc27xx_fgu_data* %0, %struct.sc27xx_fgu_data** %3, align 8
  %8 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %9 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %12 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SC27XX_FGU_USER_AREA_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @regmap_read(i32 %10, i64 %15, i32* %5)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SC27XX_FGU_MODE_AREA_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @SC27XX_FGU_MODE_AREA_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SC27XX_FGU_CAP_AREA_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SC27XX_FGU_FIRST_POWERTON, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SC27XX_FGU_DEFAULT_CAP, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %20
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
