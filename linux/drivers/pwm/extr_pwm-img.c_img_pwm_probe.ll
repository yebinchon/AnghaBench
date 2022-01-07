; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-img.c_img_pwm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-img.c_img_pwm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.resource = type { i32 }
%struct.img_pwm_chip = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_16__*, i8*, i8*, i8*, i8*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32, i32, i32*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32 }
%struct.of_device_id = type { %struct.TYPE_16__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@img_pwm_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"img,cr-periph\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get system clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get pwm clock\0A\00", align 1
@IMG_PWM_PM_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"pwm clock has no frequency\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@MIN_TMBASE_STEPS = common dso_local global i32 0, align 4
@img_pwm_ops = common dso_local global i32 0, align 4
@IMG_PWM_NPWM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"pwmchip_add failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @img_pwm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_pwm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.img_pwm_chip*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.img_pwm_chip* @devm_kzalloc(%struct.TYPE_18__* %11, i32 80, i32 %12)
  store %struct.img_pwm_chip* %13, %struct.img_pwm_chip** %8, align 8
  %14 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %15 = icmp ne %struct.img_pwm_chip* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %223

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %23 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %22, i32 0, i32 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %7, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = call i8* @devm_ioremap_resource(%struct.TYPE_18__* %28, %struct.resource* %29)
  %31 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %32 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %34 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %33, i32 0, i32 7
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %19
  %39 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %40 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %39, i32 0, i32 7
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %2, align 4
  br label %223

43:                                               ; preds = %19
  %44 = load i32, i32* @img_pwm_of_match, align 4
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call %struct.of_device_id* @of_match_device(i32 %44, %struct.TYPE_18__* %46)
  store %struct.of_device_id* %47, %struct.of_device_id** %9, align 8
  %48 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %49 = icmp ne %struct.of_device_id* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %223

53:                                               ; preds = %43
  %54 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %55 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %58 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %57, i32 0, i32 3
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @syscon_regmap_lookup_by_phandle(i32 %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %65 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %67 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %66, i32 0, i32 6
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %53
  %72 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %73 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %72, i32 0, i32 6
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %2, align 4
  br label %223

76:                                               ; preds = %53
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i8* @devm_clk_get(%struct.TYPE_18__* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %81 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %83 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %82, i32 0, i32 5
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @IS_ERR(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %76
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %92 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %91, i32 0, i32 5
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %2, align 4
  br label %223

95:                                               ; preds = %76
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i8* @devm_clk_get(%struct.TYPE_18__* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %100 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %102 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %101, i32 0, i32 4
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @IS_ERR(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %95
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %110 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %111 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %2, align 4
  br label %223

114:                                              ; preds = %95
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* @IMG_PWM_PM_TIMEOUT, align 4
  %118 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__* %116, i32 %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__* %120)
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %123)
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @pm_runtime_enabled(%struct.TYPE_18__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %114
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @img_pwm_runtime_resume(%struct.TYPE_18__* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %215

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %114
  %138 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %139 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %138, i32 0, i32 4
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @clk_get_rate(i8* %140)
  store i64 %141, i64* %6, align 8
  %142 = load i64, i64* %6, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %137
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %146, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %205

150:                                              ; preds = %137
  %151 = load i64, i64* @NSEC_PER_SEC, align 8
  %152 = trunc i64 %151 to i32
  %153 = mul nsw i32 %152, 512
  %154 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %155 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %154, i32 0, i32 3
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %153, %158
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = load i64, i64* %6, align 8
  %162 = call i32 @do_div(i32 %160, i64 %161)
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %165 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i64, i64* @NSEC_PER_SEC, align 8
  %167 = trunc i64 %166 to i32
  %168 = load i32, i32* @MIN_TMBASE_STEPS, align 4
  %169 = mul nsw i32 %167, %168
  store i32 %169, i32* %5, align 4
  %170 = load i32, i32* %5, align 4
  %171 = load i64, i64* %6, align 8
  %172 = call i32 @do_div(i32 %170, i64 %171)
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %175 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %179 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 3
  store %struct.TYPE_18__* %177, %struct.TYPE_18__** %180, align 8
  %181 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %182 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 2
  store i32* @img_pwm_ops, i32** %183, align 8
  %184 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %185 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  store i32 -1, i32* %186, align 8
  %187 = load i32, i32* @IMG_PWM_NPWM, align 4
  %188 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %189 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 1
  store i32 %187, i32* %190, align 4
  %191 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %192 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %191, i32 0, i32 2
  %193 = call i32 @pwmchip_add(%struct.TYPE_17__* %192)
  store i32 %193, i32* %4, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %150
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = load i32, i32* %4, align 4
  %200 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %198, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %199)
  br label %205

201:                                              ; preds = %150
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %8, align 8
  %204 = call i32 @platform_set_drvdata(%struct.platform_device* %202, %struct.img_pwm_chip* %203)
  store i32 0, i32* %2, align 4
  br label %223

205:                                              ; preds = %196, %144
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 @pm_runtime_enabled(%struct.TYPE_18__* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %205
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %211, i32 0, i32 0
  %213 = call i32 @img_pwm_runtime_suspend(%struct.TYPE_18__* %212)
  br label %214

214:                                              ; preds = %210, %205
  br label %215

215:                                              ; preds = %214, %135
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = call i32 @pm_runtime_disable(%struct.TYPE_18__* %217)
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = call i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_18__* %220)
  %222 = load i32, i32* %4, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %215, %201, %106, %87, %71, %50, %38, %16
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.img_pwm_chip* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_18__*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.TYPE_18__*) #1

declare dso_local i32 @img_pwm_runtime_resume(%struct.TYPE_18__*) #1

declare dso_local i64 @clk_get_rate(i8*) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @pwmchip_add(%struct.TYPE_17__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.img_pwm_chip*) #1

declare dso_local i32 @img_pwm_runtime_suspend(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
