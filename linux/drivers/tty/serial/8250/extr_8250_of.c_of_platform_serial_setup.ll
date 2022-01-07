; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_of.c_of_platform_serial_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_of.c_of_platform_serial_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.uart_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.of_serial_info = type { i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"invalid address\0A\00", align 1
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i64 0, align 8
@UPIO_PORT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"reg-offset\00", align 1
@UPIO_MEM = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@UPIO_MEM16 = common dso_local global i8* null, align 8
@UPIO_MEM32BE = common dso_local global i8* null, align 8
@UPIO_MEM32 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"unsupported reg-io-width (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"mrvl,mmp-uart\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fifo-size\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"no-loopback-test\00", align 1
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@tegra_serial_handle_break = common dso_local global i32 0, align 4
@UPIO_AU = common dso_local global i8* null, align 8
@CONFIG_SERIAL_8250_FSL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"fsl,ns16550\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"fsl,16550-FIFO64\00", align 1
@fsl8250_handle_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, %struct.uart_port*, %struct.of_serial_info*)* @of_platform_serial_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_platform_serial_setup(%struct.platform_device* %0, i32 %1, %struct.uart_port* %2, %struct.of_serial_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_port*, align 8
  %9 = alloca %struct.of_serial_info*, align 8
  %10 = alloca %struct.resource, align 4
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uart_port* %2, %struct.uart_port** %8, align 8
  store %struct.of_serial_info* %3, %struct.of_serial_info** %9, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %11, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %22 = call i32 @memset(%struct.uart_port* %21, i32 0, i32 88)
  %23 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @pm_runtime_enable(%struct.TYPE_8__* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @pm_runtime_get_sync(%struct.TYPE_8__* %27)
  %29 = load %struct.device_node*, %struct.device_node** %11, align 8
  %30 = call i64 @of_property_read_u32(%struct.device_node* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %12)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %4
  %33 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @devm_clk_get(%struct.TYPE_8__* %34, i32* null)
  %36 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %37 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %39 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %32
  %44 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %45 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i32, i32* %15, align 4
  %56 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_warn(%struct.TYPE_8__* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %43
  br label %305

58:                                               ; preds = %32
  %59 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %60 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clk_prepare_enable(i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %305

66:                                               ; preds = %58
  %67 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %68 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_get_rate(i32 %69)
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %66, %4
  %72 = load %struct.device_node*, %struct.device_node** %11, align 8
  %73 = call i64 @of_property_read_u32(%struct.device_node* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %13)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 16, %77
  %79 = sdiv i32 %76, %78
  %80 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %75, %71
  %83 = load %struct.device_node*, %struct.device_node** %11, align 8
  %84 = call i32 @of_address_to_resource(%struct.device_node* %83, i32 0, %struct.resource* %10)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_warn(%struct.TYPE_8__* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %300

91:                                               ; preds = %82
  %92 = load i32, i32* @UPF_SHARE_IRQ, align 4
  %93 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @UPF_FIXED_PORT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 16
  %103 = call i32 @spin_lock_init(i32* %102)
  %104 = call i64 @resource_type(%struct.resource* %10)
  %105 = load i64, i64* @IORESOURCE_IO, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %91
  %108 = load i8*, i8** @UPIO_PORT, align 8
  %109 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %110 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %109, i32 0, i32 11
  store i8* %108, i8** %110, align 8
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  br label %175

115:                                              ; preds = %91
  %116 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %119 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = call i32 @resource_size(%struct.resource* %10)
  %121 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 15
  store i32 %120, i32* %122, align 4
  %123 = load %struct.device_node*, %struct.device_node** %11, align 8
  %124 = call i64 @of_property_read_u32(%struct.device_node* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %14)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %115
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %129 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %115
  %133 = load i8*, i8** @UPIO_MEM, align 8
  %134 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %135 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %134, i32 0, i32 11
  store i8* %133, i8** %135, align 8
  %136 = load %struct.device_node*, %struct.device_node** %11, align 8
  %137 = call i64 @of_property_read_u32(%struct.device_node* %136, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %14)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %169

139:                                              ; preds = %132
  %140 = load i32, i32* %14, align 4
  switch i32 %140, label %161 [
    i32 1, label %141
    i32 2, label %145
    i32 4, label %149
  ]

141:                                              ; preds = %139
  %142 = load i8*, i8** @UPIO_MEM, align 8
  %143 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %144 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %143, i32 0, i32 11
  store i8* %142, i8** %144, align 8
  br label %168

145:                                              ; preds = %139
  %146 = load i8*, i8** @UPIO_MEM16, align 8
  %147 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %148 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %147, i32 0, i32 11
  store i8* %146, i8** %148, align 8
  br label %168

149:                                              ; preds = %139
  %150 = load %struct.device_node*, %struct.device_node** %11, align 8
  %151 = call i32 @of_device_is_big_endian(%struct.device_node* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i8*, i8** @UPIO_MEM32BE, align 8
  br label %157

155:                                              ; preds = %149
  %156 = load i8*, i8** @UPIO_MEM32, align 8
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i8* [ %154, %153 ], [ %156, %155 ]
  %159 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %160 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %159, i32 0, i32 11
  store i8* %158, i8** %160, align 8
  br label %168

161:                                              ; preds = %139
  %162 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load i32, i32* %14, align 4
  %165 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_warn(%struct.TYPE_8__* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %15, align 4
  br label %300

168:                                              ; preds = %157, %145, %141
  br label %169

169:                                              ; preds = %168, %132
  %170 = load i32, i32* @UPF_IOREMAP, align 4
  %171 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %172 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %169, %107
  %176 = load %struct.device_node*, %struct.device_node** %11, align 8
  %177 = call i64 @of_device_is_compatible(%struct.device_node* %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %181 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %180, i32 0, i32 4
  store i32 2, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %175
  %183 = load %struct.device_node*, %struct.device_node** %11, align 8
  %184 = call i64 @of_property_read_u32(%struct.device_node* %183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %14)
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %182
  %187 = load i32, i32* %14, align 4
  %188 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %189 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %186, %182
  %191 = load %struct.device_node*, %struct.device_node** %11, align 8
  %192 = call i64 @of_property_read_u32(%struct.device_node* %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %14)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i32, i32* %14, align 4
  %196 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %197 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %196, i32 0, i32 5
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %190
  %199 = load %struct.device_node*, %struct.device_node** %11, align 8
  %200 = call i32 @of_alias_get_id(%struct.device_node* %199, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i32, i32* %15, align 4
  %205 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %206 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %205, i32 0, i32 6
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %203, %198
  %208 = load %struct.device_node*, %struct.device_node** %11, align 8
  %209 = call i32 @of_irq_get(%struct.device_node* %208, i32 0)
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %16, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %207
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* @EPROBE_DEFER, align 4
  %215 = sub nsw i32 0, %214
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32, i32* @EPROBE_DEFER, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %15, align 4
  br label %300

220:                                              ; preds = %212
  store i32 0, i32* %16, align 4
  br label %221

221:                                              ; preds = %220, %207
  %222 = load i32, i32* %16, align 4
  %223 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %224 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %223, i32 0, i32 7
  store i32 %222, i32* %224, align 4
  %225 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 @devm_reset_control_get_optional_shared(%struct.TYPE_8__* %226, i32* null)
  %228 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %229 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %231 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @IS_ERR(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %221
  %236 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %237 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @PTR_ERR(i32 %238)
  store i32 %239, i32* %15, align 4
  br label %300

240:                                              ; preds = %221
  %241 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %242 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @reset_control_deassert(i32 %243)
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* %15, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %240
  br label %300

248:                                              ; preds = %240
  %249 = load i32, i32* %7, align 4
  %250 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %251 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %250, i32 0, i32 8
  store i32 %249, i32* %251, align 8
  %252 = load i32, i32* %12, align 4
  %253 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %254 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %253, i32 0, i32 9
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* @IRQF_SHARED, align 4
  %256 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %257 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %256, i32 0, i32 14
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  %260 = load %struct.device_node*, %struct.device_node** %11, align 8
  %261 = call i64 @of_property_read_bool(%struct.device_node* %260, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %248
  %264 = load i32, i32* @UPF_SKIP_TEST, align 4
  %265 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %266 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %263, %248
  %270 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %271 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %270, i32 0, i32 0
  %272 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %273 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %272, i32 0, i32 13
  store %struct.TYPE_8__* %271, %struct.TYPE_8__** %273, align 8
  %274 = load i32, i32* %7, align 4
  switch i32 %274, label %283 [
    i32 128, label %275
    i32 129, label %279
  ]

275:                                              ; preds = %269
  %276 = load i32, i32* @tegra_serial_handle_break, align 4
  %277 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %278 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %277, i32 0, i32 12
  store i32 %276, i32* %278, align 8
  br label %283

279:                                              ; preds = %269
  %280 = load i8*, i8** @UPIO_AU, align 8
  %281 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %282 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %281, i32 0, i32 11
  store i8* %280, i8** %282, align 8
  br label %283

283:                                              ; preds = %269, %279, %275
  %284 = load i32, i32* @CONFIG_SERIAL_8250_FSL, align 4
  %285 = call i64 @IS_ENABLED(i32 %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %299

287:                                              ; preds = %283
  %288 = load %struct.device_node*, %struct.device_node** %11, align 8
  %289 = call i64 @of_device_is_compatible(%struct.device_node* %288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %287
  %292 = load %struct.device_node*, %struct.device_node** %11, align 8
  %293 = call i64 @of_device_is_compatible(%struct.device_node* %292, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %291, %287
  %296 = load i32, i32* @fsl8250_handle_irq, align 4
  %297 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %298 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %297, i32 0, i32 10
  store i32 %296, i32* %298, align 8
  br label %299

299:                                              ; preds = %295, %291, %283
  store i32 0, i32* %5, align 4
  br label %313

300:                                              ; preds = %247, %235, %217, %161, %87
  %301 = load %struct.of_serial_info*, %struct.of_serial_info** %9, align 8
  %302 = getelementptr inbounds %struct.of_serial_info, %struct.of_serial_info* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @clk_disable_unprepare(i32 %303)
  br label %305

305:                                              ; preds = %300, %65, %57
  %306 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %307 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %306, i32 0, i32 0
  %308 = call i32 @pm_runtime_put_sync(%struct.TYPE_8__* %307)
  %309 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %310 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %309, i32 0, i32 0
  %311 = call i32 @pm_runtime_disable(%struct.TYPE_8__* %310)
  %312 = load i32, i32* %15, align 4
  store i32 %312, i32* %5, align 4
  br label %313

313:                                              ; preds = %305, %299
  %314 = load i32, i32* %5, align 4
  ret i32 %314
}

declare dso_local i32 @memset(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_8__*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @resource_type(%struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @of_device_is_big_endian(%struct.device_node*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @of_irq_get(%struct.device_node*, i32) #1

declare dso_local i32 @devm_reset_control_get_optional_shared(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.TYPE_8__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
