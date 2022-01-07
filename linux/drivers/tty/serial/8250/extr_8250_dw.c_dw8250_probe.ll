; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dw.c_dw8250_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_7__*, %struct.uart_port }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.uart_port = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, %struct.device*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.resource = type { i32 }
%struct.dw8250_data = type { i8*, i8*, i8*, %struct.TYPE_8__, i32, i64, i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no registers defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"cannot get irq\0A\00", align 1
@dw8250_handle_irq = common dso_local global i32* null, align 8
@dw8250_do_pm = common dso_local global i32 0, align 4
@PORT_8250 = common dso_local global i32 0, align 4
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@dw8250_serial_in = common dso_local global i32 0, align 4
@dw8250_serial_out = common dso_local global i32 0, align 4
@dw8250_set_ldisc = common dso_local global i32 0, align 4
@dw8250_set_termios = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dw8250_fallback_dma_filter = common dso_local global i32 0, align 4
@DW_UART_USR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"snps,uart-16550-compatible\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@UPIO_MEM32 = common dso_local global i32 0, align 4
@dw8250_serial_in32 = common dso_local global i32 0, align 4
@dw8250_serial_out32 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"dcd-override\00", align 1
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"dsr-override\00", align 1
@UART_MSR_DSR = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"cts-override\00", align 1
@UART_MSR_CTS = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"ri-override\00", align 1
@UART_MSR_RI = common dso_local global i32 0, align 4
@UART_MSR_TERI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"baudclk\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"could not enable optional baudclk: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"clock rate not defined\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"could not enable apb_pclk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dw8250_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw8250_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uart_8250_port, align 8
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_port*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.dw8250_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = bitcast %struct.uart_8250_port* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 104, i1 false)
  store %struct.uart_8250_port* %4, %struct.uart_8250_port** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %6, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @platform_get_irq(%struct.platform_device* %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %20 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %19, i32 0, i32 1
  store %struct.uart_port* %20, %struct.uart_port** %8, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %9, align 8
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %9, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %453

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @EPROBE_DEFER, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %9, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %453

43:                                               ; preds = %30
  %44 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 17
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 16
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** @dw8250_handle_irq, align 8
  %56 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 5
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* @dw8250_do_pm, align 4
  %59 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 15
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @PORT_8250, align 4
  %62 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 14
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @UPF_SHARE_IRQ, align 4
  %65 = load i32, i32* @UPF_FIXED_PORT, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.device*, %struct.device** %9, align 8
  %70 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 13
  store %struct.device* %69, %struct.device** %71, align 8
  %72 = load i32, i32* @UPIO_MEM, align 4
  %73 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @dw8250_serial_in, align 4
  %76 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @dw8250_serial_out, align 4
  %79 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @dw8250_set_ldisc, align 4
  %82 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 12
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @dw8250_set_termios, align 4
  %85 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 4
  %87 = load %struct.device*, %struct.device** %9, align 8
  %88 = load %struct.resource*, %struct.resource** %6, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.resource*, %struct.resource** %6, align 8
  %92 = call i32 @resource_size(%struct.resource* %91)
  %93 = call i32 @devm_ioremap(%struct.device* %87, i32 %90, i32 %92)
  %94 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 8
  %96 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %97 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %96, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %43
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %453

103:                                              ; preds = %43
  %104 = load %struct.device*, %struct.device** %9, align 8
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call %struct.dw8250_data* @devm_kzalloc(%struct.device* %104, i32 72, i32 %105)
  store %struct.dw8250_data* %106, %struct.dw8250_data** %10, align 8
  %107 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %108 = icmp ne %struct.dw8250_data* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %453

112:                                              ; preds = %103
  %113 = load i32, i32* @dw8250_fallback_dma_filter, align 4
  %114 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %115 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store i32 %113, i32* %117, align 4
  %118 = load i32, i32* @DW_UART_USR, align 4
  %119 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %120 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 8
  %121 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %122 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %121, i32 0, i32 3
  %123 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %124 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %123, i32 0, i32 9
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %124, align 8
  %125 = load %struct.device*, %struct.device** %9, align 8
  %126 = call i64 @device_property_read_bool(%struct.device* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %128 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %127, i32 0, i32 5
  store i64 %126, i64* %128, align 8
  %129 = load %struct.device*, %struct.device** %9, align 8
  %130 = call i32 @device_property_read_u32(%struct.device* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %112
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %136 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %137

137:                                              ; preds = %133, %112
  %138 = load %struct.device*, %struct.device** %9, align 8
  %139 = call i32 @device_property_read_u32(%struct.device* %138, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %12)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %155, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 4
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* @UPIO_MEM32, align 4
  %147 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %148 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %147, i32 0, i32 8
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @dw8250_serial_in32, align 4
  %150 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %151 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %150, i32 0, i32 7
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @dw8250_serial_out32, align 4
  %153 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %154 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %145, %142, %137
  %156 = load %struct.device*, %struct.device** %9, align 8
  %157 = call i64 @device_property_read_bool(%struct.device* %156, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %155
  %160 = load i32, i32* @UART_MSR_DCD, align 4
  %161 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %162 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* @UART_MSR_DDCD, align 4
  %166 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %167 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %159, %155
  %171 = load %struct.device*, %struct.device** %9, align 8
  %172 = call i64 @device_property_read_bool(%struct.device* %171, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load i32, i32* @UART_MSR_DSR, align 4
  %176 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %177 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load i32, i32* @UART_MSR_DDSR, align 4
  %181 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %182 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %174, %170
  %186 = load %struct.device*, %struct.device** %9, align 8
  %187 = call i64 @device_property_read_bool(%struct.device* %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %185
  %190 = load i32, i32* @UART_MSR_CTS, align 4
  %191 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %192 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* @UART_MSR_DCTS, align 4
  %196 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %197 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %189, %185
  %201 = load %struct.device*, %struct.device** %9, align 8
  %202 = call i64 @device_property_read_bool(%struct.device* %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %200
  %205 = load i32, i32* @UART_MSR_RI, align 4
  %206 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %207 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load i32, i32* @UART_MSR_TERI, align 4
  %211 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %212 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %204, %200
  %216 = load %struct.device*, %struct.device** %9, align 8
  %217 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %218 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %217, i32 0, i32 3
  %219 = call i32 @device_property_read_u32(%struct.device* %216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* %218)
  %220 = load %struct.device*, %struct.device** %9, align 8
  %221 = call i8* @devm_clk_get(%struct.device* %220, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %222 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %223 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %222, i32 0, i32 0
  store i8* %221, i8** %223, align 8
  %224 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %225 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @IS_ERR(i8* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %215
  %230 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %231 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @PTR_ERR(i8* %232)
  %234 = load i32, i32* @EPROBE_DEFER, align 4
  %235 = sub nsw i32 0, %234
  %236 = icmp ne i32 %233, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %229
  %238 = load %struct.device*, %struct.device** %9, align 8
  %239 = call i8* @devm_clk_get(%struct.device* %238, i8* null)
  %240 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %241 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %240, i32 0, i32 0
  store i8* %239, i8** %241, align 8
  br label %242

242:                                              ; preds = %237, %229, %215
  %243 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %244 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i64 @IS_ERR(i8* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %242
  %249 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %250 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @PTR_ERR(i8* %251)
  %253 = load i32, i32* @EPROBE_DEFER, align 4
  %254 = sub nsw i32 0, %253
  %255 = icmp eq i32 %252, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %248
  %257 = load i32, i32* @EPROBE_DEFER, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %2, align 4
  br label %453

259:                                              ; preds = %248, %242
  %260 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %261 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @IS_ERR_OR_NULL(i8* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %284, label %265

265:                                              ; preds = %259
  %266 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %267 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @clk_prepare_enable(i8* %268)
  store i32 %269, i32* %11, align 4
  %270 = load i32, i32* %11, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load %struct.device*, %struct.device** %9, align 8
  %274 = load i32, i32* %11, align 4
  %275 = call i32 @dev_warn(%struct.device* %273, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %274)
  br label %283

276:                                              ; preds = %265
  %277 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %278 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @clk_get_rate(i8* %279)
  %281 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %282 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 4
  br label %283

283:                                              ; preds = %276, %272
  br label %284

284:                                              ; preds = %283, %259
  %285 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %286 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %284
  %290 = load %struct.device*, %struct.device** %9, align 8
  %291 = call i32 @dev_err(%struct.device* %290, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %11, align 4
  br label %440

294:                                              ; preds = %284
  %295 = load %struct.device*, %struct.device** %9, align 8
  %296 = call i8* @devm_clk_get(%struct.device* %295, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %297 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %298 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %297, i32 0, i32 1
  store i8* %296, i8** %298, align 8
  %299 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %300 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = call i64 @IS_ERR(i8* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %294
  %305 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %306 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @PTR_ERR(i8* %307)
  %309 = load i32, i32* @EPROBE_DEFER, align 4
  %310 = sub nsw i32 0, %309
  %311 = icmp eq i32 %308, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %304
  %313 = load i32, i32* @EPROBE_DEFER, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %11, align 4
  br label %440

315:                                              ; preds = %304, %294
  %316 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %317 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %316, i32 0, i32 1
  %318 = load i8*, i8** %317, align 8
  %319 = call i64 @IS_ERR(i8* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %332, label %321

321:                                              ; preds = %315
  %322 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %323 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %322, i32 0, i32 1
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @clk_prepare_enable(i8* %324)
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %321
  %329 = load %struct.device*, %struct.device** %9, align 8
  %330 = call i32 @dev_err(%struct.device* %329, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %440

331:                                              ; preds = %321
  br label %332

332:                                              ; preds = %331, %315
  %333 = load %struct.device*, %struct.device** %9, align 8
  %334 = call i8* @devm_reset_control_get_optional_exclusive(%struct.device* %333, i32* null)
  %335 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %336 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %335, i32 0, i32 2
  store i8* %334, i8** %336, align 8
  %337 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %338 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %337, i32 0, i32 2
  %339 = load i8*, i8** %338, align 8
  %340 = call i64 @IS_ERR(i8* %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %347

342:                                              ; preds = %332
  %343 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %344 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 @PTR_ERR(i8* %345)
  store i32 %346, i32* %11, align 4
  br label %428

347:                                              ; preds = %332
  %348 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %349 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @reset_control_deassert(i8* %350)
  %352 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %353 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %354 = call i32 @dw8250_quirks(%struct.uart_port* %352, %struct.dw8250_data* %353)
  %355 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %356 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %355, i32 0, i32 5
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %347
  %360 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %361 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %360, i32 0, i32 5
  store i32* null, i32** %361, align 8
  br label %362

362:                                              ; preds = %359, %347
  %363 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %364 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 8
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %362
  %368 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %369 = call i32 @dw8250_setup_port(%struct.uart_port* %368)
  br label %370

370:                                              ; preds = %367, %362
  %371 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %372 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %399

375:                                              ; preds = %370
  %376 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %377 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = sdiv i32 %378, 4
  %380 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %381 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 0
  store i32 %379, i32* %384, align 4
  %385 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %386 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = sdiv i32 %387, 4
  %389 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %390 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 0
  store i32 %388, i32* %393, align 4
  %394 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %395 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 1
  %397 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %398 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %397, i32 0, i32 0
  store %struct.TYPE_7__* %396, %struct.TYPE_7__** %398, align 8
  br label %399

399:                                              ; preds = %375, %370
  %400 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %401 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %400)
  %402 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %403 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %402, i32 0, i32 3
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 0
  store i32 %401, i32* %404, align 8
  %405 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %406 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %405, i32 0, i32 3
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %399
  %411 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %412 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %411, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  store i32 %414, i32* %11, align 4
  br label %423

415:                                              ; preds = %399
  %416 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %417 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %418 = call i32 @platform_set_drvdata(%struct.platform_device* %416, %struct.dw8250_data* %417)
  %419 = load %struct.device*, %struct.device** %9, align 8
  %420 = call i32 @pm_runtime_set_active(%struct.device* %419)
  %421 = load %struct.device*, %struct.device** %9, align 8
  %422 = call i32 @pm_runtime_enable(%struct.device* %421)
  store i32 0, i32* %2, align 4
  br label %453

423:                                              ; preds = %410
  %424 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %425 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %424, i32 0, i32 2
  %426 = load i8*, i8** %425, align 8
  %427 = call i32 @reset_control_assert(i8* %426)
  br label %428

428:                                              ; preds = %423, %342
  %429 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %430 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %429, i32 0, i32 1
  %431 = load i8*, i8** %430, align 8
  %432 = call i64 @IS_ERR(i8* %431)
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %428
  %435 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %436 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %435, i32 0, i32 1
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @clk_disable_unprepare(i8* %437)
  br label %439

439:                                              ; preds = %434, %428
  br label %440

440:                                              ; preds = %439, %328, %312, %289
  %441 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %442 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %441, i32 0, i32 0
  %443 = load i8*, i8** %442, align 8
  %444 = call i64 @IS_ERR(i8* %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %451, label %446

446:                                              ; preds = %440
  %447 = load %struct.dw8250_data*, %struct.dw8250_data** %10, align 8
  %448 = getelementptr inbounds %struct.dw8250_data, %struct.dw8250_data* %447, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 @clk_disable_unprepare(i8* %449)
  br label %451

451:                                              ; preds = %446, %440
  %452 = load i32, i32* %11, align 4
  store i32 %452, i32* %2, align 4
  br label %453

453:                                              ; preds = %451, %415, %256, %109, %100, %41, %25
  %454 = load i32, i32* %2, align 4
  ret i32 %454
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local %struct.dw8250_data* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i64 @device_property_read_bool(%struct.device*, i8*) #2

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i32*) #2

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @IS_ERR_OR_NULL(i8*) #2

declare dso_local i32 @clk_prepare_enable(i8*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #2

declare dso_local i32 @clk_get_rate(i8*) #2

declare dso_local i8* @devm_reset_control_get_optional_exclusive(%struct.device*, i32*) #2

declare dso_local i32 @reset_control_deassert(i8*) #2

declare dso_local i32 @dw8250_quirks(%struct.uart_port*, %struct.dw8250_data*) #2

declare dso_local i32 @dw8250_setup_port(%struct.uart_port*) #2

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dw8250_data*) #2

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #2

declare dso_local i32 @pm_runtime_enable(%struct.device*) #2

declare dso_local i32 @reset_control_assert(i8*) #2

declare dso_local i32 @clk_disable_unprepare(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
