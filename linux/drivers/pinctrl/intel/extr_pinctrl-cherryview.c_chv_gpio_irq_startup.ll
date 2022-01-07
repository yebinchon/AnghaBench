; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_gpio_irq_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-cherryview.c_chv_gpio_irq_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.chv_pinctrl = type { i32* }

@IRQ_TYPE_NONE = common dso_local global i64 0, align 8
@chv_lock = common dso_local global i32 0, align 4
@CHV_PADCTRL0 = common dso_local global i32 0, align 4
@CHV_PADCTRL0_INTSEL_MASK = common dso_local global i32 0, align 4
@CHV_PADCTRL0_INTSEL_SHIFT = common dso_local global i32 0, align 4
@CHV_PADCTRL1 = common dso_local global i32 0, align 4
@CHV_PADCTRL1_INTWAKECFG_LEVEL = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @chv_gpio_irq_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chv_gpio_irq_startup(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.chv_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call i64 @irqd_get_trigger_type(%struct.irq_data* %10)
  %12 = load i64, i64* @IRQ_TYPE_NONE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %70

14:                                               ; preds = %1
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %15)
  store %struct.gpio_chip* %16, %struct.gpio_chip** %3, align 8
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %18 = call %struct.chv_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %17)
  store %struct.chv_pinctrl* %18, %struct.chv_pinctrl** %4, align 8
  %19 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %20 = call i32 @irqd_to_hwirq(%struct.irq_data* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @raw_spin_lock_irqsave(i32* @chv_lock, i64 %21)
  %23 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CHV_PADCTRL0, align 4
  %26 = call i32 @chv_padreg(%struct.chv_pinctrl* %23, i32 %24, i32 %25)
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @CHV_PADCTRL0_INTSEL_MASK, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @CHV_PADCTRL0_INTSEL_SHIFT, align 4
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CHV_PADCTRL1, align 4
  %37 = call i32 @chv_padreg(%struct.chv_pinctrl* %34, i32 %35, i32 %36)
  %38 = call i32 @readl(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @CHV_PADCTRL1_INTWAKECFG_LEVEL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %14
  %44 = load i32, i32* @handle_level_irq, align 4
  store i32 %44, i32* %6, align 4
  br label %47

45:                                               ; preds = %14
  %46 = load i32, i32* @handle_edge_irq, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %49 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %47
  %57 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @irq_set_handler_locked(%struct.irq_data* %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.chv_pinctrl*, %struct.chv_pinctrl** %4, align 8
  %62 = getelementptr inbounds %struct.chv_pinctrl, %struct.chv_pinctrl* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %47
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @raw_spin_unlock_irqrestore(i32* @chv_lock, i64 %68)
  br label %70

70:                                               ; preds = %67, %1
  %71 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %72 = call i32 @chv_gpio_irq_unmask(%struct.irq_data* %71)
  ret i32 0
}

declare dso_local i64 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.chv_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @chv_padreg(%struct.chv_pinctrl*, i32, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @chv_gpio_irq_unmask(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
