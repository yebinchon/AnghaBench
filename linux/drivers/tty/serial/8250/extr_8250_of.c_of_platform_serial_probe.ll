; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_of.c_of_platform_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_of.c_of_platform_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.of_serial_info = type { i32, i32, i32 }
%struct.uart_8250_port = type { i64, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@PORT_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"used-by-rtas\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"tx-threshold\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"auto-flow-control\00", align 1
@UART_CAP_AFE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"overrun-throttle-ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @of_platform_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_platform_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_serial_info*, align 8
  %5 = alloca %struct.uart_8250_port, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i64 @of_device_get_match_data(%struct.TYPE_5__* %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PORT_UNKNOWN, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %131

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @of_property_read_bool(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %131

29:                                               ; preds = %19
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.of_serial_info* @kzalloc(i32 12, i32 %30)
  store %struct.of_serial_info* %31, %struct.of_serial_info** %4, align 8
  %32 = load %struct.of_serial_info*, %struct.of_serial_info** %4, align 8
  %33 = icmp eq %struct.of_serial_info* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %131

37:                                               ; preds = %29
  %38 = call i32 @memset(%struct.uart_8250_port* %5, i32 0, i32 40)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %42 = load %struct.of_serial_info*, %struct.of_serial_info** %4, align 8
  %43 = call i32 @of_platform_serial_setup(%struct.platform_device* %39, i32 %40, %struct.TYPE_6__* %41, %struct.of_serial_info* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %127

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @UART_CAP_FIFO, align 4
  %54 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @of_property_read_u32(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* %7)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = sub nsw i64 %71, %72
  %74 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 3
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %68, %62, %55
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @of_property_read_bool(i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load i32, i32* @UART_CAP_AFE, align 4
  %84 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %82, %75
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 0
  %93 = call i64 @of_property_read_u32(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %95, %87
  %98 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %5)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %112

102:                                              ; preds = %97
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.of_serial_info*, %struct.of_serial_info** %4, align 8
  %105 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.of_serial_info*, %struct.of_serial_info** %4, align 8
  %108 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load %struct.of_serial_info*, %struct.of_serial_info** %4, align 8
  %111 = call i32 @platform_set_drvdata(%struct.platform_device* %109, %struct.of_serial_info* %110)
  store i32 0, i32* %2, align 4
  br label %131

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @irq_dispose_mapping(i32 %115)
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 @pm_runtime_put_sync(%struct.TYPE_5__* %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @pm_runtime_disable(%struct.TYPE_5__* %121)
  %123 = load %struct.of_serial_info*, %struct.of_serial_info** %4, align 8
  %124 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @clk_disable_unprepare(i32 %125)
  br label %127

127:                                              ; preds = %112, %46
  %128 = load %struct.of_serial_info*, %struct.of_serial_info** %4, align 8
  %129 = call i32 @kfree(%struct.of_serial_info* %128)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %102, %34, %26, %16
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_5__*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local %struct.of_serial_info* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @of_platform_serial_setup(%struct.platform_device*, i32, %struct.TYPE_6__*, %struct.of_serial_info*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.of_serial_info*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_5__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @kfree(%struct.of_serial_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
