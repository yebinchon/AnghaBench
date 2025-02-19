; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator = type { i32*, i32, i32, %struct.max77620_regulator_info** }
%struct.max77620_regulator_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Regulator %d mode set failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_regulator*, i32, i32)* @max77620_regulator_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_regulator_set_power_mode(%struct.max77620_regulator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77620_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max77620_regulator_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.max77620_regulator* %0, %struct.max77620_regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %14 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %13, i32 0, i32 3
  %15 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %15, i64 %17
  %19 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %18, align 8
  store %struct.max77620_regulator_info* %19, %struct.max77620_regulator_info** %8, align 8
  %20 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %21 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %24 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %27 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %33 [
    i32 128, label %29
  ]

29:                                               ; preds = %3
  %30 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %31 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  br label %37

33:                                               ; preds = %3
  %34 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %35 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %39 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %43, %44
  %46 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %51 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %66

57:                                               ; preds = %37
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %60 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %57, %49
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
