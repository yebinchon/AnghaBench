; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_glitch_slpm_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_glitch_slpm_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_gpio_chip = type { i32, i64 }

@NUM_BANKS = common dso_local global i32 0, align 4
@nmk_gpio_chips = common dso_local global %struct.nmk_gpio_chip** null, align 8
@NMK_GPIO_SLPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @nmk_gpio_glitch_slpm_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nmk_gpio_glitch_slpm_restore(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nmk_gpio_chip*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %34, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NUM_BANKS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %5
  %10 = load %struct.nmk_gpio_chip**, %struct.nmk_gpio_chip*** @nmk_gpio_chips, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %10, i64 %12
  %14 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %13, align 8
  store %struct.nmk_gpio_chip* %14, %struct.nmk_gpio_chip** %4, align 8
  %15 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %16 = icmp ne %struct.nmk_gpio_chip* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %37

18:                                               ; preds = %9
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %25 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NMK_GPIO_SLPC, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %4, align 8
  %31 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clk_disable(i32 %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %5

37:                                               ; preds = %17, %5
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
