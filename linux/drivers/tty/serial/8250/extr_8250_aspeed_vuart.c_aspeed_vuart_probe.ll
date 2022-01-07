; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_aspeed_vuart.c_aspeed_vuart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.uart_8250_port = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, %struct.aspeed_vuart* }
%struct.aspeed_vuart = type { i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@aspeed_vuart_unthrottle_exp = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@aspeed_vuart_startup = common dso_local global i32 0, align 4
@aspeed_vuart_shutdown = common dso_local global i32 0, align 4
@aspeed_vuart_throttle = common dso_local global i32 0, align 4
@aspeed_vuart_unthrottle = common dso_local global i32 0, align 4
@UPSTAT_SYNC_FIFO = common dso_local global i32 0, align 4
@aspeed_vuart_attr_group = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"clk or clock-frequency not defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"current-speed\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"reg-offset\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"reg-shift\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"fifo-size\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@aspeed_vuart_handle_irq = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@PORT_16550A = common dso_local global i32 0, align 4
@UPF_SHARE_IRQ = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_FIXED_PORT = common dso_local global i32 0, align 4
@UPF_FIXED_TYPE = common dso_local global i32 0, align 4
@UPF_NO_THRE_TEST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"no-loopback-test\00", align 1
@UPF_SKIP_TEST = common dso_local global i32 0, align 4
@UART_CAP_FIFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"auto-flow-control\00", align 1
@UART_CAP_AFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_vuart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_vuart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uart_8250_port, align 8
  %5 = alloca %struct.aspeed_vuart*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.aspeed_vuart* @devm_kzalloc(%struct.TYPE_7__* %16, i32 32, i32 %17)
  store %struct.aspeed_vuart* %18, %struct.aspeed_vuart** %5, align 8
  %19 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %20 = icmp ne %struct.aspeed_vuart* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %270

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %28 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %27, i32 0, i32 1
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %28, align 8
  %29 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %30 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %29, i32 0, i32 4
  %31 = load i32, i32* @aspeed_vuart_unthrottle_exp, align 4
  %32 = call i32 @timer_setup(i32* %30, i32 %31, i32 0)
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %7, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = call i32 @devm_ioremap_resource(%struct.TYPE_7__* %37, %struct.resource* %38)
  %40 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %41 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %43 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %24
  %48 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %49 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %270

52:                                               ; preds = %24
  %53 = call i32 @memset(%struct.uart_8250_port* %4, i32 0, i32 104)
  %54 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %55 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 20
  store %struct.aspeed_vuart* %54, %struct.aspeed_vuart** %56, align 8
  %57 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %58 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 19
  store i32 %59, i32* %61, align 8
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.resource*, %struct.resource** %7, align 8
  %68 = call i32 @resource_size(%struct.resource* %67)
  %69 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 18
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @aspeed_vuart_startup, align 4
  %72 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 17
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @aspeed_vuart_shutdown, align 4
  %75 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 16
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @aspeed_vuart_throttle, align 4
  %78 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 15
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @aspeed_vuart_unthrottle, align 4
  %81 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 14
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @UPSTAT_SYNC_FIFO, align 4
  %84 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 13
  store i32 %83, i32* %85, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 12
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %89, align 8
  %90 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %91 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = call i32 @sysfs_create_group(i32* %93, i32* @aspeed_vuart_attr_group)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %52
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %2, align 4
  br label %270

99:                                               ; preds = %52
  %100 = load %struct.device_node*, %struct.device_node** %6, align 8
  %101 = call i64 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %8)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %99
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @devm_clk_get(%struct.TYPE_7__* %105, i32* null)
  %107 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %108 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %110 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @IS_ERR(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %103
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_warn(%struct.TYPE_7__* %116, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %119 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @PTR_ERR(i32 %120)
  store i32 %121, i32* %10, align 4
  br label %263

122:                                              ; preds = %103
  %123 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %124 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @clk_prepare_enable(i32 %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %263

130:                                              ; preds = %122
  %131 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %132 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @clk_get_rate(i32 %133)
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %130, %99
  %136 = load %struct.device_node*, %struct.device_node** %6, align 8
  %137 = call i64 @of_property_read_u32(%struct.device_node* %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = mul nsw i32 16, %141
  %143 = sdiv i32 %140, %142
  %144 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %139, %135
  %147 = load %struct.device_node*, %struct.device_node** %6, align 8
  %148 = call i64 @of_property_read_u32(%struct.device_node* %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %146
  %157 = load %struct.device_node*, %struct.device_node** %6, align 8
  %158 = call i64 @of_property_read_u32(%struct.device_node* %157, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* %9, align 4
  %162 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %156
  %165 = load %struct.device_node*, %struct.device_node** %6, align 8
  %166 = call i64 @of_property_read_u32(%struct.device_node* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* %9, align 4
  %170 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %164
  %173 = load %struct.device_node*, %struct.device_node** %6, align 8
  %174 = call i32 @of_alias_get_id(%struct.device_node* %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load i32, i32* %10, align 4
  %179 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %177, %172
  %182 = load %struct.device_node*, %struct.device_node** %6, align 8
  %183 = call i32 @irq_of_parse_and_map(%struct.device_node* %182, i32 0)
  %184 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 7
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* @IRQF_SHARED, align 4
  %187 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 11
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* @aspeed_vuart_handle_irq, align 4
  %190 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 10
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @UPIO_MEM, align 4
  %193 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 9
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @PORT_16550A, align 4
  %196 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 8
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %8, align 4
  %199 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @UPF_SHARE_IRQ, align 4
  %202 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @UPF_FIXED_PORT, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @UPF_FIXED_TYPE, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @UPF_NO_THRE_TEST, align 4
  %209 = or i32 %207, %208
  %210 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 8
  %212 = load %struct.device_node*, %struct.device_node** %6, align 8
  %213 = call i64 @of_property_read_bool(%struct.device_node* %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %181
  %216 = load i32, i32* @UPF_SKIP_TEST, align 4
  %217 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %215, %181
  %222 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i32, i32* @UART_CAP_FIFO, align 4
  %228 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  store i32 %227, i32* %228, align 8
  br label %229

229:                                              ; preds = %226, %221
  %230 = load %struct.device_node*, %struct.device_node** %6, align 8
  %231 = call i64 @of_property_read_bool(%struct.device_node* %230, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = load i32, i32* @UART_CAP_AFE, align 4
  %235 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %234
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %233, %229
  %239 = call i32 @serial8250_register_8250_port(%struct.uart_8250_port* %4)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  br label %254

243:                                              ; preds = %238
  %244 = load i32, i32* %10, align 4
  %245 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %246 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %248 = call i32 @aspeed_vuart_set_enabled(%struct.aspeed_vuart* %247, i32 1)
  %249 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %250 = call i32 @aspeed_vuart_set_host_tx_discard(%struct.aspeed_vuart* %249, i32 1)
  %251 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %252 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %253 = call i32 @platform_set_drvdata(%struct.platform_device* %251, %struct.aspeed_vuart* %252)
  store i32 0, i32* %2, align 4
  br label %270

254:                                              ; preds = %242
  %255 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %256 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @clk_disable_unprepare(i32 %257)
  %259 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %4, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @irq_dispose_mapping(i32 %261)
  br label %263

263:                                              ; preds = %254, %129, %114
  %264 = load %struct.aspeed_vuart*, %struct.aspeed_vuart** %5, align 8
  %265 = getelementptr inbounds %struct.aspeed_vuart, %struct.aspeed_vuart* %264, i32 0, i32 1
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  %268 = call i32 @sysfs_remove_group(i32* %267, i32* @aspeed_vuart_attr_group)
  %269 = load i32, i32* %10, align 4
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %263, %243, %97, %47, %21
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local %struct.aspeed_vuart* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_7__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @memset(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @serial8250_register_8250_port(%struct.uart_8250_port*) #1

declare dso_local i32 @aspeed_vuart_set_enabled(%struct.aspeed_vuart*, i32) #1

declare dso_local i32 @aspeed_vuart_set_host_tx_discard(%struct.aspeed_vuart*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.aspeed_vuart*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
