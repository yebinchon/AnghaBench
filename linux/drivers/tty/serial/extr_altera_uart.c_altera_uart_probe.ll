; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_altera_uart.c_altera_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.uart_port }
%struct.uart_port = type { i64, i64, i32, %struct.TYPE_3__*, i32, i32*, i32, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_3__ }
%struct.altera_uart_platform_uart = type { i64, i64, i64, i32 }
%struct.resource = type { i64 }

@CONFIG_SERIAL_ALTERA_UART_MAXPORTS = common dso_local global i32 0, align 4
@altera_uart_ports = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@ALTERA_UART_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT_ALTERA_UART = common dso_local global i32 0, align 4
@SERIAL_IO_MEM = common dso_local global i32 0, align 4
@altera_uart_ops = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@altera_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @altera_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.altera_uart_platform_uart*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = call %struct.altera_uart_platform_uart* @dev_get_platdata(%struct.TYPE_3__* %11)
  store %struct.altera_uart_platform_uart* %12, %struct.altera_uart_platform_uart** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CONFIG_SERIAL_ALTERA_UART_MAXPORTS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @altera_uart_ports, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %37

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19

37:                                               ; preds = %32, %19
  br label %38

38:                                               ; preds = %37, %1
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CONFIG_SERIAL_ALTERA_UART_MAXPORTS, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %173

48:                                               ; preds = %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @altera_uart_ports, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.uart_port* %53, %struct.uart_port** %5, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load i32, i32* @IORESOURCE_MEM, align 4
  %56 = call %struct.resource* @platform_get_resource(%struct.platform_device* %54, i32 %55, i32 0)
  store %struct.resource* %56, %struct.resource** %6, align 8
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = icmp ne %struct.resource* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load %struct.resource*, %struct.resource** %6, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %78

65:                                               ; preds = %48
  %66 = load %struct.altera_uart_platform_uart*, %struct.altera_uart_platform_uart** %4, align 8
  %67 = icmp ne %struct.altera_uart_platform_uart* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.altera_uart_platform_uart*, %struct.altera_uart_platform_uart** %4, align 8
  %70 = getelementptr inbounds %struct.altera_uart_platform_uart, %struct.altera_uart_platform_uart* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %73 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %173

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load i32, i32* @IORESOURCE_IRQ, align 4
  %81 = call %struct.resource* @platform_get_resource(%struct.platform_device* %79, i32 %80, i32 0)
  store %struct.resource* %81, %struct.resource** %7, align 8
  %82 = load %struct.resource*, %struct.resource** %7, align 8
  %83 = icmp ne %struct.resource* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.resource*, %struct.resource** %7, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %100

90:                                               ; preds = %78
  %91 = load %struct.altera_uart_platform_uart*, %struct.altera_uart_platform_uart** %4, align 8
  %92 = icmp ne %struct.altera_uart_platform_uart* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.altera_uart_platform_uart*, %struct.altera_uart_platform_uart** %4, align 8
  %95 = getelementptr inbounds %struct.altera_uart_platform_uart, %struct.altera_uart_platform_uart* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %98 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %93, %90
  br label %100

100:                                              ; preds = %99, %84
  %101 = load %struct.altera_uart_platform_uart*, %struct.altera_uart_platform_uart** %4, align 8
  %102 = icmp ne %struct.altera_uart_platform_uart* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.altera_uart_platform_uart*, %struct.altera_uart_platform_uart** %4, align 8
  %105 = getelementptr inbounds %struct.altera_uart_platform_uart, %struct.altera_uart_platform_uart* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 10
  store i32 %106, i32* %108, align 4
  br label %122

109:                                              ; preds = %100
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 10
  %116 = call i32 @of_property_read_u32(i32 %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %173

121:                                              ; preds = %109
  br label %122

122:                                              ; preds = %121, %103
  %123 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %124 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @ALTERA_UART_SIZE, align 4
  %127 = call i32 @ioremap(i64 %125, i32 %126)
  %128 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %129 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %128, i32 0, i32 9
  store i32 %127, i32* %129, align 8
  %130 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %131 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %122
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %173

137:                                              ; preds = %122
  %138 = load %struct.altera_uart_platform_uart*, %struct.altera_uart_platform_uart** %4, align 8
  %139 = icmp ne %struct.altera_uart_platform_uart* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.altera_uart_platform_uart*, %struct.altera_uart_platform_uart** %4, align 8
  %142 = getelementptr inbounds %struct.altera_uart_platform_uart, %struct.altera_uart_platform_uart* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %145 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %144, i32 0, i32 8
  store i64 %143, i64* %145, align 8
  br label %149

146:                                              ; preds = %137
  %147 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %148 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %147, i32 0, i32 8
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %146, %140
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @PORT_ALTERA_UART, align 4
  %154 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %155 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @SERIAL_IO_MEM, align 4
  %157 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %158 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %157, i32 0, i32 6
  store i32 %156, i32* %158, align 8
  %159 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %160 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %159, i32 0, i32 5
  store i32* @altera_uart_ops, i32** %160, align 8
  %161 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %162 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %163 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 1
  %166 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %167 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %166, i32 0, i32 3
  store %struct.TYPE_3__* %165, %struct.TYPE_3__** %167, align 8
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %170 = call i32 @platform_set_drvdata(%struct.platform_device* %168, %struct.uart_port* %169)
  %171 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %172 = call i32 @uart_add_one_port(i32* @altera_uart_driver, %struct.uart_port* %171)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %149, %134, %119, %74, %45
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.altera_uart_platform_uart* @dev_get_platdata(%struct.TYPE_3__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
