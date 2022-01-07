; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.gbphy_device_id = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_tty = type { i64, i32, %struct.gb_tty*, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.gbphy_device*, %struct.gb_connection*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.device = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gb_uart_request_handler = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gb_uart_tx_write_work = common dso_local global i32 0, align 4
@GB_UART_WRITE_FIFO_SIZE = common dso_local global i32 0, align 4
@GB_UART_FIRMWARE_CREDITS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"no more free minor numbers\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@gb_port_ops = common dso_local global i32 0, align 4
@GB_SERIAL_1_STOP_BITS = common dso_local global i32 0, align 4
@GB_SERIAL_NO_PARITY = common dso_local global i32 0, align 4
@gb_tty_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)* @gb_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_uart_probe(%struct.gbphy_device* %0, %struct.gbphy_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbphy_device*, align 8
  %5 = alloca %struct.gbphy_device_id*, align 8
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gb_tty*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %4, align 8
  store %struct.gbphy_device_id* %1, %struct.gbphy_device_id** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 112, i32 %12)
  %14 = bitcast i8* %13 to %struct.gb_tty*
  store %struct.gb_tty* %14, %struct.gb_tty** %8, align 8
  %15 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %16 = icmp ne %struct.gb_tty* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %214

20:                                               ; preds = %2
  %21 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %22 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %25 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load i32, i32* @gb_uart_request_handler, align 4
  %31 = call %struct.gb_connection* @gb_connection_create(i32 %23, i32 %29, i32 %30)
  store %struct.gb_connection* %31, %struct.gb_connection** %6, align 8
  %32 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %33 = call i64 @IS_ERR(%struct.gb_connection* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %37 = call i32 @PTR_ERR(%struct.gb_connection* %36)
  store i32 %37, i32* %10, align 4
  br label %210

38:                                               ; preds = %20
  %39 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %40 = call i64 @gb_operation_get_payload_size_max(%struct.gb_connection* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %41, 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %207

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, 4
  %49 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %50 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %52 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kzalloc(i32 %54, i32 %55)
  %57 = bitcast i8* %56 to %struct.gb_tty*
  %58 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %59 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %58, i32 0, i32 2
  store %struct.gb_tty* %57, %struct.gb_tty** %59, align 8
  %60 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %61 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %60, i32 0, i32 2
  %62 = load %struct.gb_tty*, %struct.gb_tty** %61, align 8
  %63 = icmp ne %struct.gb_tty* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %46
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %10, align 4
  br label %207

67:                                               ; preds = %46
  %68 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %69 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %68, i32 0, i32 15
  %70 = load i32, i32* @gb_uart_tx_write_work, align 4
  %71 = call i32 @INIT_WORK(i32* %69, i32 %70)
  %72 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %73 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %72, i32 0, i32 3
  %74 = load i32, i32* @GB_UART_WRITE_FIFO_SIZE, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i32 @kfifo_alloc(i32* %73, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %202

80:                                               ; preds = %67
  %81 = load i32, i32* @GB_UART_FIRMWARE_CREDITS, align 4
  %82 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %83 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %82, i32 0, i32 14
  store i32 %81, i32* %83, align 4
  %84 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %85 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %84, i32 0, i32 13
  %86 = call i32 @init_completion(i32* %85)
  %87 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %88 = call i32 @alloc_minor(%struct.gb_tty* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %80
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @ENOSPC, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %98 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %104

102:                                              ; preds = %91
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %102, %96
  br label %198

105:                                              ; preds = %80
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %108 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %110 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %109, i32 0, i32 12
  %111 = call i32 @spin_lock_init(i32* %110)
  %112 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %113 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %112, i32 0, i32 11
  %114 = call i32 @spin_lock_init(i32* %113)
  %115 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %116 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %115, i32 0, i32 10
  %117 = call i32 @init_waitqueue_head(i32* %116)
  %118 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %119 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %118, i32 0, i32 9
  %120 = call i32 @mutex_init(i32* %119)
  %121 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %122 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %121, i32 0, i32 4
  %123 = call i32 @tty_port_init(%struct.TYPE_7__* %122)
  %124 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %125 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i32* @gb_port_ops, i32** %126, align 8
  %127 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %128 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %129 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %128, i32 0, i32 8
  store %struct.gb_connection* %127, %struct.gb_connection** %129, align 8
  %130 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %131 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %132 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %131, i32 0, i32 7
  store %struct.gbphy_device* %130, %struct.gbphy_device** %132, align 8
  %133 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %134 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %135 = call i32 @gb_connection_set_data(%struct.gb_connection* %133, %struct.gb_tty* %134)
  %136 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %137 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %138 = call i32 @gb_gbphy_set_data(%struct.gbphy_device* %136, %struct.gb_tty* %137)
  %139 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %140 = call i32 @gb_connection_enable_tx(%struct.gb_connection* %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %105
  br label %195

144:                                              ; preds = %105
  %145 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %146 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %147 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @send_control(%struct.gb_tty* %145, i32 %148)
  %150 = call i32 @cpu_to_le32(i32 9600)
  %151 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %152 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* @GB_SERIAL_1_STOP_BITS, align 4
  %155 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %156 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 8
  %158 = load i32, i32* @GB_SERIAL_NO_PARITY, align 4
  %159 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %160 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 4
  %162 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %163 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i32 8, i32* %164, align 8
  %165 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %166 = call i32 @send_line_coding(%struct.gb_tty* %165)
  %167 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %168 = call i32 @gb_connection_enable(%struct.gb_connection* %167)
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %144
  br label %192

172:                                              ; preds = %144
  %173 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %174 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %173, i32 0, i32 4
  %175 = load i32, i32* @gb_tty_driver, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %178 = getelementptr inbounds %struct.gbphy_device, %struct.gbphy_device* %177, i32 0, i32 0
  %179 = call %struct.gb_connection* @tty_port_register_device(%struct.TYPE_7__* %174, i32 %175, i32 %176, i32* %178)
  %180 = bitcast %struct.gb_connection* %179 to %struct.device*
  store %struct.device* %180, %struct.device** %9, align 8
  %181 = load %struct.device*, %struct.device** %9, align 8
  %182 = bitcast %struct.device* %181 to %struct.gb_connection*
  %183 = call i64 @IS_ERR(%struct.gb_connection* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %172
  %186 = load %struct.device*, %struct.device** %9, align 8
  %187 = bitcast %struct.device* %186 to %struct.gb_connection*
  %188 = call i32 @PTR_ERR(%struct.gb_connection* %187)
  store i32 %188, i32* %10, align 4
  br label %192

189:                                              ; preds = %172
  %190 = load %struct.gbphy_device*, %struct.gbphy_device** %4, align 8
  %191 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %190)
  store i32 0, i32* %3, align 4
  br label %214

192:                                              ; preds = %185, %171
  %193 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %194 = call i32 @gb_connection_disable(%struct.gb_connection* %193)
  br label %195

195:                                              ; preds = %192, %143
  %196 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %197 = call i32 @release_minor(%struct.gb_tty* %196)
  br label %198

198:                                              ; preds = %195, %104
  %199 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %200 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %199, i32 0, i32 3
  %201 = call i32 @kfifo_free(i32* %200)
  br label %202

202:                                              ; preds = %198, %79
  %203 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %204 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %203, i32 0, i32 2
  %205 = load %struct.gb_tty*, %struct.gb_tty** %204, align 8
  %206 = call i32 @kfree(%struct.gb_tty* %205)
  br label %207

207:                                              ; preds = %202, %64, %43
  %208 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %209 = call i32 @gb_connection_destroy(%struct.gb_connection* %208)
  br label %210

210:                                              ; preds = %207, %35
  %211 = load %struct.gb_tty*, %struct.gb_tty** %8, align 8
  %212 = call i32 @kfree(%struct.gb_tty* %211)
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %210, %189, %17
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.gb_connection* @gb_connection_create(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.gb_connection*) #1

declare dso_local i32 @PTR_ERR(%struct.gb_connection*) #1

declare dso_local i64 @gb_operation_get_payload_size_max(%struct.gb_connection*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @alloc_minor(%struct.gb_tty*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_7__*) #1

declare dso_local i32 @gb_connection_set_data(%struct.gb_connection*, %struct.gb_tty*) #1

declare dso_local i32 @gb_gbphy_set_data(%struct.gbphy_device*, %struct.gb_tty*) #1

declare dso_local i32 @gb_connection_enable_tx(%struct.gb_connection*) #1

declare dso_local i32 @send_control(%struct.gb_tty*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @send_line_coding(%struct.gb_tty*) #1

declare dso_local i32 @gb_connection_enable(%struct.gb_connection*) #1

declare dso_local %struct.gb_connection* @tty_port_register_device(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @release_minor(%struct.gb_tty*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @kfree(%struct.gb_tty*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
