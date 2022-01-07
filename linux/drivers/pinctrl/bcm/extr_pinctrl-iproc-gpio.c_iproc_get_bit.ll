; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_get_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_get_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_gpio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_gpio*, i32, i32)* @iproc_get_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_get_bit(%struct.iproc_gpio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iproc_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iproc_gpio* %0, %struct.iproc_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @IPROC_GPIO_REG(i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @IPROC_GPIO_SHIFT(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.iproc_gpio*, %struct.iproc_gpio** %4, align 8
  %15 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @IPROC_GPIO_REG(i32, i32) #1

declare dso_local i32 @IPROC_GPIO_SHIFT(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
