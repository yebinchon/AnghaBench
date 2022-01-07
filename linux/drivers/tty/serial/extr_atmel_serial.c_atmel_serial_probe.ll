; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_uart_port = type { %struct.TYPE_16__, i32*, %struct.TYPE_15__, i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_12__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.device_node*, %struct.TYPE_13__* }
%struct.device_node = type { i32 }
%struct.TYPE_13__ = type { %struct.device_node* }

@ATMEL_SERIAL_RINGSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@atmel_ports_in_use = common dso_local global i32 0, align 4
@ATMEL_MAX_UART = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@atmel_ports = common dso_local global %struct.atmel_uart_port* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SER_RS485_ENABLED = common dso_local global i32 0, align 4
@atmel_uart = common dso_local global i32 0, align 4
@ATMEL_US_MR = common dso_local global i32 0, align 4
@ATMEL_US_USMODE_NORMAL = common dso_local global i32 0, align 4
@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_RTSEN = common dso_local global i32 0, align 4
@ATMEL_CONSOLE_DEVICE = common dso_local global %struct.TYPE_12__* null, align 8
@CON_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_uart_port*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load i32, i32* @ATMEL_SERIAL_RINGSIZE, align 4
  %16 = load i32, i32* @ATMEL_SERIAL_RINGSIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  store %struct.device_node* %20, %struct.device_node** %23, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @of_alias_get_id(%struct.device_node* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @atmel_ports_in_use, align 4
  %30 = load i32, i32* @ATMEL_MAX_UART, align 4
  %31 = call i32 @find_first_zero_bit(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ATMEL_MAX_UART, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %184

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @atmel_ports_in_use, align 4
  %42 = call i64 @test_and_set_bit(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %184

47:                                               ; preds = %39
  %48 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** @atmel_ports, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %48, i64 %50
  store %struct.atmel_uart_port* %51, %struct.atmel_uart_port** %4, align 8
  %52 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %56 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = call i32 @atmel_serial_probe_fifos(%struct.atmel_uart_port* %58, %struct.platform_device* %59)
  %61 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %62 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %61, i32 0, i32 5
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  %64 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %65 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %64, i32 0, i32 4
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = call i32 @atmel_init_port(%struct.atmel_uart_port* %67, %struct.platform_device* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %47
  br label %177

73:                                               ; preds = %47
  %74 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %75 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %74, i32 0, i32 0
  %76 = call i32 @mctrl_gpio_init(%struct.TYPE_16__* %75, i32 0)
  %77 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %80 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %73
  %85 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %86 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @PTR_ERR(i32 %87)
  store i32 %88, i32* %7, align 4
  br label %177

89:                                               ; preds = %73
  %90 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %91 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %90, i32 0, i32 0
  %92 = call i32 @atmel_use_pdc_rx(%struct.TYPE_16__* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* @ATMEL_SERIAL_RINGSIZE, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @kmalloc_array(i32 %97, i32 4, i32 %98)
  store i8* %99, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  br label %164

103:                                              ; preds = %94
  %104 = load i8*, i8** %6, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %107 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32* %105, i32** %108, align 8
  br label %109

109:                                              ; preds = %103, %89
  %110 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %111 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SER_RS485_ENABLED, align 4
  %116 = and i32 %114, %115
  store i32 %116, i32* %8, align 4
  %117 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %118 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %117, i32 0, i32 0
  %119 = call i32 @uart_add_one_port(i32* @atmel_uart, %struct.TYPE_16__* %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  br label %155

123:                                              ; preds = %109
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @device_init_wakeup(%struct.TYPE_17__* %125, i32 1)
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %129 = call i32 @platform_set_drvdata(%struct.platform_device* %127, %struct.atmel_uart_port* %128)
  %130 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %131 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @clk_prepare_enable(i32* %132)
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %123
  %137 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %138 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %137, i32 0, i32 0
  %139 = load i32, i32* @ATMEL_US_MR, align 4
  %140 = load i32, i32* @ATMEL_US_USMODE_NORMAL, align 4
  %141 = call i32 @atmel_uart_writel(%struct.TYPE_16__* %138, i32 %139, i32 %140)
  %142 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %143 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %142, i32 0, i32 0
  %144 = load i32, i32* @ATMEL_US_CR, align 4
  %145 = load i32, i32* @ATMEL_US_RTSEN, align 4
  %146 = call i32 @atmel_uart_writel(%struct.TYPE_16__* %143, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %136, %123
  %148 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %149 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %148, i32 0, i32 0
  %150 = call i32 @atmel_get_ip_name(%struct.TYPE_16__* %149)
  %151 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %152 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 @clk_disable_unprepare(i32* %153)
  store i32 0, i32* %2, align 4
  br label %186

155:                                              ; preds = %122
  %156 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %157 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @kfree(i32* %159)
  %161 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %162 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i32* null, i32** %163, align 8
  br label %164

164:                                              ; preds = %155, %102
  %165 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %166 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %165, i32 0, i32 0
  %167 = call i64 @atmel_is_console_port(%struct.TYPE_16__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %171 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @clk_put(i32* %172)
  %174 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %175 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %174, i32 0, i32 1
  store i32* null, i32** %175, align 8
  br label %176

176:                                              ; preds = %169, %164
  br label %177

177:                                              ; preds = %176, %84, %72
  %178 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %4, align 8
  %179 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @atmel_ports_in_use, align 4
  %183 = call i32 @clear_bit(i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %177, %44, %36
  %185 = load i32, i32* %7, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %184, %147
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @atmel_serial_probe_fifos(%struct.atmel_uart_port*, %struct.platform_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atmel_init_port(%struct.atmel_uart_port*, %struct.platform_device*) #1

declare dso_local i32 @mctrl_gpio_init(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @atmel_use_pdc_rx(%struct.TYPE_16__*) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_uart_port*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @atmel_uart_writel(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @atmel_get_ip_name(%struct.TYPE_16__*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @atmel_is_console_port(%struct.TYPE_16__*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
