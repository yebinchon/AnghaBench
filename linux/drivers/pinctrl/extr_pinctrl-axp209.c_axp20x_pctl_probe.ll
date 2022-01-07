; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_pctl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-axp209.c_axp20x_pctl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.axp20x_dev = type { i32 }
%struct.axp20x_pctl = type { %struct.TYPE_6__*, %struct.TYPE_7__, i32, %struct.device*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.device*, i32, i32 }
%struct.pinctrl_desc = type { i32*, i32*, i32, %struct.TYPE_5__*, i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Parent drvdata not set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i8* null, align 8
@axp20x_gpio_get = common dso_local global i32 0, align 4
@axp20x_gpio_get_direction = common dso_local global i32 0, align 4
@axp20x_gpio_set = common dso_local global i32 0, align 4
@axp20x_gpio_input = common dso_local global i32 0, align 4
@axp20x_gpio_output = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to build groups\0A\00", align 1
@axp20x_pctrl_ops = common dso_local global i32 0, align 4
@axp20x_pmx_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"couldn't register pinctrl driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to register GPIO chip\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to add pin range\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"AXP209 pinctrl and GPIO driver loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axp20x_pctl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_pctl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.axp20x_dev*, align 8
  %5 = alloca %struct.axp20x_pctl*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.pinctrl_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.axp20x_dev* @dev_get_drvdata(i32 %12)
  store %struct.axp20x_dev* %13, %struct.axp20x_dev** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @of_device_is_available(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %237

25:                                               ; preds = %1
  %26 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %27 = icmp ne %struct.axp20x_dev* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %237

34:                                               ; preds = %25
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @devm_kzalloc(%struct.device* %36, i32 96, i32 %37)
  %39 = bitcast i8* %38 to %struct.axp20x_pctl*
  store %struct.axp20x_pctl* %39, %struct.axp20x_pctl** %5, align 8
  %40 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %41 = icmp ne %struct.axp20x_pctl* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %237

45:                                               ; preds = %34
  %46 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %47 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %50 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @gpiochip_generic_request, align 4
  %53 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %54 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 12
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @gpiochip_generic_free, align 4
  %57 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %58 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 11
  store i32 %56, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %63 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 10
  store %struct.device* %61, %struct.device** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i8* @dev_name(%struct.device* %66)
  %68 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %69 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 9
  store i8* %67, i8** %70, align 8
  %71 = load i8*, i8** @THIS_MODULE, align 8
  %72 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %73 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 8
  store i8* %71, i8** %74, align 8
  %75 = load i32, i32* @axp20x_gpio_get, align 4
  %76 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %77 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 7
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @axp20x_gpio_get_direction, align 4
  %80 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %81 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @axp20x_gpio_set, align 4
  %84 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %85 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @axp20x_gpio_input, align 4
  %88 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %89 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @axp20x_gpio_output, align 4
  %92 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %93 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = call %struct.TYPE_6__* @of_device_get_match_data(%struct.device* %95)
  %97 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %98 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %97, i32 0, i32 0
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %98, align 8
  %99 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %100 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %105 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %108 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %111 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %115 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %114, i32 0, i32 3
  store %struct.device* %113, %struct.device** %115, align 8
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %118 = call i32 @platform_set_drvdata(%struct.platform_device* %116, %struct.axp20x_pctl* %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = call i32 @axp20x_build_funcs_groups(%struct.platform_device* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %45
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %237

128:                                              ; preds = %45
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call i8* @devm_kzalloc(%struct.device* %130, i32 48, i32 %131)
  %133 = bitcast i8* %132 to %struct.pinctrl_desc*
  store %struct.pinctrl_desc* %133, %struct.pinctrl_desc** %7, align 8
  %134 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %135 = icmp ne %struct.pinctrl_desc* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %237

139:                                              ; preds = %128
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i8* @dev_name(%struct.device* %141)
  %143 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %144 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @THIS_MODULE, align 8
  %146 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %147 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  %148 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %149 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %154 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %153, i32 0, i32 3
  store %struct.TYPE_5__* %152, %struct.TYPE_5__** %154, align 8
  %155 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %156 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %161 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %163 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %162, i32 0, i32 1
  store i32* @axp20x_pctrl_ops, i32** %163, align 8
  %164 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %165 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %164, i32 0, i32 0
  store i32* @axp20x_pmx_ops, i32** %165, align 8
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %169 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %170 = call i32 @devm_pinctrl_register(%struct.device* %167, %struct.pinctrl_desc* %168, %struct.axp20x_pctl* %169)
  %171 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %172 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %174 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @IS_ERR(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %139
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 @dev_err(%struct.device* %180, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %182 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %183 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @PTR_ERR(i32 %184)
  store i32 %185, i32* %2, align 4
  br label %237

186:                                              ; preds = %139
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %190 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %189, i32 0, i32 1
  %191 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %192 = call i32 @devm_gpiochip_add_data(%struct.device* %188, %struct.TYPE_7__* %190, %struct.axp20x_pctl* %191)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %186
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = call i32 @dev_err(%struct.device* %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %2, align 4
  br label %237

200:                                              ; preds = %186
  %201 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %202 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %201, i32 0, i32 1
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call i8* @dev_name(%struct.device* %204)
  %206 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %207 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %206, i32 0, i32 0
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %214 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %213, i32 0, i32 0
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.axp20x_pctl*, %struct.axp20x_pctl** %5, align 8
  %221 = getelementptr inbounds %struct.axp20x_pctl, %struct.axp20x_pctl* %220, i32 0, i32 0
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @gpiochip_add_pin_range(%struct.TYPE_7__* %202, i8* %205, i32 %212, i32 %219, i32 %224)
  store i32 %225, i32* %8, align 4
  %226 = load i32, i32* %8, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %200
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = call i32 @dev_err(%struct.device* %230, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %2, align 4
  br label %237

233:                                              ; preds = %200
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = call i32 @dev_info(%struct.device* %235, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %237

237:                                              ; preds = %233, %228, %195, %178, %136, %123, %42, %28, %22
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local %struct.axp20x_dev* @dev_get_drvdata(i32) #1

declare dso_local i32 @of_device_is_available(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local %struct.TYPE_6__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.axp20x_pctl*) #1

declare dso_local i32 @axp20x_build_funcs_groups(%struct.platform_device*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.device*, %struct.pinctrl_desc*, %struct.axp20x_pctl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_7__*, %struct.axp20x_pctl*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
