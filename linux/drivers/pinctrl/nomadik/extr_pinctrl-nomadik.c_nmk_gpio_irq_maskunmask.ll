; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_irq_maskunmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_gpio_irq_maskunmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.nmk_gpio_chip = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@nmk_gpio_slpm_lock = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @nmk_gpio_irq_maskunmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_gpio_irq_maskunmask(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nmk_gpio_chip*, align 8
  %7 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %9 = call %struct.nmk_gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.nmk_gpio_chip* %9, %struct.nmk_gpio_chip** %6, align 8
  %10 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %11 = icmp ne %struct.nmk_gpio_chip* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %17 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_enable(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @nmk_gpio_slpm_lock, i64 %20)
  %22 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %23 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %22, i32 0, i32 2
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %26 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %27 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NORMAL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @__nmk_gpio_irq_modify(%struct.nmk_gpio_chip* %25, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %33 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %36 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %15
  %42 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %43 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %44 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @__nmk_gpio_set_wake(%struct.nmk_gpio_chip* %42, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %15
  %49 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %50 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @nmk_gpio_slpm_lock, i64 %52)
  %54 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %6, align 8
  %55 = getelementptr inbounds %struct.nmk_gpio_chip, %struct.nmk_gpio_chip* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @clk_disable(i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.nmk_gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__nmk_gpio_irq_modify(%struct.nmk_gpio_chip*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__nmk_gpio_set_wake(%struct.nmk_gpio_chip*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
