; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arc_uart_port = type { %struct.uart_port, i8* }
%struct.uart_port = type { i32, i64, i32, i32*, i32, i32, %struct.TYPE_2__*, i32, i32, i8* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@arc_uart_ports = common dso_local global %struct.arc_uart_port* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"clock-frequency property NOTset\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"current-speed property NOT set\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@arc_serial_pops = common dso_local global i32 0, align 4
@ARC_UART_TX_FIFO_SIZE = common dso_local global i32 0, align 4
@arc_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arc_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.arc_uart_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %111

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @of_alias_get_id(%struct.device_node* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.arc_uart_port*, %struct.arc_uart_port** @arc_uart_ports, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.arc_uart_port* %26)
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %111

36:                                               ; preds = %24
  %37 = load %struct.arc_uart_port*, %struct.arc_uart_port** @arc_uart_ports, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.arc_uart_port, %struct.arc_uart_port* %37, i64 %39
  store %struct.arc_uart_port* %40, %struct.arc_uart_port** %5, align 8
  %41 = load %struct.arc_uart_port*, %struct.arc_uart_port** %5, align 8
  %42 = getelementptr inbounds %struct.arc_uart_port, %struct.arc_uart_port* %41, i32 0, i32 0
  store %struct.uart_port* %42, %struct.uart_port** %6, align 8
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call i64 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %111

52:                                               ; preds = %36
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 9
  store i8* %53, i8** %55, align 8
  %56 = load %struct.device_node*, %struct.device_node** %4, align 8
  %57 = call i64 @of_property_read_u32(%struct.device_node* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %111

65:                                               ; preds = %52
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.arc_uart_port*, %struct.arc_uart_port** %5, align 8
  %68 = getelementptr inbounds %struct.arc_uart_port, %struct.arc_uart_port* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.device_node*, %struct.device_node** %4, align 8
  %70 = call i32 @of_iomap(%struct.device_node* %69, i32 0)
  %71 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* @ENXIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %111

80:                                               ; preds = %65
  %81 = load %struct.device_node*, %struct.device_node** %4, align 8
  %82 = call i32 @irq_of_parse_and_map(%struct.device_node* %81, i32 0)
  %83 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 6
  store %struct.TYPE_2__* %86, %struct.TYPE_2__** %88, align 8
  %89 = load i32, i32* @UPIO_MEM, align 4
  %90 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %93 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %94 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %97 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %99 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %98, i32 0, i32 3
  store i32* @arc_serial_pops, i32** %99, align 8
  %100 = load i32, i32* @ARC_UART_TX_FIFO_SIZE, align 4
  %101 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.arc_uart_port*, %struct.arc_uart_port** @arc_uart_ports, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.arc_uart_port, %struct.arc_uart_port* %105, i64 %107
  %109 = getelementptr inbounds %struct.arc_uart_port, %struct.arc_uart_port* %108, i32 0, i32 0
  %110 = call i32 @uart_add_one_port(i32* @arc_uart_driver, %struct.uart_port* %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %80, %77, %59, %46, %29, %15
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.arc_uart_port*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, ...) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
