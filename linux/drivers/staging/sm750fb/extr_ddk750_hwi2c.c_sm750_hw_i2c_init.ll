; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_sm750_hw_i2c_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_sm750_hw_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_MUX = common dso_local global i32 0, align 4
@GPIO_MUX_30 = common dso_local global i32 0, align 4
@GPIO_MUX_31 = common dso_local global i32 0, align 4
@I2C_CTRL = common dso_local global i32 0, align 4
@I2C_CTRL_MODE = common dso_local global i32 0, align 4
@I2C_CTRL_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm750_hw_i2c_init(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i32, i32* @GPIO_MUX, align 4
  %5 = call i32 @peek32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @GPIO_MUX_30, align 4
  %7 = load i32, i32* @GPIO_MUX_31, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @GPIO_MUX, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @poke32(i32 %11, i32 %12)
  %14 = call i32 @sm750_enable_i2c(i32 1)
  %15 = load i32, i32* @I2C_CTRL, align 4
  %16 = call i32 @peek32(i32 %15)
  %17 = load i32, i32* @I2C_CTRL_MODE, align 4
  %18 = load i32, i32* @I2C_CTRL_EN, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  store i32 %21, i32* %3, align 4
  %22 = load i8, i8* %2, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @I2C_CTRL_MODE, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %1
  %29 = load i32, i32* @I2C_CTRL_EN, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @I2C_CTRL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @poke32(i32 %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @peek32(i32) #1

declare dso_local i32 @poke32(i32, i32) #1

declare dso_local i32 @sm750_enable_i2c(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
