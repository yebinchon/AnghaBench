; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_irq_demux_eint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_irq_demux_eint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 }
%struct.s3c64xx_eint0_data = type { i32*, i32*, %struct.samsung_pinctrl_drv_data* }
%struct.samsung_pinctrl_drv_data = type { i64 }

@EINT0PEND_REG = common dso_local global i64 0, align 8
@EINT0MASK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*, i32)* @s3c64xx_irq_demux_eint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c64xx_irq_demux_eint(%struct.irq_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_chip*, align 8
  %6 = alloca %struct.s3c64xx_eint0_data*, align 8
  %7 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %13 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %12)
  store %struct.irq_chip* %13, %struct.irq_chip** %5, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %15 = call %struct.s3c64xx_eint0_data* @irq_desc_get_handler_data(%struct.irq_desc* %14)
  store %struct.s3c64xx_eint0_data* %15, %struct.s3c64xx_eint0_data** %6, align 8
  %16 = load %struct.s3c64xx_eint0_data*, %struct.s3c64xx_eint0_data** %6, align 8
  %17 = getelementptr inbounds %struct.s3c64xx_eint0_data, %struct.s3c64xx_eint0_data* %16, i32 0, i32 2
  %18 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %17, align 8
  store %struct.samsung_pinctrl_drv_data* %18, %struct.samsung_pinctrl_drv_data** %7, align 8
  %19 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %20 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %21 = call i32 @chained_irq_enter(%struct.irq_chip* %19, %struct.irq_desc* %20)
  %22 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %7, align 8
  %23 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EINT0PEND_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %7, align 8
  %29 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EINT0MASK_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %46, %2
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @fls(i32 %47)
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 1, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load %struct.s3c64xx_eint0_data*, %struct.s3c64xx_eint0_data** %6, align 8
  %56 = getelementptr inbounds %struct.s3c64xx_eint0_data, %struct.s3c64xx_eint0_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.s3c64xx_eint0_data*, %struct.s3c64xx_eint0_data** %6, align 8
  %63 = getelementptr inbounds %struct.s3c64xx_eint0_data, %struct.s3c64xx_eint0_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @irq_linear_revmap(i32 %61, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @BUG_ON(i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @generic_handle_irq(i32 %75)
  br label %43

77:                                               ; preds = %43
  %78 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %79 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %80 = call i32 @chained_irq_exit(%struct.irq_chip* %78, %struct.irq_desc* %79)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.s3c64xx_eint0_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @irq_linear_revmap(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
