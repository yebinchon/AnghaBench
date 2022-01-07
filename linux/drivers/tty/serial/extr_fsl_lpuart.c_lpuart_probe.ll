; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { %struct.TYPE_20__, i8*, i8*, i32*, i32*, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_18__, i32, i32 (%struct.TYPE_20__*, %struct.TYPE_18__*)*, i32, i32*, i32, i32, i32, i32* }
%struct.TYPE_17__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_17__ }
%struct.of_device_id = type { %struct.lpuart_soc_data* }
%struct.lpuart_soc_data = type { i32, i32, i64 }
%struct.resource = type { i32 }

@lpuart_dt_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@fsl_lpuart_ida = common dso_local global i32 0, align 4
@UART_NR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"port line is full, add device failed\0A\00", align 1
@lpuart_ports = common dso_local global %struct.lpuart_port** null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@PORT_LPUART = common dso_local global i32 0, align 4
@lpuart32_pops = common dso_local global i32 0, align 4
@lpuart_pops = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to get uart ipg clk: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to get uart baud clk: %d\0A\00", align 1
@LPUART32_CONSOLE = common dso_local global i32 0, align 4
@lpuart_reg = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@lpuart32_int = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@LPUART_CONSOLE = common dso_local global i32 0, align 4
@lpuart_int = common dso_local global i32 0, align 4
@SER_RS485_RX_DURING_TX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"driver doesn't support RX during TX\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"driver doesn't support RTS delays\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"DMA tx channel request failed, operating without tx DMA\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"DMA rx channel request failed, operating without rx DMA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpuart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpuart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.lpuart_soc_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.lpuart_port*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @lpuart_dt_ids, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, %struct.TYPE_17__* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %4, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %14, i32 0, i32 0
  %16 = load %struct.lpuart_soc_data*, %struct.lpuart_soc_data** %15, align 8
  store %struct.lpuart_soc_data* %16, %struct.lpuart_soc_data** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.lpuart_port* @devm_kzalloc(%struct.TYPE_17__* %22, i32 136, i32 %23)
  store %struct.lpuart_port* %24, %struct.lpuart_port** %7, align 8
  %25 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %26 = icmp ne %struct.lpuart_port* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %349

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = call i32 @of_alias_get_id(%struct.device_node* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32, i32* @UART_NR, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @ida_simple_get(i32* @fsl_lpuart_ida, i32 0, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %2, align 4
  br label %349

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.lpuart_port**, %struct.lpuart_port*** @lpuart_ports, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.lpuart_port** %49)
  %51 = icmp sge i32 %48, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %349

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %62 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load i32, i32* @IORESOURCE_MEM, align 4
  %66 = call %struct.resource* @platform_get_resource(%struct.platform_device* %64, i32 %65, i32 0)
  store %struct.resource* %66, %struct.resource** %8, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.resource*, %struct.resource** %8, align 8
  %70 = call i32* @devm_ioremap_resource(%struct.TYPE_17__* %68, %struct.resource* %69)
  %71 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %72 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 11
  store i32* %70, i32** %73, align 8
  %74 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %75 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 11
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @IS_ERR(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %59
  %81 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %82 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 11
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @PTR_ERR(i32* %84)
  store i32 %85, i32* %2, align 4
  br label %349

86:                                               ; preds = %59
  %87 = load %struct.lpuart_soc_data*, %struct.lpuart_soc_data** %5, align 8
  %88 = getelementptr inbounds %struct.lpuart_soc_data, %struct.lpuart_soc_data* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %91 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 11
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 %89
  store i32* %94, i32** %92, align 8
  %95 = load %struct.resource*, %struct.resource** %8, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %99 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 10
  store i32 %97, i32* %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %104 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %105, align 8
  %106 = load i32, i32* @PORT_LPUART, align 4
  %107 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %108 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 9
  store i32 %106, i32* %109, align 4
  %110 = load %struct.lpuart_soc_data*, %struct.lpuart_soc_data** %5, align 8
  %111 = getelementptr inbounds %struct.lpuart_soc_data, %struct.lpuart_soc_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %114 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = call i32 @platform_get_irq(%struct.platform_device* %115, i32 0)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %86
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %2, align 4
  br label %349

121:                                              ; preds = %86
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %124 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.lpuart_soc_data*, %struct.lpuart_soc_data** %5, align 8
  %127 = getelementptr inbounds %struct.lpuart_soc_data, %struct.lpuart_soc_data* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %130 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 8
  store i32 %128, i32* %131, align 8
  %132 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %133 = call i64 @lpuart_is_32(%struct.lpuart_port* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %121
  %136 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %137 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 7
  store i32* @lpuart32_pops, i32** %138, align 8
  br label %143

139:                                              ; preds = %121
  %140 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %141 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 7
  store i32* @lpuart_pops, i32** %142, align 8
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %145 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %146 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 6
  store i32 %144, i32* %147, align 8
  %148 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %149 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 5
  store i32 (%struct.TYPE_20__*, %struct.TYPE_18__*)* @lpuart_config_rs485, i32 (%struct.TYPE_20__*, %struct.TYPE_18__*)** %150, align 8
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = call i8* @devm_clk_get(%struct.TYPE_17__* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %156 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %155, i32 0, i32 4
  store i32* %154, i32** %156, align 8
  %157 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %158 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = call i64 @IS_ERR(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %143
  %163 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %164 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @PTR_ERR(i32* %165)
  store i32 %166, i32* %9, align 4
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load i32, i32* %9, align 4
  %170 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* %9, align 4
  store i32 %171, i32* %2, align 4
  br label %349

172:                                              ; preds = %143
  %173 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %174 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %173, i32 0, i32 3
  store i32* null, i32** %174, align 8
  %175 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %176 = call i64 @is_imx8qxp_lpuart(%struct.lpuart_port* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %172
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i8* @devm_clk_get(%struct.TYPE_17__* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %182 = bitcast i8* %181 to i32*
  %183 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %184 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %183, i32 0, i32 3
  store i32* %182, i32** %184, align 8
  %185 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %186 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = call i64 @IS_ERR(i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %178
  %191 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %192 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %191, i32 0, i32 3
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @PTR_ERR(i32* %193)
  store i32 %194, i32* %9, align 4
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load i32, i32* %9, align 4
  %198 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %196, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %2, align 4
  br label %349

200:                                              ; preds = %178
  br label %201

201:                                              ; preds = %200, %172
  %202 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %203 = call i32 @lpuart_enable_clks(%struct.lpuart_port* %202)
  store i32 %203, i32* %9, align 4
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %2, align 4
  br label %349

208:                                              ; preds = %201
  %209 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %210 = call i32 @lpuart_get_baud_clk_rate(%struct.lpuart_port* %209)
  %211 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %212 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 4
  store i32 %210, i32* %213, align 8
  %214 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %215 = load %struct.lpuart_port**, %struct.lpuart_port*** @lpuart_ports, align 8
  %216 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %217 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.lpuart_port*, %struct.lpuart_port** %215, i64 %220
  store %struct.lpuart_port* %214, %struct.lpuart_port** %221, align 8
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %224 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %223, i32 0, i32 0
  %225 = call i32 @platform_set_drvdata(%struct.platform_device* %222, %struct.TYPE_20__* %224)
  %226 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %227 = call i64 @lpuart_is_32(%struct.lpuart_port* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %208
  %230 = load i32, i32* @LPUART32_CONSOLE, align 4
  store i32 %230, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @lpuart_reg, i32 0, i32 0), align 4
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %234 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @lpuart32_int, align 4
  %238 = load i32, i32* @DRIVER_NAME, align 4
  %239 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %240 = call i32 @devm_request_irq(%struct.TYPE_17__* %232, i32 %236, i32 %237, i32 0, i32 %238, %struct.lpuart_port* %239)
  store i32 %240, i32* %9, align 4
  br label %253

241:                                              ; preds = %208
  %242 = load i32, i32* @LPUART_CONSOLE, align 4
  store i32 %242, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @lpuart_reg, i32 0, i32 0), align 4
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 0
  %245 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %246 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @lpuart_int, align 4
  %250 = load i32, i32* @DRIVER_NAME, align 4
  %251 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %252 = call i32 @devm_request_irq(%struct.TYPE_17__* %244, i32 %248, i32 %249, i32 0, i32 %250, %struct.lpuart_port* %251)
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %241, %229
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  br label %345

257:                                              ; preds = %253
  %258 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %259 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %258, i32 0, i32 0
  %260 = call i32 @uart_add_one_port(%struct.TYPE_19__* @lpuart_reg, %struct.TYPE_20__* %259)
  store i32 %260, i32* %9, align 4
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %344

264:                                              ; preds = %257
  %265 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %266 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %265, i32 0, i32 0
  %267 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %268 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 3
  %270 = call i32 @uart_get_rs485_mode(%struct.TYPE_17__* %266, %struct.TYPE_18__* %269)
  %271 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %272 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @SER_RS485_RX_DURING_TX, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %264
  %280 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %281 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %280, i32 0, i32 0
  %282 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %281, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %283

283:                                              ; preds = %279, %264
  %284 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %285 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %297, label %290

290:                                              ; preds = %283
  %291 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %292 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %290, %283
  %298 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %299 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %298, i32 0, i32 0
  %300 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %299, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %301

301:                                              ; preds = %297, %290
  %302 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %303 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %302, i32 0, i32 0
  %304 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %305 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 3
  %307 = call i32 @lpuart_config_rs485(%struct.TYPE_20__* %303, %struct.TYPE_18__* %306)
  %308 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %309 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %310, align 8
  %312 = call i8* @dma_request_slave_channel(%struct.TYPE_17__* %311, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %313 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %314 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %313, i32 0, i32 2
  store i8* %312, i8** %314, align 8
  %315 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %316 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %325, label %319

319:                                              ; preds = %301
  %320 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %321 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %322, align 8
  %324 = call i32 @dev_info(%struct.TYPE_17__* %323, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  br label %325

325:                                              ; preds = %319, %301
  %326 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %327 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 2
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %328, align 8
  %330 = call i8* @dma_request_slave_channel(%struct.TYPE_17__* %329, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %331 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %332 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %331, i32 0, i32 1
  store i8* %330, i8** %332, align 8
  %333 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %334 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %333, i32 0, i32 1
  %335 = load i8*, i8** %334, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %343, label %337

337:                                              ; preds = %325
  %338 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %339 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %340, align 8
  %342 = call i32 @dev_info(%struct.TYPE_17__* %341, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  br label %343

343:                                              ; preds = %337, %325
  store i32 0, i32* %2, align 4
  br label %349

344:                                              ; preds = %263
  br label %345

345:                                              ; preds = %344, %256
  %346 = load %struct.lpuart_port*, %struct.lpuart_port** %7, align 8
  %347 = call i32 @lpuart_disable_clks(%struct.lpuart_port* %346)
  %348 = load i32, i32* %9, align 4
  store i32 %348, i32* %2, align 4
  br label %349

349:                                              ; preds = %345, %343, %206, %190, %162, %119, %80, %52, %41, %27
  %350 = load i32, i32* %2, align 4
  ret i32 %350
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_17__*) #1

declare dso_local %struct.lpuart_port* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lpuart_port**) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_17__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @lpuart_is_32(%struct.lpuart_port*) #1

declare dso_local i32 @lpuart_config_rs485(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @is_imx8qxp_lpuart(%struct.lpuart_port*) #1

declare dso_local i32 @lpuart_enable_clks(%struct.lpuart_port*) #1

declare dso_local i32 @lpuart_get_baud_clk_rate(%struct.lpuart_port*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_20__*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_17__*, i32, i32, i32, i32, %struct.lpuart_port*) #1

declare dso_local i32 @uart_add_one_port(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @uart_get_rs485_mode(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i8* @dma_request_slave_channel(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @lpuart_disable_clks(%struct.lpuart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
