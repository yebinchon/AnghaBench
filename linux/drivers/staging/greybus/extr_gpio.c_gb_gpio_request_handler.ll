; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i64, %struct.gb_message*, %struct.gb_connection* }
%struct.gb_message = type { i32, %struct.gb_gpio_irq_event_request* }
%struct.gb_gpio_irq_event_request = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_gpio_controller = type { %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.irq_desc = type { i32 }

@GB_GPIO_TYPE_IRQ_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"unsupported unsolicited request: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"short event received (%zu < %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid hw irq: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"failed to find IRQ\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to look up irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_gpio_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_gpio_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_gpio_controller*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.gb_message*, align 8
  %8 = alloca %struct.gb_gpio_irq_event_request*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.irq_desc*, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %12 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %13 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %12, i32 0, i32 2
  %14 = load %struct.gb_connection*, %struct.gb_connection** %13, align 8
  store %struct.gb_connection* %14, %struct.gb_connection** %4, align 8
  %15 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %16 = call %struct.gb_gpio_controller* @gb_connection_get_data(%struct.gb_connection* %15)
  store %struct.gb_gpio_controller* %16, %struct.gb_gpio_controller** %5, align 8
  %17 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %5, align 8
  %18 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %22 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @GB_GPIO_TYPE_IRQ_EVENT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %101

33:                                               ; preds = %1
  %34 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %35 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %34, i32 0, i32 1
  %36 = load %struct.gb_message*, %struct.gb_message** %35, align 8
  store %struct.gb_message* %36, %struct.gb_message** %7, align 8
  %37 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %38 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 4
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %45 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46, i64 4)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %101

50:                                               ; preds = %33
  %51 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %52 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %51, i32 0, i32 1
  %53 = load %struct.gb_gpio_irq_event_request*, %struct.gb_gpio_irq_event_request** %52, align 8
  store %struct.gb_gpio_irq_event_request* %53, %struct.gb_gpio_irq_event_request** %8, align 8
  %54 = load %struct.gb_gpio_irq_event_request*, %struct.gb_gpio_irq_event_request** %8, align 8
  %55 = getelementptr inbounds %struct.gb_gpio_irq_event_request, %struct.gb_gpio_irq_event_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %5, align 8
  %58 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %56, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %50
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load %struct.gb_gpio_irq_event_request*, %struct.gb_gpio_irq_event_request** %8, align 8
  %64 = getelementptr inbounds %struct.gb_gpio_irq_event_request, %struct.gb_gpio_irq_event_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %101

69:                                               ; preds = %50
  %70 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %5, align 8
  %71 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.gb_gpio_irq_event_request*, %struct.gb_gpio_irq_event_request** %8, align 8
  %76 = getelementptr inbounds %struct.gb_gpio_irq_event_request, %struct.gb_gpio_irq_event_request* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @irq_find_mapping(i32 %74, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %69
  %82 = load %struct.device*, %struct.device** %6, align 8
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %101

86:                                               ; preds = %69
  %87 = load i32, i32* %10, align 4
  %88 = call %struct.irq_desc* @irq_to_desc(i32 %87)
  store %struct.irq_desc* %88, %struct.irq_desc** %11, align 8
  %89 = load %struct.irq_desc*, %struct.irq_desc** %11, align 8
  %90 = icmp ne %struct.irq_desc* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %101

96:                                               ; preds = %86
  %97 = call i32 (...) @local_irq_disable()
  %98 = load %struct.irq_desc*, %struct.irq_desc** %11, align 8
  %99 = call i32 @generic_handle_irq_desc(%struct.irq_desc* %98)
  %100 = call i32 (...) @local_irq_enable()
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %96, %91, %81, %61, %42, %27
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.gb_gpio_controller* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @generic_handle_irq_desc(%struct.irq_desc*) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
