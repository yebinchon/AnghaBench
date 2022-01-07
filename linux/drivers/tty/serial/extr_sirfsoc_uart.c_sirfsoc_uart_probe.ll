; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_slave_config = type { i32, i32 }
%struct.sirfsoc_uart_port = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_13__, %struct.TYPE_14__, i8*, i32, %struct.sirfsoc_uart_register*, %struct.uart_port }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.sirfsoc_uart_register = type { i32 }
%struct.uart_port = type { i64, %struct.TYPE_15__*, i32, i32*, i32, i32, i32, i32, i32, %struct.sirfsoc_uart_port*, i32, i32 }
%struct.TYPE_15__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_15__ }
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }

@__const.sirfsoc_uart_probe.slv_cfg = private unnamed_addr constant %struct.dma_slave_config { i32 1, i32 0 }, align 4
@__const.sirfsoc_uart_probe.tx_slv_cfg = private unnamed_addr constant %struct.dma_slave_config { i32 0, i32 2 }, align 4
@sirfsoc_uart_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@sirf_ports = common dso_local global %struct.sirfsoc_uart_port** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"uart-has-rtscts\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"sirf,uart-has-rtscts\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"sirf,prima2-uart\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sirf,atlas7-uart\00", align 1
@SIRF_REAL_UART = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"sirf,prima2-usp-uart\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"sirf,atlas7-usp-uart\00", align 1
@SIRF_USP_UART = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"cts-gpios\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"rts-gpios\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Usp flow control must have cts and rts gpio\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"usp-cts-gpio\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Unable request cts gpio\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"usp-rts-gpio\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Unable request rts gpio\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"fifosize\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Unable to find fifosize in uart node.\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"Insufficient resources.\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Cannot remap resource.\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@sirfsoc_uart_ops = common dso_local global i32 0, align 4
@sirfsoc_uart_drv = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"Cannot add UART port(%d).\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@SIRFSOC_RX_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"Uart alloc bufa failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@sirfsoc_uart_rx_dma_hrtimer_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirfsoc_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sirfsoc_uart_port*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_slave_config, align 4
  %10 = alloca %struct.dma_slave_config, align 4
  %11 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = bitcast %struct.dma_slave_config* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.dma_slave_config* @__const.sirfsoc_uart_probe.slv_cfg to i8*), i64 8, i1 false)
  %17 = bitcast %struct.dma_slave_config* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.dma_slave_config* @__const.sirfsoc_uart_probe.tx_slv_cfg to i8*), i64 8, i1 false)
  %18 = load i32, i32* @sirfsoc_uart_ids, align 4
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call %struct.of_device_id* @of_match_node(i32 %18, %struct.device_node* %19)
  store %struct.of_device_id* %20, %struct.of_device_id** %11, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sirfsoc_uart_port* @devm_kzalloc(%struct.TYPE_15__* %22, i32 168, i32 %23)
  store %struct.sirfsoc_uart_port* %24, %struct.sirfsoc_uart_port** %5, align 8
  %25 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %26 = icmp ne %struct.sirfsoc_uart_port* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %432

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = call i64 @of_alias_get_id(%struct.device_node* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %34 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %37 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.sirfsoc_uart_port**, %struct.sirfsoc_uart_port*** @sirf_ports, align 8
  %41 = call i64 @ARRAY_SIZE(%struct.sirfsoc_uart_port** %40)
  %42 = icmp uge i64 %39, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 1
  %46 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %47 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %434

53:                                               ; preds = %30
  %54 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %55 = load %struct.sirfsoc_uart_port**, %struct.sirfsoc_uart_port*** @sirf_ports, align 8
  %56 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %57 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %56, i32 0, i32 11
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %55, i64 %59
  store %struct.sirfsoc_uart_port* %54, %struct.sirfsoc_uart_port** %60, align 8
  %61 = load i32, i32* @UPIO_MEM, align 4
  %62 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %63 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %62, i32 0, i32 11
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 11
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %66 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %67 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %66, i32 0, i32 11
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 10
  store i32 %65, i32* %68, align 8
  %69 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %70 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %69, i32 0, i32 11
  store %struct.uart_port* %70, %struct.uart_port** %6, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 1
  %73 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 1
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %74, align 8
  %75 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %76 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 9
  store %struct.sirfsoc_uart_port* %75, %struct.sirfsoc_uart_port** %77, align 8
  %78 = load %struct.of_device_id*, %struct.of_device_id** %11, align 8
  %79 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.sirfsoc_uart_register*
  %82 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %83 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %82, i32 0, i32 10
  store %struct.sirfsoc_uart_register* %81, %struct.sirfsoc_uart_register** %83, align 8
  %84 = load %struct.device_node*, %struct.device_node** %4, align 8
  %85 = call i64 @of_property_read_bool(%struct.device_node* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %53
  %88 = load %struct.device_node*, %struct.device_node** %4, align 8
  %89 = call i64 @of_property_read_bool(%struct.device_node* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %87, %53
  %92 = phi i1 [ true, %53 ], [ %90, %87 ]
  %93 = zext i1 %92 to i32
  %94 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %95 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.device_node*, %struct.device_node** %4, align 8
  %97 = call i64 @of_device_is_compatible(%struct.device_node* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %91
  %100 = load %struct.device_node*, %struct.device_node** %4, align 8
  %101 = call i64 @of_device_is_compatible(%struct.device_node* %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99, %91
  %104 = load i32, i32* @SIRF_REAL_UART, align 4
  %105 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %106 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %105, i32 0, i32 10
  %107 = load %struct.sirfsoc_uart_register*, %struct.sirfsoc_uart_register** %106, align 8
  %108 = getelementptr inbounds %struct.sirfsoc_uart_register, %struct.sirfsoc_uart_register* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %99
  %110 = load %struct.device_node*, %struct.device_node** %4, align 8
  %111 = call i64 @of_device_is_compatible(%struct.device_node* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load %struct.device_node*, %struct.device_node** %4, align 8
  %115 = call i64 @of_device_is_compatible(%struct.device_node* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %207

117:                                              ; preds = %113, %109
  %118 = load i32, i32* @SIRF_USP_UART, align 4
  %119 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %120 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %119, i32 0, i32 10
  %121 = load %struct.sirfsoc_uart_register*, %struct.sirfsoc_uart_register** %120, align 8
  %122 = getelementptr inbounds %struct.sirfsoc_uart_register, %struct.sirfsoc_uart_register* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 4
  %123 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %124 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %117
  br label %208

128:                                              ; preds = %117
  %129 = load %struct.device_node*, %struct.device_node** %4, align 8
  %130 = call i64 @of_find_property(%struct.device_node* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load %struct.device_node*, %struct.device_node** %4, align 8
  %134 = call i8* @of_get_named_gpio(%struct.device_node* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %137 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  br label %141

138:                                              ; preds = %128
  %139 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %140 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %139, i32 0, i32 1
  store i32 -1, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %132
  %142 = load %struct.device_node*, %struct.device_node** %4, align 8
  %143 = call i64 @of_find_property(%struct.device_node* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* null)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load %struct.device_node*, %struct.device_node** %4, align 8
  %147 = call i8* @of_get_named_gpio(%struct.device_node* %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %150 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  br label %154

151:                                              ; preds = %141
  %152 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %153 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %152, i32 0, i32 2
  store i32 -1, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %145
  %155 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %156 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @gpio_is_valid(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %162 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @gpio_is_valid(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %160, %154
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %8, align 4
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 1
  %171 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %170, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %432

172:                                              ; preds = %160
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 1
  %175 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %176 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @devm_gpio_request(%struct.TYPE_15__* %174, i32 %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %172
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 1
  %184 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %183, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %432

185:                                              ; preds = %172
  %186 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %187 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @gpio_direction_input(i32 %188)
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 1
  %192 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %193 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @devm_gpio_request(%struct.TYPE_15__* %191, i32 %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %185
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 1
  %201 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %200, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  br label %432

202:                                              ; preds = %185
  %203 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %204 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @gpio_direction_output(i32 %205, i32 1)
  br label %207

207:                                              ; preds = %202, %113
  br label %208

208:                                              ; preds = %207, %127
  %209 = load %struct.device_node*, %struct.device_node** %4, align 8
  %210 = call i64 @of_device_is_compatible(%struct.device_node* %209, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load %struct.device_node*, %struct.device_node** %4, align 8
  %214 = call i64 @of_device_is_compatible(%struct.device_node* %213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212, %208
  %217 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %218 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %217, i32 0, i32 3
  store i32 1, i32* %218, align 4
  br label %219

219:                                              ; preds = %216, %212
  %220 = load %struct.device_node*, %struct.device_node** %4, align 8
  %221 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %222 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %221, i32 0, i32 8
  %223 = call i64 @of_property_read_u32(%struct.device_node* %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %219
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 1
  %228 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %227, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  %229 = load i32, i32* @EFAULT, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %8, align 4
  br label %432

231:                                              ; preds = %219
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = load i32, i32* @IORESOURCE_MEM, align 4
  %234 = call %struct.resource* @platform_get_resource(%struct.platform_device* %232, i32 %233, i32 0)
  store %struct.resource* %234, %struct.resource** %7, align 8
  %235 = load %struct.resource*, %struct.resource** %7, align 8
  %236 = icmp eq %struct.resource* %235, null
  br i1 %236, label %237, label %243

237:                                              ; preds = %231
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %238, i32 0, i32 1
  %240 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %239, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %241 = load i32, i32* @EFAULT, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %8, align 4
  br label %432

243:                                              ; preds = %231
  %244 = load %struct.resource*, %struct.resource** %7, align 8
  %245 = getelementptr inbounds %struct.resource, %struct.resource* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %248 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %247, i32 0, i32 7
  store i32 %246, i32* %248, align 4
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 1
  %251 = load %struct.resource*, %struct.resource** %7, align 8
  %252 = getelementptr inbounds %struct.resource, %struct.resource* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.resource*, %struct.resource** %7, align 8
  %255 = call i32 @resource_size(%struct.resource* %254)
  %256 = call i32 @devm_ioremap(%struct.TYPE_15__* %250, i32 %253, i32 %255)
  %257 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %258 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %257, i32 0, i32 6
  store i32 %256, i32* %258, align 8
  %259 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %260 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %243
  %264 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %265 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %264, i32 0, i32 1
  %266 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %265, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %267 = load i32, i32* @ENOMEM, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %8, align 4
  br label %432

269:                                              ; preds = %243
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = load i32, i32* @IORESOURCE_IRQ, align 4
  %272 = call %struct.resource* @platform_get_resource(%struct.platform_device* %270, i32 %271, i32 0)
  store %struct.resource* %272, %struct.resource** %7, align 8
  %273 = load %struct.resource*, %struct.resource** %7, align 8
  %274 = icmp eq %struct.resource* %273, null
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 1
  %278 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %277, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %279 = load i32, i32* @EFAULT, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %8, align 4
  br label %432

281:                                              ; preds = %269
  %282 = load %struct.resource*, %struct.resource** %7, align 8
  %283 = getelementptr inbounds %struct.resource, %struct.resource* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %286 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %285, i32 0, i32 5
  store i32 %284, i32* %286, align 4
  %287 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %288 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %287, i32 0, i32 1
  %289 = call i32 @devm_clk_get(%struct.TYPE_15__* %288, i32* null)
  %290 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %291 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %290, i32 0, i32 9
  store i32 %289, i32* %291, align 8
  %292 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %293 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 8
  %295 = call i64 @IS_ERR(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %281
  %298 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %299 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @PTR_ERR(i32 %300)
  store i32 %301, i32* %8, align 4
  br label %432

302:                                              ; preds = %281
  %303 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %304 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %303, i32 0, i32 9
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @clk_get_rate(i32 %305)
  %307 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %308 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %307, i32 0, i32 4
  store i32 %306, i32* %308, align 8
  %309 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %310 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %309, i32 0, i32 3
  store i32* @sirfsoc_uart_ops, i32** %310, align 8
  %311 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %312 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %311, i32 0, i32 2
  %313 = call i32 @spin_lock_init(i32* %312)
  %314 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %315 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %316 = call i32 @platform_set_drvdata(%struct.platform_device* %314, %struct.sirfsoc_uart_port* %315)
  %317 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %318 = call i32 @uart_add_one_port(i32* @sirfsoc_uart_drv, %struct.uart_port* %317)
  store i32 %318, i32* %8, align 4
  %319 = load i32, i32* %8, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %302
  %322 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %323 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %322, i32 0, i32 1
  %324 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %325 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %323, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 %326)
  br label %432

328:                                              ; preds = %302
  %329 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %330 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %329, i32 0, i32 1
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %330, align 8
  %332 = call i8* @dma_request_slave_channel(%struct.TYPE_15__* %331, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %333 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %334 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %333, i32 0, i32 5
  store i8* %332, i8** %334, align 8
  %335 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %336 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %335, i32 0, i32 1
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %336, align 8
  %338 = load i32, i32* @SIRFSOC_RX_DMA_BUF_SIZE, align 4
  %339 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %340 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %339, i32 0, i32 6
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = load i32, i32* @GFP_KERNEL, align 4
  %343 = call i32 @dma_alloc_coherent(%struct.TYPE_15__* %337, i32 %338, i32* %341, i32 %342)
  %344 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %345 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %344, i32 0, i32 6
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  store i32 %343, i32* %347, align 8
  %348 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %349 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %348, i32 0, i32 6
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %361, label %354

354:                                              ; preds = %328
  %355 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %356 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %355, i32 0, i32 1
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** %356, align 8
  %358 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %357, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %359 = load i32, i32* @ENOMEM, align 4
  %360 = sub nsw i32 0, %359
  store i32 %360, i32* %8, align 4
  br label %413

361:                                              ; preds = %328
  %362 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %363 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %362, i32 0, i32 6
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 1
  store i64 0, i64* %365, align 8
  %366 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %367 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %366, i32 0, i32 6
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 2
  store i64 0, i64* %369, align 8
  %370 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %371 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %370, i32 0, i32 5
  %372 = load i8*, i8** %371, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %379

374:                                              ; preds = %361
  %375 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %376 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %375, i32 0, i32 5
  %377 = load i8*, i8** %376, align 8
  %378 = call i32 @dmaengine_slave_config(i8* %377, %struct.dma_slave_config* %9)
  br label %379

379:                                              ; preds = %374, %361
  %380 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %381 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %380, i32 0, i32 1
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %381, align 8
  %383 = call i8* @dma_request_slave_channel(%struct.TYPE_15__* %382, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %384 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %385 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %384, i32 0, i32 8
  store i8* %383, i8** %385, align 8
  %386 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %387 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %386, i32 0, i32 8
  %388 = load i8*, i8** %387, align 8
  %389 = icmp ne i8* %388, null
  br i1 %389, label %390, label %395

390:                                              ; preds = %379
  %391 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %392 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %391, i32 0, i32 8
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @dmaengine_slave_config(i8* %393, %struct.dma_slave_config* %10)
  br label %395

395:                                              ; preds = %390, %379
  %396 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %397 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %396, i32 0, i32 5
  %398 = load i8*, i8** %397, align 8
  %399 = icmp ne i8* %398, null
  br i1 %399, label %400, label %412

400:                                              ; preds = %395
  %401 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %402 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %401, i32 0, i32 7
  %403 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %404 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %405 = call i32 @hrtimer_init(%struct.TYPE_14__* %402, i32 %403, i32 %404)
  %406 = load i32, i32* @sirfsoc_uart_rx_dma_hrtimer_callback, align 4
  %407 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %408 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %407, i32 0, i32 7
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 0
  store i32 %406, i32* %409, align 8
  %410 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %411 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %410, i32 0, i32 4
  store i32 0, i32* %411, align 8
  br label %412

412:                                              ; preds = %400, %395
  store i32 0, i32* %2, align 4
  br label %434

413:                                              ; preds = %354
  %414 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %415 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %414, i32 0, i32 1
  %416 = load %struct.TYPE_15__*, %struct.TYPE_15__** %415, align 8
  %417 = load i32, i32* @SIRFSOC_RX_DMA_BUF_SIZE, align 4
  %418 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %419 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %418, i32 0, i32 6
  %420 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %424 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %423, i32 0, i32 6
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @dma_free_coherent(%struct.TYPE_15__* %416, i32 %417, i32 %422, i32 %426)
  %428 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %429 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %428, i32 0, i32 5
  %430 = load i8*, i8** %429, align 8
  %431 = call i32 @dma_release_channel(i8* %430)
  br label %432

432:                                              ; preds = %413, %321, %297, %275, %263, %237, %225, %198, %181, %166, %27
  %433 = load i32, i32* %8, align 4
  store i32 %433, i32* %2, align 4
  br label %434

434:                                              ; preds = %432, %412, %43
  %435 = load i32, i32* %2, align 4
  ret i32 %435
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #2

declare dso_local %struct.sirfsoc_uart_port* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i64 @of_alias_get_id(%struct.device_node*, i8*) #2

declare dso_local i64 @ARRAY_SIZE(%struct.sirfsoc_uart_port**) #2

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #2

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #2

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #2

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #2

declare dso_local i8* @of_get_named_gpio(%struct.device_node*, i8*, i32) #2

declare dso_local i32 @gpio_is_valid(i32) #2

declare dso_local i32 @devm_gpio_request(%struct.TYPE_15__*, i32, i8*) #2

declare dso_local i32 @gpio_direction_input(i32) #2

declare dso_local i32 @gpio_direction_output(i32, i32) #2

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @devm_ioremap(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local i32 @devm_clk_get(%struct.TYPE_15__*, i32*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @clk_get_rate(i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sirfsoc_uart_port*) #2

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #2

declare dso_local i8* @dma_request_slave_channel(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @dma_alloc_coherent(%struct.TYPE_15__*, i32, i32*, i32) #2

declare dso_local i32 @dmaengine_slave_config(i8*, %struct.dma_slave_config*) #2

declare dso_local i32 @hrtimer_init(%struct.TYPE_14__*, i32, i32) #2

declare dso_local i32 @dma_free_coherent(%struct.TYPE_15__*, i32, i32, i32) #2

declare dso_local i32 @dma_release_channel(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
