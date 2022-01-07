; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_pin_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/cirrus/extr_pinctrl-lochnagar.c_lochnagar_pin_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_desc = type { i8*, i8* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32 }
%struct.lochnagar = type { i32 }
%struct.lochnagar_pin_priv = type { %struct.TYPE_2__, %struct.device*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.lochnagar* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.device*, i32, i32, i32, i32, i32 }
%struct.pinctrl_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lochnagar_pin_desc = common dso_local global %struct.pinctrl_desc zeroinitializer, align 8
@gpiochip_generic_request = common dso_local global i32 0, align 4
@gpiochip_generic_free = common dso_local global i32 0, align 4
@lochnagar_gpio_direction_out = common dso_local global i32 0, align 4
@lochnagar_gpio_set = common dso_local global i32 0, align 4
@lochnagar1_funcs = common dso_local global i8* null, align 8
@lochnagar1_pins = common dso_local global i8* null, align 8
@lochnagar1_groups = common dso_local global i8* null, align 8
@LOCHNAGAR1_PIN_NUM_GPIOS = common dso_local global i32 0, align 4
@lochnagar2_funcs = common dso_local global i8* null, align 8
@lochnagar2_pins = common dso_local global i8* null, align 8
@lochnagar2_groups = common dso_local global i8* null, align 8
@LOCHNAGAR2_PIN_NUM_GPIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown Lochnagar type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to register pinctrl: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register gpiochip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lochnagar_pin_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_pin_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lochnagar*, align 8
  %5 = alloca %struct.lochnagar_pin_priv*, align 8
  %6 = alloca %struct.pinctrl_desc*, align 8
  %7 = alloca %struct.pinctrl_dev*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.lochnagar* @dev_get_drvdata(i32 %13)
  store %struct.lochnagar* %14, %struct.lochnagar** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @devm_kzalloc(%struct.device* %17, i32 112, i32 %18)
  %20 = bitcast i8* %19 to %struct.lochnagar_pin_priv*
  store %struct.lochnagar_pin_priv* %20, %struct.lochnagar_pin_priv** %5, align 8
  %21 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %22 = icmp ne %struct.lochnagar_pin_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %188

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %29 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %28, i32 0, i32 1
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.lochnagar*, %struct.lochnagar** %4, align 8
  %31 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %32 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %31, i32 0, i32 8
  store %struct.lochnagar* %30, %struct.lochnagar** %32, align 8
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kzalloc(%struct.device* %33, i32 16, i32 %34)
  %36 = bitcast i8* %35 to %struct.pinctrl_desc*
  store %struct.pinctrl_desc* %36, %struct.pinctrl_desc** %6, align 8
  %37 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %38 = icmp ne %struct.pinctrl_desc* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %188

42:                                               ; preds = %26
  %43 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %44 = bitcast %struct.pinctrl_desc* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 bitcast (%struct.pinctrl_desc* @lochnagar_pin_desc to i8*), i64 16, i1 false)
  %45 = load %struct.device*, %struct.device** %8, align 8
  %46 = call i32 @dev_name(%struct.device* %45)
  %47 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %48 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 9
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @gpiochip_generic_request, align 4
  %51 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %52 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 8
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @gpiochip_generic_free, align 4
  %55 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %56 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @lochnagar_gpio_direction_out, align 4
  %59 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %60 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @lochnagar_gpio_set, align 4
  %63 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %64 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 8
  %66 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %67 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %71 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store %struct.device* %69, %struct.device** %72, align 8
  %73 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %74 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 -1, i32* %75, align 4
  %76 = load %struct.lochnagar*, %struct.lochnagar** %4, align 8
  %77 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %131 [
    i32 129, label %79
    i32 128, label %105
  ]

79:                                               ; preds = %42
  %80 = load i8*, i8** @lochnagar1_funcs, align 8
  %81 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %82 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @lochnagar1_funcs, align 8
  %84 = call i8* @ARRAY_SIZE(i8* %83)
  %85 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %86 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @lochnagar1_pins, align 8
  %88 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %89 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @lochnagar1_pins, align 8
  %91 = call i8* @ARRAY_SIZE(i8* %90)
  %92 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %93 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @lochnagar1_groups, align 8
  %95 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %96 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @lochnagar1_groups, align 8
  %98 = call i8* @ARRAY_SIZE(i8* %97)
  %99 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %100 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @LOCHNAGAR1_PIN_NUM_GPIOS, align 4
  %102 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %103 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  br label %139

105:                                              ; preds = %42
  %106 = load i8*, i8** @lochnagar2_funcs, align 8
  %107 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %108 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load i8*, i8** @lochnagar2_funcs, align 8
  %110 = call i8* @ARRAY_SIZE(i8* %109)
  %111 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %112 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %111, i32 0, i32 6
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @lochnagar2_pins, align 8
  %114 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %115 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** @lochnagar2_pins, align 8
  %117 = call i8* @ARRAY_SIZE(i8* %116)
  %118 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %119 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @lochnagar2_groups, align 8
  %121 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %122 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** @lochnagar2_groups, align 8
  %124 = call i8* @ARRAY_SIZE(i8* %123)
  %125 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %126 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* @LOCHNAGAR2_PIN_NUM_GPIOS, align 4
  %128 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %129 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  br label %139

131:                                              ; preds = %42
  %132 = load %struct.device*, %struct.device** %8, align 8
  %133 = load %struct.lochnagar*, %struct.lochnagar** %4, align 8
  %134 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_err(%struct.device* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %188

139:                                              ; preds = %105, %79
  %140 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %141 = call i32 @lochnagar_fill_func_groups(%struct.lochnagar_pin_priv* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %2, align 4
  br label %188

146:                                              ; preds = %139
  %147 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %148 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %151 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %153 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %156 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load %struct.device*, %struct.device** %8, align 8
  %158 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %159 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %160 = call %struct.pinctrl_dev* @devm_pinctrl_register(%struct.device* %157, %struct.pinctrl_desc* %158, %struct.lochnagar_pin_priv* %159)
  store %struct.pinctrl_dev* %160, %struct.pinctrl_dev** %7, align 8
  %161 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %162 = call i64 @IS_ERR(%struct.pinctrl_dev* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %146
  %165 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %166 = call i32 @PTR_ERR(%struct.pinctrl_dev* %165)
  store i32 %166, i32* %9, align 4
  %167 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %168 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %167, i32 0, i32 1
  %169 = load %struct.device*, %struct.device** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @dev_err(%struct.device* %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %2, align 4
  br label %188

173:                                              ; preds = %146
  %174 = load %struct.device*, %struct.device** %8, align 8
  %175 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %176 = getelementptr inbounds %struct.lochnagar_pin_priv, %struct.lochnagar_pin_priv* %175, i32 0, i32 0
  %177 = load %struct.lochnagar_pin_priv*, %struct.lochnagar_pin_priv** %5, align 8
  %178 = call i32 @devm_gpiochip_add_data(%struct.device* %174, %struct.TYPE_2__* %176, %struct.lochnagar_pin_priv* %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @dev_err(%struct.device* %183, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %2, align 4
  br label %188

187:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %187, %181, %164, %144, %131, %39, %23
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.lochnagar* @dev_get_drvdata(i32) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @lochnagar_fill_func_groups(%struct.lochnagar_pin_priv*) #1

declare dso_local %struct.pinctrl_dev* @devm_pinctrl_register(%struct.device*, %struct.pinctrl_desc*, %struct.lochnagar_pin_priv*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_dev*) #1

declare dso_local i32 @devm_gpiochip_add_data(%struct.device*, %struct.TYPE_2__*, %struct.lochnagar_pin_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
