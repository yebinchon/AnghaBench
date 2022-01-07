; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sunxi_pinctrl = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MUX_PINS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, i32, i32)* @sunxi_pmx_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_pmx_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sunxi_pinctrl*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = call %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.sunxi_pinctrl* %12, %struct.sunxi_pinctrl** %7, align 8
  %13 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %7, align 8
  %14 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %13, i32 0, i32 0
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @raw_spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %7, align 8
  %18 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %7, align 8
  %27 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @sunxi_mux_reg(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @MUX_PINS_MASK, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @sunxi_mux_offset(i32 %34)
  %36 = shl i32 %33, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @sunxi_mux_offset(i32 %42)
  %44 = shl i32 %41, %43
  %45 = or i32 %40, %44
  %46 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %7, align 8
  %47 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @sunxi_mux_reg(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = call i32 @writel(i32 %45, i64 %51)
  %53 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %7, align 8
  %54 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %53, i32 0, i32 0
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @raw_spin_unlock_irqrestore(i32* %54, i64 %55)
  ret void
}

declare dso_local %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @sunxi_mux_reg(i32) #1

declare dso_local i32 @sunxi_mux_offset(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
