; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91-pio4.c_atmel_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i8**, %struct.device*, i32, i32 }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.of_device_id = type { %struct.atmel_pioctrl_data* }
%struct.atmel_pioctrl_data = type { i32 }
%struct.resource = type { i32 }
%struct.atmel_pioctrl = type { i32, i32, i8**, %struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32, i32*, i8*, i8*, %struct.TYPE_11__**, %struct.atmel_group*, i32, i32, %struct.device* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.atmel_group = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@atmel_pctrl_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown compatible string\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ATMEL_PIO_NPINS_PER_BANK = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@atmel_pinctrl_desc = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@atmel_custom_bindings = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"P%c%d\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"pin_id=%u, bank=%u, line=%u\00", align 1
@atmel_gpio_chip = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"missing irq resource for group %c\0A\00", align 1
@atmel_gpio_irq_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"bank %i: irq=%pr\0A\00", align 1
@irq_domain_simple_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"can't add the irq domain\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"atmel gpio\00", align 1
@atmel_gpio_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"atmel gpio irq domain: hwirq: %d, linux irq: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"failed to prepare and enable clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"pinctrl registration failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"failed to add gpiochip\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"failed to add gpio pin range\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"atmel pinctrl initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pinctrl_pin_desc*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.of_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.atmel_pioctrl*, align 8
  %12 = alloca %struct.atmel_pioctrl_data*, align 8
  %13 = alloca %struct.atmel_group*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %4, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @devm_kzalloc(%struct.device* %19, i32 104, i32 %20)
  %22 = bitcast i8* %21 to %struct.atmel_pioctrl*
  store %struct.atmel_pioctrl* %22, %struct.atmel_pioctrl** %11, align 8
  %23 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %24 = icmp ne %struct.atmel_pioctrl* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %542

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %31 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %30, i32 0, i32 14
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %36 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.atmel_pioctrl* %38)
  %40 = load i32, i32* @atmel_pctrl_of_match, align 4
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.of_device_id* @of_match_node(i32 %40, i32 %43)
  store %struct.of_device_id* %44, %struct.of_device_id** %7, align 8
  %45 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %46 = icmp ne %struct.of_device_id* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %28
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %542

52:                                               ; preds = %28
  %53 = load %struct.of_device_id*, %struct.of_device_id** %7, align 8
  %54 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %53, i32 0, i32 0
  %55 = load %struct.atmel_pioctrl_data*, %struct.atmel_pioctrl_data** %54, align 8
  store %struct.atmel_pioctrl_data* %55, %struct.atmel_pioctrl_data** %12, align 8
  %56 = load %struct.atmel_pioctrl_data*, %struct.atmel_pioctrl_data** %12, align 8
  %57 = getelementptr inbounds %struct.atmel_pioctrl_data, %struct.atmel_pioctrl_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %60 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %62 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ATMEL_PIO_NPINS_PER_BANK, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %67 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load i32, i32* @IORESOURCE_MEM, align 4
  %70 = call %struct.resource* @platform_get_resource(%struct.platform_device* %68, i32 %69, i32 0)
  store %struct.resource* %70, %struct.resource** %10, align 8
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.resource*, %struct.resource** %10, align 8
  %73 = call i32 @devm_ioremap_resource(%struct.device* %71, %struct.resource* %72)
  %74 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %75 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %74, i32 0, i32 12
  store i32 %73, i32* %75, align 8
  %76 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %77 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @IS_ERR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %52
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %542

84:                                               ; preds = %52
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @devm_clk_get(%struct.device* %85, i32* null)
  %87 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %88 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %90 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @IS_ERR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %84
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %98 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @PTR_ERR(i32 %99)
  store i32 %100, i32* %2, align 4
  br label %542

101:                                              ; preds = %84
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %104 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @devm_kcalloc(%struct.device* %102, i32 %105, i32 8, i32 %106)
  %108 = bitcast i8* %107 to %struct.TYPE_11__**
  %109 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %110 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %109, i32 0, i32 10
  store %struct.TYPE_11__** %108, %struct.TYPE_11__*** %110, align 8
  %111 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %112 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %111, i32 0, i32 10
  %113 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %112, align 8
  %114 = icmp ne %struct.TYPE_11__** %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %101
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %542

