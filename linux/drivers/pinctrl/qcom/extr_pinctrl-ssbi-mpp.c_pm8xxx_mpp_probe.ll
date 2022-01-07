; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_mpp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-ssbi-mpp.c_pm8xxx_mpp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i32, %struct.pm8xxx_pin_data*, i32 }
%struct.pm8xxx_pin_data = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_15__ }
%struct.pm8xxx_mpp = type { i32, %struct.TYPE_14__, %struct.TYPE_15__*, i32, %struct.TYPE_13__, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"parent regmap unavailable\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@pm8xxx_pinctrl_desc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@pm8xxx_groups = common dso_local global i32* null, align 8
@pm8xxx_mpp_bindings = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"couldn't register pm8xxx mpp driver\0A\00", align 1
@pm8xxx_mpp_template = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"failed register gpiochip\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to add pin range\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Qualcomm pm8xxx mpp driver probed\0A\00", align 1
@pm8xxx_conf_items = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pm8xxx_mpp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8xxx_mpp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pm8xxx_pin_data*, align 8
  %5 = alloca %struct.pinctrl_pin_desc*, align 8
  %6 = alloca %struct.pm8xxx_mpp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pm8xxx_mpp* @devm_kzalloc(%struct.TYPE_15__* %11, i32 88, i32 %12)
  store %struct.pm8xxx_mpp* %13, %struct.pm8xxx_mpp** %6, align 8
  %14 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %15 = icmp ne %struct.pm8xxx_mpp* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %287

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %23 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %22, i32 0, i32 2
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @platform_irq_count(%struct.platform_device* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %287

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %2, align 4
  br label %287

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %39 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_get_regmap(i32 %43, i32* null)
  %45 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %46 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %48 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %36
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_err(%struct.TYPE_15__* %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %287

57:                                               ; preds = %36
  %58 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %59 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %58, i32 0, i32 4
  %60 = bitcast %struct.TYPE_13__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 bitcast (%struct.TYPE_13__* @pm8xxx_pinctrl_desc to i8*), i64 24, i1 false)
  %61 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %62 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %65 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %70 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @devm_kcalloc(%struct.TYPE_15__* %68, i32 %72, i32 24, i32 %73)
  %75 = bitcast i8* %74 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %75, %struct.pinctrl_pin_desc** %5, align 8
  %76 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %77 = icmp ne %struct.pinctrl_pin_desc* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %57
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %287

81:                                               ; preds = %57
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %85 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call i8* @devm_kcalloc(%struct.TYPE_15__* %83, i32 %87, i32 16, i32 %88)
  %90 = bitcast i8* %89 to %struct.pm8xxx_pin_data*
  store %struct.pm8xxx_pin_data* %90, %struct.pm8xxx_pin_data** %4, align 8
  %91 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %92 = icmp ne %struct.pm8xxx_pin_data* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %81
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %287

96:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %172, %96
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %100 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %175

104:                                              ; preds = %97
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @SSBI_REG_ADDR_MPP(i32 %105)
  %107 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %107, i64 %109
  %111 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %110, i32 0, i32 1
  store i32 %106, i32* %111, align 8
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i64 @platform_get_irq(%struct.platform_device* %112, i32 %113)
  %115 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %115, i64 %117
  %119 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %118, i32 0, i32 0
  store i64 %114, i64* %119, align 8
  %120 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %120, i64 %122
  %124 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %104
  %128 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %128, i64 %130
  %132 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %2, align 4
  br label %287

135:                                              ; preds = %104
  %136 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %137 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %137, i64 %139
  %141 = call i32 @pm8xxx_pin_populate(%struct.pm8xxx_mpp* %136, %struct.pm8xxx_pin_data* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %287

146:                                              ; preds = %135
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %148, i64 %150
  %152 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %151, i32 0, i32 0
  store i32 %147, i32* %152, align 8
  %153 = load i32*, i32** @pm8xxx_groups, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %158, i64 %160
  %162 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %161, i32 0, i32 2
  store i32 %157, i32* %162, align 8
  %163 = load %struct.pm8xxx_pin_data*, %struct.pm8xxx_pin_data** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.pm8xxx_pin_data, %struct.pm8xxx_pin_data* %163, i64 %165
  %167 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %167, i64 %169
  %171 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %170, i32 0, i32 1
  store %struct.pm8xxx_pin_data* %166, %struct.pm8xxx_pin_data** %171, align 8
  br label %172

172:                                              ; preds = %146
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %97

175:                                              ; preds = %97
  %176 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %177 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %178 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 4
  store %struct.pinctrl_pin_desc* %176, %struct.pinctrl_pin_desc** %179, align 8
  %180 = load i32, i32* @pm8xxx_mpp_bindings, align 4
  %181 = call i32 @ARRAY_SIZE(i32 %180)
  %182 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %183 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 3
  store i32 %181, i32* %184, align 4
  %185 = load i32, i32* @pm8xxx_mpp_bindings, align 4
  %186 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %187 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  store i32 %185, i32* %188, align 8
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %192 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %191, i32 0, i32 4
  %193 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %194 = call i32 @devm_pinctrl_register(%struct.TYPE_15__* %190, %struct.TYPE_13__* %192, %struct.pm8xxx_mpp* %193)
  %195 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %196 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 8
  %197 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %198 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @IS_ERR(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %175
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = call i32 @dev_err(%struct.TYPE_15__* %204, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %206 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %207 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @PTR_ERR(i32 %208)
  store i32 %209, i32* %2, align 4
  br label %287

210:                                              ; preds = %175
  %211 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %212 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %211, i32 0, i32 1
  %213 = bitcast %struct.TYPE_14__* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %213, i8* align 8 bitcast (%struct.TYPE_14__* @pm8xxx_mpp_template to i8*), i64 32, i1 false)
  %214 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %215 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  store i32 -1, i32* %216, align 8
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %220 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 5
  store %struct.TYPE_15__* %218, %struct.TYPE_15__** %221, align 8
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %227 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 4
  store i32 %225, i32* %228, align 8
  %229 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %230 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  store i32 2, i32* %231, align 4
  %232 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %233 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %232, i32 0, i32 2
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = call i32 @dev_name(%struct.TYPE_15__* %234)
  %236 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %237 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 3
  store i32 %235, i32* %238, align 4
  %239 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %240 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %243 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 2
  store i32 %241, i32* %244, align 8
  %245 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %246 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %245, i32 0, i32 1
  %247 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %248 = call i32 @gpiochip_add_data(%struct.TYPE_14__* %246, %struct.pm8xxx_mpp* %247)
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %7, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %210
  %252 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %253 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %252, i32 0, i32 0
  %254 = call i32 @dev_err(%struct.TYPE_15__* %253, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %255 = load i32, i32* %7, align 4
  store i32 %255, i32* %2, align 4
  br label %287

256:                                              ; preds = %210
  %257 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %258 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %257, i32 0, i32 1
  %259 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %260 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %259, i32 0, i32 2
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = call i32 @dev_name(%struct.TYPE_15__* %261)
  %263 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %264 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @gpiochip_add_pin_range(%struct.TYPE_14__* %258, i32 %262, i32 0, i32 0, i32 %266)
  store i32 %267, i32* %7, align 4
  %268 = load i32, i32* %7, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %256
  %271 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %272 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %271, i32 0, i32 2
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %272, align 8
  %274 = call i32 @dev_err(%struct.TYPE_15__* %273, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %282

275:                                              ; preds = %256
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %278 = call i32 @platform_set_drvdata(%struct.platform_device* %276, %struct.pm8xxx_mpp* %277)
  %279 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %280 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %279, i32 0, i32 0
  %281 = call i32 @dev_dbg(%struct.TYPE_15__* %280, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %287

282:                                              ; preds = %270
  %283 = load %struct.pm8xxx_mpp*, %struct.pm8xxx_mpp** %6, align 8
  %284 = getelementptr inbounds %struct.pm8xxx_mpp, %struct.pm8xxx_mpp* %283, i32 0, i32 1
  %285 = call i32 @gpiochip_remove(%struct.TYPE_14__* %284)
  %286 = load i32, i32* %7, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %282, %275, %251, %202, %144, %127, %93, %78, %51, %34, %28, %16
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.pm8xxx_mpp* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @devm_kcalloc(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @SSBI_REG_ADDR_MPP(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @pm8xxx_pin_populate(%struct.pm8xxx_mpp*, %struct.pm8xxx_pin_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_15__*, %struct.TYPE_13__*, %struct.pm8xxx_mpp*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_14__*, %struct.pm8xxx_mpp*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pm8xxx_mpp*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
