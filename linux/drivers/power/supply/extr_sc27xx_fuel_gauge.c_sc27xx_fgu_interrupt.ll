; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i32, i32, i64, i32 }

@SC27XX_FGU_INT_STS = common dso_local global i64 0, align 8
@SC27XX_FGU_INT_CLR = common dso_local global i64 0, align 8
@SC27XX_FGU_LOW_OVERLOAD_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sc27xx_fgu_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sc27xx_fgu_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sc27xx_fgu_data*
  store %struct.sc27xx_fgu_data* %10, %struct.sc27xx_fgu_data** %5, align 8
  %11 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %5, align 8
  %12 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %5, align 8
  %15 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %5, align 8
  %18 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SC27XX_FGU_INT_STS, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @regmap_read(i32 %16, i64 %21, i32* %8)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %57

26:                                               ; preds = %2
  %27 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %5, align 8
  %28 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %5, align 8
  %31 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SC27XX_FGU_INT_CLR, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @regmap_update_bits(i32 %29, i64 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %57

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SC27XX_FGU_LOW_OVERLOAD_INT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %57

47:                                               ; preds = %41
  %48 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %5, align 8
  %49 = call i32 @sc27xx_fgu_get_capacity(%struct.sc27xx_fgu_data* %48, i32* %7)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %57

53:                                               ; preds = %47
  %54 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @sc27xx_fgu_capacity_calibration(%struct.sc27xx_fgu_data* %54, i32 %55, i32 1)
  br label %57

57:                                               ; preds = %53, %52, %46, %40, %25
  %58 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %5, align 8
  %59 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %5, align 8
  %62 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @power_supply_changed(i32 %63)
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @sc27xx_fgu_get_capacity(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_capacity_calibration(%struct.sc27xx_fgu_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
