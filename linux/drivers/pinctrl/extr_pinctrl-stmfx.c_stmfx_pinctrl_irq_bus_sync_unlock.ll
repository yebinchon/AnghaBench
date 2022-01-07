; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_irq_bus_sync_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_irq_bus_sync_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.stmfx_pinctrl = type { i64*, i64*, i64*, i64*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STMFX_REG_IRQ_GPI_EVT = common dso_local global i32 0, align 4
@NR_GPIO_REGS = common dso_local global i32 0, align 4
@STMFX_REG_IRQ_GPI_TYPE = common dso_local global i32 0, align 4
@STMFX_REG_IRQ_GPI_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @stmfx_pinctrl_irq_bus_sync_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmfx_pinctrl_irq_bus_sync_unlock(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.stmfx_pinctrl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %3, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.stmfx_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.stmfx_pinctrl* %10, %struct.stmfx_pinctrl** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @get_reg(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @get_mask(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %20 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %1
  %29 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %30 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %31 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @stmfx_gpio_get(%struct.gpio_chip* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = xor i64 %36, -1
  %38 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %39 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, %37
  store i64 %44, i64* %42, align 8
  br label %54

45:                                               ; preds = %28
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %48 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = or i64 %52, %46
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %45, %35
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %57 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %56, i32 0, i32 5
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @STMFX_REG_IRQ_GPI_EVT, align 4
  %62 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %63 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* @NR_GPIO_REGS, align 4
  %66 = call i32 @regmap_bulk_write(i32 %60, i32 %61, i64* %64, i32 %65)
  %67 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %68 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %67, i32 0, i32 5
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @STMFX_REG_IRQ_GPI_TYPE, align 4
  %73 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %74 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* @NR_GPIO_REGS, align 4
  %77 = call i32 @regmap_bulk_write(i32 %71, i32 %72, i64* %75, i32 %76)
  %78 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %79 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %78, i32 0, i32 5
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @STMFX_REG_IRQ_GPI_SRC, align 4
  %84 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %85 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* @NR_GPIO_REGS, align 4
  %88 = call i32 @regmap_bulk_write(i32 %82, i32 %83, i64* %86, i32 %87)
  %89 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %4, align 8
  %90 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %89, i32 0, i32 4
  %91 = call i32 @mutex_unlock(i32* %90)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.stmfx_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @get_reg(i32) #1

declare dso_local i64 @get_mask(i32) #1

declare dso_local i64 @stmfx_gpio_get(%struct.gpio_chip*, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
