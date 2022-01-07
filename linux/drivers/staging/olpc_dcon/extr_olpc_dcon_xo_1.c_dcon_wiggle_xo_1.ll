; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1.c_dcon_wiggle_xo_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon_xo_1.c_dcon_wiggle_xo_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OLPC_GPIO_SMB_CLK = common dso_local global i32 0, align 4
@GPIO_OUTPUT_VAL = common dso_local global i32 0, align 4
@OLPC_GPIO_SMB_DATA = common dso_local global i32 0, align 4
@GPIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@GPIO_OUTPUT_AUX1 = common dso_local global i32 0, align 4
@GPIO_OUTPUT_AUX2 = common dso_local global i32 0, align 4
@GPIO_INPUT_AUX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dcon_wiggle_xo_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcon_wiggle_xo_1() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @OLPC_GPIO_SMB_CLK, align 4
  %3 = load i32, i32* @GPIO_OUTPUT_VAL, align 4
  %4 = call i32 @cs5535_gpio_set(i32 %2, i32 %3)
  %5 = load i32, i32* @OLPC_GPIO_SMB_DATA, align 4
  %6 = load i32, i32* @GPIO_OUTPUT_VAL, align 4
  %7 = call i32 @cs5535_gpio_set(i32 %5, i32 %6)
  %8 = load i32, i32* @OLPC_GPIO_SMB_CLK, align 4
  %9 = load i32, i32* @GPIO_OUTPUT_ENABLE, align 4
  %10 = call i32 @cs5535_gpio_set(i32 %8, i32 %9)
  %11 = load i32, i32* @OLPC_GPIO_SMB_DATA, align 4
  %12 = load i32, i32* @GPIO_OUTPUT_ENABLE, align 4
  %13 = call i32 @cs5535_gpio_set(i32 %11, i32 %12)
  %14 = load i32, i32* @OLPC_GPIO_SMB_CLK, align 4
  %15 = load i32, i32* @GPIO_OUTPUT_AUX1, align 4
  %16 = call i32 @cs5535_gpio_clear(i32 %14, i32 %15)
  %17 = load i32, i32* @OLPC_GPIO_SMB_DATA, align 4
  %18 = load i32, i32* @GPIO_OUTPUT_AUX1, align 4
  %19 = call i32 @cs5535_gpio_clear(i32 %17, i32 %18)
  %20 = load i32, i32* @OLPC_GPIO_SMB_CLK, align 4
  %21 = load i32, i32* @GPIO_OUTPUT_AUX2, align 4
  %22 = call i32 @cs5535_gpio_clear(i32 %20, i32 %21)
  %23 = load i32, i32* @OLPC_GPIO_SMB_DATA, align 4
  %24 = load i32, i32* @GPIO_OUTPUT_AUX2, align 4
  %25 = call i32 @cs5535_gpio_clear(i32 %23, i32 %24)
  %26 = load i32, i32* @OLPC_GPIO_SMB_CLK, align 4
  %27 = load i32, i32* @GPIO_INPUT_AUX1, align 4
  %28 = call i32 @cs5535_gpio_clear(i32 %26, i32 %27)
  %29 = load i32, i32* @OLPC_GPIO_SMB_DATA, align 4
  %30 = load i32, i32* @GPIO_INPUT_AUX1, align 4
  %31 = call i32 @cs5535_gpio_clear(i32 %29, i32 %30)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %44, %0
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = call i32 @udelay(i32 5)
  %37 = load i32, i32* @OLPC_GPIO_SMB_CLK, align 4
  %38 = load i32, i32* @GPIO_OUTPUT_VAL, align 4
  %39 = call i32 @cs5535_gpio_clear(i32 %37, i32 %38)
  %40 = call i32 @udelay(i32 5)
  %41 = load i32, i32* @OLPC_GPIO_SMB_CLK, align 4
  %42 = load i32, i32* @GPIO_OUTPUT_VAL, align 4
  %43 = call i32 @cs5535_gpio_set(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %32

47:                                               ; preds = %32
  %48 = call i32 @udelay(i32 5)
  %49 = load i32, i32* @OLPC_GPIO_SMB_CLK, align 4
  %50 = load i32, i32* @GPIO_OUTPUT_AUX1, align 4
  %51 = call i32 @cs5535_gpio_set(i32 %49, i32 %50)
  %52 = load i32, i32* @OLPC_GPIO_SMB_DATA, align 4
  %53 = load i32, i32* @GPIO_OUTPUT_AUX1, align 4
  %54 = call i32 @cs5535_gpio_set(i32 %52, i32 %53)
  %55 = load i32, i32* @OLPC_GPIO_SMB_CLK, align 4
  %56 = load i32, i32* @GPIO_INPUT_AUX1, align 4
  %57 = call i32 @cs5535_gpio_set(i32 %55, i32 %56)
  %58 = load i32, i32* @OLPC_GPIO_SMB_DATA, align 4
  %59 = load i32, i32* @GPIO_INPUT_AUX1, align 4
  %60 = call i32 @cs5535_gpio_set(i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @cs5535_gpio_set(i32, i32) #1

declare dso_local i32 @cs5535_gpio_clear(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
