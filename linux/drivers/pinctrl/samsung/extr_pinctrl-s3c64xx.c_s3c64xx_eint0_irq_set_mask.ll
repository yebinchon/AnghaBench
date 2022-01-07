; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_eint0_irq_set_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_eint0_irq_set_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.s3c64xx_eint0_domain_data = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.samsung_pinctrl_drv_data* }
%struct.samsung_pinctrl_drv_data = type { i64 }

@EINT0MASK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*, i32)* @s3c64xx_eint0_irq_set_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c64xx_eint0_irq_set_mask(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c64xx_eint0_domain_data*, align 8
  %6 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.s3c64xx_eint0_domain_data* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.s3c64xx_eint0_domain_data* %9, %struct.s3c64xx_eint0_domain_data** %5, align 8
  %10 = load %struct.s3c64xx_eint0_domain_data*, %struct.s3c64xx_eint0_domain_data** %5, align 8
  %11 = getelementptr inbounds %struct.s3c64xx_eint0_domain_data, %struct.s3c64xx_eint0_domain_data* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %13, align 8
  store %struct.samsung_pinctrl_drv_data* %14, %struct.samsung_pinctrl_drv_data** %6, align 8
  %15 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %6, align 8
  %16 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EINT0MASK_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %2
  %24 = load %struct.s3c64xx_eint0_domain_data*, %struct.s3c64xx_eint0_domain_data** %5, align 8
  %25 = getelementptr inbounds %struct.s3c64xx_eint0_domain_data, %struct.s3c64xx_eint0_domain_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %28 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.s3c64xx_eint0_domain_data*, %struct.s3c64xx_eint0_domain_data** %5, align 8
  %37 = getelementptr inbounds %struct.s3c64xx_eint0_domain_data, %struct.s3c64xx_eint0_domain_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %40 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %35, %23
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %6, align 8
  %51 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EINT0MASK_REG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  ret void
}

declare dso_local %struct.s3c64xx_eint0_domain_data* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
