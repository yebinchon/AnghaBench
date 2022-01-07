; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_uart_port = type { i32, i32*, i32, %struct.uart_port }
%struct.uart_port = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_9__, i32, i32*, i32, i32, i32, i32, %struct.TYPE_8__*, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@atmel_pops = common dso_local global i32 0, align 4
@atmel_config_rs485 = common dso_local global i32 0, align 4
@atmel_config_iso7816 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"usart\00", align 1
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@SER_ISO7816_ENABLED = common dso_local global i32 0, align 4
@ATMEL_US_TXEMPTY = common dso_local global i32 0, align 4
@PDC_BUFFER_SIZE = common dso_local global i32 0, align 4
@ATMEL_US_ENDTX = common dso_local global i32 0, align 4
@ATMEL_US_TXBUFE = common dso_local global i32 0, align 4
@ATMEL_US_TXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_uart_port*, %struct.platform_device*)* @atmel_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_init_port(%struct.atmel_uart_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_uart_port*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.platform_device*, align 8
  store %struct.atmel_uart_port* %0, %struct.atmel_uart_port** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %9, i32 0, i32 3
  store %struct.uart_port* %10, %struct.uart_port** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.platform_device* @to_platform_device(i32 %14)
  store %struct.platform_device* %15, %struct.platform_device** %8, align 8
  %16 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = call i32 @atmel_init_property(%struct.atmel_uart_port* %16, %struct.platform_device* %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %20 = call i32 @atmel_set_ops(%struct.uart_port* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 3
  %25 = call i32 @uart_get_rs485_mode(%struct.TYPE_8__* %22, %struct.TYPE_9__* %24)
  %26 = load i32, i32* @UPIO_MEM, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 12
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %30 = load i32, i32* @UPF_IOREMAP, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 11
  store i32* @atmel_pops, i32** %35, align 8
  %36 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 10
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %41, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 4
  %50 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @atmel_config_rs485, align 4
  %59 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @atmel_config_iso7816, align 4
  %62 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 5
  store i32* null, i32** %65, align 8
  %66 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %67 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %66, i32 0, i32 2
  %68 = call i32 @memset(i32* %67, i32 0, i32 4)
  %69 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %70 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %118, label %73

73:                                               ; preds = %2
  %74 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32* @clk_get(%struct.TYPE_8__* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %80 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @IS_ERR(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %86 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @PTR_ERR(i32* %87)
  store i32 %88, i32* %6, align 4
  %89 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %90 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %157

92:                                               ; preds = %73
  %93 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %94 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @clk_prepare_enable(i32* %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %101 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @clk_put(i32* %102)
  %104 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %105 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %157

107:                                              ; preds = %92
  %108 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %109 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @clk_get_rate(i32* %110)
  %112 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %113 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %115 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @clk_disable_unprepare(i32* %116)
  br label %118

118:                                              ; preds = %107, %2
  %119 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %120 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @SER_RS485_ENABLED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @SER_ISO7816_ENABLED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %126, %118
  %135 = load i32, i32* @ATMEL_US_TXEMPTY, align 4
  %136 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %137 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  br label %156

138:                                              ; preds = %126
  %139 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %140 = call i64 @atmel_use_pdc_tx(%struct.uart_port* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* @PDC_BUFFER_SIZE, align 4
  %144 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %145 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @ATMEL_US_ENDTX, align 4
  %147 = load i32, i32* @ATMEL_US_TXBUFE, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %150 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  br label %155

151:                                              ; preds = %138
  %152 = load i32, i32* @ATMEL_US_TXRDY, align 4
  %153 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %154 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %151, %142
  br label %156

156:                                              ; preds = %155, %134
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %99, %84
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @atmel_init_property(%struct.atmel_uart_port*, %struct.platform_device*) #1

declare dso_local i32 @atmel_set_ops(%struct.uart_port*) #1

declare dso_local i32 @uart_get_rs485_mode(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i64 @atmel_use_pdc_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
