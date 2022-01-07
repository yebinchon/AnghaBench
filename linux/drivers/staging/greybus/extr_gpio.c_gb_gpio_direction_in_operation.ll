; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_direction_in_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_direction_in_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_gpio_controller = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gb_gpio_direction_in_request = type { i64 }

@GB_GPIO_TYPE_DIRECTION_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_gpio_controller*, i64)* @gb_gpio_direction_in_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_gpio_direction_in_operation(%struct.gb_gpio_controller* %0, i64 %1) #0 {
  %3 = alloca %struct.gb_gpio_controller*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gb_gpio_direction_in_request, align 8
  %6 = alloca i32, align 4
  store %struct.gb_gpio_controller* %0, %struct.gb_gpio_controller** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.gb_gpio_direction_in_request, %struct.gb_gpio_direction_in_request* %5, i32 0, i32 0
  store i64 %7, i64* %8, align 8
  %9 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %10 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GB_GPIO_TYPE_DIRECTION_IN, align 4
  %13 = call i32 @gb_operation_sync(i32 %11, i32 %12, %struct.gb_gpio_direction_in_request* %5, i32 8, i32* null, i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %18 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %16, %2
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_gpio_direction_in_request*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
