; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65911_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65911_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps65910_reg = type { i32 (i32)*, i32 }

@LDO1_SEL_MASK = common dso_local global i32 0, align 4
@LDO_SEL_SHIFT = common dso_local global i32 0, align 4
@LDO3_SEL_MASK = common dso_local global i32 0, align 4
@LDO_SEL_MASK = common dso_local global i32 0, align 4
@BBCH_BBSEL_MASK = common dso_local global i32 0, align 4
@BBCH_BBSEL_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @tps65911_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65911_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tps65910_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.tps65910_reg* %10, %struct.tps65910_reg** %6, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.tps65910_reg*, %struct.tps65910_reg** %6, align 8
  %14 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 %15(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %67

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %64 [
    i32 135, label %24
    i32 134, label %24
    i32 132, label %24
    i32 133, label %34
    i32 131, label %34
    i32 130, label %34
    i32 129, label %34
    i32 128, label %34
    i32 136, label %44
    i32 137, label %54
  ]

24:                                               ; preds = %22, %22, %22
  %25 = load %struct.tps65910_reg*, %struct.tps65910_reg** %6, align 8
  %26 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @LDO1_SEL_MASK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @LDO_SEL_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @tps65910_reg_update_bits(i32 %27, i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %22, %22, %22, %22, %22
  %35 = load %struct.tps65910_reg*, %struct.tps65910_reg** %6, align 8
  %36 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @LDO3_SEL_MASK, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @LDO_SEL_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @tps65910_reg_update_bits(i32 %37, i32 %38, i32 %39, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %22
  %45 = load %struct.tps65910_reg*, %struct.tps65910_reg** %6, align 8
  %46 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @LDO_SEL_MASK, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @LDO_SEL_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = call i32 @tps65910_reg_update_bits(i32 %47, i32 %48, i32 %49, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %67

54:                                               ; preds = %22
  %55 = load %struct.tps65910_reg*, %struct.tps65910_reg** %6, align 8
  %56 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @BBCH_BBSEL_MASK, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @BBCH_BBSEL_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = call i32 @tps65910_reg_update_bits(i32 %57, i32 %58, i32 %59, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %22
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %54, %44, %34, %24, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps65910_reg_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