118:                                              ; preds = %101
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %121 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i8* @devm_kcalloc(%struct.device* %119, i32 %122, i32 16, i32 %123)
  %125 = bitcast i8* %124 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %125, %struct.pinctrl_pin_desc** %5, align 8
  %126 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %127 = icmp ne %struct.pinctrl_pin_desc* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %118
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %542

131:                                              ; preds = %118
  %132 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  store %struct.pinctrl_pin_desc* %132, %struct.pinctrl_pin_desc** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @atmel_pinctrl_desc, i32 0, i32 3), align 8
  %133 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %134 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @atmel_pinctrl_desc, i32 0, i32 0), align 8
  %136 = load i32, i32* @atmel_custom_bindings, align 4
  %137 = call i32 @ARRAY_SIZE(i32 %136)
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @atmel_pinctrl_desc, i32 0, i32 2), align 8
  %138 = load i32, i32* @atmel_custom_bindings, align 4
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @atmel_pinctrl_desc, i32 0, i32 1), align 4
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %141 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i8* @devm_kcalloc(%struct.device* %139, i32 %142, i32 8, i32 %143)
  %145 = bitcast i8* %144 to i8**
  store i8** %145, i8*** %6, align 8
  %146 = load i8**, i8*** %6, align 8
  %147 = icmp ne i8** %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %131
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %2, align 4
  br label %542

151:                                              ; preds = %131
  %152 = load i8**, i8*** %6, align 8
  %153 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %154 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %153, i32 0, i32 2
  store i8** %152, i8*** %154, align 8
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %158 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i8* @devm_kcalloc(%struct.device* %156, i32 %159, i32 16, i32 %160)
  %162 = bitcast i8* %161 to %struct.atmel_group*
  %163 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %164 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %163, i32 0, i32 11
  store %struct.atmel_group* %162, %struct.atmel_group** %164, align 8
  %165 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %166 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %165, i32 0, i32 11
  %167 = load %struct.atmel_group*, %struct.atmel_group** %166, align 8
  %168 = icmp ne %struct.atmel_group* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %151
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %542

172:                                              ; preds = %151
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %280, %172
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %176 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %283

179:                                              ; preds = %173
  %180 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %181 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %180, i32 0, i32 11
  %182 = load %struct.atmel_group*, %struct.atmel_group** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.atmel_group, %struct.atmel_group* %182, i64 %184
  store %struct.atmel_group* %185, %struct.atmel_group** %13, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @ATMEL_PIO_BANK(i32 %186)
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @ATMEL_PIO_LINE(i32 %188)
  store i32 %189, i32* %15, align 4
  %190 = load %struct.device*, %struct.device** %4, align 8
  %191 = load i32, i32* @GFP_KERNEL, align 4
  %192 = call i8* @devm_kzalloc(%struct.device* %190, i32 12, i32 %191)
  %193 = bitcast i8* %192 to %struct.TYPE_11__*
  %194 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %195 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %194, i32 0, i32 10
  %196 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %196, i64 %198
  store %struct.TYPE_11__* %193, %struct.TYPE_11__** %199, align 8
  %200 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %201 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %200, i32 0, i32 10
  %202 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %202, i64 %204
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = icmp ne %struct.TYPE_11__* %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %179
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %542

211:                                              ; preds = %179
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %214 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %213, i32 0, i32 10
  %215 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %215, i64 %217
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  store i32 %212, i32* %220, align 4
  %221 = load i32, i32* %14, align 4
  %222 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %223 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %222, i32 0, i32 10
  %224 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %223, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %224, i64 %226
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 1
  store i32 %221, i32* %229, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %232 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %231, i32 0, i32 10
  %233 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %233, i64 %235
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 2
  store i32 %230, i32* %238, align 4
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %240, i64 %242
  %244 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %243, i32 0, i32 0
  store i32 %239, i32* %244, align 8
  %245 = load i32, i32* @GFP_KERNEL, align 4
  %246 = load i32, i32* %14, align 4
  %247 = add i32 %246, 65
  %248 = load i32, i32* %15, align 4
  %249 = call i8* @kasprintf(i32 %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %247, i32 %248)
  %250 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %250, i64 %252
  %254 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %253, i32 0, i32 1
  store i8* %249, i8** %254, align 8
  %255 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %255, i64 %257
  %259 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = load i8**, i8*** %6, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  store i8* %260, i8** %264, align 8
  %265 = load %struct.atmel_group*, %struct.atmel_group** %13, align 8
  %266 = getelementptr inbounds %struct.atmel_group, %struct.atmel_group* %265, i32 0, i32 0
  store i8* %260, i8** %266, align 8
  %267 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %267, i64 %269
  %271 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.atmel_group*, %struct.atmel_group** %13, align 8
  %274 = getelementptr inbounds %struct.atmel_group, %struct.atmel_group* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 8
  %275 = load %struct.device*, %struct.device** %4, align 8
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* %15, align 4
  %279 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %275, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %211
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %173

