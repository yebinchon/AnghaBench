; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-gpio.c_pmic_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.gpio_irq_chip, i8*, %struct.device* }
%struct.gpio_irq_chip = type { %struct.TYPE_6__, i32, i32, i32, %struct.irq_domain*, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.irq_domain = type { i32 }
%struct.device = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device_node = type { i32 }
%struct.pinctrl_pin_desc = type { i32, i32, %struct.pmic_gpio_pad* }
%struct.pmic_gpio_pad = type { i64 }
%struct.pinctrl_desc = type { i32, i32, i32, i32, %struct.pinctrl_pin_desc*, i8*, i32, i32*, i32*, i32* }
%struct.pmic_gpio_state = type { %struct.TYPE_7__, %struct.device*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"missing base address\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pmic_gpio_pinctrl_ops = common dso_local global i32 0, align 4
@pmic_gpio_pinmux_ops = common dso_local global i32 0, align 4
@pmic_gpio_pinconf_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pmic_gpio_bindings = common dso_local global i32 0, align 4
@pmic_gpio_groups = common dso_local global i32* null, align 8
@PMIC_GPIO_ADDRESS_RANGE = common dso_local global i32 0, align 4
@pmic_gpio_gpio_template = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@ENXIO = common dso_local global i32 0, align 4
@pmic_gpio_irq_chip = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@pmic_gpio_child_to_parent_hwirq = common dso_local global i32 0, align 4
@gpiochip_populate_parent_fwspec_fourcell = common dso_local global i32 0, align 4
@pmic_gpio_child_offset_to_irq = common dso_local global i32 0, align 4
@pmic_gpio_domain_translate = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"can't add gpio chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to add pin range\0A\00", align 1
@pmic_conf_items = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pmic_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pinctrl_pin_desc*, align 8
  %8 = alloca %struct.pinctrl_desc*, align 8
  %9 = alloca %struct.pmic_gpio_pad*, align 8
  %10 = alloca %struct.pmic_gpio_pad*, align 8
  %11 = alloca %struct.pmic_gpio_state*, align 8
  %12 = alloca %struct.gpio_irq_chip*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_property_read_u32(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %16)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %2, align 4
  br label %295

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i64 @device_get_match_data(%struct.device* %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kzalloc(%struct.device* %34, i32 96, i32 %35)
  %37 = bitcast i8* %36 to %struct.pmic_gpio_state*
  store %struct.pmic_gpio_state* %37, %struct.pmic_gpio_state** %11, align 8
  %38 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %39 = icmp ne %struct.pmic_gpio_state* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %295

43:                                               ; preds = %29
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %46 = call i32 @platform_set_drvdata(%struct.platform_device* %44, %struct.pmic_gpio_state* %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %50 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %49, i32 0, i32 1
  store %struct.device* %48, %struct.device** %50, align 8
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_get_regmap(i32 %53, i32* null)
  %55 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %56 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @devm_kcalloc(%struct.device* %57, i32 %58, i32 16, i32 %59)
  %61 = bitcast i8* %60 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %61, %struct.pinctrl_pin_desc** %7, align 8
  %62 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %63 = icmp ne %struct.pinctrl_pin_desc* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %43
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %295

67:                                               ; preds = %43
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @devm_kcalloc(%struct.device* %68, i32 %69, i32 8, i32 %70)
  %72 = bitcast i8* %71 to %struct.pmic_gpio_pad*
  store %struct.pmic_gpio_pad* %72, %struct.pmic_gpio_pad** %10, align 8
  %73 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %10, align 8
  %74 = icmp ne %struct.pmic_gpio_pad* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %295

78:                                               ; preds = %67
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i8* @devm_kzalloc(%struct.device* %79, i32 64, i32 %80)
  %82 = bitcast i8* %81 to %struct.pinctrl_desc*
  store %struct.pinctrl_desc* %82, %struct.pinctrl_desc** %8, align 8
  %83 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %84 = icmp ne %struct.pinctrl_desc* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %295

88:                                               ; preds = %78
  %89 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %90 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %89, i32 0, i32 9
  store i32* @pmic_gpio_pinctrl_ops, i32** %90, align 8
  %91 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %92 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %91, i32 0, i32 8
  store i32* @pmic_gpio_pinmux_ops, i32** %92, align 8
  %93 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %94 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %93, i32 0, i32 7
  store i32* @pmic_gpio_pinconf_ops, i32** %94, align 8
  %95 = load i32, i32* @THIS_MODULE, align 4
  %96 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %97 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 8
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = call i8* @dev_name(%struct.device* %98)
  %100 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %101 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %103 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %104 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %103, i32 0, i32 4
  store %struct.pinctrl_pin_desc* %102, %struct.pinctrl_pin_desc** %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %107 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @pmic_gpio_bindings, align 4
  %109 = call i32 @ARRAY_SIZE(i32 %108)
  %110 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %111 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @pmic_gpio_bindings, align 4
  %113 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %114 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %153, %88
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %158

119:                                              ; preds = %115
  %120 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %10, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %120, i64 %122
  store %struct.pmic_gpio_pad* %123, %struct.pmic_gpio_pad** %9, align 8
  %124 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %125 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %126 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %125, i32 0, i32 2
  store %struct.pmic_gpio_pad* %124, %struct.pmic_gpio_pad** %126, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %129 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32*, i32** @pmic_gpio_groups, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %136 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i64, i64* %16, align 8
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* @PMIC_GPIO_ADDRESS_RANGE, align 4
  %140 = mul nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %137, %141
  %143 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %144 = getelementptr inbounds %struct.pmic_gpio_pad, %struct.pmic_gpio_pad* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %146 = load %struct.pmic_gpio_pad*, %struct.pmic_gpio_pad** %9, align 8
  %147 = call i32 @pmic_gpio_populate(%struct.pmic_gpio_state* %145, %struct.pmic_gpio_pad* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %119
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* %2, align 4
  br label %295

152:                                              ; preds = %119
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  %156 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %157 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %156, i32 1
  store %struct.pinctrl_pin_desc* %157, %struct.pinctrl_pin_desc** %7, align 8
  br label %115

158:                                              ; preds = %115
  %159 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %160 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %159, i32 0, i32 0
  %161 = bitcast %struct.TYPE_7__* %160 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %161, i8* align 8 bitcast (%struct.TYPE_7__* @pmic_gpio_gpio_template to i8*), i64 80, i1 false)
  %162 = load %struct.device*, %struct.device** %6, align 8
  %163 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %164 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 6
  store %struct.device* %162, %struct.device** %165, align 8
  %166 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %167 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i32 -1, i32* %168, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %171 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  %173 = load %struct.device*, %struct.device** %6, align 8
  %174 = call i8* @dev_name(%struct.device* %173)
  %175 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %176 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 5
  store i8* %174, i8** %177, align 8
  %178 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %179 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  store i32 2, i32* %180, align 8
  %181 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %182 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 3
  store i32 0, i32* %183, align 4
  %184 = load %struct.device*, %struct.device** %6, align 8
  %185 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %8, align 8
  %186 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %187 = call i32 @devm_pinctrl_register(%struct.device* %184, %struct.pinctrl_desc* %185, %struct.pmic_gpio_state* %186)
  %188 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %189 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %191 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @IS_ERR(i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %158
  %196 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %197 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @PTR_ERR(i32 %198)
  store i32 %199, i32* %2, align 4
  br label %295

200:                                              ; preds = %158
  %201 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %202 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %201, i32 0, i32 1
  %203 = load %struct.device*, %struct.device** %202, align 8
  %204 = getelementptr inbounds %struct.device, %struct.device* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call %struct.device_node* @of_irq_find_parent(i32 %205)
  store %struct.device_node* %206, %struct.device_node** %5, align 8
  %207 = load %struct.device_node*, %struct.device_node** %5, align 8
  %208 = icmp ne %struct.device_node* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %200
  %210 = load i32, i32* @ENXIO, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %2, align 4
  br label %295

212:                                              ; preds = %200
  %213 = load %struct.device_node*, %struct.device_node** %5, align 8
  %214 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %213)
  store %struct.irq_domain* %214, %struct.irq_domain** %4, align 8
  %215 = load %struct.device_node*, %struct.device_node** %5, align 8
  %216 = call i32 @of_node_put(%struct.device_node* %215)
  %217 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %218 = icmp ne %struct.irq_domain* %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %212
  %220 = load i32, i32* @ENXIO, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %2, align 4
  br label %295

222:                                              ; preds = %212
  %223 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %224 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  store %struct.gpio_irq_chip* %225, %struct.gpio_irq_chip** %12, align 8
  %226 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %12, align 8
  %227 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %226, i32 0, i32 8
  store i32* @pmic_gpio_irq_chip, i32** %227, align 8
  %228 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %229 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %12, align 8
  %230 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %229, i32 0, i32 7
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* @handle_level_irq, align 4
  %232 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %12, align 8
  %233 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %232, i32 0, i32 6
  store i32 %231, i32* %233, align 4
  %234 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %235 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %234, i32 0, i32 1
  %236 = load %struct.device*, %struct.device** %235, align 8
  %237 = getelementptr inbounds %struct.device, %struct.device* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @of_node_to_fwnode(i32 %238)
  %240 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %12, align 8
  %241 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 8
  %242 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %243 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %12, align 8
  %244 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %243, i32 0, i32 4
  store %struct.irq_domain* %242, %struct.irq_domain** %244, align 8
  %245 = load i32, i32* @pmic_gpio_child_to_parent_hwirq, align 4
  %246 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %12, align 8
  %247 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* @gpiochip_populate_parent_fwspec_fourcell, align 4
  %249 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %12, align 8
  %250 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* @pmic_gpio_child_offset_to_irq, align 4
  %252 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %12, align 8
  %253 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* @pmic_gpio_domain_translate, align 4
  %255 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %12, align 8
  %256 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 8
  %258 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %259 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %258, i32 0, i32 0
  %260 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %261 = call i32 @gpiochip_add_data(%struct.TYPE_7__* %259, %struct.pmic_gpio_state* %260)
  store i32 %261, i32* %13, align 4
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %222
  %265 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %266 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %265, i32 0, i32 1
  %267 = load %struct.device*, %struct.device** %266, align 8
  %268 = call i32 @dev_err(%struct.device* %267, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %269 = load i32, i32* %13, align 4
  store i32 %269, i32* %2, align 4
  br label %295

270:                                              ; preds = %222
  %271 = load %struct.device*, %struct.device** %6, align 8
  %272 = getelementptr inbounds %struct.device, %struct.device* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @of_property_read_bool(i32 %273, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %289, label %276

276:                                              ; preds = %270
  %277 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %278 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %277, i32 0, i32 0
  %279 = load %struct.device*, %struct.device** %6, align 8
  %280 = call i8* @dev_name(%struct.device* %279)
  %281 = load i32, i32* %14, align 4
  %282 = call i32 @gpiochip_add_pin_range(%struct.TYPE_7__* %278, i8* %280, i32 0, i32 0, i32 %281)
  store i32 %282, i32* %13, align 4
  %283 = load i32, i32* %13, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %276
  %286 = load %struct.device*, %struct.device** %6, align 8
  %287 = call i32 @dev_err(%struct.device* %286, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %290

288:                                              ; preds = %276
  br label %289

289:                                              ; preds = %288, %270
  store i32 0, i32* %2, align 4
  br label %295

290:                                              ; preds = %285
  %291 = load %struct.pmic_gpio_state*, %struct.pmic_gpio_state** %11, align 8
  %292 = getelementptr inbounds %struct.pmic_gpio_state, %struct.pmic_gpio_state* %291, i32 0, i32 0
  %293 = call i32 @gpiochip_remove(%struct.TYPE_7__* %292)
  %294 = load i32, i32* %13, align 4
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %290, %289, %264, %219, %209, %195, %150, %85, %75, %64, %40, %25
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @device_get_match_data(%struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pmic_gpio_state*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pmic_gpio_populate(%struct.pmic_gpio_state*, %struct.pmic_gpio_pad*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_pinctrl_register(%struct.device*, %struct.pinctrl_desc*, %struct.pmic_gpio_state*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.device_node* @of_irq_find_parent(i32) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_node_to_fwnode(i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_7__*, %struct.pmic_gpio_state*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
