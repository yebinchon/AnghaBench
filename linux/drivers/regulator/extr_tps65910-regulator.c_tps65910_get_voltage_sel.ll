; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps65910_reg = type { i32 (i32)*, i32 }

@LDO_SEL_MASK = common dso_local global i32 0, align 4
@LDO_SEL_SHIFT = common dso_local global i32 0, align 4
@BBCH_BBSEL_MASK = common dso_local global i32 0, align 4
@BBCH_BBSEL_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @tps65910_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.tps65910_reg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.tps65910_reg* %10, %struct.tps65910_reg** %4, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %14 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 %15(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.tps65910_reg*, %struct.tps65910_reg** %4, align 8
  %24 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tps65910_reg_read(i32 %25, i32 %26, i32* %7)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %48 [
    i32 130, label %34
    i32 132, label %34
    i32 131, label %34
    i32 128, label %34
    i32 133, label %34
    i32 137, label %34
    i32 136, label %34
    i32 135, label %34
    i32 129, label %34
    i32 134, label %41
  ]

34:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32
  %35 = load i32, i32* @LDO_SEL_MASK, align 4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @LDO_SEL_SHIFT, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %51

41:                                               ; preds = %32
  %42 = load i32, i32* @BBCH_BBSEL_MASK, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @BBCH_BBSEL_SHIFT, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %32
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %41, %34
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %48, %30, %20
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps65910_reg_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
