; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_get_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_regulator_get_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator = type { i32, i32, %struct.max77620_regulator_info** }
%struct.max77620_regulator_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Regulator %d: Reg 0x%02x read failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_regulator*, i32)* @max77620_regulator_get_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_regulator_get_power_mode(%struct.max77620_regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77620_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77620_regulator_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max77620_regulator* %0, %struct.max77620_regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %13 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %12, i32 0, i32 2
  %14 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %14, i64 %16
  %18 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %17, align 8
  store %struct.max77620_regulator_info* %18, %struct.max77620_regulator_info** %6, align 8
  %19 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %20 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %23 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %26 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %32 [
    i32 128, label %28
  ]

28:                                               ; preds = %2
  %29 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %30 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %34 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %38 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @regmap_read(i32 %39, i32 %40, i32* %7)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %46 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %3, align 4
  br label %59

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = lshr i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %44
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
