; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_free_charger_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_free_charger_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_IRQ_CHG_BAT_HOT = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_BAT_COLD = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_BAT_FAIL = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_TO = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_END = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_START = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_VBATT_LT_3P9 = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_VBATT_LT_3P1 = common dso_local global i32 0, align 4
@WM8350_IRQ_CHG_VBATT_LT_2P85 = common dso_local global i32 0, align 4
@WM8350_IRQ_EXT_USB_FB = common dso_local global i32 0, align 4
@WM8350_IRQ_EXT_WALL_FB = common dso_local global i32 0, align 4
@WM8350_IRQ_EXT_BAT_FB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*)* @free_charger_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_charger_irq(%struct.wm8350* %0) #0 {
  %2 = alloca %struct.wm8350*, align 8
  store %struct.wm8350* %0, %struct.wm8350** %2, align 8
  %3 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %4 = load i32, i32* @WM8350_IRQ_CHG_BAT_HOT, align 4
  %5 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %6 = call i32 @wm8350_free_irq(%struct.wm8350* %3, i32 %4, %struct.wm8350* %5)
  %7 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %8 = load i32, i32* @WM8350_IRQ_CHG_BAT_COLD, align 4
  %9 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %10 = call i32 @wm8350_free_irq(%struct.wm8350* %7, i32 %8, %struct.wm8350* %9)
  %11 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %12 = load i32, i32* @WM8350_IRQ_CHG_BAT_FAIL, align 4
  %13 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %14 = call i32 @wm8350_free_irq(%struct.wm8350* %11, i32 %12, %struct.wm8350* %13)
  %15 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %16 = load i32, i32* @WM8350_IRQ_CHG_TO, align 4
  %17 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %18 = call i32 @wm8350_free_irq(%struct.wm8350* %15, i32 %16, %struct.wm8350* %17)
  %19 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %20 = load i32, i32* @WM8350_IRQ_CHG_END, align 4
  %21 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %22 = call i32 @wm8350_free_irq(%struct.wm8350* %19, i32 %20, %struct.wm8350* %21)
  %23 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %24 = load i32, i32* @WM8350_IRQ_CHG_START, align 4
  %25 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %26 = call i32 @wm8350_free_irq(%struct.wm8350* %23, i32 %24, %struct.wm8350* %25)
  %27 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %28 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P9, align 4
  %29 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %30 = call i32 @wm8350_free_irq(%struct.wm8350* %27, i32 %28, %struct.wm8350* %29)
  %31 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %32 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P1, align 4
  %33 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %34 = call i32 @wm8350_free_irq(%struct.wm8350* %31, i32 %32, %struct.wm8350* %33)
  %35 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %36 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_2P85, align 4
  %37 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %38 = call i32 @wm8350_free_irq(%struct.wm8350* %35, i32 %36, %struct.wm8350* %37)
  %39 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %40 = load i32, i32* @WM8350_IRQ_EXT_USB_FB, align 4
  %41 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %42 = call i32 @wm8350_free_irq(%struct.wm8350* %39, i32 %40, %struct.wm8350* %41)
  %43 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %44 = load i32, i32* @WM8350_IRQ_EXT_WALL_FB, align 4
  %45 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %46 = call i32 @wm8350_free_irq(%struct.wm8350* %43, i32 %44, %struct.wm8350* %45)
  %47 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %48 = load i32, i32* @WM8350_IRQ_EXT_BAT_FB, align 4
  %49 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %50 = call i32 @wm8350_free_irq(%struct.wm8350* %47, i32 %48, %struct.wm8350* %49)
  ret void
}

declare dso_local i32 @wm8350_free_irq(%struct.wm8350*, i32, %struct.wm8350*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
