; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_gpiochip_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ocelot.c_ocelot_gpiochip_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i8*, i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.ocelot_pinctrl = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.gpio_chip }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ocelot_gpiolib_chip = common dso_local global %struct.gpio_chip zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"ocelot-gpio\00", align 1
@ocelot_irqchip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@ocelot_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ocelot_pinctrl*)* @ocelot_gpiochip_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_gpiochip_register(%struct.platform_device* %0, %struct.ocelot_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ocelot_pinctrl*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ocelot_pinctrl* %1, %struct.ocelot_pinctrl** %5, align 8
  %9 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %10 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %9, i32 0, i32 2
  %11 = bitcast %struct.gpio_chip* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.gpio_chip* @ocelot_gpiolib_chip to i8*), i64 40, i1 false)
  %12 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %13 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %12, i32 0, i32 2
  store %struct.gpio_chip* %13, %struct.gpio_chip** %6, align 8
  %14 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %15 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %24 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 3
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %28 = getelementptr inbounds %struct.ocelot_pinctrl, %struct.ocelot_pinctrl* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %33 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %39 = load %struct.ocelot_pinctrl*, %struct.ocelot_pinctrl** %5, align 8
  %40 = call i32 @devm_gpiochip_add_data(%struct.TYPE_6__* %37, %struct.gpio_chip* %38, %struct.ocelot_pinctrl* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %69

45:                                               ; preds = %2
  %46 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @irq_of_parse_and_map(i32 %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %69

55:                                               ; preds = %45
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %57 = load i32, i32* @handle_edge_irq, align 4
  %58 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %59 = call i32 @gpiochip_irqchip_add(%struct.gpio_chip* %56, i32* @ocelot_irqchip, i32 0, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %69

64:                                               ; preds = %55
  %65 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @ocelot_irq_handler, align 4
  %68 = call i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip* %65, i32* @ocelot_irqchip, i32 %66, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %64, %62, %53, %43
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_6__*, %struct.gpio_chip*, %struct.ocelot_pinctrl*) #2

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #2

declare dso_local i32 @gpiochip_irqchip_add(%struct.gpio_chip*, i32*, i32, i32, i32) #2

declare dso_local i32 @gpiochip_set_chained_irqchip(%struct.gpio_chip*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
