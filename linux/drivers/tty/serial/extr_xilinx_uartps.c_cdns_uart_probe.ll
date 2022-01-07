; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_19__*, %struct.cdns_uart*, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.cdns_uart = type { i64, %struct.uart_driver*, i8*, i8*, %struct.TYPE_17__, i32, %struct.uart_port*, i32 }
%struct.uart_driver = type { i8*, i32, i32, %struct.TYPE_18__*, %struct.console*, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.console = type { i32, i32, %struct.uart_driver*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_19__ }
%struct.resource = type { i32 }
%struct.of_device_id = type { %struct.cdns_platform_data* }
%struct.cdns_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@CDNS_UART_NAME = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@CDNS_UART_TTY_NAME = common dso_local global i32 0, align 4
@uartps_major = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to register driver\0A\00", align 1
@cdns_uart_of_match = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"aper_clk\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"clock name 'aper_clk' is deprecated.\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"uart_clk\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"clock name 'ref_clk' is deprecated.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Unable to enable pclk clock.\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Unable to enable device clock.\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i32 0, align 4
@UPIO_MEM32 = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@cdns_uart_ops = common dso_local global i32 0, align 4
@CDNS_UART_FIFO_SIZE = common dso_local global i32 0, align 4
@UART_AUTOSUSPEND_TIMEOUT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"uart_add_one_port() failed; err=%i\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"cts-override\00", align 1
@bitmap_lock = common dso_local global i32 0, align 4
@MAX_UART_INSTANCES = common dso_local global i64 0, align 8
@bitmap = common dso_local global i32 0, align 4
@CON_ENABLED = common dso_local global i32 0, align 4
@CON_PRINTBUFFER = common dso_local global i32 0, align 4
@cdns_uart_clk_notifier_cb = common dso_local global i32 0, align 4
@cdns_uart_console_setup = common dso_local global i32 0, align 4
@cdns_uart_console_write = common dso_local global i32 0, align 4
@console_port = common dso_local global %struct.uart_port* null, align 8
@uart_console_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdns_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.cdns_uart*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca %struct.uart_driver*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cdns_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kzalloc(%struct.TYPE_19__* %14, i32 56, i32 %15)
  %17 = bitcast i8* %16 to %struct.cdns_uart*
  store %struct.cdns_uart* %17, %struct.cdns_uart** %8, align 8
  %18 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %19 = icmp ne %struct.cdns_uart* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %390

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(%struct.TYPE_19__* %25, i32 64, i32 %26)
  %28 = bitcast i8* %27 to %struct.uart_port*
  store %struct.uart_port* %28, %struct.uart_port** %6, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %30 = icmp ne %struct.uart_port* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %390

34:                                               ; preds = %23
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @devm_kzalloc(%struct.TYPE_19__* %36, i32 48, i32 %37)
  %39 = bitcast i8* %38 to %struct.uart_driver*
  store %struct.uart_driver* %39, %struct.uart_driver** %10, align 8
  %40 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %41 = icmp ne %struct.uart_driver* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %390

45:                                               ; preds = %34
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i64 @cdns_get_id(%struct.platform_device* %46)
  %48 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %49 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %51 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %56 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %2, align 4
  br label %390

59:                                               ; preds = %45
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = load i32, i32* @CDNS_UART_NAME, align 4
  %64 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %65 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i8* @devm_kasprintf(%struct.TYPE_19__* %61, i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %67)
  store i8* %68, i8** %11, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %374

74:                                               ; preds = %59
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %77 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %80 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @CDNS_UART_TTY_NAME, align 4
  %82 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %83 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @uartps_major, align 4
  %85 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %86 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %88 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %92 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %94 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %93, i32 0, i32 2
  store i32 1, i32* %94, align 4
  %95 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %96 = call i32 @uart_register_driver(%struct.uart_driver* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %74
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %374

103:                                              ; preds = %74
  %104 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %105 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %106 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %105, i32 0, i32 1
  store %struct.uart_driver* %104, %struct.uart_driver** %106, align 8
  %107 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %108 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %112 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %111, i32 0, i32 3
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* @cdns_uart_of_match, align 4
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.of_device_id* @of_match_node(i32 %115, i32 %119)
  store %struct.of_device_id* %120, %struct.of_device_id** %9, align 8
  %121 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %122 = icmp ne %struct.of_device_id* %121, null
  br i1 %122, label %123, label %137

123:                                              ; preds = %103
  %124 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %125 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %124, i32 0, i32 0
  %126 = load %struct.cdns_platform_data*, %struct.cdns_platform_data** %125, align 8
  %127 = icmp ne %struct.cdns_platform_data* %126, null
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %130 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %129, i32 0, i32 0
  %131 = load %struct.cdns_platform_data*, %struct.cdns_platform_data** %130, align 8
  store %struct.cdns_platform_data* %131, %struct.cdns_platform_data** %12, align 8
  %132 = load %struct.cdns_platform_data*, %struct.cdns_platform_data** %12, align 8
  %133 = getelementptr inbounds %struct.cdns_platform_data, %struct.cdns_platform_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %136 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %128, %123, %103
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i8* @devm_clk_get(%struct.TYPE_19__* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %141 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %142 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %144 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @PTR_ERR(i8* %145)
  %147 = load i32, i32* @EPROBE_DEFER, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp eq i32 %146, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %137
  %151 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %152 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @PTR_ERR(i8* %153)
  store i32 %154, i32* %4, align 4
  br label %369

155:                                              ; preds = %137
  %156 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %157 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @IS_ERR(i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %155
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i8* @devm_clk_get(%struct.TYPE_19__* %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %165 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %166 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  %167 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %168 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @IS_ERR(i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %161
  %173 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %174 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @PTR_ERR(i8* %175)
  store i32 %176, i32* %4, align 4
  br label %369

177:                                              ; preds = %161
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %179, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %181

181:                                              ; preds = %177, %155
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i8* @devm_clk_get(%struct.TYPE_19__* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %185 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %186 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %185, i32 0, i32 3
  store i8* %184, i8** %186, align 8
  %187 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %188 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @PTR_ERR(i8* %189)
  %191 = load i32, i32* @EPROBE_DEFER, align 4
  %192 = sub nsw i32 0, %191
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %181
  %195 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %196 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %195, i32 0, i32 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @PTR_ERR(i8* %197)
  store i32 %198, i32* %4, align 4
  br label %369

199:                                              ; preds = %181
  %200 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %201 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %200, i32 0, i32 3
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @IS_ERR(i8* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %225

205:                                              ; preds = %199
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i8* @devm_clk_get(%struct.TYPE_19__* %207, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %209 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %210 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %209, i32 0, i32 3
  store i8* %208, i8** %210, align 8
  %211 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %212 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = call i64 @IS_ERR(i8* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %205
  %217 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %218 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @PTR_ERR(i8* %219)
  store i32 %220, i32* %4, align 4
  br label %369

221:                                              ; preds = %205
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %223, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %225

225:                                              ; preds = %221, %199
  %226 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %227 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %226, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @clk_prepare_enable(i8* %228)
  store i32 %229, i32* %4, align 4
  %230 = load i32, i32* %4, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %225
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 0
  %235 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %234, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %369

236:                                              ; preds = %225
  %237 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %238 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %237, i32 0, i32 3
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @clk_prepare_enable(i8* %239)
  store i32 %240, i32* %4, align 4
  %241 = load i32, i32* %4, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %236
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %244, i32 0, i32 0
  %246 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %245, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %364

247:                                              ; preds = %236
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = load i32, i32* @IORESOURCE_MEM, align 4
  %250 = call %struct.resource* @platform_get_resource(%struct.platform_device* %248, i32 %249, i32 0)
  store %struct.resource* %250, %struct.resource** %7, align 8
  %251 = load %struct.resource*, %struct.resource** %7, align 8
  %252 = icmp ne %struct.resource* %251, null
  br i1 %252, label %256, label %253

253:                                              ; preds = %247
  %254 = load i32, i32* @ENODEV, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %4, align 4
  br label %359

256:                                              ; preds = %247
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = call i32 @platform_get_irq(%struct.platform_device* %257, i32 0)
  store i32 %258, i32* %5, align 4
  %259 = load i32, i32* %5, align 4
  %260 = icmp sle i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load i32, i32* @ENXIO, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %4, align 4
  br label %359

264:                                              ; preds = %256
  %265 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %266 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %265, i32 0, i32 10
  %267 = call i32 @spin_lock_init(i32* %266)
  %268 = load i32, i32* @PORT_UNKNOWN, align 4
  %269 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %270 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %269, i32 0, i32 9
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* @UPIO_MEM32, align 4
  %272 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %273 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %272, i32 0, i32 8
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %275 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %276 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %275, i32 0, i32 7
  store i32 %274, i32* %276, align 8
  %277 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %278 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %277, i32 0, i32 6
  store i32* @cdns_uart_ops, i32** %278, align 8
  %279 = load i32, i32* @CDNS_UART_FIFO_SIZE, align 4
  %280 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %281 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %280, i32 0, i32 5
  store i32 %279, i32* %281, align 8
  %282 = load %struct.resource*, %struct.resource** %7, align 8
  %283 = getelementptr inbounds %struct.resource, %struct.resource* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %286 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %285, i32 0, i32 4
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* %5, align 4
  %288 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %289 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 8
  %290 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %291 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %290, i32 0, i32 0
  %292 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %293 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %292, i32 0, i32 1
  store %struct.TYPE_19__* %291, %struct.TYPE_19__** %293, align 8
  %294 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %295 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %294, i32 0, i32 3
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 @clk_get_rate(i8* %296)
  %298 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %299 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 8
  %300 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %301 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %302 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %301, i32 0, i32 2
  store %struct.cdns_uart* %300, %struct.cdns_uart** %302, align 8
  %303 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %304 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %305 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %304, i32 0, i32 6
  store %struct.uart_port* %303, %struct.uart_port** %305, align 8
  %306 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %307 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %308 = call i32 @platform_set_drvdata(%struct.platform_device* %306, %struct.uart_port* %307)
  %309 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %310 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %309, i32 0, i32 0
  %311 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_19__* %310)
  %312 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %313 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %312, i32 0, i32 0
  %314 = load i32, i32* @UART_AUTOSUSPEND_TIMEOUT, align 4
  %315 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_19__* %313, i32 %314)
  %316 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %317 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %316, i32 0, i32 0
  %318 = call i32 @pm_runtime_set_active(%struct.TYPE_19__* %317)
  %319 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %320 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %319, i32 0, i32 0
  %321 = call i32 @pm_runtime_enable(%struct.TYPE_19__* %320)
  %322 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %323 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %322, i32 0, i32 1
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %323, align 8
  %325 = call i32 @device_init_wakeup(%struct.TYPE_19__* %324, i32 1)
  %326 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %327 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %328 = call i32 @uart_add_one_port(%struct.uart_driver* %326, %struct.uart_port* %327)
  store i32 %328, i32* %4, align 4
  %329 = load i32, i32* %4, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %264
  %332 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %333 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %332, i32 0, i32 0
  %334 = load i32, i32* %4, align 4
  %335 = call i32 (%struct.TYPE_19__*, i8*, ...) @dev_err(%struct.TYPE_19__* %333, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %334)
  br label %349

336:                                              ; preds = %264
  %337 = load %struct.uart_driver*, %struct.uart_driver** %10, align 8
  %338 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %337, i32 0, i32 3
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* @uartps_major, align 4
  %342 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %343 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @of_property_read_bool(i32 %345, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %347 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %348 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %347, i32 0, i32 5
  store i32 %346, i32* %348, align 4
  store i32 0, i32* %2, align 4
  br label %390

349:                                              ; preds = %331
  %350 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %351 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %350, i32 0, i32 0
  %352 = call i32 @pm_runtime_disable(%struct.TYPE_19__* %351)
  %353 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %354 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %353, i32 0, i32 0
  %355 = call i32 @pm_runtime_set_suspended(%struct.TYPE_19__* %354)
  %356 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %357 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %356, i32 0, i32 0
  %358 = call i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_19__* %357)
  br label %359

359:                                              ; preds = %349, %261, %253
  %360 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %361 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %360, i32 0, i32 3
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 @clk_disable_unprepare(i8* %362)
  br label %364

364:                                              ; preds = %359, %243
  %365 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %366 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %365, i32 0, i32 2
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @clk_disable_unprepare(i8* %367)
  br label %369

369:                                              ; preds = %364, %232, %216, %194, %172, %150
  %370 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %371 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %370, i32 0, i32 1
  %372 = load %struct.uart_driver*, %struct.uart_driver** %371, align 8
  %373 = call i32 @uart_unregister_driver(%struct.uart_driver* %372)
  br label %374

374:                                              ; preds = %369, %99, %71
  %375 = call i32 @mutex_lock(i32* @bitmap_lock)
  %376 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %377 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @MAX_UART_INSTANCES, align 8
  %380 = icmp slt i64 %378, %379
  br i1 %380, label %381, label %387

381:                                              ; preds = %374
  %382 = load %struct.cdns_uart*, %struct.cdns_uart** %8, align 8
  %383 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load i32, i32* @bitmap, align 4
  %386 = call i32 @clear_bit(i64 %384, i32 %385)
  br label %387

387:                                              ; preds = %381, %374
  %388 = call i32 @mutex_unlock(i32* @bitmap_lock)
  %389 = load i32, i32* %4, align 4
  store i32 %389, i32* %2, align 4
  br label %390

390:                                              ; preds = %387, %336, %54, %42, %31, %20
  %391 = load i32, i32* %2, align 4
  ret i32 %391
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @cdns_get_id(%struct.platform_device*) #1

declare dso_local i8* @devm_kasprintf(%struct.TYPE_19__*, i32, i8*, i32, i32) #1

declare dso_local i32 @uart_register_driver(%struct.uart_driver*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_port*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_19__*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @uart_add_one_port(%struct.uart_driver*, %struct.uart_port*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.TYPE_19__*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_19__*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @uart_unregister_driver(%struct.uart_driver*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
