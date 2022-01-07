; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qcom_geni_serial_port = type { i32, i32, i8*, i8*, %struct.TYPE_5__, %struct.uart_port }
%struct.TYPE_5__ = type { %struct.qcom_geni_serial_port*, i32, %struct.TYPE_6__* }
%struct.uart_port = type { i32, %struct.TYPE_6__*, %struct.uart_driver*, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"qcom,geni-debug-uart\00", align 1
@qcom_geni_console_driver = common dso_local global %struct.uart_driver zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@qcom_geni_uart_driver = common dso_local global %struct.uart_driver zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"hsuart\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Invalid line %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Err getting SE Core clk %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DEF_FIFO_DEPTH_WORDS = common dso_local global i8* null, align 8
@DEF_FIFO_WIDTH_BITS = common dso_local global i32 0, align 4
@handle_rx_console = common dso_local global i32 0, align 4
@handle_rx_uart = common dso_local global i32 0, align 4
@dev_attr_loopback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_geni_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_geni_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_geni_serial_port*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uart_driver*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @of_device_is_compatible(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  store %struct.uart_driver* @qcom_geni_console_driver, %struct.uart_driver** %11, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @of_alias_get_id(i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %19
  store %struct.uart_driver* @qcom_geni_uart_driver, %struct.uart_driver** %11, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @of_alias_get_id(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.qcom_geni_serial_port* @get_port_from_line(i32 %35, i32 %36)
  store %struct.qcom_geni_serial_port* %37, %struct.qcom_geni_serial_port** %6, align 8
  %38 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %39 = call i64 @IS_ERR(%struct.qcom_geni_serial_port* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(%struct.TYPE_6__* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %47 = call i32 @PTR_ERR(%struct.qcom_geni_serial_port* %46)
  store i32 %47, i32* %2, align 4
  br label %160

48:                                               ; preds = %34
  %49 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %50 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %49, i32 0, i32 5
  store %struct.uart_port* %50, %struct.uart_port** %7, align 8
  %51 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 2
  %53 = load %struct.uart_driver*, %struct.uart_driver** %52, align 8
  %54 = icmp ne %struct.uart_driver* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %160

58:                                               ; preds = %48
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 1
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %66 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_get_drvdata(i32 %71)
  %73 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %74 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call %struct.qcom_geni_serial_port* @devm_clk_get(%struct.TYPE_6__* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %79 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %80 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store %struct.qcom_geni_serial_port* %78, %struct.qcom_geni_serial_port** %81, align 8
  %82 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %83 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %84, align 8
  %86 = call i64 @IS_ERR(%struct.qcom_geni_serial_port* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %58
  %89 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %90 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %91, align 8
  %93 = call i32 @PTR_ERR(%struct.qcom_geni_serial_port* %92)
  store i32 %93, i32* %4, align 4
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @dev_err(%struct.TYPE_6__* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %160

99:                                               ; preds = %58
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = load i32, i32* @IORESOURCE_MEM, align 4
  %102 = call %struct.resource* @platform_get_resource(%struct.platform_device* %100, i32 %101, i32 0)
  store %struct.resource* %102, %struct.resource** %8, align 8
  %103 = load %struct.resource*, %struct.resource** %8, align 8
  %104 = icmp ne %struct.resource* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %160

108:                                              ; preds = %99
  %109 = load %struct.resource*, %struct.resource** %8, align 8
  %110 = getelementptr inbounds %struct.resource, %struct.resource* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %113 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load i8*, i8** @DEF_FIFO_DEPTH_WORDS, align 8
  %115 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %116 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %115, i32 0, i32 3
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @DEF_FIFO_DEPTH_WORDS, align 8
  %118 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %119 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* @DEF_FIFO_WIDTH_BITS, align 4
  %121 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %122 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = call i32 @platform_get_irq(%struct.platform_device* %123, i32 0)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %108
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %2, align 4
  br label %160

129:                                              ; preds = %108
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load %struct.uart_driver*, %struct.uart_driver** %11, align 8
  %134 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %135 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %134, i32 0, i32 2
  store %struct.uart_driver* %133, %struct.uart_driver** %135, align 8
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %138 = call i32 @platform_set_drvdata(%struct.platform_device* %136, %struct.qcom_geni_serial_port* %137)
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %129
  %142 = load i32, i32* @handle_rx_console, align 4
  br label %145

143:                                              ; preds = %129
  %144 = load i32, i32* @handle_rx_uart, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  %148 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %153 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call i32 @device_create_file(%struct.TYPE_6__* %154, i32* @dev_attr_loopback)
  br label %156

156:                                              ; preds = %151, %145
  %157 = load %struct.uart_driver*, %struct.uart_driver** %11, align 8
  %158 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %159 = call i32 @uart_add_one_port(%struct.uart_driver* %157, %struct.uart_port* %158)
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %156, %127, %105, %88, %55, %41
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local %struct.qcom_geni_serial_port* @get_port_from_line(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.qcom_geni_serial_port*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.qcom_geni_serial_port*) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local %struct.qcom_geni_serial_port* @devm_clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.qcom_geni_serial_port*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @uart_add_one_port(%struct.uart_driver*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
