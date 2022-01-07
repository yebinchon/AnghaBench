; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, i64, i32, %struct.mvebu_uart*, i32, i64, i32, i32, i32, i64, i32*, i32, %struct.TYPE_6__*, i32 }
%struct.mvebu_uart = type { i32*, i64, %struct.uart_port*, %struct.mvebu_uart_driver_data* }
%struct.mvebu_uart_driver_data = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.resource = type { i32 }
%struct.of_device_id = type { i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@mvebu_uart_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no registers defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@uart_num_counter = common dso_local global i32 0, align 4
@MVEBU_NR_UARTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot have more than %d UART ports\0A\00", align 1
@mvebu_uart_ports = common dso_local global %struct.uart_port* null, align 8
@PORT_MVEBU = common dso_local global i32 0, align 4
@mvebu_uart_ops = common dso_local global i32 0, align 4
@UPIO_MEM32 = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to get UART clock\0A\00", align 1
@UART_IRQ_SUM = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"uart-rx\00", align 1
@UART_RX_IRQ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"uart-tx\00", align 1
@UART_TX_IRQ = common dso_local global i64 0, align 8
@CTRL_SOFT_RST = common dso_local global i32 0, align 4
@mvebu_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mvebu_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.mvebu_uart*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = load i32, i32* @IORESOURCE_MEM, align 4
  %13 = call %struct.resource* @platform_get_resource(%struct.platform_device* %11, i32 %12, i32 0)
  store %struct.resource* %13, %struct.resource** %4, align 8
  %14 = load i32, i32* @mvebu_uart_of_match, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.TYPE_6__* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %5, align 8
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %274

26:                                               ; preds = %1
  %27 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %28 = icmp ne %struct.of_device_id* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %274

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @of_alias_get_id(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43, %32
  %47 = load i32, i32* @uart_num_counter, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @uart_num_counter, align 4
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  br label %55

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MVEBU_NR_UARTS, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 1
  %64 = load i32, i32* @MVEBU_NR_UARTS, align 4
  %65 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %274

68:                                               ; preds = %55
  %69 = load %struct.uart_port*, %struct.uart_port** @mvebu_uart_ports, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i64 %73
  store %struct.uart_port* %74, %struct.uart_port** %6, align 8
  %75 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 14
  %77 = call i32 @spin_lock_init(i32* %76)
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 1
  %80 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 13
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %81, align 8
  %82 = load i32, i32* @PORT_MVEBU, align 4
  %83 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 12
  store i32 %82, i32* %84, align 8
  %85 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 11
  store i32* @mvebu_uart_ops, i32** %86, align 8
  %87 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 10
  store i64 0, i64* %88, align 8
  %89 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %90 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %89, i32 0, i32 0
  store i32 32, i32* %90, align 8
  %91 = load i32, i32* @UPIO_MEM32, align 4
  %92 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %93 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @UPF_FIXED_PORT, align 4
  %95 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %104 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %103, i32 0, i32 7
  store i32 0, i32* %104, align 8
  %105 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %106 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  %107 = load %struct.resource*, %struct.resource** %4, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %111 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 1
  %114 = load %struct.resource*, %struct.resource** %4, align 8
  %115 = call i64 @devm_ioremap_resource(%struct.TYPE_6__* %113, %struct.resource* %114)
  %116 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %117 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %116, i32 0, i32 2
  store i64 %115, i64* %117, align 8
  %118 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i64 @IS_ERR(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %68
  %124 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %125 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @PTR_ERR(i64 %126)
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %274

129:                                              ; preds = %68
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 1
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.mvebu_uart* @devm_kzalloc(%struct.TYPE_6__* %131, i32 32, i32 %132)
  store %struct.mvebu_uart* %133, %struct.mvebu_uart** %7, align 8
  %134 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %135 = icmp ne %struct.mvebu_uart* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %274

139:                                              ; preds = %129
  %140 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %141 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to %struct.mvebu_uart_driver_data*
  %144 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %145 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %144, i32 0, i32 3
  store %struct.mvebu_uart_driver_data* %143, %struct.mvebu_uart_driver_data** %145, align 8
  %146 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %147 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %148 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %147, i32 0, i32 2
  store %struct.uart_port* %146, %struct.uart_port** %148, align 8
  %149 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %150 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %151 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %150, i32 0, i32 4
  store %struct.mvebu_uart* %149, %struct.mvebu_uart** %151, align 8
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %154 = call i32 @platform_set_drvdata(%struct.platform_device* %152, %struct.mvebu_uart* %153)
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 1
  %157 = call i64 @devm_clk_get(%struct.TYPE_6__* %156, i32* null)
  %158 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %159 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %161 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @IS_ERR(i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %191

165:                                              ; preds = %139
  %166 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %167 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @PTR_ERR(i64 %168)
  %170 = load i32, i32* @EPROBE_DEFER, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %165
  %174 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %175 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @PTR_ERR(i64 %176)
  store i32 %177, i32* %2, align 4
  br label %274

178:                                              ; preds = %165
  %179 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %180 = call i64 @IS_EXTENDED(%struct.uart_port* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %178
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 1
  %185 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %186 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %187 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @PTR_ERR(i64 %188)
  store i32 %189, i32* %2, align 4
  br label %274

190:                                              ; preds = %178
  br label %205

191:                                              ; preds = %139
  %192 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %193 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @clk_prepare_enable(i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %191
  %198 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %199 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @clk_get_rate(i64 %200)
  %202 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %203 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %197, %191
  br label %205

205:                                              ; preds = %204, %190
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = call i32 @platform_irq_count(%struct.platform_device* %206)
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %223

209:                                              ; preds = %205
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = call i32 @platform_get_irq(%struct.platform_device* %210, i32 0)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = load i32, i32* %10, align 4
  store i32 %215, i32* %2, align 4
  br label %274

216:                                              ; preds = %209
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %219 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* @UART_IRQ_SUM, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32 %217, i32* %222, align 4
  br label %250

223:                                              ; preds = %205
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = call i32 @platform_get_irq_byname(%struct.platform_device* %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i32, i32* %10, align 4
  store i32 %229, i32* %2, align 4
  br label %274

230:                                              ; preds = %223
  %231 = load i32, i32* %10, align 4
  %232 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %233 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @UART_RX_IRQ, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32 %231, i32* %236, align 4
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = call i32 @platform_get_irq_byname(%struct.platform_device* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %230
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %2, align 4
  br label %274

243:                                              ; preds = %230
  %244 = load i32, i32* %10, align 4
  %245 = load %struct.mvebu_uart*, %struct.mvebu_uart** %7, align 8
  %246 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* @UART_TX_IRQ, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  store i32 %244, i32* %249, align 4
  br label %250

250:                                              ; preds = %243, %216
  %251 = load i32, i32* @CTRL_SOFT_RST, align 4
  %252 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %253 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %256 = call i64 @UART_CTRL(%struct.uart_port* %255)
  %257 = add nsw i64 %254, %256
  %258 = call i32 @writel(i32 %251, i64 %257)
  %259 = call i32 @udelay(i32 1)
  %260 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %261 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %264 = call i64 @UART_CTRL(%struct.uart_port* %263)
  %265 = add nsw i64 %262, %264
  %266 = call i32 @writel(i32 0, i64 %265)
  %267 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %268 = call i32 @uart_add_one_port(i32* @mvebu_uart_driver, %struct.uart_port* %267)
  store i32 %268, i32* %8, align 4
  %269 = load i32, i32* %8, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %250
  %272 = load i32, i32* %8, align 4
  store i32 %272, i32* %2, align 4
  br label %274

273:                                              ; preds = %250
  store i32 0, i32* %2, align 4
  br label %274

274:                                              ; preds = %273, %271, %241, %228, %214, %182, %173, %136, %123, %61, %29, %20
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local %struct.mvebu_uart* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mvebu_uart*) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @IS_EXTENDED(%struct.uart_port*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @UART_CTRL(%struct.uart_port*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
