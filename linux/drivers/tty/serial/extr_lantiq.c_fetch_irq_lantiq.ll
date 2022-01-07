; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_fetch_irq_lantiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_fetch_irq_lantiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ltq_uart_port = type { i32, i32, i32, %struct.uart_port }
%struct.uart_port = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to get IRQs for serial port\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ltq_uart_port*)* @fetch_irq_lantiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_irq_lantiq(%struct.device* %0, %struct.ltq_uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ltq_uart_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca [3 x %struct.resource], align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ltq_uart_port* %1, %struct.ltq_uart_port** %5, align 8
  %9 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %5, align 8
  %10 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %9, i32 0, i32 3
  store %struct.uart_port* %10, %struct.uart_port** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 0
  %15 = call i32 @of_irq_to_resource_table(i32 %13, %struct.resource* %14, i32 3)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 0
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %5, align 8
  %28 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 1
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %5, align 8
  %33 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 2
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %5, align 8
  %38 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %7, i64 0, i64 0
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %23, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @of_irq_to_resource_table(i32, %struct.resource*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
