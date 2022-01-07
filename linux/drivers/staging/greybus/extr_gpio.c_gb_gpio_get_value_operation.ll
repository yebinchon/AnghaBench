; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_get_value_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_get_value_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_gpio_controller = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_gpio_get_value_request = type { i32 }
%struct.gb_gpio_get_value_response = type { i32 }

@GB_GPIO_TYPE_GET_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get value of gpio %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"gpio %u value was %u (should be 0 or 1)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_gpio_controller*, i32)* @gb_gpio_get_value_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_gpio_get_value_operation(%struct.gb_gpio_controller* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_gpio_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.gb_gpio_get_value_request, align 4
  %8 = alloca %struct.gb_gpio_get_value_response, align 4
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
  %16 = getelementptr inbounds %struct.gb_gpio_get_value_request, %struct.gb_gpio_get_value_request* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %18 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GB_GPIO_TYPE_GET_VALUE, align 4
  %21 = call i32 @gb_operation_sync(i32 %19, i32 %20, %struct.gb_gpio_get_value_request* %7, i32 4, %struct.gb_gpio_get_value_response* %8, i32 4)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.gb_gpio_get_value_response, %struct.gb_gpio_get_value_response* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @dev_warn(%struct.device* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %34, %29
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %48 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %42, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_gpio_get_value_request*, i32, %struct.gb_gpio_get_value_response*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
