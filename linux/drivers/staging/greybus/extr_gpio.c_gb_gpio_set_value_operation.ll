; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_set_value_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_set_value_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_gpio_controller = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_gpio_set_value_request = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"refusing to set value of input gpio %u\0A\00", align 1
@GB_GPIO_TYPE_SET_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set value of gpio %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_gpio_controller*, i64, i32)* @gb_gpio_set_value_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_gpio_set_value_operation(%struct.gb_gpio_controller* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.gb_gpio_controller*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.gb_gpio_set_value_request, align 8
  %9 = alloca i32, align 4
  store %struct.gb_gpio_controller* %0, %struct.gb_gpio_controller** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %11 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %7, align 8
  %14 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %15 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @dev_warn(%struct.device* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %54

26:                                               ; preds = %3
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.gb_gpio_set_value_request, %struct.gb_gpio_set_value_request* %8, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = getelementptr inbounds %struct.gb_gpio_set_value_request, %struct.gb_gpio_set_value_request* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  %34 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %35 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @GB_GPIO_TYPE_SET_VALUE, align 4
  %38 = call i32 @gb_operation_sync(i32 %36, i32 %37, %struct.gb_gpio_set_value_request* %8, i32 16, i32* null, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %54

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.gb_gpio_set_value_request, %struct.gb_gpio_set_value_request* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %4, align 8
  %49 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %41, %22
  ret void
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_gpio_set_value_request*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
