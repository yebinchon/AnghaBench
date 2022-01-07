; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.sunxi_pinctrl = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @sunxi_pinctrl_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_pinctrl_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_pinctrl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %13 = call %struct.sunxi_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %12)
  store %struct.sunxi_pinctrl* %13, %struct.sunxi_pinctrl** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @sunxi_data_reg(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sunxi_data_offset(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %7, align 8
  %19 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %18, i32 0, i32 0
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @raw_spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %7, align 8
  %23 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @readl(i64 %26)
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @BIT(i32 %31)
  %33 = load i64, i64* %11, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %11, align 8
  br label %41

35:                                               ; preds = %3
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @BIT(i32 %36)
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %11, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %7, align 8
  %44 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i64 %42, i64 %47)
  %49 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %7, align 8
  %50 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %49, i32 0, i32 0
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @raw_spin_unlock_irqrestore(i32* %50, i64 %51)
  ret void
}

declare dso_local %struct.sunxi_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @sunxi_data_reg(i32) #1

declare dso_local i32 @sunxi_data_offset(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
