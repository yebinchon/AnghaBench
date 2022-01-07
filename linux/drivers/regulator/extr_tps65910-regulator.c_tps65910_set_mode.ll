; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps65910_reg = type { i32 (i32)*, %struct.tps65910* }
%struct.tps65910 = type { i32 }

@LDO_ST_MODE_BIT = common dso_local global i32 0, align 4
@LDO_ST_ON_BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @tps65910_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps65910_reg*, align 8
  %7 = alloca %struct.tps65910*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.tps65910_reg* %12, %struct.tps65910_reg** %6, align 8
  %13 = load %struct.tps65910_reg*, %struct.tps65910_reg** %6, align 8
  %14 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %13, i32 0, i32 1
  %15 = load %struct.tps65910*, %struct.tps65910** %14, align 8
  store %struct.tps65910* %15, %struct.tps65910** %7, align 8
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %17 = call i32 @rdev_get_id(%struct.regulator_dev* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.tps65910_reg*, %struct.tps65910_reg** %6, align 8
  %19 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 %20(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %52 [
    i32 129, label %29
    i32 130, label %39
    i32 128, label %47
  ]

29:                                               ; preds = %27
  %30 = load %struct.tps65910_reg*, %struct.tps65910_reg** %6, align 8
  %31 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %30, i32 0, i32 1
  %32 = load %struct.tps65910*, %struct.tps65910** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @LDO_ST_MODE_BIT, align 4
  %35 = load i32, i32* @LDO_ST_ON_BIT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @LDO_ST_ON_BIT, align 4
  %38 = call i32 @tps65910_reg_update_bits(%struct.tps65910* %32, i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %27
  %40 = load i32, i32* @LDO_ST_ON_BIT, align 4
  %41 = load i32, i32* @LDO_ST_MODE_BIT, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.tps65910*, %struct.tps65910** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %43, i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %55

47:                                               ; preds = %27
  %48 = load %struct.tps65910*, %struct.tps65910** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @LDO_ST_ON_BIT, align 4
  %51 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %48, i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %55

52:                                               ; preds = %27
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %47, %39, %29, %25
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps65910_reg_update_bits(%struct.tps65910*, i32, i32, i32) #1

declare dso_local i32 @tps65910_reg_set_bits(%struct.tps65910*, i32, i32) #1

declare dso_local i32 @tps65910_reg_clear_bits(%struct.tps65910*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
