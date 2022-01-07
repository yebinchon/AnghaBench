; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c24xx_demux_eint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c24xx.c_s3c24xx_demux_eint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.s3c24xx_eint_data = type { i32*, %struct.samsung_pinctrl_drv_data* }
%struct.samsung_pinctrl_drv_data = type { i64 }
%struct.irq_chip = type { i32 }

@EINTPEND_REG = common dso_local global i64 0, align 8
@EINTMASK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*, i32, i32)* @s3c24xx_demux_eint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_demux_eint(%struct.irq_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s3c24xx_eint_data*, align 8
  %8 = alloca %struct.irq_chip*, align 8
  %9 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %15 = call %struct.s3c24xx_eint_data* @irq_desc_get_handler_data(%struct.irq_desc* %14)
  store %struct.s3c24xx_eint_data* %15, %struct.s3c24xx_eint_data** %7, align 8
  %16 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %17 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %16)
  store %struct.irq_chip* %17, %struct.irq_chip** %8, align 8
  %18 = load %struct.s3c24xx_eint_data*, %struct.s3c24xx_eint_data** %7, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_eint_data, %struct.s3c24xx_eint_data* %18, i32 0, i32 1
  %20 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %19, align 8
  store %struct.samsung_pinctrl_drv_data* %20, %struct.samsung_pinctrl_drv_data** %9, align 8
  %21 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %22 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %23 = call i32 @chained_irq_enter(%struct.irq_chip* %21, %struct.irq_desc* %22)
  %24 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %9, align 8
  %25 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EINTPEND_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %9, align 8
  %31 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EINTMASK_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %46, %3
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @__ffs(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = shl i32 1, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load %struct.s3c24xx_eint_data*, %struct.s3c24xx_eint_data** %7, align 8
  %55 = getelementptr inbounds %struct.s3c24xx_eint_data, %struct.s3c24xx_eint_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sub i32 %61, %62
  %64 = call i32 @irq_linear_revmap(i32 %60, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @generic_handle_irq(i32 %70)
  br label %43

72:                                               ; preds = %43
  %73 = load %struct.irq_chip*, %struct.irq_chip** %8, align 8
  %74 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %75 = call i32 @chained_irq_exit(%struct.irq_chip* %73, %struct.irq_desc* %74)
  ret void
}

declare dso_local %struct.s3c24xx_eint_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @__ffs(i32) #1

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
