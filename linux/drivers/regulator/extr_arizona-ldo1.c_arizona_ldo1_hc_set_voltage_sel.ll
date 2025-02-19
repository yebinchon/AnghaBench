; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_arizona_ldo1_hc_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_arizona_ldo1_hc_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@ARIZONA_LDO1_HI_PWR = common dso_local global i32 0, align 4
@ARIZONA_LDO1_CONTROL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @arizona_ldo1_hc_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_ldo1_hc_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.regmap* @rdev_get_regmap(%struct.regulator_dev* %9)
  store %struct.regmap* %10, %struct.regmap** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp eq i32 %11, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ARIZONA_LDO1_HI_PWR, align 4
  store i32 %20, i32* %7, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load %struct.regmap*, %struct.regmap** %6, align 8
  %24 = load i32, i32* @ARIZONA_LDO1_CONTROL_2, align 4
  %25 = load i32, i32* @ARIZONA_LDO1_HI_PWR, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @regmap_update_bits(%struct.regmap* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %40

36:                                               ; preds = %32
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %35, %30
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.regmap* @rdev_get_regmap(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
