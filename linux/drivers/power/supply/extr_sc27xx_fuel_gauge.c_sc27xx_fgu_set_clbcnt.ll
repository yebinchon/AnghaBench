; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_set_clbcnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_set_clbcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i64, i32 }

@SC27XX_FGU_CLBCNT_SETL = common dso_local global i64 0, align 8
@SC27XX_FGU_CLBCNT_MASK = common dso_local global i32 0, align 4
@SC27XX_FGU_CLBCNT_SETH = common dso_local global i64 0, align 8
@SC27XX_FGU_CLBCNT_SHIFT = common dso_local global i32 0, align 4
@SC27XX_FGU_START = common dso_local global i64 0, align 8
@SC27XX_WRITE_SELCLB_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_fgu_data*, i32)* @sc27xx_fgu_set_clbcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_set_clbcnt(%struct.sc27xx_fgu_data* %0, i32 %1) #0 {
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
  %13 = load i64, i64* @SC27XX_FGU_CLBCNT_SETL, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @SC27XX_FGU_CLBCNT_MASK, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @regmap_update_bits(i32 %9, i64 %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %24 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %27 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SC27XX_FGU_CLBCNT_SETH, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* @SC27XX_FGU_CLBCNT_MASK, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SC27XX_FGU_CLBCNT_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = call i32 @regmap_update_bits(i32 %25, i64 %30, i32 %31, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %22
  %41 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %42 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %45 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SC27XX_FGU_START, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* @SC27XX_WRITE_SELCLB_EN, align 4
  %50 = load i32, i32* @SC27XX_WRITE_SELCLB_EN, align 4
  %51 = call i32 @regmap_update_bits(i32 %43, i64 %48, i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %38, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
