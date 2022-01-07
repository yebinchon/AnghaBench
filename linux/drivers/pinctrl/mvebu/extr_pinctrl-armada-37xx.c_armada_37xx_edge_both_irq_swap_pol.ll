; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_edge_both_irq_swap_pol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_edge_both_irq_swap_pol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_37xx_pinctrl = type { i32, i64, i32 }

@GPIO_PER_REG = common dso_local global i32 0, align 4
@INPUT_VAL = common dso_local global i64 0, align 8
@IRQ_POL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada_37xx_pinctrl*, i32)* @armada_37xx_edge_both_irq_swap_pol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_edge_both_irq_swap_pol(%struct.armada_37xx_pinctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.armada_37xx_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.armada_37xx_pinctrl* %0, %struct.armada_37xx_pinctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GPIO_PER_REG, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GPIO_PER_REG, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %18 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* @INPUT_VAL, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 4, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @regmap_read(i32 %19, i64 %24, i32* %8)
  %26 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %27 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %26, i32 0, i32 0
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %31 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IRQ_POL, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 4, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %2
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %7, align 4
  %51 = xor i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %54 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IRQ_POL, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 4, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %57, %60
  %62 = call i32 @writel(i32 %52, i64 %61)
  store i32 0, i32* %9, align 4
  br label %64

63:                                               ; preds = %2
  store i32 -1, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %3, align 8
  %66 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %65, i32 0, i32 0
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
