; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_domain_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_domain_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.stm32_gpio_bank* }
%struct.stm32_gpio_bank = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.irq_data = type { i64 }
%struct.stm32_pinctrl = type { i32, i32, i64, i32*, i32 }

@HWSPINLOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't get hwspinlock\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"irq line %ld already requested.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_data*, i32)* @stm32_gpio_domain_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_gpio_domain_activate(%struct.irq_domain* %0, %struct.irq_data* %1, i32 %2) #0 {
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stm32_gpio_bank*, align 8
  %8 = alloca %struct.stm32_pinctrl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %4, align 8
  store %struct.irq_data* %1, %struct.irq_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %12 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %11, i32 0, i32 0
  %13 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %12, align 8
  store %struct.stm32_gpio_bank* %13, %struct.stm32_gpio_bank** %7, align 8
  %14 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %7, align 8
  %15 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.stm32_pinctrl* @dev_get_drvdata(i32 %17)
  store %struct.stm32_pinctrl* %18, %struct.stm32_pinctrl** %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %20 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %19, i32 0, i32 1
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %24 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %29 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @HWSPINLOCK_TIMEOUT, align 4
  %32 = call i32 @hwspin_lock_timeout(i64 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %27, %3
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %38 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %103

41:                                               ; preds = %33
  %42 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %43 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %46 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @BIT(i64 %47)
  %49 = and i32 %44, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %41
  %52 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %53 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %56 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %62 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %67 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @hwspin_unlock(i64 %68)
  br label %70

70:                                               ; preds = %65, %51
  br label %103

71:                                               ; preds = %41
  %72 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %73 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @BIT(i64 %74)
  %76 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %77 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %71
  %81 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %82 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %85 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %7, align 8
  %90 = getelementptr inbounds %struct.stm32_gpio_bank, %struct.stm32_gpio_bank* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @regmap_field_write(i32 %88, i32 %91)
  %93 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %94 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %80
  %98 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %99 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @hwspin_unlock(i64 %100)
  br label %102

102:                                              ; preds = %97, %80
  br label %103

103:                                              ; preds = %102, %70, %36
  %104 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %8, align 8
  %105 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %104, i32 0, i32 1
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load i32, i32* %10, align 4
  ret i32 %108
}

declare dso_local %struct.stm32_pinctrl* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hwspin_lock_timeout(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @hwspin_unlock(i64) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
