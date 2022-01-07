; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_init_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_init_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_uart_port = type { i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"atmel,use-dma-rx\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"atmel,use-dma-tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_uart_port*, %struct.platform_device*)* @atmel_init_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_init_property(%struct.atmel_uart_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.atmel_uart_port* %0, %struct.atmel_uart_port** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call i64 @of_property_read_bool(%struct.device_node* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i64 @of_property_read_bool(%struct.device_node* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %17
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %32 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i64 @of_property_read_bool(%struct.device_node* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i64 @of_property_read_bool(%struct.device_node* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  %44 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %44, i32 0, i32 3
  store i32 0, i32* %45, align 4
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %48 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %41
  br label %57

52:                                               ; preds = %33
  %53 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %53, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %55, i32 0, i32 3
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %51
  ret void
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