283:                                              ; preds = %173
  %284 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %285 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %284, i32 0, i32 5
  store %struct.TYPE_13__* @atmel_gpio_chip, %struct.TYPE_13__** %285, align 8
  %286 = load %struct.device*, %struct.device** %4, align 8
  %287 = getelementptr inbounds %struct.device, %struct.device* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %290 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %289, i32 0, i32 5
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 4
  store i32 %288, i32* %292, align 4
  %293 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %294 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %297 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %296, i32 0, i32 5
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  store i32 %295, i32* %299, align 8
  %300 = load %struct.device*, %struct.device** %4, align 8
  %301 = call i32 @dev_name(%struct.device* %300)
  %302 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %303 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %302, i32 0, i32 5
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 3
  store i32 %301, i32* %305, align 8
  %306 = load %struct.device*, %struct.device** %4, align 8
  %307 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %308 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %307, i32 0, i32 5
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 2
  store %struct.device* %306, %struct.device** %310, align 8
  %311 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %312 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %311, i32 0, i32 2
  %313 = load i8**, i8*** %312, align 8
  %314 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %315 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %314, i32 0, i32 5
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 1
  store i8** %313, i8*** %317, align 8
  %318 = load %struct.device*, %struct.device** %4, align 8
  %319 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %320 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @GFP_KERNEL, align 4
  %323 = call i8* @devm_kcalloc(%struct.device* %318, i32 %321, i32 1, i32 %322)
  %324 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %325 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %324, i32 0, i32 9
  store i8* %323, i8** %325, align 8
  %326 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %327 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %326, i32 0, i32 9
  %328 = load i8*, i8** %327, align 8
  %329 = icmp ne i8* %328, null
  br i1 %329, label %333, label %330

330:                                              ; preds = %283
  %331 = load i32, i32* @ENOMEM, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %2, align 4
  br label %542

333:                                              ; preds = %283
  %334 = load %struct.device*, %struct.device** %4, align 8
  %335 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %336 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @GFP_KERNEL, align 4
  %339 = call i8* @devm_kcalloc(%struct.device* %334, i32 %337, i32 1, i32 %338)
  %340 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %341 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %340, i32 0, i32 8
  store i8* %339, i8** %341, align 8
  %342 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %343 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %342, i32 0, i32 8
  %344 = load i8*, i8** %343, align 8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %349, label %346

346:                                              ; preds = %333
  %347 = load i32, i32* @ENOMEM, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %2, align 4
  br label %542

349:                                              ; preds = %333
  %350 = load %struct.device*, %struct.device** %4, align 8
  %351 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %352 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @GFP_KERNEL, align 4
  %355 = call i8* @devm_kcalloc(%struct.device* %350, i32 %353, i32 4, i32 %354)
  %356 = bitcast i8* %355 to i32*
  %357 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %358 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %357, i32 0, i32 7
  store i32* %356, i32** %358, align 8
  %359 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %360 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %359, i32 0, i32 7
  %361 = load i32*, i32** %360, align 8
  %362 = icmp ne i32* %361, null
  br i1 %362, label %366, label %363

363:                                              ; preds = %349
  %364 = load i32, i32* @ENOMEM, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %2, align 4
  br label %542

366:                                              ; preds = %349
  store i32 0, i32* %8, align 4
  br label %367

367:                                              ; preds = %411, %366
  %368 = load i32, i32* %8, align 4
  %369 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %370 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = icmp slt i32 %368, %371
  br i1 %372, label %373, label %414

373:                                              ; preds = %367
  %374 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %375 = load i32, i32* @IORESOURCE_IRQ, align 4
  %376 = load i32, i32* %8, align 4
  %377 = call %struct.resource* @platform_get_resource(%struct.platform_device* %374, i32 %375, i32 %376)
  store %struct.resource* %377, %struct.resource** %10, align 8
  %378 = load %struct.resource*, %struct.resource** %10, align 8
  %379 = icmp ne %struct.resource* %378, null
  br i1 %379, label %387, label %380

