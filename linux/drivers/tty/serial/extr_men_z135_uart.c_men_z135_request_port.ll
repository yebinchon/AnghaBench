; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_request_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_request_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32*, i32 }
%struct.men_z135_port = type { %struct.resource*, %struct.mcb_device* }
%struct.resource = type { i32 }
%struct.mcb_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @men_z135_request_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @men_z135_request_port(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.men_z135_port*, align 8
  %5 = alloca %struct.mcb_device*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.men_z135_port* @to_men_z135(%struct.uart_port* %7)
  store %struct.men_z135_port* %8, %struct.men_z135_port** %4, align 8
  %9 = load %struct.men_z135_port*, %struct.men_z135_port** %4, align 8
  %10 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %9, i32 0, i32 1
  %11 = load %struct.mcb_device*, %struct.mcb_device** %10, align 8
  store %struct.mcb_device* %11, %struct.mcb_device** %5, align 8
  %12 = load %struct.men_z135_port*, %struct.men_z135_port** %4, align 8
  %13 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %12, i32 0, i32 1
  %14 = load %struct.mcb_device*, %struct.mcb_device** %13, align 8
  %15 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %16 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %15, i32 0, i32 0
  %17 = call i32 @dev_name(i32* %16)
  %18 = call %struct.resource* @mcb_request_mem(%struct.mcb_device* %14, i32 %17)
  store %struct.resource* %18, %struct.resource** %6, align 8
  %19 = load %struct.resource*, %struct.resource** %6, align 8
  %20 = call i64 @IS_ERR(%struct.resource* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.resource* %23)
  store i32 %24, i32* %2, align 4
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = load %struct.men_z135_port*, %struct.men_z135_port** %4, align 8
  %33 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %32, i32 0, i32 0
  store %struct.resource* %31, %struct.resource** %33, align 8
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = call i32 @resource_size(%struct.resource* %37)
  %39 = call i32* @ioremap(i32 %36, i32 %38)
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %25
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  %48 = call i32 @mcb_release_mem(%struct.resource* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %46, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.men_z135_port* @to_men_z135(%struct.uart_port*) #1

declare dso_local %struct.resource* @mcb_request_mem(%struct.mcb_device*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.resource*) #1

declare dso_local i32 @PTR_ERR(%struct.resource*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @mcb_release_mem(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
