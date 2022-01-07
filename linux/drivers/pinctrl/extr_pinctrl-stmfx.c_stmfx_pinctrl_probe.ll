; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-stmfx.c_stmfx_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.stmfx = type { i32 }
%struct.stmfx_pinctrl = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_16__, i32, i32, %struct.stmfx* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, %struct.device_node*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i8*, i32, i32, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"missing required gpio-ranges property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"stmfx-pinctrl\00", align 1
@stmfx_pinctrl_ops = common dso_local global i32 0, align 4
@stmfx_pinconf_ops = common dso_local global i32 0, align 4
@stmfx_pins = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"pinctrl registration failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"pinctrl enable failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"stmfx-gpio\00", align 1
@stmfx_gpio_get_direction = common dso_local global i32 0, align 4
@stmfx_gpio_direction_input = common dso_local global i32 0, align 4
@stmfx_gpio_direction_output = common dso_local global i32 0, align 4
@stmfx_gpio_get = common dso_local global i32 0, align 4
@stmfx_gpio_set = common dso_local global i32 0, align 4
@gpiochip_generic_config = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"gpio_chip registration failed\0A\00", align 1
@stmfx_pinctrl_irq_mask = common dso_local global i32 0, align 4
@stmfx_pinctrl_irq_unmask = common dso_local global i32 0, align 4
@stmfx_pinctrl_irq_set_type = common dso_local global i32 0, align 4
@stmfx_pinctrl_irq_bus_lock = common dso_local global i32 0, align 4
@stmfx_pinctrl_irq_bus_sync_unlock = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"cannot add irqchip to gpiochip\0A\00", align 1
@stmfx_pinctrl_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot request irq%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%ld GPIOs available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stmfx_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfx_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stmfx*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.stmfx_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.stmfx* @dev_get_drvdata(i32 %12)
  store %struct.stmfx* %13, %struct.stmfx** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %19 = getelementptr inbounds %struct.stmfx, %struct.stmfx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.stmfx_pinctrl* @devm_kzalloc(i32 %20, i32 160, i32 %21)
  store %struct.stmfx_pinctrl* %22, %struct.stmfx_pinctrl** %6, align 8
  %23 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %24 = icmp ne %struct.stmfx_pinctrl* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %269

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.stmfx_pinctrl* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %35 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %34, i32 0, i32 1
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %35, align 8
  %36 = load %struct.stmfx*, %struct.stmfx** %4, align 8
  %37 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %38 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %37, i32 0, i32 7
  store %struct.stmfx* %36, %struct.stmfx** %38, align 8
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i32 @of_find_property(%struct.device_node* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %28
  %43 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %44 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %269

49:                                               ; preds = %28
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @platform_get_irq(%struct.platform_device* %50, i32 0)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %269

57:                                               ; preds = %49
  %58 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %59 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %58, i32 0, i32 6
  %60 = call i32 @mutex_init(i32* %59)
  %61 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %62 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %63, align 8
  %64 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %65 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 6
  store i32* @stmfx_pinctrl_ops, i32** %66, align 8
  %67 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %68 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 5
  store i32* @stmfx_pinconf_ops, i32** %69, align 8
  %70 = load i32, i32* @stmfx_pins, align 4
  %71 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %72 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @stmfx_pins, align 4
  %75 = call i32 @ARRAY_SIZE(i32 %74)
  %76 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %77 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @THIS_MODULE, align 4
  %80 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %81 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 8
  %83 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %84 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  %86 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %87 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %86, i32 0, i32 1
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %90 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %89, i32 0, i32 4
  %91 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %92 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %93 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %92, i32 0, i32 5
  %94 = call i32 @devm_pinctrl_register_and_init(%struct.TYPE_15__* %88, %struct.TYPE_16__* %90, %struct.stmfx_pinctrl* %91, i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %57
  %98 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %99 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %98, i32 0, i32 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %2, align 4
  br label %269

103:                                              ; preds = %57
  %104 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %105 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @pinctrl_enable(i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %112 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %111, i32 0, i32 1
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %2, align 4
  br label %269

116:                                              ; preds = %103
  %117 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %118 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %119, align 8
  %120 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %121 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %120, i32 0, i32 1
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %124 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 11
  store %struct.TYPE_15__* %122, %struct.TYPE_15__** %125, align 8
  %126 = load i32, i32* @stmfx_gpio_get_direction, align 4
  %127 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %128 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 10
  store i32 %126, i32* %129, align 8
  %130 = load i32, i32* @stmfx_gpio_direction_input, align 4
  %131 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %132 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 9
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @stmfx_gpio_direction_output, align 4
  %135 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %136 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 8
  store i32 %134, i32* %137, align 8
  %138 = load i32, i32* @stmfx_gpio_get, align 4
  %139 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %140 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 7
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* @stmfx_gpio_set, align 4
  %143 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %144 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 6
  store i32 %142, i32* %145, align 8
  %146 = load i32, i32* @gpiochip_generic_config, align 4
  %147 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %148 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 5
  store i32 %146, i32* %149, align 4
  %150 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %151 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  store i32 -1, i32* %152, align 8
  %153 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %154 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %158 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 4
  store i32 %156, i32* %159, align 8
  %160 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %161 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  store i32 1, i32* %162, align 4
  %163 = load %struct.device_node*, %struct.device_node** %5, align 8
  %164 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %165 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 3
  store %struct.device_node* %163, %struct.device_node** %166, align 8
  %167 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %168 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %167, i32 0, i32 1
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %171 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %170, i32 0, i32 3
  %172 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %173 = call i32 @devm_gpiochip_add_data(%struct.TYPE_15__* %169, %struct.TYPE_13__* %171, %struct.stmfx_pinctrl* %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %116
  %177 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %178 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %177, i32 0, i32 1
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %178, align 8
  %180 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %269

182:                                              ; preds = %116
  %183 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %184 = call i32 @stmfx_pinctrl_gpio_function_enable(%struct.stmfx_pinctrl* %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %2, align 4
  br label %269

189:                                              ; preds = %182
  %190 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %191 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %190, i32 0, i32 1
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = call i32 @dev_name(%struct.TYPE_15__* %192)
  %194 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %195 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  %197 = load i32, i32* @stmfx_pinctrl_irq_mask, align 4
  %198 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %199 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 5
  store i32 %197, i32* %200, align 4
  %201 = load i32, i32* @stmfx_pinctrl_irq_unmask, align 4
  %202 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %203 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 4
  store i32 %201, i32* %204, align 8
  %205 = load i32, i32* @stmfx_pinctrl_irq_set_type, align 4
  %206 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %207 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 3
  store i32 %205, i32* %208, align 4
  %209 = load i32, i32* @stmfx_pinctrl_irq_bus_lock, align 4
  %210 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %211 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 2
  store i32 %209, i32* %212, align 8
  %213 = load i32, i32* @stmfx_pinctrl_irq_bus_sync_unlock, align 4
  %214 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %215 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 4
  %217 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %218 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %217, i32 0, i32 3
  %219 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %220 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %219, i32 0, i32 2
  %221 = load i32, i32* @handle_bad_irq, align 4
  %222 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %223 = call i32 @gpiochip_irqchip_add_nested(%struct.TYPE_13__* %218, %struct.TYPE_14__* %220, i32 0, i32 %221, i32 %222)
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %189
  %227 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %228 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %227, i32 0, i32 1
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %228, align 8
  %230 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %229, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %231 = load i32, i32* %8, align 4
  store i32 %231, i32* %2, align 4
  br label %269

232:                                              ; preds = %189
  %233 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %234 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %233, i32 0, i32 1
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @stmfx_pinctrl_irq_thread_fn, align 4
  %238 = load i32, i32* @IRQF_ONESHOT, align 4
  %239 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %240 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %244 = call i32 @devm_request_threaded_irq(%struct.TYPE_15__* %235, i32 %236, i32* null, i32 %237, i32 %238, i32 %242, %struct.stmfx_pinctrl* %243)
  store i32 %244, i32* %8, align 4
  %245 = load i32, i32* %8, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %232
  %248 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %249 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %248, i32 0, i32 1
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %250, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %2, align 4
  br label %269

254:                                              ; preds = %232
  %255 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %256 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %255, i32 0, i32 3
  %257 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %258 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %257, i32 0, i32 2
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @gpiochip_set_nested_irqchip(%struct.TYPE_13__* %256, %struct.TYPE_14__* %258, i32 %259)
  %261 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %262 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %261, i32 0, i32 1
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %262, align 8
  %264 = load %struct.stmfx_pinctrl*, %struct.stmfx_pinctrl** %6, align 8
  %265 = getelementptr inbounds %struct.stmfx_pinctrl, %struct.stmfx_pinctrl* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @hweight_long(i32 %266)
  %268 = call i32 @dev_info(%struct.TYPE_15__* %263, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %267)
  store i32 0, i32* %2, align 4
  br label %269

269:                                              ; preds = %254, %247, %226, %187, %176, %110, %97, %54, %42, %25
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local %struct.stmfx* @dev_get_drvdata(i32) #1

declare dso_local %struct.stmfx_pinctrl* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stmfx_pinctrl*) #1

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_pinctrl_register_and_init(%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.stmfx_pinctrl*, i32*) #1

declare dso_local i32 @pinctrl_enable(i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.stmfx_pinctrl*) #1

declare dso_local i32 @stmfx_pinctrl_gpio_function_enable(%struct.stmfx_pinctrl*) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local i32 @gpiochip_irqchip_add_nested(%struct.TYPE_13__*, %struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_15__*, i32, i32*, i32, i32, i32, %struct.stmfx_pinctrl*) #1

declare dso_local i32 @gpiochip_set_nested_irqchip(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @hweight_long(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
