; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_deactivate_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_deactivate_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_gpio_controller = type { %struct.TYPE_2__*, i32, %struct.gbphy_device* }
%struct.TYPE_2__ = type { i32 }
%struct.gbphy_device = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_gpio_deactivate_request = type { i64 }

@GB_GPIO_TYPE_DEACTIVATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to deactivate gpio %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_gpio_controller*, i64)* @gb_gpio_deactivate_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_gpio_deactivate_operation(%struct.gb_gpio_controller* %0, i64 %1) #0 {
  %3 = alloca %struct.gb_gpio_controller*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gbphy_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.gb_gpio_deactivate_request, align 8
  %8 = alloca i32, align 4
  store %struct.gb_gpio_controller* %0, %struct.gb_gpio_controller** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %10 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %9, i32 0, i32 2
  %11 = load %struct.gbphy_device*, %struct.gbphy_device** %10, align 8
  store %struct.gbphy_device* %11, %struct.gbphy_device** %5, align 8
  %12 = load %struct.gbphy_device*, %struct.gbphy_device** %5, align 8
  %13 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.gb_gpio_deactivate_request, %struct.gb_gpio_deactivate_request* %7, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %17 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GB_GPIO_TYPE_DEACTIVATE, align 4
  %20 = call i32 @gb_operation_sync(i32 %18, i32 %19, %struct.gb_gpio_deactivate_request* %7, i32 8, i32* null, i32 0)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %34

27:                                               ; preds = %2
  %28 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %3, align 8
  %29 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %23
  %35 = load %struct.gbphy_device*, %struct.gbphy_device** %5, align 8
  %36 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %35)
  ret void
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_gpio_deactivate_request*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
