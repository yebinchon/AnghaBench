; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_set_voltage_time_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_anatop-regulator.c_anatop_regmap_set_voltage_time_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.anatop_regulator = type { i32, i32, i32 }

@LDO_RAMP_UP_UNIT_IN_CYCLES = common dso_local global i32 0, align 4
@LDO_RAMP_UP_FREQ_IN_MHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @anatop_regmap_set_voltage_time_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anatop_regmap_set_voltage_time_sel(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.anatop_regulator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.anatop_regulator* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.anatop_regulator* %11, %struct.anatop_regulator** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.anatop_regulator*, %struct.anatop_regulator** %7, align 8
  %13 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %22 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.anatop_regulator*, %struct.anatop_regulator** %7, align 8
  %25 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_read(i32 %23, i32 %26, i32* %8)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.anatop_regulator*, %struct.anatop_regulator** %7, align 8
  %30 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %28, %31
  %33 = load %struct.anatop_regulator*, %struct.anatop_regulator** %7, align 8
  %34 = getelementptr inbounds %struct.anatop_regulator, %struct.anatop_regulator* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %32, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sub i32 %39, %40
  %42 = load i32, i32* @LDO_RAMP_UP_UNIT_IN_CYCLES, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %42, %43
  %45 = mul i32 %41, %44
  %46 = load i32, i32* @LDO_RAMP_UP_FREQ_IN_MHZ, align 4
  %47 = udiv i32 %45, %46
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %20, %16, %3
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local %struct.anatop_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
