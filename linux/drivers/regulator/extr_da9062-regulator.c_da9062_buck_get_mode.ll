; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9062-regulator.c_da9062_buck_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9062-regulator.c_da9062_buck_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9062_regulator = type { i32, i32 }

@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da9062_buck_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_buck_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.da9062_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.da9062_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.da9062_regulator* %9, %struct.da9062_regulator** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.da9062_regulator*, %struct.da9062_regulator** %4, align 8
  %11 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_field_read(i32 %12, i32* %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %54

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %20 [
    i32 130, label %21
    i32 129, label %25
    i32 128, label %27
    i32 131, label %29
  ]

20:                                               ; preds = %18
  br label %21

21:                                               ; preds = %18, %20
  %22 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  %23 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  br label %31

25:                                               ; preds = %18
  %26 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %26, i32* %2, align 4
  br label %54

27:                                               ; preds = %18
  %28 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %28, i32* %2, align 4
  br label %54

29:                                               ; preds = %18
  %30 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %30, i32* %2, align 4
  br label %54

31:                                               ; preds = %21
  %32 = load %struct.da9062_regulator*, %struct.da9062_regulator** %4, align 8
  %33 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regmap_field_read(i32 %34, i32* %5)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %54

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %52

46:                                               ; preds = %39
  %47 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  %48 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %38, %29, %27, %25, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.da9062_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
