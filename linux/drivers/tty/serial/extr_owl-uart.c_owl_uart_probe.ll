; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_uart_port = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, i32, i32, i32*, i64, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.platform_device = type { i64, %struct.TYPE_6__ }
%struct.of_device_id = type { %struct.owl_uart_info* }
%struct.owl_uart_info = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@owl_uart_dt_matches = common dso_local global i32 0, align 4
@OWL_UART_PORT_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"id %d out of range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"could not get mem\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@owl_uart_ports = common dso_local global %struct.owl_uart_port** null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"port %d already allocated\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"could not get clk\0A\00", align 1
@PORT_OWL = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"clock rate is zero\0A\00", align 1
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@UPF_LOW_LATENCY = common dso_local global i32 0, align 4
@owl_uart_ops = common dso_local global i32 0, align 4
@owl_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @owl_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.owl_uart_info*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.owl_uart_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.owl_uart_info* null, %struct.owl_uart_info** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @of_alias_get_id(i64 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @owl_uart_dt_matches, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.of_device_id* @of_match_node(i32 %23, i64 %27)
  store %struct.of_device_id* %28, %struct.of_device_id** %4, align 8
  %29 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %30 = icmp ne %struct.of_device_id* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %15
  %32 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %33 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %32, i32 0, i32 0
  %34 = load %struct.owl_uart_info*, %struct.owl_uart_info** %33, align 8
  store %struct.owl_uart_info* %34, %struct.owl_uart_info** %5, align 8
  br label %35

35:                                               ; preds = %31, %15
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OWL_UART_PORT_NUM, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41, %36
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %218

56:                                               ; preds = %41
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource(%struct.platform_device* %57, i32 %58, i32 0)
  store %struct.resource* %59, %struct.resource** %6, align 8
  %60 = load %struct.resource*, %struct.resource** %6, align 8
  %61 = icmp ne %struct.resource* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 1
  %65 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %218

68:                                               ; preds = %56
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i32 @platform_get_irq(%struct.platform_device* %69, i32 0)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %2, align 4
  br label %218

75:                                               ; preds = %68
  %76 = load %struct.owl_uart_port**, %struct.owl_uart_port*** @owl_uart_ports, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.owl_uart_port*, %struct.owl_uart_port** %76, i64 %79
  %81 = load %struct.owl_uart_port*, %struct.owl_uart_port** %80, align 8
  %82 = icmp ne %struct.owl_uart_port* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 1
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @EBUSY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %218

92:                                               ; preds = %75
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 1
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call %struct.owl_uart_port* @devm_kzalloc(%struct.TYPE_6__* %94, i32 80, i32 %95)
  store %struct.owl_uart_port* %96, %struct.owl_uart_port** %7, align 8
  %97 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %98 = icmp ne %struct.owl_uart_port* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %218

102:                                              ; preds = %92
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 1
  %105 = call i32 @devm_clk_get(%struct.TYPE_6__* %104, i32* null)
  %106 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %107 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %109 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 1
  %116 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %118 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @PTR_ERR(i32 %119)
  store i32 %120, i32* %2, align 4
  br label %218

121:                                              ; preds = %102
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 1
  %124 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %125 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 10
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %126, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %131 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  %133 = load i32, i32* @PORT_OWL, align 4
  %134 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %135 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 9
  store i32 %133, i32* %136, align 8
  %137 = load i32, i32* @UPIO_MEM, align 4
  %138 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %139 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 8
  store i32 %137, i32* %140, align 4
  %141 = load %struct.resource*, %struct.resource** %6, align 8
  %142 = getelementptr inbounds %struct.resource, %struct.resource* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %145 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 7
  store i32 %143, i32* %146, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %149 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 8
  %151 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %152 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @clk_get_rate(i32 %153)
  %155 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %156 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  store i64 %154, i64* %157, align 8
  %158 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %159 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %121
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 1
  %166 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %218

169:                                              ; preds = %121
  %170 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %171 = load i32, i32* @UPF_IOREMAP, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @UPF_LOW_LATENCY, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %176 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  store i32 %174, i32* %177, align 8
  %178 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %179 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 6
  store i64 0, i64* %180, align 8
  %181 = load %struct.owl_uart_info*, %struct.owl_uart_info** %5, align 8
  %182 = icmp ne %struct.owl_uart_info* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %169
  %184 = load %struct.owl_uart_info*, %struct.owl_uart_info** %5, align 8
  %185 = getelementptr inbounds %struct.owl_uart_info, %struct.owl_uart_info* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  br label %188

187:                                              ; preds = %169
  br label %188

188:                                              ; preds = %187, %183
  %189 = phi i32 [ %186, %183 ], [ 16, %187 ]
  %190 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %191 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 4
  store i32 %189, i32* %192, align 4
  %193 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %194 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 5
  store i32* @owl_uart_ops, i32** %195, align 8
  %196 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %197 = load %struct.owl_uart_port**, %struct.owl_uart_port*** @owl_uart_ports, align 8
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.owl_uart_port*, %struct.owl_uart_port** %197, i64 %200
  store %struct.owl_uart_port* %196, %struct.owl_uart_port** %201, align 8
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %204 = call i32 @platform_set_drvdata(%struct.platform_device* %202, %struct.owl_uart_port* %203)
  %205 = load %struct.owl_uart_port*, %struct.owl_uart_port** %7, align 8
  %206 = getelementptr inbounds %struct.owl_uart_port, %struct.owl_uart_port* %205, i32 0, i32 0
  %207 = call i32 @uart_add_one_port(i32* @owl_uart_driver, %struct.TYPE_5__* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %188
  %211 = load %struct.owl_uart_port**, %struct.owl_uart_port*** @owl_uart_ports, align 8
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.owl_uart_port*, %struct.owl_uart_port** %211, i64 %214
  store %struct.owl_uart_port* null, %struct.owl_uart_port** %215, align 8
  br label %216

216:                                              ; preds = %210, %188
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %216, %163, %113, %99, %83, %73, %62, %47
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i64 @of_alias_get_id(i64, i8*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.owl_uart_port* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.owl_uart_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
