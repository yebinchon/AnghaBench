; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c2412_eint0_3_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c2412_eint0_3_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.samsung_pin_bank = type { %struct.samsung_pinctrl_drv_data* }
%struct.samsung_pinctrl_drv_data = type { i64 }

@EINTMASK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @s3c2412_eint0_3_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2412_eint0_3_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.samsung_pin_bank*, align 8
  %4 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.samsung_pin_bank* %7, %struct.samsung_pin_bank** %3, align 8
  %8 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %9 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %8, i32 0, i32 0
  %10 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %9, align 8
  store %struct.samsung_pinctrl_drv_data* %10, %struct.samsung_pinctrl_drv_data** %4, align 8
  %11 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %12 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EINTMASK_REG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @readl(i64 %15)
  store i64 %16, i64* %5, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = shl i64 1, %19
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %5, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %26 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EINTMASK_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i64 %24, i64 %29)
  ret void
}

declare dso_local %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
