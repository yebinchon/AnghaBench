; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_demux_eint16_31.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_irq_demux_eint16_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 }
%struct.exynos_muxed_weint_data = type { i32, %struct.samsung_pin_bank** }
%struct.samsung_pin_bank = type { i32, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @exynos_irq_demux_eint16_31 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_irq_demux_eint16_31(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.exynos_muxed_weint_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.samsung_pin_bank*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %9)
  store %struct.irq_chip* %10, %struct.irq_chip** %3, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call %struct.exynos_muxed_weint_data* @irq_desc_get_handler_data(%struct.irq_desc* %11)
  store %struct.exynos_muxed_weint_data* %12, %struct.exynos_muxed_weint_data** %4, align 8
  %13 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call i32 @chained_irq_enter(%struct.irq_chip* %13, %struct.irq_desc* %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %66, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.exynos_muxed_weint_data*, %struct.exynos_muxed_weint_data** %4, align 8
  %19 = getelementptr inbounds %struct.exynos_muxed_weint_data, %struct.exynos_muxed_weint_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %16
  %23 = load %struct.exynos_muxed_weint_data*, %struct.exynos_muxed_weint_data** %4, align 8
  %24 = getelementptr inbounds %struct.exynos_muxed_weint_data, %struct.exynos_muxed_weint_data* %23, i32 0, i32 1
  %25 = load %struct.samsung_pin_bank**, %struct.samsung_pin_bank*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %25, i64 %27
  %29 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %28, align 8
  store %struct.samsung_pin_bank* %29, %struct.samsung_pin_bank** %8, align 8
  %30 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %31 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %34 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %32, %37
  %39 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %40 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i64 @readl(i64 %42)
  store i64 %43, i64* %5, align 8
  %44 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %45 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %48 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %46, %51
  %53 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %54 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = call i64 @readl(i64 %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = xor i64 %59, -1
  %61 = and i64 %58, %60
  %62 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %8, align 8
  %63 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @exynos_irq_demux_eint(i64 %61, i32 %64)
  br label %66

66:                                               ; preds = %22
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %16

69:                                               ; preds = %16
  %70 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %71 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %72 = call i32 @chained_irq_exit(%struct.irq_chip* %70, %struct.irq_desc* %71)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.exynos_muxed_weint_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @exynos_irq_demux_eint(i64, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
