; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-amd.c_amd_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-amd.c_amd_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.resource = type { i32 }
%struct.amd_gpio = type { i32, %struct.TYPE_15__, i32, i32, i32, %struct.platform_device*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to get gpio io resource.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@amd_gpio_get_direction = common dso_local global i32 0, align 4
@amd_gpio_direction_input = common dso_local global i32 0, align 4
@amd_gpio_direction_output = common dso_local global i32 0, align 4
@amd_gpio_get_value = common dso_local global i32 0, align 4
@amd_gpio_set_value = common dso_local global i32 0, align 4
@amd_gpio_set_config = common dso_local global i32 0, align 4
@amd_gpio_dbg_show = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@kerncz_groups = common dso_local global i32 0, align 4
@amd_pinctrl_desc = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to add pin range\0A\00", align 1
@amd_gpio_irqchip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"could not add irqchip\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@amd_gpio_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"amd gpio driver loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @amd_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.amd_gpio*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.amd_gpio* @devm_kzalloc(%struct.TYPE_16__* %9, i32 112, i32 %10)
  store %struct.amd_gpio* %11, %struct.amd_gpio** %7, align 8
  %12 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %13 = icmp ne %struct.amd_gpio* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %214

17:                                               ; preds = %1
  %18 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %19 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %18, i32 0, i32 8
  %20 = call i32 @raw_spin_lock_init(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %6, align 8
  %24 = load %struct.resource*, %struct.resource** %6, align 8
  %25 = icmp ne %struct.resource* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(%struct.TYPE_16__* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %214

32:                                               ; preds = %17
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  %40 = call i32 @devm_ioremap_nocache(%struct.TYPE_16__* %34, i32 %37, i32 %39)
  %41 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %42 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %44 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %32
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %214

50:                                               ; preds = %32
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = call i32 @platform_get_irq(%struct.platform_device* %51, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %214

57:                                               ; preds = %50
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %60 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %59, i32 0, i32 5
  store %struct.platform_device* %58, %struct.platform_device** %60, align 8
  %61 = load i32, i32* @amd_gpio_get_direction, align 4
  %62 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %63 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 12
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @amd_gpio_direction_input, align 4
  %66 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %67 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 11
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @amd_gpio_direction_output, align 4
  %70 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %71 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 10
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @amd_gpio_get_value, align 4
  %74 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %75 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 9
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @amd_gpio_set_value, align 4
  %78 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %79 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 8
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @amd_gpio_set_config, align 4
  %82 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %83 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 7
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @amd_gpio_dbg_show, align 4
  %86 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %87 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 6
  store i32 %85, i32* %88, align 8
  %89 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %90 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32 -1, i32* %91, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %96 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @THIS_MODULE, align 4
  %99 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %100 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 4
  store i32 %98, i32* %101, align 8
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %105 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %106, align 8
  %107 = load %struct.resource*, %struct.resource** %6, align 8
  %108 = call i32 @resource_size(%struct.resource* %107)
  %109 = sdiv i32 %108, 4
  %110 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %111 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  %113 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %114 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %116, 64
  %118 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %119 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @kerncz_groups, align 4
  %121 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %122 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @kerncz_groups, align 4
  %124 = call i32 @ARRAY_SIZE(i32 %123)
  %125 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %126 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @dev_name(%struct.TYPE_16__* %128)
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @amd_pinctrl_desc, i32 0, i32 0), align 4
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %133 = call i32 @devm_pinctrl_register(%struct.TYPE_16__* %131, %struct.TYPE_17__* @amd_pinctrl_desc, %struct.amd_gpio* %132)
  %134 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %135 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %137 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @IS_ERR(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %57
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_err(%struct.TYPE_16__* %143, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %145 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %146 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @PTR_ERR(i32 %147)
  store i32 %148, i32* %2, align 4
  br label %214

149:                                              ; preds = %57
  %150 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %151 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %150, i32 0, i32 1
  %152 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %153 = call i32 @gpiochip_add_data(%struct.TYPE_15__* %151, %struct.amd_gpio* %152)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %4, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %214

158:                                              ; preds = %149
  %159 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %160 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %159, i32 0, i32 1
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @dev_name(%struct.TYPE_16__* %162)
  %164 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %165 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @gpiochip_add_pin_range(%struct.TYPE_15__* %160, i32 %163, i32 0, i32 0, i32 %167)
  store i32 %168, i32* %4, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %158
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = call i32 @dev_err(%struct.TYPE_16__* %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %209

175:                                              ; preds = %158
  %176 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %177 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %176, i32 0, i32 1
  %178 = load i32, i32* @handle_simple_irq, align 4
  %179 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %180 = call i32 @gpiochip_irqchip_add(%struct.TYPE_15__* %177, i32* @amd_gpio_irqchip, i32 0, i32 %178, i32 %179)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %175
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i32 @dev_err(%struct.TYPE_16__* %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %187 = load i32, i32* @ENODEV, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %4, align 4
  br label %209

189:                                              ; preds = %175
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @amd_gpio_irq_handler, align 4
  %194 = load i32, i32* @IRQF_SHARED, align 4
  %195 = load i32, i32* @KBUILD_MODNAME, align 4
  %196 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %197 = call i32 @devm_request_irq(%struct.TYPE_16__* %191, i32 %192, i32 %193, i32 %194, i32 %195, %struct.amd_gpio* %196)
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %4, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %189
  br label %209

201:                                              ; preds = %189
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %204 = call i32 @platform_set_drvdata(%struct.platform_device* %202, %struct.amd_gpio* %203)
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = call i32 @dev_dbg(%struct.TYPE_16__* %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %208 = load i32, i32* %4, align 4
  store i32 %208, i32* %2, align 4
  br label %214

209:                                              ; preds = %200, %183, %171
  %210 = load %struct.amd_gpio*, %struct.amd_gpio** %7, align 8
  %211 = getelementptr inbounds %struct.amd_gpio, %struct.amd_gpio* %210, i32 0, i32 1
  %212 = call i32 @gpiochip_remove(%struct.TYPE_15__* %211)
  %213 = load i32, i32* %4, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %209, %201, %156, %141, %55, %47, %26, %14
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.amd_gpio* @devm_kzalloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @devm_ioremap_nocache(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_16__*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.amd_gpio*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_15__*, %struct.amd_gpio*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @gpiochip_irqchip_add(%struct.TYPE_15__*, i32*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_16__*, i32, i32, i32, i32, %struct.amd_gpio*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.amd_gpio*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
