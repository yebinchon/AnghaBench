; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_ramp_delay_4bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_ramp_delay_4bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ramp_table_77802_4bit = common dso_local global i32 0, align 4
@MAX77802_RAMP_RATE_MASK_4BIT = common dso_local global i32 0, align 4
@MAX77802_RAMP_RATE_SHIFT_4BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max77802_set_ramp_delay_4bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77802_set_ramp_delay_4bit(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = load i32, i32* @ramp_table_77802_4bit, align 4
  %8 = load i32, i32* @ramp_table_77802_4bit, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @max77802_find_ramp_value(%struct.regulator_dev* %6, i32 %7, i32 %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %16 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MAX77802_RAMP_RATE_MASK_4BIT, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MAX77802_RAMP_RATE_SHIFT_4BIT, align 4
  %23 = shl i32 %21, %22
  %24 = call i32 @regmap_update_bits(i32 %14, i32 %19, i32 %20, i32 %23)
  ret i32 %24
}

declare dso_local i32 @max77802_find_ramp_value(%struct.regulator_dev*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
