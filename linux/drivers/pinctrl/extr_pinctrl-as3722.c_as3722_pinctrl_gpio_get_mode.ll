; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_pinctrl_gpio_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-as3722.c_as3722_pinctrl_gpio_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AS3722_GPIO_MODE_HIGH_IMPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_OPEN_DRAIN = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_PULL_UP = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_IO_OPEN_DRAIN_PULL_UP = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_IO_OPEN_DRAIN = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_INPUT_PULL_UP = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_PULL_DOWN = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_INPUT_PULL_DOWN = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_INPUT = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_OUTPUT_VDDL = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_OUTPUT_VDDH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @as3722_pinctrl_gpio_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_pinctrl_gpio_get_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @AS3722_GPIO_MODE_HIGH_IMPED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AS3722_GPIO_MODE_OPEN_DRAIN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @AS3722_GPIO_MODE_PULL_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @AS3722_GPIO_MODE_IO_OPEN_DRAIN_PULL_UP, align 4
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %18
  %26 = load i32, i32* @AS3722_GPIO_MODE_IO_OPEN_DRAIN, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @AS3722_GPIO_MODE_PULL_UP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @AS3722_GPIO_MODE_INPUT_PULL_UP, align 4
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @AS3722_GPIO_MODE_PULL_DOWN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @AS3722_GPIO_MODE_INPUT_PULL_DOWN, align 4
  store i32 %43, i32* %3, align 4
  br label %56

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* @AS3722_GPIO_MODE_INPUT, align 4
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %27
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @AS3722_GPIO_MODE_PULL_DOWN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @AS3722_GPIO_MODE_OUTPUT_VDDL, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @AS3722_GPIO_MODE_OUTPUT_VDDH, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %52, %45, %42, %35, %25, %23, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
