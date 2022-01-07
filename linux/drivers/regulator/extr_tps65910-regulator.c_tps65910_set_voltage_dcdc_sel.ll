; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_set_voltage_dcdc_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_set_voltage_dcdc_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.tps65910_reg = type { i32 }

@VDD1_2_NUM_VOLT_FINE = common dso_local global i32 0, align 4
@TPS65910_VDD1 = common dso_local global i32 0, align 4
@VDD1_VGAIN_SEL_MASK = common dso_local global i32 0, align 4
@VDD1_VGAIN_SEL_SHIFT = common dso_local global i32 0, align 4
@TPS65910_VDD1_OP = common dso_local global i32 0, align 4
@TPS65910_VDD2 = common dso_local global i32 0, align 4
@VDD2_VGAIN_SEL_SHIFT = common dso_local global i32 0, align 4
@TPS65910_VDD2_OP = common dso_local global i32 0, align 4
@TPS65911_VDDCTRL_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @tps65910_set_voltage_dcdc_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_set_voltage_dcdc_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps65910_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.tps65910_reg* %10, %struct.tps65910_reg** %5, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %83 [
    i32 130, label %14
    i32 129, label %44
    i32 128, label %74
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @VDD1_2_NUM_VOLT_FINE, align 4
  %17 = udiv i32 %15, %16
  %18 = add i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @VDD1_2_NUM_VOLT_FINE, align 4
  %27 = urem i32 %25, %26
  %28 = add i32 %27, 3
  store i32 %28, i32* %7, align 4
  %29 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %30 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TPS65910_VDD1, align 4
  %33 = load i32, i32* @VDD1_VGAIN_SEL_MASK, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @VDD1_VGAIN_SEL_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = call i32 @tps65910_reg_update_bits(i32 %31, i32 %32, i32 %33, i32 %36)
  %38 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %39 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TPS65910_VDD1_OP, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @tps65910_reg_write(i32 %40, i32 %41, i32 %42)
  br label %83

44:                                               ; preds = %2
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @VDD1_2_NUM_VOLT_FINE, align 4
  %47 = udiv i32 %45, %46
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %44
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @VDD1_2_NUM_VOLT_FINE, align 4
  %57 = urem i32 %55, %56
  %58 = add i32 %57, 3
  store i32 %58, i32* %7, align 4
  %59 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %60 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TPS65910_VDD2, align 4
  %63 = load i32, i32* @VDD1_VGAIN_SEL_MASK, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @VDD2_VGAIN_SEL_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 @tps65910_reg_update_bits(i32 %61, i32 %62, i32 %63, i32 %66)
  %68 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %69 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TPS65910_VDD2_OP, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @tps65910_reg_write(i32 %70, i32 %71, i32 %72)
  br label %83

74:                                               ; preds = %2
  %75 = load i32, i32* %4, align 4
  %76 = add i32 %75, 3
  store i32 %76, i32* %7, align 4
  %77 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %78 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TPS65911_VDDCTRL_OP, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @tps65910_reg_write(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %74, %2, %54, %24
  ret i32 0
}

declare dso_local %struct.tps65910_reg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @tps65910_reg_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @tps65910_reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
