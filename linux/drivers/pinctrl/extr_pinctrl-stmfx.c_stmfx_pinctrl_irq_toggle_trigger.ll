; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_irq_toggle_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_irq_toggle_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmfx_pinctrl = type { i64*, i64*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@STMFX_REG_IRQ_GPI_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmfx_pinctrl*, i32)* @stmfx_pinctrl_irq_toggle_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmfx_pinctrl_irq_toggle_trigger(%struct.stmfx_pinctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.stmfx_pinctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.stmfx_pinctrl* %0, %struct.stmfx_pinctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @get_reg(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @get_mask(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %3, align 8
  %13 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %72

22:                                               ; preds = %2
  %23 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %3, align 8
  %24 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %23, i32 0, i32 3
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @stmfx_gpio_get(i32* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %72

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %3, align 8
  %36 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = and i64 %40, %34
  store i64 %41, i64* %39, align 8
  %42 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %3, align 8
  %43 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* @STMFX_REG_IRQ_GPI_TYPE, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %47, %48
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @regmap_write_bits(i32 %46, i64 %49, i64 %50, i64 0)
  br label %72

52:                                               ; preds = %30
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %3, align 8
  %55 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = or i64 %59, %53
  store i64 %60, i64* %58, align 8
  %61 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %3, align 8
  %62 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @STMFX_REG_IRQ_GPI_TYPE, align 8
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @regmap_write_bits(i32 %65, i64 %68, i64 %69, i64 %70)
  br label %72

72:                                               ; preds = %21, %29, %52, %33
  ret void
}

declare dso_local i64 @get_reg(i32) #1

declare dso_local i64 @get_mask(i32) #1

declare dso_local i32 @stmfx_gpio_get(i32*, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
