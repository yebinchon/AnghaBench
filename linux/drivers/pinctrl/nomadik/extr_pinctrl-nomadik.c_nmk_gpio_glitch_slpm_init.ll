; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_glitch_slpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_glitch_slpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_gpio_chip = type { i64, i32 }

@NUM_BANKS = common dso_local global i32 0, align 4
@nmk_gpio_chips = common dso_local global %struct.nmk_gpio_chip** null, align 8
@NMK_GPIO_SLPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @nmk_gpio_glitch_slpm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmk_gpio_glitch_slpm_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmk_gpio_chip*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NUM_BANKS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %6
  %11 = load %struct.nmk_gpio_chip**, %struct.nmk_gpio_chip*** @nmk_gpio_chips, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %11, i64 %13
  %15 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %14, align 8
  store %struct.nmk_gpio_chip* %15, %struct.nmk_gpio_chip** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %22 = icmp ne %struct.nmk_gpio_chip* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %10
  br label %49

24:                                               ; preds = %10
  %25 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %26 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_enable(i32 %27)
  %29 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %30 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NMK_GPIO_SLPC, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl(i64 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %41 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NMK_GPIO_SLPC, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  br label %46

46:                                               ; preds = %24
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %6

49:                                               ; preds = %23, %6
  ret void
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
