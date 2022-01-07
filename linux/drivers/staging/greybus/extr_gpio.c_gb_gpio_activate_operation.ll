; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_activate_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_activate_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_gpio_controller = type { %struct.TYPE_2__*, i32, %struct.gbphy_device* }
%struct.TYPE_2__ = type { i32 }
%struct.gbphy_device = type { i32 }
%struct.gb_gpio_activate_request = type { i64 }

@GB_GPIO_TYPE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_gpio_controller*, i64)* @gb_gpio_activate_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_gpio_activate_operation(%struct.gb_gpio_controller* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_gpio_controller*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gb_gpio_activate_request, align 8
  %7 = alloca %struct.gbphy_device*, align 8
  %8 = alloca i32, align 4
  store %struct.gb_gpio_controller* %0, %struct.gb_gpio_controller** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %10 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %9, i32 0, i32 2
  %11 = load %struct.gbphy_device*, %struct.gbphy_device** %10, align 8
  store %struct.gbphy_device* %11, %struct.gbphy_device** %7, align 8
  %12 = load %struct.gbphy_device*, %struct.gbphy_device** %7, align 8
  %13 = call i32 @gbphy_runtime_get_sync(%struct.gbphy_device* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.gb_gpio_activate_request, %struct.gb_gpio_activate_request* %6, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %22 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GB_GPIO_TYPE_ACTIVATE, align 4
  %25 = call i32 @gb_operation_sync(i32 %23, i32 %24, %struct.gb_gpio_activate_request* %6, i32 8, i32* null, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.gbphy_device*, %struct.gbphy_device** %7, align 8
  %30 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %18
  %33 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %34 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %28, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @gbphy_runtime_get_sync(%struct.gbphy_device*) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_gpio_activate_request*, i32, i32*, i32) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
