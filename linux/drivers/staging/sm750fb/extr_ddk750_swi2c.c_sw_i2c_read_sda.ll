; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sw_i2c_read_sda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sw_i2c_read_sda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sw_i2c_data_gpio = common dso_local global i32 0, align 4
@sw_i2c_data_gpio_data_dir_reg = common dso_local global i32 0, align 4
@sw_i2c_data_gpio_data_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @sw_i2c_read_sda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @sw_i2c_read_sda() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @sw_i2c_data_gpio, align 4
  %6 = shl i32 1, %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %4, align 8
  %8 = load i32, i32* @sw_i2c_data_gpio_data_dir_reg, align 4
  %9 = call i64 @peek32(i32 %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %4, align 8
  %12 = and i64 %10, %11
  %13 = load i64, i64* %4, align 8
  %14 = xor i64 %13, -1
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %0
  %17 = load i32, i32* @sw_i2c_data_gpio, align 4
  %18 = shl i32 1, %17
  %19 = xor i32 %18, -1
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %2, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %2, align 8
  %23 = load i32, i32* @sw_i2c_data_gpio_data_dir_reg, align 4
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @poke32(i32 %23, i64 %24)
  br label %26

26:                                               ; preds = %16, %0
  %27 = load i32, i32* @sw_i2c_data_gpio_data_reg, align 4
  %28 = call i64 @peek32(i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* @sw_i2c_data_gpio, align 4
  %31 = shl i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = and i64 %29, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i8 1, i8* %1, align 1
  br label %37

36:                                               ; preds = %26
  store i8 0, i8* %1, align 1
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i8, i8* %1, align 1
  ret i8 %38
}

declare dso_local i64 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
