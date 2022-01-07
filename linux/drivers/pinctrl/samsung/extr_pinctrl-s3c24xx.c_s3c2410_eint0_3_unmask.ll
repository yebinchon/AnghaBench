; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c2410_eint0_3_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c2410_eint0_3_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.samsung_pin_bank = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.s3c24xx_eint_domain_data* }
%struct.s3c24xx_eint_domain_data = type { %struct.s3c24xx_eint_data* }
%struct.s3c24xx_eint_data = type { i32* }
%struct.irq_chip = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @s3c2410_eint0_3_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_eint0_3_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.samsung_pin_bank*, align 8
  %4 = alloca %struct.s3c24xx_eint_domain_data*, align 8
  %5 = alloca %struct.s3c24xx_eint_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irq_chip*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.samsung_pin_bank* %9, %struct.samsung_pin_bank** %3, align 8
  %10 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %3, align 8
  %11 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.s3c24xx_eint_domain_data*, %struct.s3c24xx_eint_domain_data** %13, align 8
  store %struct.s3c24xx_eint_domain_data* %14, %struct.s3c24xx_eint_domain_data** %4, align 8
  %15 = load %struct.s3c24xx_eint_domain_data*, %struct.s3c24xx_eint_domain_data** %4, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_eint_domain_data, %struct.s3c24xx_eint_domain_data* %15, i32 0, i32 0
  %17 = load %struct.s3c24xx_eint_data*, %struct.s3c24xx_eint_data** %16, align 8
  store %struct.s3c24xx_eint_data* %17, %struct.s3c24xx_eint_data** %5, align 8
  %18 = load %struct.s3c24xx_eint_data*, %struct.s3c24xx_eint_data** %5, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_eint_data, %struct.s3c24xx_eint_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.irq_chip* @irq_get_chip(i32 %26)
  store %struct.irq_chip* %27, %struct.irq_chip** %7, align 8
  %28 = load %struct.irq_chip*, %struct.irq_chip** %7, align 8
  %29 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @irq_get_irq_data(i32 %31)
  %33 = call i32 %30(i32 %32)
  ret void
}

declare dso_local %struct.samsung_pin_bank* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.irq_chip* @irq_get_chip(i32) #1

declare dso_local i32 @irq_get_irq_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
