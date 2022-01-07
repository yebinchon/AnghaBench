; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_sbsa_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl011.c_sbsa_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.uart_amba_port = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vendor_sbsa = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@UPIO_MEM32 = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@sbsa_uart_pops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SBSA\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@qdf2400_e44_present = common dso_local global i64 0, align 8
@vendor_qdt_qdf2400_e44 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sbsa_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbsa_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uart_amba_port*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %9, align 8
  %20 = load %struct.device_node*, %struct.device_node** %9, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %111

26:                                               ; preds = %15
  br label %28

27:                                               ; preds = %1
  store i32 115200, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = call i32 (...) @pl011_find_free_port()
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %111

34:                                               ; preds = %28
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.uart_amba_port* @devm_kzalloc(%struct.TYPE_9__* %36, i32 56, i32 %37)
  store %struct.uart_amba_port* %38, %struct.uart_amba_port** %4, align 8
  %39 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %40 = icmp ne %struct.uart_amba_port* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %111

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = call i32 @platform_get_irq(%struct.platform_device* %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %111

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %54 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %57 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %56, i32 0, i32 4
  store %struct.TYPE_8__* @vendor_sbsa, %struct.TYPE_8__** %57, align 8
  %58 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %59 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %58, i32 0, i32 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %64 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %66 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %65, i32 0, i32 0
  store i32 32, i32* %66, align 8
  %67 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %68 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %67, i32 0, i32 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %51
  %74 = load i32, i32* @UPIO_MEM32, align 4
  br label %77

75:                                               ; preds = %51
  %76 = load i32, i32* @UPIO_MEM, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %80 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %83 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32* @sbsa_uart_pops, i32** %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %87 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %89 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @snprintf(i32 %90, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = load i32, i32* @IORESOURCE_MEM, align 4
  %94 = call %struct.resource* @platform_get_resource(%struct.platform_device* %92, i32 %93, i32 0)
  store %struct.resource* %94, %struct.resource** %5, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %98 = load %struct.resource*, %struct.resource** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @pl011_setup_port(%struct.TYPE_9__* %96, %struct.uart_amba_port* %97, %struct.resource* %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %77
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %111

105:                                              ; preds = %77
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %108 = call i32 @platform_set_drvdata(%struct.platform_device* %106, %struct.uart_amba_port* %107)
  %109 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %110 = call i32 @pl011_register_port(%struct.uart_amba_port* %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %105, %103, %49, %41, %32, %24
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pl011_find_free_port(...) #1

declare dso_local %struct.uart_amba_port* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @pl011_setup_port(%struct.TYPE_9__*, %struct.uart_amba_port*, %struct.resource*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_amba_port*) #1

declare dso_local i32 @pl011_register_port(%struct.uart_amba_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
