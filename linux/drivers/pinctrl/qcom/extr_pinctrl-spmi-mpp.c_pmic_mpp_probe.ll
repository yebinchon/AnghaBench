; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-spmi-mpp.c_pmic_mpp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i8*, %struct.device* }
%struct.device = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.pinctrl_pin_desc = type { i32, i32, %struct.pmic_mpp_pad* }
%struct.pmic_mpp_pad = type { i64, i64 }
%struct.pinctrl_desc = type { i32, i32, i32, i32*, %struct.pinctrl_pin_desc*, i8*, i32, i32*, i32*, i32* }
%struct.pmic_mpp_state = type { %struct.TYPE_5__, %struct.device*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"missing base address\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pmic_mpp_groups = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pmic_mpp_pinctrl_ops = common dso_local global i32 0, align 4
@pmic_mpp_pinmux_ops = common dso_local global i32 0, align 4
@pmic_mpp_pinconf_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@pmic_mpp_bindings = common dso_local global i32* null, align 8
@PMIC_MPP_ADDRESS_RANGE = common dso_local global i32 0, align 4
@pmic_mpp_gpio_template = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"can't add gpio chip\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to add pin range\0A\00", align 1
@pmic_conf_items = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pmic_mpp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_mpp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pinctrl_pin_desc*, align 8
  %6 = alloca %struct.pinctrl_desc*, align 8
  %7 = alloca %struct.pmic_mpp_pad*, align 8
  %8 = alloca %struct.pmic_mpp_pad*, align 8
  %9 = alloca %struct.pmic_mpp_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @of_property_read_u32(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %13)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %2, align 4
  br label %258

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @platform_irq_count(%struct.platform_device* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %258

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %2, align 4
  br label %258

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** @pmic_mpp_groups, align 8
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = icmp sgt i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @devm_kzalloc(%struct.device* %46, i32 48, i32 %47)
  %49 = bitcast i8* %48 to %struct.pmic_mpp_state*
  store %struct.pmic_mpp_state* %49, %struct.pmic_mpp_state** %9, align 8
  %50 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %51 = icmp ne %struct.pmic_mpp_state* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %258

55:                                               ; preds = %39
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %58 = call i32 @platform_set_drvdata(%struct.platform_device* %56, %struct.pmic_mpp_state* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %62 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %61, i32 0, i32 1
  store %struct.device* %60, %struct.device** %62, align 8
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = getelementptr inbounds %struct.device, %struct.device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_get_regmap(i32 %65, i32* null)
  %67 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %68 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @devm_kcalloc(%struct.device* %69, i32 %70, i32 16, i32 %71)
  %73 = bitcast i8* %72 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %73, %struct.pinctrl_pin_desc** %5, align 8
  %74 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %75 = icmp ne %struct.pinctrl_pin_desc* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %55
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %258

79:                                               ; preds = %55
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i8* @devm_kcalloc(%struct.device* %80, i32 %81, i32 16, i32 %82)
  %84 = bitcast i8* %83 to %struct.pmic_mpp_pad*
  store %struct.pmic_mpp_pad* %84, %struct.pmic_mpp_pad** %8, align 8
  %85 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %86 = icmp ne %struct.pmic_mpp_pad* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %258

90:                                               ; preds = %79
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @devm_kzalloc(%struct.device* %91, i32 72, i32 %92)
  %94 = bitcast i8* %93 to %struct.pinctrl_desc*
  store %struct.pinctrl_desc* %94, %struct.pinctrl_desc** %6, align 8
  %95 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %96 = icmp ne %struct.pinctrl_desc* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %258

100:                                              ; preds = %90
  %101 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %102 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %101, i32 0, i32 9
  store i32* @pmic_mpp_pinctrl_ops, i32** %102, align 8
  %103 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %104 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %103, i32 0, i32 8
  store i32* @pmic_mpp_pinmux_ops, i32** %104, align 8
  %105 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %106 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %105, i32 0, i32 7
  store i32* @pmic_mpp_pinconf_ops, i32** %106, align 8
  %107 = load i32, i32* @THIS_MODULE, align 4
  %108 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %109 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 8
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i8* @dev_name(%struct.device* %110)
  %112 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %113 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %115 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %116 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %115, i32 0, i32 4
  store %struct.pinctrl_pin_desc* %114, %struct.pinctrl_pin_desc** %116, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %119 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32*, i32** @pmic_mpp_bindings, align 8
  %121 = call i32 @ARRAY_SIZE(i32* %120)
  %122 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %123 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32*, i32** @pmic_mpp_bindings, align 8
  %125 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %126 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %125, i32 0, i32 3
  store i32* %124, i32** %126, align 8
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %180, %100
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %185

131:                                              ; preds = %127
  %132 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %8, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %132, i64 %134
  store %struct.pmic_mpp_pad* %135, %struct.pmic_mpp_pad** %7, align 8
  %136 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %7, align 8
  %137 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %138 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %137, i32 0, i32 2
  store %struct.pmic_mpp_pad* %136, %struct.pmic_mpp_pad** %138, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %141 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32*, i32** @pmic_mpp_groups, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %148 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i64 @platform_get_irq(%struct.platform_device* %149, i32 %150)
  %152 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %7, align 8
  %153 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %7, align 8
  %155 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %131
  %159 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %7, align 8
  %160 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %2, align 4
  br label %258

163:                                              ; preds = %131
  %164 = load i64, i64* %13, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @PMIC_MPP_ADDRESS_RANGE, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %164, %168
  %170 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %7, align 8
  %171 = getelementptr inbounds %struct.pmic_mpp_pad, %struct.pmic_mpp_pad* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %173 = load %struct.pmic_mpp_pad*, %struct.pmic_mpp_pad** %7, align 8
  %174 = call i32 @pmic_mpp_populate(%struct.pmic_mpp_state* %172, %struct.pmic_mpp_pad* %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %163
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %2, align 4
  br label %258

179:                                              ; preds = %163
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  %183 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %184 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %183, i32 1
  store %struct.pinctrl_pin_desc* %184, %struct.pinctrl_pin_desc** %5, align 8
  br label %127

185:                                              ; preds = %127
  %186 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %187 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %186, i32 0, i32 0
  %188 = bitcast %struct.TYPE_5__* %187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %188, i8* align 8 bitcast (%struct.TYPE_5__* @pmic_mpp_gpio_template to i8*), i64 32, i1 false)
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %191 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 5
  store %struct.device* %189, %struct.device** %192, align 8
  %193 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %194 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  store i32 -1, i32* %195, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %198 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  store i32 %196, i32* %199, align 4
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = call i8* @dev_name(%struct.device* %200)
  %202 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %203 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 4
  store i8* %201, i8** %204, align 8
  %205 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %206 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  store i32 2, i32* %207, align 8
  %208 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %209 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  store i32 0, i32* %210, align 4
  %211 = load %struct.device*, %struct.device** %4, align 8
  %212 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %213 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %214 = call i32 @devm_pinctrl_register(%struct.device* %211, %struct.pinctrl_desc* %212, %struct.pmic_mpp_state* %213)
  %215 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %216 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %218 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @IS_ERR(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %185
  %223 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %224 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @PTR_ERR(i32 %225)
  store i32 %226, i32* %2, align 4
  br label %258

227:                                              ; preds = %185
  %228 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %229 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %228, i32 0, i32 0
  %230 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %231 = call i32 @gpiochip_add_data(%struct.TYPE_5__* %229, %struct.pmic_mpp_state* %230)
  store i32 %231, i32* %10, align 4
  %232 = load i32, i32* %10, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %227
  %235 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %236 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %235, i32 0, i32 1
  %237 = load %struct.device*, %struct.device** %236, align 8
  %238 = call i32 @dev_err(%struct.device* %237, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %239 = load i32, i32* %10, align 4
  store i32 %239, i32* %2, align 4
  br label %258

240:                                              ; preds = %227
  %241 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %242 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %241, i32 0, i32 0
  %243 = load %struct.device*, %struct.device** %4, align 8
  %244 = call i8* @dev_name(%struct.device* %243)
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @gpiochip_add_pin_range(%struct.TYPE_5__* %242, i8* %244, i32 0, i32 0, i32 %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %240
  %250 = load %struct.device*, %struct.device** %4, align 8
  %251 = call i32 @dev_err(%struct.device* %250, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %253

252:                                              ; preds = %240
  store i32 0, i32* %2, align 4
  br label %258

253:                                              ; preds = %249
  %254 = load %struct.pmic_mpp_state*, %struct.pmic_mpp_state** %9, align 8
  %255 = getelementptr inbounds %struct.pmic_mpp_state, %struct.pmic_mpp_state* %254, i32 0, i32 0
  %256 = call i32 @gpiochip_remove(%struct.TYPE_5__* %255)
  %257 = load i32, i32* %10, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %253, %252, %234, %222, %177, %158, %97, %87, %76, %52, %37, %31, %22
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pmic_mpp_state*) #1

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @pmic_mpp_populate(%struct.pmic_mpp_state*, %struct.pmic_mpp_pad*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_pinctrl_register(%struct.device*, %struct.pinctrl_desc*, %struct.pmic_mpp_state*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_5__*, %struct.pmic_mpp_state*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
