; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_set_debounce_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_set_debounce_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_gpio_controller = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gb_gpio_set_debounce_request = type { i64, i32 }

@GB_GPIO_TYPE_SET_DEBOUNCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_gpio_controller*, i64, i32)* @gb_gpio_set_debounce_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_gpio_set_debounce_operation(%struct.gb_gpio_controller* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.gb_gpio_controller*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gb_gpio_set_debounce_request, align 8
  %8 = alloca i32, align 4
  store %struct.gb_gpio_controller* %0, %struct.gb_gpio_controller** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds %struct.gb_gpio_set_debounce_request, %struct.gb_gpio_set_debounce_request* %7, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @cpu_to_le16(i32 %11)
  %13 = getelementptr inbounds %struct.gb_gpio_set_debounce_request, %struct.gb_gpio_set_debounce_request* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %15 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GB_GPIO_TYPE_SET_DEBOUNCE, align 4
  %18 = call i32 @gb_operation_sync(i32 %16, i32 %17, %struct.gb_gpio_set_debounce_request* %7, i32 16, i32* null, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %24 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %22, i32* %28, align 4
  br label %29

29:                                               ; preds = %21, %3
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_gpio_set_debounce_request*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
