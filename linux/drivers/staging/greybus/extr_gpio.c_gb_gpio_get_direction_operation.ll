; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_get_direction_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_get_direction_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_gpio_controller = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_gpio_get_direction_request = type { i32 }
%struct.gb_gpio_get_direction_response = type { i32 }

@GB_GPIO_TYPE_GET_DIRECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"gpio %u direction was %u (should be 0 or 1)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_gpio_controller*, i32)* @gb_gpio_get_direction_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_gpio_get_direction_operation(%struct.gb_gpio_controller* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_gpio_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.gb_gpio_get_direction_request, align 4
  %8 = alloca %struct.gb_gpio_get_direction_response, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gb_gpio_controller* %0, %struct.gb_gpio_controller** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %12 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.gb_gpio_get_direction_request, %struct.gb_gpio_get_direction_request* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %18 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GB_GPIO_TYPE_GET_DIRECTION, align 4
  %21 = call i32 @gb_operation_sync(i32 %19, i32 %20, %struct.gb_gpio_get_direction_request* %7, i32 4, %struct.gb_gpio_get_direction_response* %8, i32 4)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.gb_gpio_get_direction_response, %struct.gb_gpio_get_direction_response* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @dev_warn(%struct.device* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31, %26
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %45 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %39, %24
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_gpio_get_direction_request*, i32, %struct.gb_gpio_get_direction_response*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
