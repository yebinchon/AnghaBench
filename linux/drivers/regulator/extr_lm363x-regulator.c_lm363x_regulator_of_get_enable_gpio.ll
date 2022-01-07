; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lm363x-regulator.c_lm363x_regulator_of_get_enable_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lm363x-regulator.c_lm363x_regulator_of_get_enable_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_desc* (%struct.device*, i32)* @lm363x_regulator_of_get_enable_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_desc* @lm363x_regulator_of_get_enable_gpio(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_desc*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 128, label %7
    i32 130, label %7
    i32 129, label %13
    i32 131, label %13
  ]

7:                                                ; preds = %2, %2
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %10 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.gpio_desc* @gpiod_get_index_optional(%struct.device* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %11)
  store %struct.gpio_desc* %12, %struct.gpio_desc** %3, align 8
  br label %20

13:                                               ; preds = %2, %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %16 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.gpio_desc* @gpiod_get_index_optional(%struct.device* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1, i32 %17)
  store %struct.gpio_desc* %18, %struct.gpio_desc** %3, align 8
  br label %20

19:                                               ; preds = %2
  store %struct.gpio_desc* null, %struct.gpio_desc** %3, align 8
  br label %20

20:                                               ; preds = %19, %13, %7
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  ret %struct.gpio_desc* %21
}

declare dso_local %struct.gpio_desc* @gpiod_get_index_optional(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
