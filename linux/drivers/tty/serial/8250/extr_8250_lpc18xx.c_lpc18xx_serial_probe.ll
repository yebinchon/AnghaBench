; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpc18xx.c_lpc18xx_serial_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_lpc18xx.c_lpc18xx_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.lpc18xx_uart_data = type { i32, i8*, i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.lpc18xx_uart_data*, i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory resource not found\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"uartclk\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"uart clock not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"reg clock not found\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unable to enable reg clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unable to enable uart clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@UPIO_MEM32 = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@lpc18xx_rs485_config = common dso_local global i32 0, align 4
@lpc18xx_uart_serial_out = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"unable to register 8250 port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc18xx_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc18xx_uart_data*, align 8
  %5 = alloca %struct.uart_8250_port, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call i32 @platform_get_irq(%struct.platform_device* %9, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %219

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %6, align 8
  %19 = load %struct.resource*, %struct.resource** %6, align 8
  %20 = icmp ne %struct.resource* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(%struct.TYPE_13__* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %219

27:                                               ; preds = %15
  %28 = call i32 @memset(%struct.uart_8250_port* %5, i32 0, i32 72)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = call i32 @resource_size(%struct.resource* %34)
  %36 = call i32 @devm_ioremap(%struct.TYPE_13__* %30, i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %27
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %219

46:                                               ; preds = %27
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.lpc18xx_uart_data* @devm_kzalloc(%struct.TYPE_13__* %48, i32 48, i32 %49)
  store %struct.lpc18xx_uart_data* %50, %struct.lpc18xx_uart_data** %4, align 8
  %51 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %52 = icmp ne %struct.lpc18xx_uart_data* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %219

56:                                               ; preds = %46
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i8* @devm_clk_get(%struct.TYPE_13__* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %61 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %63 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @IS_ERR(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(%struct.TYPE_13__* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %72 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @PTR_ERR(i8* %73)
  store i32 %74, i32* %2, align 4
  br label %219

75:                                               ; preds = %56
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i8* @devm_clk_get(%struct.TYPE_13__* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %80 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %82 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @IS_ERR(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %75
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(%struct.TYPE_13__* %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %91 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %2, align 4
  br label %219

94:                                               ; preds = %75
  %95 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %96 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @clk_prepare_enable(i8* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(%struct.TYPE_13__* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %219

106:                                              ; preds = %94
  %107 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %108 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @clk_prepare_enable(i8* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @dev_err(%struct.TYPE_13__* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %213

117:                                              ; preds = %106
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @of_alias_get_id(i32 %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load i32, i32* %8, align 4
  %127 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %117
  %130 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %131 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %132 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  store %struct.lpc18xx_uart_data* %130, %struct.lpc18xx_uart_data** %133, align 8
  %134 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %135 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %136 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 2
  store %struct.lpc18xx_uart_data* %134, %struct.lpc18xx_uart_data** %137, align 8
  %138 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 12
  %140 = call i32 @spin_lock_init(i32* %139)
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 11
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %144, align 8
  %145 = load i32, i32* %7, align 4
  %146 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @UPIO_MEM32, align 4
  %149 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 10
  store i32 %148, i32* %150, align 4
  %151 = load %struct.resource*, %struct.resource** %6, align 8
  %152 = getelementptr inbounds %struct.resource, %struct.resource* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 9
  store i32 %153, i32* %155, align 8
  %156 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  store i32 2, i32* %157, align 8
  %158 = load i32, i32* @PORT_16550A, align 4
  %159 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @UPF_FIXED_PORT, align 4
  %162 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @UPF_SKIP_TEST, align 4
  %165 = or i32 %163, %164
  %166 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %169 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @clk_get_rate(i8* %170)
  %172 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 7
  store i32 %171, i32* %173, align 8
  %174 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %175 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 6
  store %struct.lpc18xx_uart_data* %174, %struct.lpc18xx_uart_data** %176, align 8
  %177 = load i32, i32* @lpc18xx_rs485_config, align 4
  %178 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* @lpc18xx_uart_serial_out, align 4
  %181 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 4
  store i32 %180, i32* %182, align 8
  %183 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %184 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 0
  store %struct.TYPE_12__* %184, %struct.TYPE_12__** %185, align 8
  %186 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 0
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 4
  %190 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i32 0, i32 0
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %5)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %129
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = call i32 @dev_err(%struct.TYPE_13__* %199, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %208

201:                                              ; preds = %129
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %204 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %207 = call i32 @platform_set_drvdata(%struct.platform_device* %205, %struct.lpc18xx_uart_data* %206)
  store i32 0, i32* %2, align 4
  br label %219

208:                                              ; preds = %197
  %209 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %210 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 @clk_disable_unprepare(i8* %211)
  br label %213

213:                                              ; preds = %208, %113
  %214 = load %struct.lpc18xx_uart_data*, %struct.lpc18xx_uart_data** %4, align 8
  %215 = getelementptr inbounds %struct.lpc18xx_uart_data, %struct.lpc18xx_uart_data* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @clk_disable_unprepare(i8* %216)
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %213, %201, %101, %86, %67, %53, %43, %21, %13
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @memset(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.lpc18xx_uart_data* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc18xx_uart_data*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
