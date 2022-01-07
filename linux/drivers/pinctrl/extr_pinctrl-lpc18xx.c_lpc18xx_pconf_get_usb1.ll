; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_get_usb1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lpc18xx.c_lpc18xx_pconf_get_usb1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPC18XX_SCU_USB1_EPWR = common dso_local global i32 0, align 4
@LPC18XX_SCU_USB1_EPD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @lpc18xx_pconf_get_usb1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pconf_get_usb1(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %39 [
    i32 128, label %9
    i32 130, label %19
    i32 129, label %28
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @LPC18XX_SCU_USB1_EPWR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32*, i32** %6, align 8
  store i32 0, i32* %15, align 4
  br label %18

16:                                               ; preds = %9
  %17 = load i32*, i32** %6, align 8
  store i32 1, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %14
  br label %42

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LPC18XX_SCU_USB1_EPD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %19
  br label %42

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LPC18XX_SCU_USB1_EPD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  store i32 1, i32* %34, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %33
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @ENOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %38, %27, %18
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %39, %35, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
