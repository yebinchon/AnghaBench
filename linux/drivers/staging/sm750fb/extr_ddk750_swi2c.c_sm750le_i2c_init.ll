; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sm750le_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sm750le_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_DATA_SM750LE = common dso_local global i8* null, align 8
@sw_i2c_clk_gpio_data_reg = common dso_local global i8* null, align 8
@GPIO_DATA_DIRECTION_SM750LE = common dso_local global i8* null, align 8
@sw_i2c_clk_gpio_data_dir_reg = common dso_local global i8* null, align 8
@sw_i2c_clk_gpio = common dso_local global i8 0, align 1
@sw_i2c_data_gpio_data_reg = common dso_local global i8* null, align 8
@sw_i2c_data_gpio_data_dir_reg = common dso_local global i8* null, align 8
@sw_i2c_data_gpio = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8, i8)* @sm750le_i2c_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sm750le_i2c_init(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %6 = load i8*, i8** @GPIO_DATA_SM750LE, align 8
  store i8* %6, i8** @sw_i2c_clk_gpio_data_reg, align 8
  %7 = load i8*, i8** @GPIO_DATA_DIRECTION_SM750LE, align 8
  store i8* %7, i8** @sw_i2c_clk_gpio_data_dir_reg, align 8
  %8 = load i8, i8* %3, align 1
  store i8 %8, i8* @sw_i2c_clk_gpio, align 1
  %9 = load i8*, i8** @GPIO_DATA_SM750LE, align 8
  store i8* %9, i8** @sw_i2c_data_gpio_data_reg, align 8
  %10 = load i8*, i8** @GPIO_DATA_DIRECTION_SM750LE, align 8
  store i8* %10, i8** @sw_i2c_data_gpio_data_dir_reg, align 8
  %11 = load i8, i8* %4, align 1
  store i8 %11, i8* @sw_i2c_data_gpio, align 1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %17, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 9
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i32 (...) @sw_i2c_stop()
  br label %17

17:                                               ; preds = %15
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %12

20:                                               ; preds = %12
  ret i64 0
}

declare dso_local i32 @sw_i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
