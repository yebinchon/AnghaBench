; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_gpio_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_gpio_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.abx500_pinctrl = type { i32, %struct.TYPE_2__*, %struct.abx500_gpio_irq_cluster* }
%struct.TYPE_2__ = type { i32 }
%struct.abx500_gpio_irq_cluster = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @abx500_gpio_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_gpio_to_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.abx500_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.abx500_gpio_irq_cluster*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %12 = call %struct.abx500_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.abx500_pinctrl* %12, %struct.abx500_pinctrl** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %57, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %18 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %15
  %22 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %23 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %22, i32 0, i32 2
  %24 = load %struct.abx500_gpio_irq_cluster*, %struct.abx500_gpio_irq_cluster** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.abx500_gpio_irq_cluster, %struct.abx500_gpio_irq_cluster* %24, i64 %26
  store %struct.abx500_gpio_irq_cluster* %27, %struct.abx500_gpio_irq_cluster** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.abx500_gpio_irq_cluster*, %struct.abx500_gpio_irq_cluster** %10, align 8
  %30 = getelementptr inbounds %struct.abx500_gpio_irq_cluster, %struct.abx500_gpio_irq_cluster* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.abx500_gpio_irq_cluster*, %struct.abx500_gpio_irq_cluster** %10, align 8
  %36 = getelementptr inbounds %struct.abx500_gpio_irq_cluster, %struct.abx500_gpio_irq_cluster* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.abx500_gpio_irq_cluster*, %struct.abx500_gpio_irq_cluster** %10, align 8
  %42 = getelementptr inbounds %struct.abx500_gpio_irq_cluster, %struct.abx500_gpio_irq_cluster* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  %45 = load %struct.abx500_gpio_irq_cluster*, %struct.abx500_gpio_irq_cluster** %10, align 8
  %46 = getelementptr inbounds %struct.abx500_gpio_irq_cluster, %struct.abx500_gpio_irq_cluster* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %50 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @irq_create_mapping(i32 %53, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %63

56:                                               ; preds = %33, %21
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %15

60:                                               ; preds = %15
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %39
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.abx500_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
