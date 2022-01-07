; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-gpio.c_nsp_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.nsp_gpio = type { i32, i32 }

@REG = common dso_local global i32 0, align 4
@NSP_GPIO_EVENT_INT_POLARITY = common dso_local global i32 0, align 4
@NSP_GPIO_INT_POLARITY = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid GPIO IRQ type 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"gpio:%u level_low:%s falling:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @nsp_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsp_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nsp_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = call %struct.nsp_gpio* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.nsp_gpio* %12, %struct.nsp_gpio** %6, align 8
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nsp_gpio*, %struct.nsp_gpio** %6, align 8
  %17 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %16, i32 0, i32 1
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @raw_spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.nsp_gpio*, %struct.nsp_gpio** %6, align 8
  %21 = load i32, i32* @REG, align 4
  %22 = load i32, i32* @NSP_GPIO_EVENT_INT_POLARITY, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @nsp_get_bit(%struct.nsp_gpio* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.nsp_gpio*, %struct.nsp_gpio** %6, align 8
  %26 = load i32, i32* @REG, align 4
  %27 = load i32, i32* @NSP_GPIO_INT_POLARITY, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @nsp_get_bit(%struct.nsp_gpio* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %32 = and i32 %30, %31
  switch i32 %32, label %37 [
    i32 130, label %33
    i32 131, label %34
    i32 129, label %35
    i32 128, label %36
  ]

33:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %49

34:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %49

35:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %49

36:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %49

37:                                               ; preds = %2
  %38 = load %struct.nsp_gpio*, %struct.nsp_gpio** %6, align 8
  %39 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.nsp_gpio*, %struct.nsp_gpio** %6, align 8
  %44 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %43, i32 0, i32 1
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @raw_spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %79

49:                                               ; preds = %36, %35, %34, %33
  %50 = load %struct.nsp_gpio*, %struct.nsp_gpio** %6, align 8
  %51 = load i32, i32* @REG, align 4
  %52 = load i32, i32* @NSP_GPIO_EVENT_INT_POLARITY, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @nsp_set_bit(%struct.nsp_gpio* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.nsp_gpio*, %struct.nsp_gpio** %6, align 8
  %57 = load i32, i32* @REG, align 4
  %58 = load i32, i32* @NSP_GPIO_INT_POLARITY, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @nsp_set_bit(%struct.nsp_gpio* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.nsp_gpio*, %struct.nsp_gpio** %6, align 8
  %63 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %62, i32 0, i32 1
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @raw_spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.nsp_gpio*, %struct.nsp_gpio** %6, align 8
  %67 = getelementptr inbounds %struct.nsp_gpio, %struct.nsp_gpio* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %78 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %69, i8* %73, i8* %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %49, %37
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.nsp_gpio* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nsp_get_bit(%struct.nsp_gpio*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nsp_set_bit(%struct.nsp_gpio*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