380:                                              ; preds = %373
  %381 = load %struct.device*, %struct.device** %4, align 8
  %382 = load i32, i32* %8, align 4
  %383 = add nsw i32 65, %382
  %384 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %381, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %383)
  %385 = load i32, i32* @EINVAL, align 4
  %386 = sub nsw i32 0, %385
  store i32 %386, i32* %2, align 4
  br label %542

387:                                              ; preds = %373
  %388 = load %struct.resource*, %struct.resource** %10, align 8
  %389 = getelementptr inbounds %struct.resource, %struct.resource* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %392 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %391, i32 0, i32 7
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %8, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  store i32 %390, i32* %396, align 4
  %397 = load %struct.resource*, %struct.resource** %10, align 8
  %398 = getelementptr inbounds %struct.resource, %struct.resource* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @atmel_gpio_irq_handler, align 4
  %401 = call i32 @irq_set_chained_handler(i32 %399, i32 %400)
  %402 = load %struct.resource*, %struct.resource** %10, align 8
  %403 = getelementptr inbounds %struct.resource, %struct.resource* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %406 = call i32 @irq_set_handler_data(i32 %404, %struct.atmel_pioctrl* %405)
  %407 = load %struct.device*, %struct.device** %4, align 8
  %408 = load i32, i32* %8, align 4
  %409 = load %struct.resource*, %struct.resource** %10, align 8
  %410 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %407, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %408, %struct.resource* %409)
  br label %411

411:                                              ; preds = %387
  %412 = load i32, i32* %8, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %8, align 4
  br label %367

414:                                              ; preds = %367
  %415 = load %struct.device*, %struct.device** %4, align 8
  %416 = getelementptr inbounds %struct.device, %struct.device* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %419 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %418, i32 0, i32 5
  %420 = load %struct.TYPE_13__*, %struct.TYPE_13__** %419, align 8
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = call %struct.TYPE_12__* @irq_domain_add_linear(i32 %417, i32 %422, i32* @irq_domain_simple_ops, i32* null)
  %424 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %425 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %424, i32 0, i32 3
  store %struct.TYPE_12__* %423, %struct.TYPE_12__** %425, align 8
  %426 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %427 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %426, i32 0, i32 3
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** %427, align 8
  %429 = icmp ne %struct.TYPE_12__* %428, null
  br i1 %429, label %435, label %430

430:                                              ; preds = %414
  %431 = load %struct.device*, %struct.device** %4, align 8
  %432 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %431, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %433 = load i32, i32* @ENODEV, align 4
  %434 = sub nsw i32 0, %433
  store i32 %434, i32* %2, align 4
  br label %542

435:                                              ; preds = %414
  %436 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %437 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %436, i32 0, i32 3
  %438 = load %struct.TYPE_12__*, %struct.TYPE_12__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %439, align 8
  store i32 0, i32* %8, align 4
  br label %440

440:                                              ; preds = %462, %435
  %441 = load i32, i32* %8, align 4
  %442 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %443 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = icmp slt i32 %441, %444
  br i1 %445, label %446, label %465

446:                                              ; preds = %440
  %447 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %448 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %447, i32 0, i32 3
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** %448, align 8
  %450 = load i32, i32* %8, align 4
  %451 = call i32 @irq_create_mapping(%struct.TYPE_12__* %449, i32 %450)
  store i32 %451, i32* %16, align 4
  %452 = load i32, i32* %16, align 4
  %453 = load i32, i32* @handle_simple_irq, align 4
  %454 = call i32 @irq_set_chip_and_handler(i32 %452, i32* @atmel_gpio_irq_chip, i32 %453)
  %455 = load i32, i32* %16, align 4
  %456 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %457 = call i32 @irq_set_chip_data(i32 %455, %struct.atmel_pioctrl* %456)
  %458 = load %struct.device*, %struct.device** %4, align 8
  %459 = load i32, i32* %8, align 4
  %460 = load i32, i32* %16, align 4
  %461 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %458, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %459, i32 %460)
  br label %462

462:                                              ; preds = %446
  %463 = load i32, i32* %8, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %8, align 4
  br label %440

465:                                              ; preds = %440
  %466 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %467 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %466, i32 0, i32 4
  %468 = load i32, i32* %467, align 8
  %469 = call i32 @clk_prepare_enable(i32 %468)
  store i32 %469, i32* %9, align 4
  %470 = load i32, i32* %9, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %465
  %473 = load %struct.device*, %struct.device** %4, align 8
  %474 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %473, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %536

