; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c__gb_gpio_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c__gb_gpio_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_gpio_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_gpio_irq_mask_request = type { i32 }

@GB_GPIO_TYPE_IRQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to mask irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_gpio_controller*, i32)* @_gb_gpio_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gb_gpio_irq_mask(%struct.gb_gpio_controller* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_gpio_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gb_gpio_irq_mask_request, align 4
  %7 = alloca i32, align 4
  store %struct.gb_gpio_controller* %0, %struct.gb_gpio_controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %9 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.gb_gpio_irq_mask_request, %struct.gb_gpio_irq_mask_request* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %15 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GB_GPIO_TYPE_IRQ_MASK, align 4
  %18 = call i32 @gb_operation_sync(i32 %16, i32 %17, %struct.gb_gpio_irq_mask_request* %6, i32 4, i32* null, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_gpio_irq_mask_request*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
