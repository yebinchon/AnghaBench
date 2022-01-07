; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_eint0_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_eint0_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.s3c64xx_eint0_domain_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.samsung_pinctrl_drv_data* }
%struct.samsung_pinctrl_drv_data = type { i64 }

@EINT0PEND_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @s3c64xx_eint0_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c64xx_eint0_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.s3c64xx_eint0_domain_data*, align 8
  %4 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.s3c64xx_eint0_domain_data* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.s3c64xx_eint0_domain_data* %6, %struct.s3c64xx_eint0_domain_data** %3, align 8
  %7 = load %struct.s3c64xx_eint0_domain_data*, %struct.s3c64xx_eint0_domain_data** %3, align 8
  %8 = getelementptr inbounds %struct.s3c64xx_eint0_domain_data, %struct.s3c64xx_eint0_domain_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %10, align 8
  store %struct.samsung_pinctrl_drv_data* %11, %struct.samsung_pinctrl_drv_data** %4, align 8
  %12 = load %struct.s3c64xx_eint0_domain_data*, %struct.s3c64xx_eint0_domain_data** %3, align 8
  %13 = getelementptr inbounds %struct.s3c64xx_eint0_domain_data, %struct.s3c64xx_eint0_domain_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %22 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EINT0PEND_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  ret void
}

declare dso_local %struct.s3c64xx_eint0_domain_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