475:                                              ; preds = %465
  %476 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %477 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %476, i32 0, i32 0
  %478 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %479 = call i32 @devm_pinctrl_register(%struct.device* %477, %struct.TYPE_14__* @atmel_pinctrl_desc, %struct.atmel_pioctrl* %478)
  %480 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %481 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %480, i32 0, i32 6
  store i32 %479, i32* %481, align 8
  %482 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %483 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %482, i32 0, i32 6
  %484 = load i32, i32* %483, align 8
  %485 = call i64 @IS_ERR(i32 %484)
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %494

487:                                              ; preds = %475
  %488 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %489 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %488, i32 0, i32 6
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @PTR_ERR(i32 %490)
  store i32 %491, i32* %9, align 4
  %492 = load %struct.device*, %struct.device** %4, align 8
  %493 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %492, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %531

494:                                              ; preds = %475
  %495 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %496 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %495, i32 0, i32 5
  %497 = load %struct.TYPE_13__*, %struct.TYPE_13__** %496, align 8
  %498 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %499 = call i32 @gpiochip_add_data(%struct.TYPE_13__* %497, %struct.atmel_pioctrl* %498)
  store i32 %499, i32* %9, align 4
  %500 = load i32, i32* %9, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %505

502:                                              ; preds = %494
  %503 = load %struct.device*, %struct.device** %4, align 8
  %504 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %503, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %531

505:                                              ; preds = %494
  %506 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %507 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %506, i32 0, i32 5
  %508 = load %struct.TYPE_13__*, %struct.TYPE_13__** %507, align 8
  %509 = load %struct.device*, %struct.device** %4, align 8
  %510 = call i32 @dev_name(%struct.device* %509)
  %511 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %512 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %511, i32 0, i32 5
  %513 = load %struct.TYPE_13__*, %struct.TYPE_13__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @gpiochip_add_pin_range(%struct.TYPE_13__* %508, i32 %510, i32 0, i32 0, i32 %515)
  store i32 %516, i32* %9, align 4
  %517 = load i32, i32* %9, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %505
  %520 = load %struct.device*, %struct.device** %4, align 8
  %521 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %520, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  br label %526

522:                                              ; preds = %505
  %523 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %524 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %523, i32 0, i32 0
  %525 = call i32 @dev_info(%struct.device* %524, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %542

526:                                              ; preds = %519
  %527 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %528 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %527, i32 0, i32 5
  %529 = load %struct.TYPE_13__*, %struct.TYPE_13__** %528, align 8
  %530 = call i32 @gpiochip_remove(%struct.TYPE_13__* %529)
  br label %531

531:                                              ; preds = %526, %502, %487
  %532 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %533 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %532, i32 0, i32 4
  %534 = load i32, i32* %533, align 8
  %535 = call i32 @clk_disable_unprepare(i32 %534)
  br label %536

536:                                              ; preds = %531, %472
  %537 = load %struct.atmel_pioctrl*, %struct.atmel_pioctrl** %11, align 8
  %538 = getelementptr inbounds %struct.atmel_pioctrl, %struct.atmel_pioctrl* %537, i32 0, i32 3
  %539 = load %struct.TYPE_12__*, %struct.TYPE_12__** %538, align 8
  %540 = call i32 @irq_domain_remove(%struct.TYPE_12__* %539)
  %541 = load i32, i32* %9, align 4
  store i32 %541, i32* %2, align 4
  br label %542

542:                                              ; preds = %536, %522, %430, %380, %363, %346, %330, %208, %169, %148, %128, %115, %94, %81, %47, %25
  %543 = load i32, i32* %2, align 4
  ret i32 %543
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_pioctrl*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ATMEL_PIO_BANK(i32) #1

declare dso_local i32 @ATMEL_PIO_LINE(i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @irq_set_chained_handler(i32, i32) #1

declare dso_local i32 @irq_set_handler_data(i32, %struct.atmel_pioctrl*) #1

declare dso_local %struct.TYPE_12__* @irq_domain_add_linear(i32, i32, i32*, i32*) #1

declare dso_local i32 @irq_create_mapping(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.atmel_pioctrl*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_pinctrl_register(%struct.device*, %struct.TYPE_14__*, %struct.atmel_pioctrl*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_13__*, %struct.atmel_pioctrl*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_13__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @irq_domain_remove(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
