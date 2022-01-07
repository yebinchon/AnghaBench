; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_gpio_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_gpio_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32, i64, i32, i32 }
%struct.sunxi_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sunxi_desc_function = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_PER_BANK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: request IRQ for GPIO %d, return %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sunxi_pinctrl_gpio_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pinctrl_gpio_to_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sunxi_pinctrl*, align 8
  %7 = alloca %struct.sunxi_desc_function*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.sunxi_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.sunxi_pinctrl* %11, %struct.sunxi_pinctrl** %6, align 8
  %12 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %13 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %2
  %28 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_pin(%struct.sunxi_pinctrl* %28, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.sunxi_desc_function* %30, %struct.sunxi_desc_function** %7, align 8
  %31 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %7, align 8
  %32 = icmp ne %struct.sunxi_desc_function* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %65

36:                                               ; preds = %27
  %37 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %7, align 8
  %38 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IRQ_PER_BANK, align 4
  %41 = mul i32 %39, %40
  %42 = load %struct.sunxi_desc_function*, %struct.sunxi_desc_function** %7, align 8
  %43 = getelementptr inbounds %struct.sunxi_desc_function, %struct.sunxi_desc_function* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %41, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %47 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %55 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %57, i32 %58)
  %60 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %61 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @irq_find_mapping(i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %36, %33, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.sunxi_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.sunxi_desc_function* @sunxi_pinctrl_desc_find_function_by_pin(%struct.sunxi_pinctrl*, i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
