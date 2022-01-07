; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_qcom_llcc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_qcom_llcc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32*, i32, i64, i32, %struct.llcc_slice_config*, i8*, %struct.platform_device*, %struct.platform_device* }
%struct.llcc_slice_config = type { i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@drv_data = common dso_local global %struct.TYPE_6__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"llcc_base\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"llcc_broadcast_base\00", align 1
@LLCC_COMMON_STATUS0 = common dso_local global i32 0, align 4
@LLCC_LB_CNT_MASK = common dso_local global i32 0, align 4
@LLCC_LB_CNT_SHIFT = common dso_local global i32 0, align 4
@BANK_OFFSET_STRIDE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"qcom_llcc_edac\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to register llcc edac driver\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_llcc_probe(%struct.platform_device* %0, %struct.llcc_slice_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.llcc_slice_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.llcc_slice_config* %1, %struct.llcc_slice_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.TYPE_6__* @devm_kzalloc(%struct.device* %15, i32 80, i32 %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** @drv_data, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  br label %192

23:                                               ; preds = %3
  %24 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %25 = call i8* @qcom_llcc_init_mmio(%struct.platform_device* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = bitcast i8* %25 to %struct.platform_device*
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 8
  store %struct.platform_device* %26, %struct.platform_device** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 8
  %31 = load %struct.platform_device*, %struct.platform_device** %30, align 8
  %32 = call i64 @IS_ERR(%struct.platform_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 8
  %37 = load %struct.platform_device*, %struct.platform_device** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.platform_device* %37)
  store i32 %38, i32* %10, align 4
  br label %192

39:                                               ; preds = %23
  %40 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %41 = call i8* @qcom_llcc_init_mmio(%struct.platform_device* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %42 = bitcast i8* %41 to %struct.platform_device*
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 9
  store %struct.platform_device* %42, %struct.platform_device** %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 9
  %47 = load %struct.platform_device*, %struct.platform_device** %46, align 8
  %48 = call i64 @IS_ERR(%struct.platform_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 9
  %53 = load %struct.platform_device*, %struct.platform_device** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.platform_device* %53)
  store i32 %54, i32* %10, align 4
  br label %192

55:                                               ; preds = %39
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 8
  %58 = load %struct.platform_device*, %struct.platform_device** %57, align 8
  %59 = load i32, i32* @LLCC_COMMON_STATUS0, align 4
  %60 = call i32 @regmap_read(%struct.platform_device* %58, i32 %59, i32* %8)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %192

64:                                               ; preds = %55
  %65 = load i32, i32* @LLCC_LB_CNT_MASK, align 4
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @LLCC_LB_CNT_SHIFT, align 4
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %99, %64
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %79, i64 %81
  %83 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %90, i64 %92
  %94 = getelementptr inbounds %struct.llcc_slice_config, %struct.llcc_slice_config* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %89, %78
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %74

102:                                              ; preds = %74
  %103 = load %struct.device*, %struct.device** %9, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @devm_kcalloc(%struct.device* %103, i32 %104, i32 4, i32 %105)
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i32* %107, i32** %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %102
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %10, align 4
  br label %192

117:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %132, %117
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %118
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @BANK_OFFSET_STRIDE, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %122
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %118

135:                                              ; preds = %118
  %136 = load %struct.device*, %struct.device** %9, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @BITS_TO_LONGS(i64 %139)
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i8* @devm_kcalloc(%struct.device* %136, i32 %140, i32 8, i32 %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 7
  store i8* %142, i8** %144, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 7
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %135
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %10, align 4
  br label %192

152:                                              ; preds = %135
  %153 = load %struct.llcc_slice_config*, %struct.llcc_slice_config** %6, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 6
  store %struct.llcc_slice_config* %153, %struct.llcc_slice_config** %155, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 5
  %161 = call i32 @mutex_init(i32* %160)
  %162 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %164 = call i32 @platform_set_drvdata(%struct.platform_device* %162, %struct.TYPE_6__* %163)
  %165 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %166 = call i32 @qcom_llcc_cfg_program(%struct.platform_device* %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %152
  br label %192

170:                                              ; preds = %152
  %171 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %172 = call i64 @platform_get_irq(%struct.platform_device* %171, i32 0)
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 4
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = icmp sge i64 %177, 0
  br i1 %178, label %179, label %191

179:                                              ; preds = %170
  %180 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drv_data, align 8
  %183 = call %struct.platform_device* @platform_device_register_data(%struct.device* %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 -1, %struct.TYPE_6__* %182, i32 80)
  store %struct.platform_device* %183, %struct.platform_device** %12, align 8
  %184 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %185 = call i64 @IS_ERR(%struct.platform_device* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load %struct.device*, %struct.device** %9, align 8
  %189 = call i32 @dev_err(%struct.device* %188, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %179
  br label %191

191:                                              ; preds = %190, %170
  store i32 0, i32* %4, align 4
  br label %197

192:                                              ; preds = %169, %149, %114, %63, %50, %34, %20
  %193 = load i32, i32* @ENODEV, align 4
  %194 = sub nsw i32 0, %193
  %195 = call %struct.TYPE_6__* @ERR_PTR(i32 %194)
  store %struct.TYPE_6__* %195, %struct.TYPE_6__** @drv_data, align 8
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %192, %191
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local %struct.TYPE_6__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @qcom_llcc_init_mmio(%struct.platform_device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @regmap_read(%struct.platform_device*, i32, i32*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @qcom_llcc_cfg_program(%struct.platform_device*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.platform_device* @platform_device_register_data(%struct.device*, i8*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_6__* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
