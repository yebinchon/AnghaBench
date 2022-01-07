; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_gpio_of_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_gpio_of_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.at91_gpio_chip = type { %struct.at91_gpio_chip*, i32, i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.irq_data = type { i32 }
%struct.irq_chip = type { i8*, i32, i32, i32, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@gpio_irq_ack = common dso_local global i32 0, align 4
@gpio_irq_mask = common dso_local global i8* null, align 8
@gpio_irq_unmask = common dso_local global i32 0, align 4
@gpio_irq_set_wake = common dso_local global i32 0, align 4
@PIO_IDR = common dso_local global i64 0, align 8
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"at91_gpio.%d: Couldn't add irqchip to gpiochip.\0A\00", align 1
@gpio_irq_handler = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.at91_gpio_chip*)* @at91_gpio_of_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_gpio_of_irq_setup(%struct.platform_device* %0, %struct.at91_gpio_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.at91_gpio_chip*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.at91_gpio_chip*, align 8
  %8 = alloca %struct.irq_data*, align 8
  %9 = alloca %struct.irq_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.at91_gpio_chip* %1, %struct.at91_gpio_chip** %5, align 8
  store %struct.gpio_chip* null, %struct.gpio_chip** %6, align 8
  store %struct.at91_gpio_chip* null, %struct.at91_gpio_chip** %7, align 8
  %12 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %13 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.irq_data* @irq_get_irq_data(i32 %14)
  store %struct.irq_data* %15, %struct.irq_data** %8, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.irq_chip* @devm_kzalloc(i32* %17, i32 48, i32 %18)
  store %struct.irq_chip* %19, %struct.irq_chip** %9, align 8
  %20 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %21 = icmp ne %struct.irq_chip* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %118

25:                                               ; preds = %2
  %26 = load %struct.irq_data*, %struct.irq_data** %8, align 8
  %27 = call i32 @irqd_to_hwirq(%struct.irq_data* %26)
  %28 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %29 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %31 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @gpio_irq_ack, align 4
  %33 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %34 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @gpio_irq_mask, align 8
  %36 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %37 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @gpio_irq_mask, align 8
  %39 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %40 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @gpio_irq_unmask, align 4
  %42 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %43 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @gpio_irq_set_wake, align 4
  %45 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %46 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %48 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %53 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %55 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PIO_IDR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel_relaxed(i32 -1, i64 %58)
  %60 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %61 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %60, i32 0, i32 2
  %62 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %63 = load i32, i32* @handle_edge_irq, align 4
  %64 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %65 = call i32 @gpiochip_irqchip_add(i32* %61, %struct.irq_chip* %62, i32 0, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %25
  %69 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %72 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %118

76:                                               ; preds = %25
  %77 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %78 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.gpio_chip* @irq_get_handler_data(i32 %79)
  store %struct.gpio_chip* %80, %struct.gpio_chip** %6, align 8
  %81 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %82 = icmp ne %struct.gpio_chip* %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %76
  %84 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %85 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %84, i32 0, i32 2
  %86 = load %struct.irq_chip*, %struct.irq_chip** %9, align 8
  %87 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %88 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @gpio_irq_handler, align 4
  %91 = call i32 @gpiochip_set_chained_irqchip(i32* %85, %struct.irq_chip* %86, i32 %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %118

92:                                               ; preds = %76
  %93 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %94 = call %struct.at91_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %93)
  store %struct.at91_gpio_chip* %94, %struct.at91_gpio_chip** %7, align 8
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %112, %92
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 2
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %7, align 8
  %100 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %99, i32 0, i32 0
  %101 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %100, align 8
  %102 = icmp ne %struct.at91_gpio_chip* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %7, align 8
  %105 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %104, i32 0, i32 0
  %106 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %105, align 8
  store %struct.at91_gpio_chip* %106, %struct.at91_gpio_chip** %7, align 8
  br label %111

107:                                              ; preds = %98
  %108 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %5, align 8
  %109 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %7, align 8
  %110 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %109, i32 0, i32 0
  store %struct.at91_gpio_chip* %108, %struct.at91_gpio_chip** %110, align 8
  store i32 0, i32* %3, align 4
  br label %118

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %95

115:                                              ; preds = %95
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %107, %83, %68, %22
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local %struct.irq_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @gpiochip_irqchip_add(i32*, %struct.irq_chip*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.gpio_chip* @irq_get_handler_data(i32) #1

declare dso_local i32 @gpiochip_set_chained_irqchip(i32*, %struct.irq_chip*, i32, i32) #1

declare dso_local %struct.at91_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
