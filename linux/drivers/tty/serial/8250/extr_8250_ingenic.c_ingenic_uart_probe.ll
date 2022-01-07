; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_ingenic.c_ingenic_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_ingenic.c_ingenic_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.uart_8250_port = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }
%struct.ingenic_uart_data = type { i32, i8*, i8* }
%struct.ingenic_uart_config = type { i32, i32 }
%struct.of_device_id = type { %struct.ingenic_uart_config* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Error: No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no registers/irq defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@ingenic_uart_serial_out = common dso_local global i32 0, align 4
@ingenic_uart_serial_in = common dso_local global i32 0, align 4
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@UART_CAP_RTOIE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"unable to get module clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to get baud clock: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"could not enable module clock: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"could not enable baud clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ingenic_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uart_8250_port, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.ingenic_uart_data*, align 8
  %8 = alloca %struct.ingenic_uart_config*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = bitcast %struct.uart_8250_port* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 80, i1 false)
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @IORESOURCE_MEM, align 4
  %15 = call %struct.resource* @platform_get_resource(%struct.platform_device* %13, i32 %14, i32 0)
  store %struct.resource* %15, %struct.resource** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_IRQ, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %6, align 8
  %19 = load i32, i32* @of_match, align 4
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.of_device_id* @of_match_device(i32 %19, %struct.TYPE_8__* %21)
  store %struct.of_device_id* %22, %struct.of_device_id** %9, align 8
  %23 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %24 = icmp ne %struct.of_device_id* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %249

31:                                               ; preds = %1
  %32 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %33 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %32, i32 0, i32 0
  %34 = load %struct.ingenic_uart_config*, %struct.ingenic_uart_config** %33, align 8
  store %struct.ingenic_uart_config* %34, %struct.ingenic_uart_config** %8, align 8
  %35 = load %struct.resource*, %struct.resource** %5, align 8
  %36 = icmp ne %struct.resource* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %249

46:                                               ; preds = %37
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.ingenic_uart_data* @devm_kzalloc(%struct.TYPE_8__* %48, i32 24, i32 %49)
  store %struct.ingenic_uart_data* %50, %struct.ingenic_uart_data** %7, align 8
  %51 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %52 = icmp ne %struct.ingenic_uart_data* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %249

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 13
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load i32, i32* @PORT_16550A, align 4
  %61 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @UPF_SKIP_TEST, align 4
  %64 = load i32, i32* @UPF_IOREMAP, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %67 = or i32 %65, %66
  %68 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @UPIO_MEM, align 4
  %71 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 11
  store i32 %70, i32* %72, align 8
  %73 = load %struct.resource*, %struct.resource** %5, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 10
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 2, i32* %79, align 4
  %80 = load i32, i32* @ingenic_uart_serial_out, align 4
  %81 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @ingenic_uart_serial_in, align 4
  %84 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 4
  %86 = load %struct.resource*, %struct.resource** %6, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 6
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %94, align 8
  %95 = load %struct.ingenic_uart_config*, %struct.ingenic_uart_config** %8, align 8
  %96 = getelementptr inbounds %struct.ingenic_uart_config, %struct.ingenic_uart_config* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ingenic_uart_config*, %struct.ingenic_uart_config** %8, align 8
  %101 = getelementptr inbounds %struct.ingenic_uart_config, %struct.ingenic_uart_config* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 2
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @UART_CAP_FIFO, align 4
  %105 = load i32, i32* @UART_CAP_RTOIE, align 4
  %106 = or i32 %104, %105
  %107 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @of_alias_get_id(i32 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %56
  %116 = load i32, i32* %11, align 4
  %117 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %56
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.resource*, %struct.resource** %5, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.resource*, %struct.resource** %5, align 8
  %126 = call i32 @resource_size(%struct.resource* %125)
  %127 = call i32 @devm_ioremap(%struct.TYPE_8__* %121, i32 %124, i32 %126)
  %128 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  %130 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %119
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %249

137:                                              ; preds = %119
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i8* @devm_clk_get(%struct.TYPE_8__* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %141 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %142 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %144 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @IS_ERR(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %137
  %149 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %150 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @PTR_ERR(i8* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @EPROBE_DEFER, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %148
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load i32, i32* %10, align 4
  %161 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %159, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %157, %148
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %2, align 4
  br label %249

164:                                              ; preds = %137
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i8* @devm_clk_get(%struct.TYPE_8__* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %168 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %169 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  %170 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %171 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i64 @IS_ERR(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %164
  %176 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %177 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @PTR_ERR(i8* %178)
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @EPROBE_DEFER, align 4
  %182 = sub nsw i32 0, %181
  %183 = icmp ne i32 %180, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %175
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %185, i32 0, i32 0
  %187 = load i32, i32* %10, align 4
  %188 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %186, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %184, %175
  %190 = load i32, i32* %10, align 4
  store i32 %190, i32* %2, align 4
  br label %249

191:                                              ; preds = %164
  %192 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %193 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @clk_prepare_enable(i8* %194)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = load i32, i32* %10, align 4
  %202 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %200, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %201)
  br label %247

203:                                              ; preds = %191
  %204 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %205 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @clk_prepare_enable(i8* %206)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = load i32, i32* %10, align 4
  %214 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %212, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %213)
  br label %242

215:                                              ; preds = %203
  %216 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %217 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @clk_get_rate(i8* %218)
  %220 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %4)
  %223 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %224 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %226 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %215
  %230 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %231 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  store i32 %232, i32* %10, align 4
  br label %237

233:                                              ; preds = %215
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %236 = call i32 @platform_set_drvdata(%struct.platform_device* %234, %struct.ingenic_uart_data* %235)
  store i32 0, i32* %2, align 4
  br label %249

237:                                              ; preds = %229
  %238 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %239 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @clk_disable_unprepare(i8* %240)
  br label %242

242:                                              ; preds = %237, %210
  %243 = load %struct.ingenic_uart_data*, %struct.ingenic_uart_data** %7, align 8
  %244 = getelementptr inbounds %struct.ingenic_uart_data, %struct.ingenic_uart_data* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @clk_disable_unprepare(i8* %245)
  br label %247

247:                                              ; preds = %242, %198
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %247, %233, %189, %162, %134, %53, %40, %25
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #2

declare dso_local %struct.ingenic_uart_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @of_alias_get_id(i32, i8*) #2

declare dso_local i32 @devm_ioremap(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local i8* @devm_clk_get(%struct.TYPE_8__*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @clk_prepare_enable(i8*) #2

declare dso_local i32 @clk_get_rate(i8*) #2

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ingenic_uart_data*) #2

declare dso_local i32 @clk_disable_unprepare(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
