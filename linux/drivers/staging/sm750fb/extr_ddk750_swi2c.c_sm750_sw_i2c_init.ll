; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sm750_sw_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sm750_sw_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SM750LE = common dso_local global i64 0, align 8
@GPIO_MUX = common dso_local global i32 0, align 4
@sw_i2c_clk_gpio_mux_reg = common dso_local global i32 0, align 4
@GPIO_DATA = common dso_local global i8* null, align 8
@sw_i2c_clk_gpio_data_reg = common dso_local global i8* null, align 8
@GPIO_DATA_DIRECTION = common dso_local global i8* null, align 8
@sw_i2c_clk_gpio_data_dir_reg = common dso_local global i8* null, align 8
@sw_i2c_clk_gpio = common dso_local global i32 0, align 4
@sw_i2c_data_gpio_mux_reg = common dso_local global i32 0, align 4
@sw_i2c_data_gpio_data_reg = common dso_local global i8* null, align 8
@sw_i2c_data_gpio_data_dir_reg = common dso_local global i8* null, align 8
@sw_i2c_data_gpio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sm750_sw_i2c_init(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8 %1, i8* %5, align 1
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sgt i32 %8, 31
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sgt i32 %12, 31
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  store i64 -1, i64* %3, align 8
  br label %60

15:                                               ; preds = %10
  %16 = call i64 (...) @sm750_get_chip_type()
  %17 = load i64, i64* @SM750LE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i8, i8* %4, align 1
  %21 = load i8, i8* %5, align 1
  %22 = call i64 @sm750le_i2c_init(i8 zeroext %20, i8 zeroext %21)
  store i64 %22, i64* %3, align 8
  br label %60

23:                                               ; preds = %15
  %24 = load i32, i32* @GPIO_MUX, align 4
  store i32 %24, i32* @sw_i2c_clk_gpio_mux_reg, align 4
  %25 = load i8*, i8** @GPIO_DATA, align 8
  store i8* %25, i8** @sw_i2c_clk_gpio_data_reg, align 8
  %26 = load i8*, i8** @GPIO_DATA_DIRECTION, align 8
  store i8* %26, i8** @sw_i2c_clk_gpio_data_dir_reg, align 8
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* @sw_i2c_clk_gpio, align 4
  %29 = load i32, i32* @GPIO_MUX, align 4
  store i32 %29, i32* @sw_i2c_data_gpio_mux_reg, align 4
  %30 = load i8*, i8** @GPIO_DATA, align 8
  store i8* %30, i8** @sw_i2c_data_gpio_data_reg, align 8
  %31 = load i8*, i8** @GPIO_DATA_DIRECTION, align 8
  store i8* %31, i8** @sw_i2c_data_gpio_data_dir_reg, align 8
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  store i32 %33, i32* @sw_i2c_data_gpio, align 4
  %34 = load i32, i32* @sw_i2c_clk_gpio_mux_reg, align 4
  %35 = load i32, i32* @sw_i2c_clk_gpio_mux_reg, align 4
  %36 = call i32 @peek32(i32 %35)
  %37 = load i32, i32* @sw_i2c_clk_gpio, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  %41 = call i32 @poke32(i32 %34, i32 %40)
  %42 = load i32, i32* @sw_i2c_data_gpio_mux_reg, align 4
  %43 = load i32, i32* @sw_i2c_data_gpio_mux_reg, align 4
  %44 = call i32 @peek32(i32 %43)
  %45 = load i32, i32* @sw_i2c_data_gpio, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %44, %47
  %49 = call i32 @poke32(i32 %42, i32 %48)
  %50 = call i32 @sm750_enable_gpio(i32 1)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %56, %23
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 9
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call i32 (...) @sw_i2c_stop()
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %51

59:                                               ; preds = %51
  store i64 0, i64* %3, align 8
  br label %60

60:                                               ; preds = %59, %19, %14
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local i64 @sm750_get_chip_type(...) #1

declare dso_local i64 @sm750le_i2c_init(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @poke32(i32, i32) #1

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @sm750_enable_gpio(i32) #1

declare dso_local i32 @sw_i2c_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
