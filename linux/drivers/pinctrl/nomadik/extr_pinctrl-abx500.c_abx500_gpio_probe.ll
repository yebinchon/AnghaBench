; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-abx500.c_abx500_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_17__ }
%struct.of_device_id = type { i64 }
%struct.abx500_pinctrl = type { %struct.TYPE_18__, %struct.TYPE_16__*, i32, i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, %struct.abx500_pinrange*, i32, i32, i32, i32 }
%struct.abx500_pinrange = type { i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"gpio dt node missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@abx500gpio_chip = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@abx500_gpio_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"gpio dt not matching\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Unsupported pinctrl sub driver (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid SOC data\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to add gpiochip: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"added gpiochip\0A\00", align 1
@abx500_pinctrl_desc = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"could not register abx500 pinctrl driver\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"registered pin controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"initialized abx500 pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @abx500_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abx500_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.abx500_pinctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.abx500_pinrange*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  store i32 -1, i32* %7, align 4
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %223

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.abx500_pinctrl* @devm_kzalloc(%struct.TYPE_17__* %25, i32 48, i32 %26)
  store %struct.abx500_pinctrl* %27, %struct.abx500_pinctrl** %6, align 8
  %28 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %29 = icmp ne %struct.abx500_pinctrl* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %223

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %37 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %36, i32 0, i32 6
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_get_drvdata(i32 %41)
  %43 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %44 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %46 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %45, i32 0, i32 0
  %47 = bitcast %struct.TYPE_18__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 bitcast (%struct.TYPE_18__* @abx500gpio_chip to i8*), i64 16, i1 false)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %51 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %52, align 8
  %53 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %54 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  store i32 -1, i32* %55, align 8
  %56 = load i32, i32* @abx500_gpio_match, align 4
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call %struct.of_device_id* @of_match_device(i32 %56, %struct.TYPE_17__* %58)
  store %struct.of_device_id* %59, %struct.of_device_id** %5, align 8
  %60 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %61 = icmp ne %struct.of_device_id* %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %33
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %223

68:                                               ; preds = %33
  %69 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %70 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  switch i32 %73, label %82 [
    i32 129, label %74
    i32 128, label %78
  ]

74:                                               ; preds = %68
  %75 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %76 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %75, i32 0, i32 1
  %77 = call i32 @abx500_pinctrl_ab8500_init(%struct.TYPE_16__** %76)
  br label %89

78:                                               ; preds = %68
  %79 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %80 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %79, i32 0, i32 1
  %81 = call i32 @abx500_pinctrl_ab8505_init(%struct.TYPE_16__** %80)
  br label %89

82:                                               ; preds = %68
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %223

89:                                               ; preds = %78, %74
  %90 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %91 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %90, i32 0, i32 1
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = icmp ne %struct.TYPE_16__* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %223

100:                                              ; preds = %89
  %101 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %102 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %101, i32 0, i32 1
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = call i32 @abx500_get_gpio_num(%struct.TYPE_16__* %103)
  %105 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %106 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %109 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %108, i32 0, i32 1
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %114 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %116 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %115, i32 0, i32 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %121 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %123 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %122, i32 0, i32 0
  %124 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %125 = call i32 @gpiochip_add_data(%struct.TYPE_18__* %123, %struct.abx500_pinctrl* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %100
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %2, align 4
  br label %223

134:                                              ; preds = %100
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @dev_info(%struct.TYPE_17__* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %138 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %139 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %138, i32 0, i32 1
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @abx500_pinctrl_desc, i32 0, i32 1), align 4
  %143 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %144 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %143, i32 0, i32 1
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @abx500_pinctrl_desc, i32 0, i32 0), align 4
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %151 = call i32 @devm_pinctrl_register(%struct.TYPE_17__* %149, %struct.TYPE_19__* @abx500_pinctrl_desc, %struct.abx500_pinctrl* %150)
  %152 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %153 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %155 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @IS_ERR(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %134
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i32 (%struct.TYPE_17__*, i8*, ...) @dev_err(%struct.TYPE_17__* %161, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %163 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %164 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @PTR_ERR(i32 %165)
  store i32 %166, i32* %8, align 4
  br label %218

167:                                              ; preds = %134
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = call i32 @dev_info(%struct.TYPE_17__* %169, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %208, %167
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %174 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %173, i32 0, i32 1
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %172, %177
  br i1 %178, label %179, label %211

179:                                              ; preds = %171
  %180 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %181 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %180, i32 0, i32 1
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load %struct.abx500_pinrange*, %struct.abx500_pinrange** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.abx500_pinrange, %struct.abx500_pinrange* %184, i64 %186
  store %struct.abx500_pinrange* %187, %struct.abx500_pinrange** %10, align 8
  %188 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %189 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %188, i32 0, i32 0
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = call i32 @dev_name(%struct.TYPE_17__* %191)
  %193 = load %struct.abx500_pinrange*, %struct.abx500_pinrange** %10, align 8
  %194 = getelementptr inbounds %struct.abx500_pinrange, %struct.abx500_pinrange* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %195, 1
  %197 = load %struct.abx500_pinrange*, %struct.abx500_pinrange** %10, align 8
  %198 = getelementptr inbounds %struct.abx500_pinrange, %struct.abx500_pinrange* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.abx500_pinrange*, %struct.abx500_pinrange** %10, align 8
  %201 = getelementptr inbounds %struct.abx500_pinrange, %struct.abx500_pinrange* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @gpiochip_add_pin_range(%struct.TYPE_18__* %189, i32 %192, i64 %196, i64 %199, i32 %202)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %179
  br label %218

207:                                              ; preds = %179
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %171

211:                                              ; preds = %171
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %214 = call i32 @platform_set_drvdata(%struct.platform_device* %212, %struct.abx500_pinctrl* %213)
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 @dev_info(%struct.TYPE_17__* %216, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %223

218:                                              ; preds = %206, %159
  %219 = load %struct.abx500_pinctrl*, %struct.abx500_pinctrl** %6, align 8
  %220 = getelementptr inbounds %struct.abx500_pinctrl, %struct.abx500_pinctrl* %219, i32 0, i32 0
  %221 = call i32 @gpiochip_remove(%struct.TYPE_18__* %220)
  %222 = load i32, i32* %8, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %218, %211, %128, %94, %82, %62, %30, %17
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @dev_err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local %struct.abx500_pinctrl* @devm_kzalloc(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @abx500_pinctrl_ab8500_init(%struct.TYPE_16__**) #1

declare dso_local i32 @abx500_pinctrl_ab8505_init(%struct.TYPE_16__**) #1

declare dso_local i32 @abx500_get_gpio_num(%struct.TYPE_16__*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_18__*, %struct.abx500_pinctrl*) #1

declare dso_local i32 @dev_info(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_17__*, %struct.TYPE_19__*, %struct.abx500_pinctrl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_18__*, i32, i64, i64, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_17__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.abx500_pinctrl*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
