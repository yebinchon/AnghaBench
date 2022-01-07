; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c__gb_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c__gb_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_gpio_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_gpio_irq_type_request = type { i8*, i8* }

@GB_GPIO_TYPE_IRQ_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to set irq type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_gpio_controller*, i8*, i8*)* @_gb_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gb_gpio_irq_set_type(%struct.gb_gpio_controller* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gb_gpio_controller*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.gb_gpio_irq_type_request, align 8
  %9 = alloca i32, align 4
  store %struct.gb_gpio_controller* %0, %struct.gb_gpio_controller** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %11 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds %struct.gb_gpio_irq_type_request, %struct.gb_gpio_irq_type_request* %8, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds %struct.gb_gpio_irq_type_request, %struct.gb_gpio_irq_type_request* %8, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %19 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GB_GPIO_TYPE_IRQ_TYPE, align 4
  %22 = call i32 @gb_operation_sync(i32 %20, i32 %21, %struct.gb_gpio_irq_type_request* %8, i32 16, i32* null, i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %3
  ret void
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_gpio_irq_type_request*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
