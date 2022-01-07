; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sw_i2c_sda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_swi2c.c_sw_i2c_sda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sw_i2c_data_gpio_data_dir_reg = common dso_local global i32 0, align 4
@sw_i2c_data_gpio = common dso_local global i32 0, align 4
@sw_i2c_data_gpio_data_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @sw_i2c_sda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_i2c_sda(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8 %0, i8* %2, align 1
  %5 = load i32, i32* @sw_i2c_data_gpio_data_dir_reg, align 4
  %6 = call i64 @peek32(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i8, i8* %2, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @sw_i2c_data_gpio, align 4
  %11 = shl i32 1, %10
  %12 = xor i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* @sw_i2c_data_gpio_data_dir_reg, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @poke32(i32 %16, i64 %17)
  br label %39

19:                                               ; preds = %1
  %20 = load i32, i32* @sw_i2c_data_gpio_data_reg, align 4
  %21 = call i64 @peek32(i32 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i32, i32* @sw_i2c_data_gpio, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %3, align 8
  %27 = and i64 %26, %25
  store i64 %27, i64* %3, align 8
  %28 = load i32, i32* @sw_i2c_data_gpio_data_reg, align 4
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @poke32(i32 %28, i64 %29)
  %31 = load i32, i32* @sw_i2c_data_gpio, align 4
  %32 = shl i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %4, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %4, align 8
  %36 = load i32, i32* @sw_i2c_data_gpio_data_dir_reg, align 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @poke32(i32 %36, i64 %37)
  br label %39

39:                                               ; preds = %19, %9
  ret void
}

declare dso_local i64 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
