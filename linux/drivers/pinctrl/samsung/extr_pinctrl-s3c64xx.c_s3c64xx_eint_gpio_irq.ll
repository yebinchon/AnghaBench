; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_eint_gpio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_eint_gpio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_chip = type { i32 }
%struct.s3c64xx_eint_gpio_data = type { i32*, %struct.samsung_pinctrl_drv_data* }
%struct.samsung_pinctrl_drv_data = type { i64 }

@SERVICE_REG = common dso_local global i64 0, align 8
@SVC_NUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @s3c64xx_eint_gpio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c64xx_eint_gpio_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  %4 = alloca %struct.s3c64xx_eint_gpio_data*, align 8
  %5 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %10)
  store %struct.irq_chip* %11, %struct.irq_chip** %3, align 8
  %12 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %13 = call %struct.s3c64xx_eint_gpio_data* @irq_desc_get_handler_data(%struct.irq_desc* %12)
  store %struct.s3c64xx_eint_gpio_data* %13, %struct.s3c64xx_eint_gpio_data** %4, align 8
  %14 = load %struct.s3c64xx_eint_gpio_data*, %struct.s3c64xx_eint_gpio_data** %4, align 8
  %15 = getelementptr inbounds %struct.s3c64xx_eint_gpio_data, %struct.s3c64xx_eint_gpio_data* %14, i32 0, i32 1
  %16 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %15, align 8
  store %struct.samsung_pinctrl_drv_data* %16, %struct.samsung_pinctrl_drv_data** %5, align 8
  %17 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %18 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %19 = call i32 @chained_irq_enter(%struct.irq_chip* %17, %struct.irq_desc* %18)
  br label %20

20:                                               ; preds = %63, %1
  %21 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %22 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SERVICE_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @SVC_GROUP(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SVC_NUM_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %64

35:                                               ; preds = %20
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %39, 8
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = sub i32 %43, 8
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %41
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.s3c64xx_eint_gpio_data*, %struct.s3c64xx_eint_gpio_data** %4, align 8
  %48 = getelementptr inbounds %struct.s3c64xx_eint_gpio_data, %struct.s3c64xx_eint_gpio_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @irq_linear_revmap(i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @generic_handle_irq(i32 %61)
  br label %63

63:                                               ; preds = %46
  br i1 true, label %20, label %64

64:                                               ; preds = %63, %34
  %65 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %66 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %67 = call i32 @chained_irq_exit(%struct.irq_chip* %65, %struct.irq_desc* %66)
  ret void
}

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.s3c64xx_eint_gpio_data* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @SVC_GROUP(i32) #1

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
