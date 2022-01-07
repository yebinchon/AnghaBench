; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c_fwserial_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.fw_device = type { %struct.fw_card* }
%struct.fw_card = type { i64, i32* }
%struct.fw_serial = type { i32, %struct.fw_serial**, %struct.TYPE_6__, i32, i32, i32, i32, %struct.device*, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fw_serial*, i32, %struct.fw_card* }
%struct.TYPE_6__ = type { i32* }
%struct.device = type { i32 }
%struct.TYPE_7__ = type { %struct.fwtty_port*, i32, i64 }
%struct.fwtty_port = type { i32, %struct.fwtty_port**, %struct.TYPE_6__, i32, i32, i32, i32, %struct.device*, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fwtty_port*, i32, %struct.fw_card* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@num_ports = common dso_local global i32 0, align 4
@FWTTY_INVALID_INDEX = common dso_local global i32 0, align 4
@fwtty_port_ops = common dso_local global i32 0, align 4
@fwtty_drain_tx = common dso_local global i32 0, align 4
@fwtty_emit_breaks = common dso_local global i32 0, align 4
@fwtty_do_hangup = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@FWTTY_PORT_RXFIFO_LEN = common dso_local global i64 0, align 8
@fwtty_port_handler = common dso_local global i32 0, align 4
@fw_high_memory_region = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no space in port table\0A\00", align 1
@num_ttys = common dso_local global i32 0, align 4
@fwtty_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"register tty device error (%d)\0A\00", align 1
@create_loop_dev = common dso_local global i64 0, align 8
@fwloop_driver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"create loop device failed (%d)\0A\00", align 1
@fwserial_debugfs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"peers\00", align 1
@fwtty_peers_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@fwtty_stats_fops = common dso_local global i32 0, align 4
@fwserial_list = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"TTY over FireWire on device %s (guid %016llx)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"unable to add peer unit device (%d)\0A\00", align 1
@fwserial_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*)* @fwserial_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwserial_create(%struct.fw_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca %struct.fw_card*, align 8
  %6 = alloca %struct.fw_serial*, align 8
  %7 = alloca %struct.fwtty_port*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %3, align 8
  %13 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %14 = call %struct.fw_device* @fw_parent_device(%struct.fw_unit* %13)
  store %struct.fw_device* %14, %struct.fw_device** %4, align 8
  %15 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %16 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %15, i32 0, i32 0
  %17 = load %struct.fw_card*, %struct.fw_card** %16, align 8
  store %struct.fw_card* %17, %struct.fw_card** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.fwtty_port* @kzalloc(i32 128, i32 %18)
  %20 = bitcast %struct.fwtty_port* %19 to %struct.fw_serial*
  store %struct.fw_serial* %20, %struct.fw_serial** %6, align 8
  %21 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %22 = icmp ne %struct.fw_serial* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %371

26:                                               ; preds = %1
  %27 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %28 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %27, i32 0, i32 3
  %29 = call i32 @kref_init(i32* %28)
  %30 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %31 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %32 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %31, i32 0, i32 19
  store %struct.fw_card* %30, %struct.fw_card** %32, align 8
  %33 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %34 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %33, i32 0, i32 18
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %124, %26
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @num_ports, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %127

40:                                               ; preds = %36
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.fwtty_port* @kzalloc(i32 128, i32 %41)
  store %struct.fwtty_port* %42, %struct.fwtty_port** %7, align 8
  %43 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %44 = icmp ne %struct.fwtty_port* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %338

48:                                               ; preds = %40
  %49 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %50 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %49, i32 0, i32 2
  %51 = call i32 @tty_port_init(%struct.TYPE_6__* %50)
  %52 = load i32, i32* @FWTTY_INVALID_INDEX, align 4
  %53 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %54 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %56 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32* @fwtty_port_ops, i32** %57, align 8
  %58 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %59 = bitcast %struct.fw_serial* %58 to %struct.fwtty_port*
  %60 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %61 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %60, i32 0, i32 17
  store %struct.fwtty_port* %59, %struct.fwtty_port** %61, align 8
  %62 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %63 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %62, i32 0, i32 2
  %64 = call i32 @tty_buffer_set_limit(%struct.TYPE_6__* %63, i32 131072)
  %65 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %66 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %65, i32 0, i32 16
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %69 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %68, i32 0, i32 15
  %70 = load i32, i32* @fwtty_drain_tx, align 4
  %71 = call i32 @INIT_DELAYED_WORK(i32* %69, i32 %70)
  %72 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %73 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %72, i32 0, i32 14
  %74 = load i32, i32* @fwtty_emit_breaks, align 4
  %75 = call i32 @INIT_DELAYED_WORK(i32* %73, i32 %74)
  %76 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %77 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %76, i32 0, i32 13
  %78 = load i32, i32* @fwtty_do_hangup, align 4
  %79 = call i32 @INIT_WORK(i32* %77, i32 %78)
  %80 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %81 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %80, i32 0, i32 12
  %82 = call i32 @init_waitqueue_head(i32* %81)
  %83 = load i32, i32* @SCODE_100, align 4
  %84 = call i32 @link_speed_to_max_payload(i32 %83)
  %85 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %86 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 8
  %87 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %88 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %87, i32 0, i32 10
  %89 = call i32 @dma_fifo_init(i32* %88)
  %90 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %91 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @RCU_INIT_POINTER(i32 %92, i32* null)
  %94 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %95 = bitcast %struct.fwtty_port* %94 to %struct.fw_serial*
  %96 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %97 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %96, i32 0, i32 1
  %98 = load %struct.fw_serial**, %struct.fw_serial*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %98, i64 %100
  store %struct.fw_serial* %95, %struct.fw_serial** %101, align 8
  %102 = load i64, i64* @FWTTY_PORT_RXFIFO_LEN, align 8
  %103 = add nsw i64 %102, 4
  %104 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %105 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i64 %103, i64* %106, align 8
  %107 = load i32, i32* @fwtty_port_handler, align 4
  %108 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %109 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %108, i32 0, i32 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  %111 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %112 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %113 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %112, i32 0, i32 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store %struct.fwtty_port* %111, %struct.fwtty_port** %114, align 8
  %115 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %116 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %115, i32 0, i32 8
  %117 = call i32 @fw_core_add_address_handler(%struct.TYPE_7__* %116, i32* @fw_high_memory_region)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %48
  %121 = load %struct.fwtty_port*, %struct.fwtty_port** %7, align 8
  %122 = call i32 @kfree(%struct.fwtty_port* %121)
  br label %338

123:                                              ; preds = %48
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %36

127:                                              ; preds = %36
  %128 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %129 = bitcast %struct.fw_serial* %128 to %struct.fwtty_port*
  %130 = call i32 @fwtty_ports_add(%struct.fwtty_port* %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 (%struct.fw_unit**, i8*, ...) @fwtty_err(%struct.fw_unit** %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %338

135:                                              ; preds = %127
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %181, %135
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @num_ttys, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %184

140:                                              ; preds = %136
  %141 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %142 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %141, i32 0, i32 1
  %143 = load %struct.fw_serial**, %struct.fw_serial*** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %143, i64 %145
  %147 = load %struct.fw_serial*, %struct.fw_serial** %146, align 8
  %148 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %147, i32 0, i32 2
  %149 = load i32, i32* @fwtty_driver, align 4
  %150 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %151 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %150, i32 0, i32 1
  %152 = load %struct.fw_serial**, %struct.fw_serial*** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %152, i64 %154
  %156 = load %struct.fw_serial*, %struct.fw_serial** %155, align 8
  %157 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %160 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = call %struct.device* @tty_port_register_device(%struct.TYPE_6__* %148, i32 %149, i32 %158, i32* %161)
  store %struct.device* %162, %struct.device** %8, align 8
  %163 = load %struct.device*, %struct.device** %8, align 8
  %164 = call i64 @IS_ERR(%struct.device* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %140
  %167 = load %struct.device*, %struct.device** %8, align 8
  %168 = call i32 @PTR_ERR(%struct.device* %167)
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = call i32 (%struct.fw_unit**, i8*, ...) @fwtty_err(%struct.fw_unit** %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  br label %311

171:                                              ; preds = %140
  %172 = load %struct.device*, %struct.device** %8, align 8
  %173 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %174 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %173, i32 0, i32 1
  %175 = load %struct.fw_serial**, %struct.fw_serial*** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %175, i64 %177
  %179 = load %struct.fw_serial*, %struct.fw_serial** %178, align 8
  %180 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %179, i32 0, i32 7
  store %struct.device* %172, %struct.device** %180, align 8
  br label %181

181:                                              ; preds = %171
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %136

184:                                              ; preds = %136
  %185 = load i64, i64* @create_loop_dev, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %236

187:                                              ; preds = %184
  %188 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %189 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %188, i32 0, i32 1
  %190 = load %struct.fw_serial**, %struct.fw_serial*** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %190, i64 %192
  %194 = load %struct.fw_serial*, %struct.fw_serial** %193, align 8
  %195 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %194, i32 0, i32 2
  %196 = load i32, i32* @fwloop_driver, align 4
  %197 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %198 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %197, i32 0, i32 1
  %199 = load %struct.fw_serial**, %struct.fw_serial*** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %199, i64 %201
  %203 = load %struct.fw_serial*, %struct.fw_serial** %202, align 8
  %204 = bitcast %struct.fw_serial* %203 to %struct.fwtty_port*
  %205 = call i32 @loop_idx(%struct.fwtty_port* %204)
  %206 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %207 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = call %struct.device* @tty_port_register_device(%struct.TYPE_6__* %195, i32 %196, i32 %205, i32* %208)
  store %struct.device* %209, %struct.device** %12, align 8
  %210 = load %struct.device*, %struct.device** %12, align 8
  %211 = call i64 @IS_ERR(%struct.device* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %187
  %214 = load %struct.device*, %struct.device** %12, align 8
  %215 = call i32 @PTR_ERR(%struct.device* %214)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = call i32 (%struct.fw_unit**, i8*, ...) @fwtty_err(%struct.fw_unit** %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %216)
  br label %311

218:                                              ; preds = %187
  %219 = load %struct.device*, %struct.device** %12, align 8
  %220 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %221 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %220, i32 0, i32 1
  %222 = load %struct.fw_serial**, %struct.fw_serial*** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %222, i64 %224
  %226 = load %struct.fw_serial*, %struct.fw_serial** %225, align 8
  %227 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %226, i32 0, i32 7
  store %struct.device* %219, %struct.device** %227, align 8
  %228 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %229 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %228, i32 0, i32 1
  %230 = load %struct.fw_serial**, %struct.fw_serial*** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %230, i64 %232
  %234 = load %struct.fw_serial*, %struct.fw_serial** %233, align 8
  %235 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %234, i32 0, i32 0
  store i32 1, i32* %235, align 8
  br label %236

236:                                              ; preds = %218, %184
  %237 = load i32, i32* @fwserial_debugfs, align 4
  %238 = call i32 @IS_ERR_OR_NULL(i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %267, label %240

240:                                              ; preds = %236
  %241 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %242 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %241, i32 0, i32 0
  %243 = call i32 @dev_name(i32* %242)
  %244 = load i32, i32* @fwserial_debugfs, align 4
  %245 = call i32 @debugfs_create_dir(i32 %243, i32 %244)
  %246 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %247 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %246, i32 0, i32 6
  store i32 %245, i32* %247, align 4
  %248 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %249 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @IS_ERR_OR_NULL(i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %266, label %253

253:                                              ; preds = %240
  %254 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %255 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %258 = bitcast %struct.fw_serial* %257 to %struct.fwtty_port*
  %259 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 292, i32 %256, %struct.fwtty_port* %258, i32* @fwtty_peers_fops)
  %260 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %261 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %264 = bitcast %struct.fw_serial* %263 to %struct.fwtty_port*
  %265 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 292, i32 %262, %struct.fwtty_port* %264, i32* @fwtty_stats_fops)
  br label %266

266:                                              ; preds = %253, %240
  br label %267

267:                                              ; preds = %266, %236
  %268 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %269 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %268, i32 0, i32 5
  %270 = call i32 @list_add_rcu(i32* %269, i32* @fwserial_list)
  %271 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %272 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @dev_name(i32* %273)
  %275 = load %struct.fw_card*, %struct.fw_card** %5, align 8
  %276 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @fwtty_notice(%struct.fw_unit** %3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %274, i64 %277)
  %279 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %280 = bitcast %struct.fw_serial* %279 to %struct.fwtty_port*
  %281 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %282 = call i32 @fwserial_add_peer(%struct.fwtty_port* %280, %struct.fw_unit* %281)
  store i32 %282, i32* %11, align 4
  %283 = load i32, i32* %11, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %267
  store i32 0, i32* %2, align 4
  br label %371

286:                                              ; preds = %267
  %287 = load i32, i32* %11, align 4
  %288 = call i32 (%struct.fw_unit**, i8*, ...) @fwtty_err(%struct.fw_unit** %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %287)
  %289 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %290 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @debugfs_remove_recursive(i32 %291)
  %293 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %294 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %293, i32 0, i32 5
  %295 = call i32 @list_del_rcu(i32* %294)
  %296 = load i64, i64* @create_loop_dev, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %310

298:                                              ; preds = %286
  %299 = load i32, i32* @fwloop_driver, align 4
  %300 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %301 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %300, i32 0, i32 1
  %302 = load %struct.fw_serial**, %struct.fw_serial*** %301, align 8
  %303 = load i32, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %302, i64 %304
  %306 = load %struct.fw_serial*, %struct.fw_serial** %305, align 8
  %307 = bitcast %struct.fw_serial* %306 to %struct.fwtty_port*
  %308 = call i32 @loop_idx(%struct.fwtty_port* %307)
  %309 = call i32 @tty_unregister_device(i32 %299, i32 %308)
  br label %310

310:                                              ; preds = %298, %286
  br label %311

311:                                              ; preds = %310, %213, %166
  %312 = load i32, i32* %10, align 4
  %313 = add nsw i32 %312, -1
  store i32 %313, i32* %10, align 4
  br label %314

314:                                              ; preds = %329, %311
  %315 = load i32, i32* %10, align 4
  %316 = icmp sge i32 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %314
  %318 = load i32, i32* @fwtty_driver, align 4
  %319 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %320 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %319, i32 0, i32 1
  %321 = load %struct.fw_serial**, %struct.fw_serial*** %320, align 8
  %322 = load i32, i32* %10, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %321, i64 %323
  %325 = load %struct.fw_serial*, %struct.fw_serial** %324, align 8
  %326 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @tty_unregister_device(i32 %318, i32 %327)
  br label %329

329:                                              ; preds = %317
  %330 = load i32, i32* %10, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %10, align 4
  br label %314

332:                                              ; preds = %314
  %333 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %334 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %333, i32 0, i32 3
  %335 = load i32, i32* @fwserial_destroy, align 4
  %336 = call i32 @kref_put(i32* %334, i32 %335)
  %337 = load i32, i32* %11, align 4
  store i32 %337, i32* %2, align 4
  br label %371

338:                                              ; preds = %133, %120, %45
  %339 = load i32, i32* %9, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %9, align 4
  br label %341

341:                                              ; preds = %363, %338
  %342 = load i32, i32* %9, align 4
  %343 = icmp sge i32 %342, 0
  br i1 %343, label %344, label %366

344:                                              ; preds = %341
  %345 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %346 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %345, i32 0, i32 1
  %347 = load %struct.fw_serial**, %struct.fw_serial*** %346, align 8
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %347, i64 %349
  %351 = load %struct.fw_serial*, %struct.fw_serial** %350, align 8
  %352 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %351, i32 0, i32 2
  %353 = call i32 @tty_port_destroy(%struct.TYPE_6__* %352)
  %354 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %355 = getelementptr inbounds %struct.fw_serial, %struct.fw_serial* %354, i32 0, i32 1
  %356 = load %struct.fw_serial**, %struct.fw_serial*** %355, align 8
  %357 = load i32, i32* %9, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.fw_serial*, %struct.fw_serial** %356, i64 %358
  %360 = load %struct.fw_serial*, %struct.fw_serial** %359, align 8
  %361 = bitcast %struct.fw_serial* %360 to %struct.fwtty_port*
  %362 = call i32 @kfree(%struct.fwtty_port* %361)
  br label %363

363:                                              ; preds = %344
  %364 = load i32, i32* %9, align 4
  %365 = add nsw i32 %364, -1
  store i32 %365, i32* %9, align 4
  br label %341

366:                                              ; preds = %341
  %367 = load %struct.fw_serial*, %struct.fw_serial** %6, align 8
  %368 = bitcast %struct.fw_serial* %367 to %struct.fwtty_port*
  %369 = call i32 @kfree(%struct.fwtty_port* %368)
  %370 = load i32, i32* %11, align 4
  store i32 %370, i32* %2, align 4
  br label %371

371:                                              ; preds = %366, %332, %285, %23
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local %struct.fw_device* @fw_parent_device(%struct.fw_unit*) #1

declare dso_local %struct.fwtty_port* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_6__*) #1

declare dso_local i32 @tty_buffer_set_limit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @link_speed_to_max_payload(i32) #1

declare dso_local i32 @dma_fifo_init(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @fw_core_add_address_handler(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @kfree(%struct.fwtty_port*) #1

declare dso_local i32 @fwtty_ports_add(%struct.fwtty_port*) #1

declare dso_local i32 @fwtty_err(%struct.fw_unit**, i8*, ...) #1

declare dso_local %struct.device* @tty_port_register_device(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @loop_idx(%struct.fwtty_port*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.fwtty_port*, i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @fwtty_notice(%struct.fw_unit**, i8*, i32, i64) #1

declare dso_local i32 @fwserial_add_peer(%struct.fwtty_port*, %struct.fw_unit*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @tty_port_destroy(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
