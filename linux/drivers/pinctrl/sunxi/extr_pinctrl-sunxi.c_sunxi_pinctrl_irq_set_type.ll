; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.sunxi_pinctrl = type { i32, i32, i32 }

@IRQ_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_LEVEL_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_MASK = common dso_local global i32 0, align 4
@sunxi_pinctrl_level_irq_chip = common dso_local global i32 0, align 4
@handle_fasteoi_irq = common dso_local global i32 0, align 4
@sunxi_pinctrl_edge_irq_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_CFG_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @sunxi_pinctrl_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pinctrl_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sunxi_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.sunxi_pinctrl* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.sunxi_pinctrl* %13, %struct.sunxi_pinctrl** %6, align 8
  %14 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %15 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sunxi_irq_cfg_reg(i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sunxi_irq_cfg_offset(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %36 [
    i32 130, label %26
    i32 131, label %28
    i32 132, label %30
    i32 129, label %32
    i32 128, label %34
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_EDGE_RISING, align 4
  store i32 %27, i32* %11, align 4
  br label %39

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_EDGE_FALLING, align 4
  store i32 %29, i32* %11, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_EDGE_BOTH, align 4
  store i32 %31, i32* %11, align 4
  br label %39

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_LEVEL_HIGH, align 4
  store i32 %33, i32* %11, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @IRQ_LEVEL_LOW, align 4
  store i32 %35, i32* %11, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %84

39:                                               ; preds = %34, %32, %30, %28, %26
  %40 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %41 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %40, i32 0, i32 1
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @raw_spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IRQ_TYPE_LEVEL_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %50 = load i32, i32* @handle_fasteoi_irq, align 4
  %51 = call i32 @irq_set_chip_handler_name_locked(%struct.irq_data* %49, i32* @sunxi_pinctrl_level_irq_chip, i32 %50, i32* null)
  br label %56

52:                                               ; preds = %39
  %53 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %54 = load i32, i32* @handle_edge_irq, align 4
  %55 = call i32 @irq_set_chip_handler_name_locked(%struct.irq_data* %53, i32* @sunxi_pinctrl_edge_irq_chip, i32 %54, i32* null)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %58 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @readl(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @IRQ_CFG_IRQ_MASK, align 4
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %75 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @writel(i32 %73, i32 %78)
  %80 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %81 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %80, i32 0, i32 1
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @raw_spin_unlock_irqrestore(i32* %81, i64 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %56, %36
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.sunxi_pinctrl* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @sunxi_irq_cfg_reg(i32, i32) #1

declare dso_local i32 @sunxi_irq_cfg_offset(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @irq_set_chip_handler_name_locked(%struct.irq_data*, i32*, i32, i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
