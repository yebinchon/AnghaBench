; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-gpio.c_pm8xxx_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32, %struct.pm8xxx_pin_data*, i32 }
%struct.pm8xxx_pin_data = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_17__ }
%struct.irq_domain = type { i32 }
%struct.device_node = type { i32 }
%struct.pm8xxx_gpio = type { i64, i32, %struct.TYPE_16__, %struct.TYPE_17__*, i32, i32, %struct.TYPE_15__, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"parent regmap unavailable\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@pm8xxx_pinctrl_desc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@pm8xxx_groups = common dso_local global i32* null, align 8
@pm8xxx_gpio_bindings = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"couldn't register pm8xxx gpio driver\0A\00", align 1
@pm8xxx_gpio_template = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@pm8xxx_domain_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed register gpiochip\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to add pin range\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Qualcomm pm8xxx gpio driver probed\0A\00", align 1
@pm8xxx_conf_items = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8xxx_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm8xxx_pin_data*, align 8
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.pinctrl_pin_desc*, align 8
  %8 = alloca %struct.pm8xxx_gpio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pm8xxx_gpio* @devm_kzalloc(%struct.TYPE_17__* %12, i32 104, i32 %13)
  store %struct.pm8xxx_gpio* %14, %struct.pm8xxx_gpio** %8, align 8
  %15 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %16 = icmp ne %struct.pm8xxx_gpio* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %323

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %24 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %23, i32 0, i32 3
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i64 @device_get_match_data(%struct.TYPE_17__* %26)
  %28 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %29 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_get_regmap(i32 %33, i32* null)
  %35 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %36 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %38 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %20
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(%struct.TYPE_17__* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %323

47:                                               ; preds = %20
  %48 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %49 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %48, i32 0, i32 6
  %50 = bitcast %struct.TYPE_15__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 bitcast (%struct.TYPE_15__* @pm8xxx_pinctrl_desc to i8*), i64 32, i1 false)
  %51 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %52 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %55 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %60 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @devm_kcalloc(%struct.TYPE_17__* %58, i64 %62, i32 24, i32 %63)
  %65 = bitcast i8* %64 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %65, %struct.pinctrl_pin_desc** %7, align 8
  %66 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %67 = icmp ne %struct.pinctrl_pin_desc* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %47
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %323

71:                                               ; preds = %47
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %75 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i8* @devm_kcalloc(%struct.TYPE_17__* %73, i64 %77, i32 8, i32 %78)
  %80 = bitcast i8* %79 to %struct.pm8xxx_pin_data*
  store %struct.pm8xxx_pin_data* %80, %struct.pm8xxx_pin_data** %4, align 8
  %81 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %82 = icmp ne %struct.pm8xxx_pin_data* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %323

86:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %144, %86
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %91 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %89, %93
  br i1 %94, label %95, label %147

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @SSBI_REG_ADDR_GPIO(i32 %96)
  %98 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %98, i64 %100
  %102 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %101, i32 0, i32 1
  store i32 %97, i32* %102, align 4
  %103 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %103, i64 %105
  %107 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 4
  %108 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %109 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %109, i64 %111
  %113 = call i32 @pm8xxx_pin_populate(%struct.pm8xxx_gpio* %108, %struct.pm8xxx_pin_data* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %95
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %2, align 4
  br label %323

118:                                              ; preds = %95
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %120, i64 %122
  %124 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %123, i32 0, i32 0
  store i32 %119, i32* %124, align 8
  %125 = load i32*, i32** @pm8xxx_groups, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %130, i64 %132
  %134 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %133, i32 0, i32 2
  store i32 %129, i32* %134, align 8
  %135 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %135, i64 %137
  %139 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %139, i64 %141
  %143 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %142, i32 0, i32 1
  store %struct.pm8xxx_pin_data* %138, %struct.pm8xxx_pin_data** %143, align 8
  br label %144

144:                                              ; preds = %118
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %87

147:                                              ; preds = %87
  %148 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %149 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %150 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 4
  store %struct.pinctrl_pin_desc* %148, %struct.pinctrl_pin_desc** %151, align 8
  %152 = load i32, i32* @pm8xxx_gpio_bindings, align 4
  %153 = call i32 @ARRAY_SIZE(i32 %152)
  %154 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %155 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 8
  %157 = load i32, i32* @pm8xxx_gpio_bindings, align 4
  %158 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %159 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 4
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %164 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %163, i32 0, i32 6
  %165 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %166 = call i32 @devm_pinctrl_register(%struct.TYPE_17__* %162, %struct.TYPE_15__* %164, %struct.pm8xxx_gpio* %165)
  %167 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %168 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 4
  %169 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %170 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @IS_ERR(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %147
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = call i32 @dev_err(%struct.TYPE_17__* %176, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %178 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %179 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @PTR_ERR(i32 %180)
  store i32 %181, i32* %2, align 4
  br label %323

182:                                              ; preds = %147
  %183 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %184 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %183, i32 0, i32 2
  %185 = bitcast %struct.TYPE_16__* %184 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %185, i8* align 8 bitcast (%struct.TYPE_16__* @pm8xxx_gpio_template to i8*), i64 32, i1 false)
  %186 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %187 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  store i32 -1, i32* %188, align 8
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %192 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 5
  store %struct.TYPE_17__* %190, %struct.TYPE_17__** %193, align 8
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %199 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 4
  store i32 %197, i32* %200, align 4
  %201 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %202 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  store i32 2, i32* %203, align 4
  %204 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %205 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %204, i32 0, i32 3
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  %207 = call i32 @dev_name(%struct.TYPE_17__* %206)
  %208 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %209 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 3
  store i32 %207, i32* %210, align 8
  %211 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %212 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %215 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 2
  store i64 %213, i64* %216, align 8
  %217 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %218 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %217, i32 0, i32 3
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call %struct.device_node* @of_irq_find_parent(i32 %221)
  store %struct.device_node* %222, %struct.device_node** %6, align 8
  %223 = load %struct.device_node*, %struct.device_node** %6, align 8
  %224 = icmp ne %struct.device_node* %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %182
  %226 = load i32, i32* @ENXIO, align 4
  %227 = sub nsw i32 0, %226
  store i32 %227, i32* %2, align 4
  br label %323

228:                                              ; preds = %182
  %229 = load %struct.device_node*, %struct.device_node** %6, align 8
  %230 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %229)
  store %struct.irq_domain* %230, %struct.irq_domain** %5, align 8
  %231 = load %struct.device_node*, %struct.device_node** %6, align 8
  %232 = call i32 @of_node_put(%struct.device_node* %231)
  %233 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %234 = icmp ne %struct.irq_domain* %233, null
  br i1 %234, label %238, label %235

235:                                              ; preds = %228
  %236 = load i32, i32* @ENXIO, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %2, align 4
  br label %323

238:                                              ; preds = %228
  %239 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %240 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %239, i32 0, i32 3
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @of_node_to_fwnode(i32 %243)
  %245 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %246 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 8
  %247 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %248 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %249 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %253 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %256 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %255, i32 0, i32 2
  %257 = call i32 @irq_domain_create_hierarchy(%struct.irq_domain* %247, i32 0, i64 %251, i32 %254, i32* @pm8xxx_domain_ops, %struct.TYPE_16__* %256)
  %258 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %259 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 8
  %260 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %261 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %238
  %265 = load i32, i32* @ENODEV, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %2, align 4
  br label %323

267:                                              ; preds = %238
  %268 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %269 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %268, i32 0, i32 2
  %270 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %271 = call i32 @gpiochip_add_data(%struct.TYPE_16__* %269, %struct.pm8xxx_gpio* %270)
  store i32 %271, i32* %9, align 4
  %272 = load i32, i32* %9, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %267
  %275 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %276 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %275, i32 0, i32 0
  %277 = call i32 @dev_err(%struct.TYPE_17__* %276, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %317

278:                                              ; preds = %267
  %279 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %280 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %279, i32 0, i32 3
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @of_property_read_bool(i32 %283, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %306, label %286

286:                                              ; preds = %278
  %287 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %288 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %287, i32 0, i32 2
  %289 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %290 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %289, i32 0, i32 3
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %290, align 8
  %292 = call i32 @dev_name(%struct.TYPE_17__* %291)
  %293 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %294 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @gpiochip_add_pin_range(%struct.TYPE_16__* %288, i32 %292, i32 0, i32 0, i64 %296)
  store i32 %297, i32* %9, align 4
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %286
  %301 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %302 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %301, i32 0, i32 3
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %302, align 8
  %304 = call i32 @dev_err(%struct.TYPE_17__* %303, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %313

305:                                              ; preds = %286
  br label %306

306:                                              ; preds = %305, %278
  %307 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %308 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %309 = call i32 @platform_set_drvdata(%struct.platform_device* %307, %struct.pm8xxx_gpio* %308)
  %310 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %311 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %310, i32 0, i32 0
  %312 = call i32 @dev_dbg(%struct.TYPE_17__* %311, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %323

313:                                              ; preds = %300
  %314 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %315 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %314, i32 0, i32 2
  %316 = call i32 @gpiochip_remove(%struct.TYPE_16__* %315)
  br label %317

317:                                              ; preds = %313, %274
  %318 = load %struct.pm8xxx_gpio*, %struct.pm8xxx_gpio** %8, align 8
  %319 = getelementptr inbounds %struct.pm8xxx_gpio, %struct.pm8xxx_gpio* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @irq_domain_remove(i32 %320)
  %322 = load i32, i32* %9, align 4
  store i32 %322, i32* %2, align 4
  br label %323

323:                                              ; preds = %317, %306, %264, %235, %225, %174, %116, %83, %68, %41, %17
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local %struct.pm8xxx_gpio* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @device_get_match_data(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @devm_kcalloc(%struct.TYPE_17__*, i64, i32, i32) #1

declare dso_local i32 @SSBI_REG_ADDR_GPIO(i32) #1

declare dso_local i32 @pm8xxx_pin_populate(%struct.pm8xxx_gpio*, %struct.pm8xxx_pin_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_17__*, %struct.TYPE_15__*, %struct.pm8xxx_gpio*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_17__*) #1

declare dso_local %struct.device_node* @of_irq_find_parent(i32) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_node_to_fwnode(i32) #1

declare dso_local i32 @irq_domain_create_hierarchy(%struct.irq_domain*, i32, i64, i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_16__*, %struct.pm8xxx_gpio*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_16__*, i32, i32, i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm8xxx_gpio*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_16__*) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
