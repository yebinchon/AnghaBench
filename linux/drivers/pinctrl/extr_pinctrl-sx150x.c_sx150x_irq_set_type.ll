; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-sx150x.c_sx150x_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.sx150x_pinctrl = type { i32 }

@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@SX150X_IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@SX150X_IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @sx150x_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx150x_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sx150x_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %10 = call i32 @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  %11 = call %struct.sx150x_pinctrl* @gpiochip_get_data(i32 %10)
  store %struct.sx150x_pinctrl* %11, %struct.sx150x_pinctrl** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %14 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %23 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @SX150X_IRQ_TYPE_EDGE_RISING, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @SX150X_IRQ_TYPE_EDGE_FALLING, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load %struct.sx150x_pinctrl*, %struct.sx150x_pinctrl** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @sx150x_irq_set_sense(%struct.sx150x_pinctrl* %43, i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.sx150x_pinctrl* @gpiochip_get_data(i32) #1

declare dso_local i32 @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @sx150x_irq_set_sense(%struct.sx150x_pinctrl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
