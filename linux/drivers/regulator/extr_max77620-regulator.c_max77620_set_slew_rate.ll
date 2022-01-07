; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_set_slew_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_set_slew_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_regulator = type { i32, i32, %struct.max77620_regulator_info** }
%struct.max77620_regulator_info = type { i64, i32 }

@MAX77620_REGULATOR_TYPE_SD = common dso_local global i64 0, align 8
@MAX77620_SD_SR_SHIFT = common dso_local global i32 0, align 4
@MAX77620_SD_SR_MASK = common dso_local global i32 0, align 4
@MAX77620_LDO_SLEW_RATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Regulator %d slew rate set failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77620_regulator*, i32, i32)* @max77620_set_slew_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_set_slew_rate(%struct.max77620_regulator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max77620_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.max77620_regulator_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max77620_regulator* %0, %struct.max77620_regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %13 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %12, i32 0, i32 2
  %14 = load %struct.max77620_regulator_info**, %struct.max77620_regulator_info*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %14, i64 %16
  %18 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %17, align 8
  store %struct.max77620_regulator_info* %18, %struct.max77620_regulator_info** %8, align 8
  %19 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %20 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX77620_REGULATOR_TYPE_SD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp sle i32 %25, 13750
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %39

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 27500
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 55000
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 2, i32* %9, align 4
  br label %37

36:                                               ; preds = %32
  store i32 3, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %31
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* @MAX77620_SD_SR_SHIFT, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* @MAX77620_SD_SR_MASK, align 4
  store i32 %43, i32* %11, align 4
  br label %51

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %45, 5000
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %49

48:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* @MAX77620_LDO_SLEW_RATE_MASK, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %49, %39
  %52 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %53 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.max77620_regulator_info*, %struct.max77620_regulator_info** %8, align 8
  %56 = getelementptr inbounds %struct.max77620_regulator_info, %struct.max77620_regulator_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @regmap_update_bits(i32 %54, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load %struct.max77620_regulator*, %struct.max77620_regulator** %5, align 8
  %65 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %72

71:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %63
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
