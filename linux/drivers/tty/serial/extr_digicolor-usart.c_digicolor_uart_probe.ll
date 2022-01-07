; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_digicolor-usart.c_digicolor_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_12__*, i32, i32, %struct.clk*, i32 }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk = type { i32 }
%struct.platform_device = type { %struct.TYPE_12__ }
%struct.digicolor_port = type { %struct.TYPE_11__, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Missing device tree node\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@DIGICOLOR_USART_NR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@digicolor_uart_ops = common dso_local global i32 0, align 4
@PORT_DIGICOLOR = common dso_local global i32 0, align 4
@digicolor_ports = common dso_local global %struct.TYPE_11__** null, align 8
@digicolor_rx_poll = common dso_local global i32 0, align 4
@digicolor_uart_int = common dso_local global i32 0, align 4
@digicolor_uart = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @digicolor_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digicolor_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.digicolor_port*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %163

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = call i32 @of_alias_get_id(%struct.device_node* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DIGICOLOR_USART_NR, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %163

35:                                               ; preds = %28
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.digicolor_port* @devm_kzalloc(%struct.TYPE_12__* %37, i32 72, i32 %38)
  store %struct.digicolor_port* %39, %struct.digicolor_port** %8, align 8
  %40 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %41 = icmp ne %struct.digicolor_port* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %163

45:                                               ; preds = %35
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call %struct.clk* @devm_clk_get(%struct.TYPE_12__* %47, i32* null)
  store %struct.clk* %48, %struct.clk** %10, align 8
  %49 = load %struct.clk*, %struct.clk** %10, align 8
  %50 = call i64 @IS_ERR(%struct.clk* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load %struct.clk*, %struct.clk** %10, align 8
  %54 = call i32 @PTR_ERR(%struct.clk* %53)
  store i32 %54, i32* %2, align 4
  br label %163

55:                                               ; preds = %45
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %56, i32 %57, i32 0)
  store %struct.resource* %58, %struct.resource** %9, align 8
  %59 = load %struct.resource*, %struct.resource** %9, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %63 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 10
  store i32 %61, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.resource*, %struct.resource** %9, align 8
  %68 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_12__* %66, %struct.resource* %67)
  %69 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %70 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 9
  store %struct.clk* %68, %struct.clk** %71, align 8
  %72 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %73 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 9
  %75 = load %struct.clk*, %struct.clk** %74, align 8
  %76 = call i64 @IS_ERR(%struct.clk* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %55
  %79 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %80 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 9
  %82 = load %struct.clk*, %struct.clk** %81, align 8
  %83 = call i32 @PTR_ERR(%struct.clk* %82)
  store i32 %83, i32* %2, align 4
  br label %163

84:                                               ; preds = %55
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = call i32 @platform_get_irq(%struct.platform_device* %85, i32 0)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %163

91:                                               ; preds = %84
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %94 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @UPIO_MEM, align 4
  %97 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %98 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 8
  store i32 %96, i32* %99, align 4
  %100 = load %struct.clk*, %struct.clk** %10, align 8
  %101 = call i32 @clk_get_rate(%struct.clk* %100)
  %102 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %103 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 7
  store i32 %101, i32* %104, align 8
  %105 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %106 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store i32 16, i32* %107, align 4
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %111 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 6
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %112, align 8
  %113 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %114 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  store i32* @digicolor_uart_ops, i32** %115, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %118 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 8
  %120 = load i32, i32* @PORT_DIGICOLOR, align 4
  %121 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %122 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 4
  store i32 %120, i32* %123, align 8
  %124 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %125 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  %127 = call i32 @spin_lock_init(i32* %126)
  %128 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %129 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @digicolor_ports, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %130, i64 %132
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %133, align 8
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %136 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %135, i32 0, i32 0
  %137 = call i32 @platform_set_drvdata(%struct.platform_device* %134, %struct.TYPE_11__* %136)
  %138 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %139 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %138, i32 0, i32 1
  %140 = load i32, i32* @digicolor_rx_poll, align 4
  %141 = call i32 @INIT_DELAYED_WORK(i32* %139, i32 %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %145 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @digicolor_uart_int, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = call i32 @dev_name(%struct.TYPE_12__* %150)
  %152 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %153 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %152, i32 0, i32 0
  %154 = call i32 @devm_request_irq(%struct.TYPE_12__* %143, i32 %147, i32 %148, i32 0, i32 %151, %struct.TYPE_11__* %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %91
  %158 = load i32, i32* %6, align 4
  store i32 %158, i32* %2, align 4
  br label %163

159:                                              ; preds = %91
  %160 = load %struct.digicolor_port*, %struct.digicolor_port** %8, align 8
  %161 = getelementptr inbounds %struct.digicolor_port, %struct.digicolor_port* %160, i32 0, i32 0
  %162 = call i32 @uart_add_one_port(i32* @digicolor_uart, %struct.TYPE_11__* %161)
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %157, %89, %78, %52, %42, %32, %17
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local %struct.digicolor_port* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_11__*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
