; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_sm750_hw_i2c_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_ddk750_hwi2c.c_sm750_hw_i2c_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_CTRL = common dso_local global i32 0, align 4
@I2C_CTRL_EN = common dso_local global i32 0, align 4
@GPIO_MUX = common dso_local global i32 0, align 4
@GPIO_MUX_30 = common dso_local global i32 0, align 4
@GPIO_MUX_31 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm750_hw_i2c_close() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @I2C_CTRL, align 4
  %3 = call i32 @peek32(i32 %2)
  %4 = load i32, i32* @I2C_CTRL_EN, align 4
  %5 = xor i32 %4, -1
  %6 = and i32 %3, %5
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @I2C_CTRL, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @poke32(i32 %7, i32 %8)
  %10 = call i32 @sm750_enable_i2c(i32 0)
  %11 = load i32, i32* @GPIO_MUX, align 4
  %12 = call i32 @peek32(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @GPIO_MUX_30, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %1, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* @GPIO_MUX_31, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %1, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @GPIO_MUX, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @poke32(i32 %21, i32 %22)
  ret void
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
