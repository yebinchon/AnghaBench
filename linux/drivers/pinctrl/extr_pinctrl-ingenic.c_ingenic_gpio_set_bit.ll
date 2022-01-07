; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_set_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_gpio_chip = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_gpio_chip*, i64, i64, i32)* @ingenic_gpio_set_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ingenic_gpio_chip*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ingenic_gpio_chip* %0, %struct.ingenic_gpio_chip** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @REG_SET(i64 %12)
  store i64 %13, i64* %6, align 8
  br label %17

14:                                               ; preds = %4
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @REG_CLEAR(i64 %15)
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %5, align 8
  %19 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %5, align 8
  %24 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @BIT(i64 %28)
  %30 = call i32 @regmap_write(i32 %22, i64 %27, i32 %29)
  ret void
}

declare dso_local i64 @REG_SET(i64) #1

declare dso_local i64 @REG_CLEAR(i64) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
