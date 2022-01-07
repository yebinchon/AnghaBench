; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_read_slew_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_read_slew_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator = type { i32, i32, %struct.max77620_regulator_info** }
%struct.max77620_regulator_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Register 0x%02x read failed: %d\0A\00", align 1
@MAX77620_SD_SR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_regulator*, i32)* @max77620_read_slew_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_read_slew_rate(%struct.max77620_regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77620_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77620_regulator_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.max77620_regulator* %0, %struct.max77620_regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %11 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %10, i32 0, i32 2
  %12 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %12, i64 %14
  %16 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %15, align 8
  store %struct.max77620_regulator_info* %16, %struct.max77620_regulator_info** %6, align 8
  %17 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %18 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %21 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_read(i32 %19, i32 %22, i32* %7)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.max77620_regulator*, %struct.max77620_regulator** %4, align 8
  %28 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %31 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %2
  %37 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %38 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %55 [
    i32 128, label %40
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MAX77620_SD_SR_SHIFT, align 4
  %43 = lshr i32 %41, %42
  %44 = and i32 %43, 3
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %50 [
    i32 0, label %46
    i32 1, label %47
    i32 2, label %48
    i32 3, label %49
  ]

46:                                               ; preds = %40
  store i32 13750, i32* %8, align 4
  br label %50

47:                                               ; preds = %40
  store i32 27500, i32* %8, align 4
  br label %50

48:                                               ; preds = %40
  store i32 55000, i32* %8, align 4
  br label %50

49:                                               ; preds = %40
  store i32 100000, i32* %8, align 4
  br label %50

50:                                               ; preds = %40, %49, %48, %47, %46
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %53 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %66

55:                                               ; preds = %36
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 1
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  switch i32 %58, label %61 [
    i32 0, label %59
    i32 1, label %60
  ]

59:                                               ; preds = %55
  store i32 100000, i32* %8, align 4
  br label %61

60:                                               ; preds = %55
  store i32 5000, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %60, %59
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %6, align 8
  %64 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %50
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %26
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
