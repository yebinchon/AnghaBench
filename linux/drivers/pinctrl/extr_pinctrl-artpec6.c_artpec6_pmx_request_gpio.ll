; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-artpec6.c_artpec6_pmx_request_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-artpec6.c_artpec6_pmx_request_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.artpec6_pmx = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ARTPEC6_PINMUX_SEL_MASK = common dso_local global i32 0, align 4
@ARTPEC6_CONFIG_0 = common dso_local global i32 0, align 4
@ARTPEC6_PINMUX_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @artpec6_pmx_request_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_pmx_request_gpio(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.artpec6_pmx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.artpec6_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.artpec6_pmx* %12, %struct.artpec6_pmx** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @artpec6_pmx_reg_offset(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp uge i32 %15, 32
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %8, align 8
  %22 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @readl_relaxed(i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @ARTPEC6_PINMUX_SEL_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @ARTPEC6_CONFIG_0, align 4
  %33 = load i32, i32* @ARTPEC6_PINMUX_SEL_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.artpec6_pmx*, %struct.artpec6_pmx** %8, align 8
  %39 = getelementptr inbounds %struct.artpec6_pmx, %struct.artpec6_pmx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writel_relaxed(i32 %37, i64 %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %20, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.artpec6_pmx* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @artpec6_pmx_reg_offset(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
