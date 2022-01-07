; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c24xx_eint_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c24xx_eint_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i8 }
%struct.samsung_pin_bank = type { i8, %struct.samsung_pinctrl_drv_data* }
%struct.samsung_pinctrl_drv_data = type { i64 }

@EINTMASK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @s3c24xx_eint_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_eint_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.samsung_pin_bank*, align 8
  %4 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.samsung_pin_bank* %8, %struct.samsung_pin_bank** %3, align 8
  %9 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %10 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %9, i32 0, i32 1
  %11 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %10, align 8
  store %struct.samsung_pinctrl_drv_data* %11, %struct.samsung_pinctrl_drv_data** %4, align 8
  %12 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %13 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %15, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %5, align 1
  %22 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %23 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EINTMASK_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @readl(i64 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %6, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %37 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EINTMASK_REG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i64 %35, i64 %40)
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
