; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_request_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pic32_uart.c_pic32_uart_request_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"pic32_uart_mem\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to map registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @pic32_uart_request_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_uart_request_port(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.platform_device* @to_platform_device(i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %5, align 8
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = icmp ne %struct.resource* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = call i32 @resource_size(%struct.resource* %26)
  %28 = call i32 @request_mem_region(i32 %25, i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %63

33:                                               ; preds = %22
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.resource*, %struct.resource** %5, align 8
  %41 = call i32 @resource_size(%struct.resource* %40)
  %42 = call i32 @devm_ioremap_nocache(i32 %36, i32 %39, i32 %41)
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %33
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = call i32 @resource_size(%struct.resource* %57)
  %59 = call i32 @release_mem_region(i32 %56, i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %49, %30, %19
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_nocache(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
