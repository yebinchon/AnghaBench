; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_max77620_thermal.c_max77620_thermal_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_max77620_thermal.c_max77620_thermal_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77620_therm_info = type { i32, i32 }

@MAX77620_REG_STATLBT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to read STATLBT: %d\0A\00", align 1
@MAX77620_IRQ_TJALRM2_MASK = common dso_local global i32 0, align 4
@MAX77620_TJALARM2_TEMP = common dso_local global i32 0, align 4
@MAX77620_IRQ_TJALRM1_MASK = common dso_local global i32 0, align 4
@MAX77620_TJALARM1_TEMP = common dso_local global i32 0, align 4
@MAX77620_NORMAL_OPERATING_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @max77620_thermal_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_thermal_read_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.max77620_therm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.max77620_therm_info*
  store %struct.max77620_therm_info* %10, %struct.max77620_therm_info** %6, align 8
  %11 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %6, align 8
  %12 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX77620_REG_STATLBT, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.max77620_therm_info*, %struct.max77620_therm_info** %6, align 8
  %20 = getelementptr inbounds %struct.max77620_therm_info, %struct.max77620_therm_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MAX77620_IRQ_TJALRM2_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @MAX77620_TJALARM2_TEMP, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %45

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MAX77620_IRQ_TJALRM1_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @MAX77620_TJALARM1_TEMP, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @MAX77620_NORMAL_OPERATING_TEMP, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %30
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
