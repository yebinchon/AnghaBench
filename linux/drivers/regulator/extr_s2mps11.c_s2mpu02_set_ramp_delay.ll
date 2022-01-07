; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mpu02_set_ramp_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mpu02_set_ramp_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }

@S2MPU02_BUCK1_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPU02_BUCK2_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPU02_BUCK3_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPU02_BUCK4_RAMP_SHIFT = common dso_local global i32 0, align 4
@S2MPU02_REG_RAMP1 = common dso_local global i32 0, align 4
@S2MPU02_BUCK1234_RAMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @s2mpu02_set_ramp_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mpu02_set_ramp_delay(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %21 [
    i32 131, label %13
    i32 130, label %15
    i32 129, label %17
    i32 128, label %19
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @S2MPU02_BUCK1_RAMP_SHIFT, align 4
  store i32 %14, i32* %7, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @S2MPU02_BUCK2_RAMP_SHIFT, align 4
  store i32 %16, i32* %7, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @S2MPU02_BUCK3_RAMP_SHIFT, align 4
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @S2MPU02_BUCK4_RAMP_SHIFT, align 4
  store i32 %20, i32* %7, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

22:                                               ; preds = %19, %17, %15, %13
  %23 = load i32, i32* @S2MPU02_REG_RAMP1, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @get_ramp_delay(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %27 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @S2MPU02_BUCK1234_RAMP_MASK, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %33, %34
  %36 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %22, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @get_ramp_delay(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
