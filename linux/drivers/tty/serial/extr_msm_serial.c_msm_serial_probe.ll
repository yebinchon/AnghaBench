; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.msm_port = type { i64, i8*, i8* }
%struct.resource = type { i32 }
%struct.uart_port = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.of_device_id = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@msm_uart_next_id = common dso_local global i32 0, align 4
@UART_NR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"msm_serial: detected port #%d\0A\00", align 1
@msm_uartdm_table = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"uartclk = %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@msm_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @msm_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.msm_port*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @of_alias_get_id(i64 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %9, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 @atomic_inc_return(i32* @msm_uart_next_id)
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @UART_NR, align 4
  %37 = icmp sge i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ true, %31 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %162

46:                                               ; preds = %38
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 1
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dev_info(%struct.TYPE_4__* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.uart_port* @msm_get_port_from_line(i32 %51)
  store %struct.uart_port* %52, %struct.uart_port** %6, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 1
  %55 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 3
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %58 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %57)
  store %struct.msm_port* %58, %struct.msm_port** %4, align 8
  %59 = load i32, i32* @msm_uartdm_table, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 1
  %62 = call %struct.of_device_id* @of_match_device(i32 %59, %struct.TYPE_4__* %61)
  store %struct.of_device_id* %62, %struct.of_device_id** %7, align 8
  %63 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %64 = icmp ne %struct.of_device_id* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %46
  %66 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %67 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %70 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %74

71:                                               ; preds = %46
  %72 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %73 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %65
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 1
  %77 = call i8* @devm_clk_get(%struct.TYPE_4__* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %79 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %81 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %87 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %2, align 4
  br label %162

90:                                               ; preds = %74
  %91 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %92 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 1
  %98 = call i8* @devm_clk_get(%struct.TYPE_4__* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %100 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %102 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @IS_ERR(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %95
  %107 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %108 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @PTR_ERR(i8* %109)
  store i32 %110, i32* %2, align 4
  br label %162

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %90
  %113 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %114 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @clk_get_rate(i8* %115)
  %117 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %118 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 1
  %121 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dev_info(%struct.TYPE_4__* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = load i32, i32* @IORESOURCE_MEM, align 4
  %127 = call %struct.resource* @platform_get_resource(%struct.platform_device* %125, i32 %126, i32 0)
  store %struct.resource* %127, %struct.resource** %5, align 8
  %128 = load %struct.resource*, %struct.resource** %5, align 8
  %129 = icmp ne %struct.resource* %128, null
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %112
  %135 = load i32, i32* @ENXIO, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %162

137:                                              ; preds = %112
  %138 = load %struct.resource*, %struct.resource** %5, align 8
  %139 = getelementptr inbounds %struct.resource, %struct.resource* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %142 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = call i32 @platform_get_irq(%struct.platform_device* %143, i32 0)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %137
  %151 = load i32, i32* @ENXIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %162

153:                                              ; preds = %137
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %156 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %159 = call i32 @platform_set_drvdata(%struct.platform_device* %157, %struct.uart_port* %158)
  %160 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %161 = call i32 @uart_add_one_port(i32* @msm_uart_driver, %struct.uart_port* %160)
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %153, %150, %134, %106, %85, %43
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @of_alias_get_id(i64, i8*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local %struct.uart_port* @msm_get_port_from_line(i32) #1

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_4__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
