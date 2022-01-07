; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32, i32, %struct.TYPE_4__, i64, i32, i32* }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32*, i32, i32, i32* }
%struct.platform_device = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_3__* }
%struct.resource = type { i32 }

@mxs_auart_dt_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@auart_port = common dso_local global %struct.mxs_auart_port** null, align 8
@.str = private unnamed_addr constant [23 x i8] c"serial%d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@mxs_auart_ops = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@MXS_AUART_FIFO_SIZE = common dso_local global i32 0, align 4
@PORT_IMX = common dso_local global i32 0, align 4
@mxs_auart_irq_handle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to initialize GPIOs.\0A\00", align 1
@auart_driver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Found APPUART ASM9260\0A\00", align 1
@REG_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Found APPUART %d.%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_auart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.mxs_auart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @mxs_auart_dt_ids, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, i32* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mxs_auart_port* @devm_kzalloc(i32* %15, i32 88, i32 %16)
  store %struct.mxs_auart_port* %17, %struct.mxs_auart_port** %5, align 8
  %18 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %19 = icmp ne %struct.mxs_auart_port* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %267

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 1
  %26 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %27 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 9
  store i32* %25, i32** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %32 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %31, i32 0, i32 5
  store i32* %30, i32** %32, align 8
  %33 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @serial_mxs_probe_dt(%struct.mxs_auart_port* %33, %struct.platform_device* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %23
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %48

44:                                               ; preds = %38
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %48

48:                                               ; preds = %44, %43
  %49 = phi i64 [ 0, %43 ], [ %47, %44 ]
  %50 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %51 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %59

53:                                               ; preds = %23
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %267

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %48
  %60 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %61 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mxs_auart_port**, %struct.mxs_auart_port*** @auart_port, align 8
  %65 = call i64 @ARRAY_SIZE(%struct.mxs_auart_port** %64)
  %66 = icmp uge i64 %63, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 1
  %70 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %71 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %267

77:                                               ; preds = %59
  %78 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %79 = icmp ne %struct.of_device_id* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %82 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 2
  store %struct.TYPE_3__* %83, %struct.TYPE_3__** %85, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %92 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %80, %77
  %94 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = call i32 @mxs_get_clks(%struct.mxs_auart_port* %94, %struct.platform_device* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %267

101:                                              ; preds = %93
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load i32, i32* @IORESOURCE_MEM, align 4
  %104 = call %struct.resource* @platform_get_resource(%struct.platform_device* %102, i32 %103, i32 0)
  store %struct.resource* %104, %struct.resource** %9, align 8
  %105 = load %struct.resource*, %struct.resource** %9, align 8
  %106 = icmp ne %struct.resource* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @ENXIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %252

110:                                              ; preds = %101
  %111 = load %struct.resource*, %struct.resource** %9, align 8
  %112 = getelementptr inbounds %struct.resource, %struct.resource* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %115 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 8
  store i32 %113, i32* %116, align 4
  %117 = load %struct.resource*, %struct.resource** %9, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.resource*, %struct.resource** %9, align 8
  %121 = call i32 @resource_size(%struct.resource* %120)
  %122 = call i32 @ioremap(i32 %119, i32 %121)
  %123 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %124 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 7
  store i32 %122, i32* %125, align 8
  %126 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %127 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %110
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %252

134:                                              ; preds = %110
  %135 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %136 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 6
  store i32* @mxs_auart_ops, i32** %137, align 8
  %138 = load i32, i32* @UPIO_MEM, align 4
  %139 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %140 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  store i32 %138, i32* %141, align 8
  %142 = load i32, i32* @MXS_AUART_FIFO_SIZE, align 4
  %143 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %144 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  store i32 %142, i32* %145, align 4
  %146 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %147 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @clk_get_rate(i32 %148)
  %150 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %151 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  store i32 %149, i32* %152, align 8
  %153 = load i32, i32* @PORT_IMX, align 4
  %154 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %155 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  store i32 %153, i32* %156, align 4
  %157 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %158 = call i32 @mxs_init_regs(%struct.mxs_auart_port* %157)
  %159 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %160 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %159, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = call i32 @platform_get_irq(%struct.platform_device* %161, i32 0)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %134
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %7, align 4
  br label %252

167:                                              ; preds = %134
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %170 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 8
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 1
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @mxs_auart_irq_handle, align 4
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 1
  %178 = call i32 @dev_name(i32* %177)
  %179 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %180 = call i32 @devm_request_irq(i32* %173, i32 %174, i32 %175, i32 0, i32 %178, %struct.mxs_auart_port* %179)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %167
  br label %252

184:                                              ; preds = %167
  %185 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %186 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %187 = call i32 @platform_set_drvdata(%struct.platform_device* %185, %struct.mxs_auart_port* %186)
  %188 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 1
  %191 = call i32 @mxs_auart_init_gpios(%struct.mxs_auart_port* %188, i32* %190)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %184
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 1
  %197 = call i32 (i32*, i8*, ...) @dev_err(i32* %196, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %252

198:                                              ; preds = %184
  %199 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %200 = call i32 @mxs_auart_request_gpio_irq(%struct.mxs_auart_port* %199)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %252

204:                                              ; preds = %198
  %205 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %206 = load %struct.mxs_auart_port**, %struct.mxs_auart_port*** @auart_port, align 8
  %207 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %208 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.mxs_auart_port*, %struct.mxs_auart_port** %206, i64 %210
  store %struct.mxs_auart_port* %205, %struct.mxs_auart_port** %211, align 8
  %212 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %213 = call i32 @mxs_auart_reset_deassert(%struct.mxs_auart_port* %212)
  %214 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %215 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %214, i32 0, i32 2
  %216 = call i32 @uart_add_one_port(i32* @auart_driver, %struct.TYPE_4__* %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %204
  br label %244

220:                                              ; preds = %204
  %221 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %222 = call i64 @is_asm9260_auart(%struct.mxs_auart_port* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 1
  %227 = call i32 (i32*, i8*, ...) @dev_info(i32* %226, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %243

228:                                              ; preds = %220
  %229 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %230 = load i32, i32* @REG_VERSION, align 4
  %231 = call i32 @mxs_read(%struct.mxs_auart_port* %229, i32 %230)
  store i32 %231, i32* %6, align 4
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 1
  %234 = load i32, i32* %6, align 4
  %235 = ashr i32 %234, 24
  %236 = and i32 %235, 255
  %237 = load i32, i32* %6, align 4
  %238 = ashr i32 %237, 16
  %239 = and i32 %238, 255
  %240 = load i32, i32* %6, align 4
  %241 = and i32 %240, 65535
  %242 = call i32 (i32*, i8*, ...) @dev_info(i32* %233, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %236, i32 %239, i32 %241)
  br label %243

243:                                              ; preds = %228, %224
  store i32 0, i32* %2, align 4
  br label %267

244:                                              ; preds = %219
  %245 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %246 = call i32 @mxs_auart_free_gpio_irq(%struct.mxs_auart_port* %245)
  %247 = load %struct.mxs_auart_port**, %struct.mxs_auart_port*** @auart_port, align 8
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.mxs_auart_port*, %struct.mxs_auart_port** %247, i64 %250
  store %struct.mxs_auart_port* null, %struct.mxs_auart_port** %251, align 8
  br label %252

252:                                              ; preds = %244, %203, %194, %183, %165, %131, %107
  %253 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %254 = call i64 @is_asm9260_auart(%struct.mxs_auart_port* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %252
  %257 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %258 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @clk_disable_unprepare(i32 %259)
  %261 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %5, align 8
  %262 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @clk_disable_unprepare(i32 %263)
  br label %265

265:                                              ; preds = %256, %252
  %266 = load i32, i32* %7, align 4
  store i32 %266, i32* %2, align 4
  br label %267

267:                                              ; preds = %265, %243, %99, %67, %56, %20
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local %struct.of_device_id* @of_match_device(i32, i32*) #1

declare dso_local %struct.mxs_auart_port* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @serial_mxs_probe_dt(%struct.mxs_auart_port*, %struct.platform_device*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.mxs_auart_port**) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mxs_get_clks(%struct.mxs_auart_port*, %struct.platform_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mxs_init_regs(%struct.mxs_auart_port*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.mxs_auart_port*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mxs_auart_port*) #1

declare dso_local i32 @mxs_auart_init_gpios(%struct.mxs_auart_port*, i32*) #1

declare dso_local i32 @mxs_auart_request_gpio_irq(%struct.mxs_auart_port*) #1

declare dso_local i32 @mxs_auart_reset_deassert(%struct.mxs_auart_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @is_asm9260_auart(%struct.mxs_auart_port*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @mxs_read(%struct.mxs_auart_port*, i32) #1

declare dso_local i32 @mxs_auart_free_gpio_irq(%struct.mxs_auart_port*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
