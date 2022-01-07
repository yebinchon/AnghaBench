; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6358-regulator.c_mt6358_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6358-regulator.c_mt6358_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.mt6358_regulator_info = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @mt6358_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6358_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mt6358_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.mt6358_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.mt6358_regulator_info* %10, %struct.mt6358_regulator_info** %8, align 8
  %11 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %8, align 8
  %12 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %20 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %8, align 8
  %23 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %8, align 8
  %27 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %8, align 8
  %32 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 %30, %33
  %35 = call i32 @regmap_update_bits(i32 %21, i32 %25, i32 %29, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.mt6358_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
