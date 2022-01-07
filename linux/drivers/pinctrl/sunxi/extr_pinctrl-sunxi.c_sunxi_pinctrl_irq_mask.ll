; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.sunxi_pinctrl = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @sunxi_pinctrl_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_pinctrl_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.sunxi_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.sunxi_pinctrl* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.sunxi_pinctrl* %9, %struct.sunxi_pinctrl** %3, align 8
  %10 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %3, align 8
  %11 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sunxi_irq_ctrl_reg(i32 %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sunxi_irq_ctrl_offset(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %3, align 8
  %22 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %21, i32 0, i32 1
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @raw_spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %3, align 8
  %26 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i32 @readl(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  %36 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %3, align 8
  %37 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @writel(i32 %35, i32 %40)
  %42 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %3, align 8
  %43 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %42, i32 0, i32 1
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @raw_spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local %struct.sunxi_pinctrl* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @sunxi_irq_ctrl_reg(i32, i32) #1

declare dso_local i32 @sunxi_irq_ctrl_offset(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
