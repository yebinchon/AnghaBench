; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9062-regulator.c_da9062_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9062-regulator.c_da9062_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9062_regulator_info = type { %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.da9062 = type { i32, i32, i32 }
%struct.da9062_regulators = type { i32, i32, %struct.da9062_regulator* }
%struct.da9062_regulator = type { i8*, %struct.TYPE_10__, i8*, %struct.da9062_regulator_info*, i8*, i8*, i8*, %struct.da9062* }
%struct.regulator_config = type { i32, %struct.da9062_regulator*, i32 }

@DA9061_MAX_REGULATORS = common dso_local global i32 0, align 4
@local_da9061_regulator_info = common dso_local global %struct.da9062_regulator_info* null, align 8
@DA9062_MAX_REGULATORS = common dso_local global i32 0, align 4
@local_da9062_regulator_info = common dso_local global %struct.da9062_regulator_info* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Unrecognised chip type\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@regulator = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register %s regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"LDO_LIM\00", align 1
@da9062_ldo_lim_event = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to request LDO_LIM IRQ.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9062_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9062*, align 8
  %5 = alloca %struct.da9062_regulators*, align 8
  %6 = alloca %struct.da9062_regulator*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.da9062_regulator_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.da9062* @dev_get_drvdata(i32 %16)
  store %struct.da9062* %17, %struct.da9062** %4, align 8
  %18 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.da9062*, %struct.da9062** %4, align 8
  %20 = getelementptr inbounds %struct.da9062, %struct.da9062* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %28 [
    i32 129, label %22
    i32 128, label %25
  ]

22:                                               ; preds = %1
  %23 = load i32, i32* @DA9061_MAX_REGULATORS, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** @local_da9061_regulator_info, align 8
  store %struct.da9062_regulator_info* %24, %struct.da9062_regulator_info** %8, align 8
  br label %37

25:                                               ; preds = %1
  %26 = load i32, i32* @DA9062_MAX_REGULATORS, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** @local_da9062_regulator_info, align 8
  store %struct.da9062_regulator_info* %27, %struct.da9062_regulator_info** %8, align 8
  br label %37

28:                                               ; preds = %1
  %29 = load %struct.da9062*, %struct.da9062** %4, align 8
  %30 = getelementptr inbounds %struct.da9062, %struct.da9062* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_9__*
  %34 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %301

37:                                               ; preds = %25, %22
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %41 = load i32, i32* @regulator, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @struct_size(%struct.da9062_regulators* %40, i32 %41, i32 %42)
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.da9062_regulators* @devm_kzalloc(%struct.TYPE_9__* %39, i32 %43, i32 %44)
  store %struct.da9062_regulators* %45, %struct.da9062_regulators** %5, align 8
  %46 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %47 = icmp ne %struct.da9062_regulators* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %301

51:                                               ; preds = %37
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %54 = getelementptr inbounds %struct.da9062_regulators, %struct.da9062_regulators* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.da9062_regulators* %56)
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %267, %51
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %61 = getelementptr inbounds %struct.da9062_regulators, %struct.da9062_regulators* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %270

64:                                               ; preds = %58
  %65 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %66 = getelementptr inbounds %struct.da9062_regulators, %struct.da9062_regulators* %65, i32 0, i32 2
  %67 = load %struct.da9062_regulator*, %struct.da9062_regulator** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %67, i64 %69
  store %struct.da9062_regulator* %70, %struct.da9062_regulator** %6, align 8
  %71 = load %struct.da9062*, %struct.da9062** %4, align 8
  %72 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %73 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %72, i32 0, i32 7
  store %struct.da9062* %71, %struct.da9062** %73, align 8
  %74 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %74, i64 %76
  %78 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %79 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %78, i32 0, i32 3
  store %struct.da9062_regulator_info* %77, %struct.da9062_regulator_info** %79, align 8
  %80 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %81 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %80, i32 0, i32 1
  %82 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %83 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %82, i32 0, i32 3
  %84 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %83, align 8
  %85 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %84, i32 0, i32 4
  %86 = bitcast %struct.TYPE_10__* %81 to i8*
  %87 = bitcast %struct.TYPE_10__* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 12, i1 false)
  %88 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %89 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %90 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @THIS_MODULE, align 4
  %93 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %94 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %97 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %96, i32 0, i32 3
  %98 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %97, align 8
  %99 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %64
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.da9062*, %struct.da9062** %4, align 8
  %107 = getelementptr inbounds %struct.da9062, %struct.da9062* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %110 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %109, i32 0, i32 3
  %111 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %110, align 8
  %112 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @devm_regmap_field_alloc(%struct.TYPE_9__* %105, i32 %108, i64 %114)
  %116 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %117 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  %118 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %119 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %118, i32 0, i32 6
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @IS_ERR(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %103
  %124 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %125 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %124, i32 0, i32 6
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @PTR_ERR(i8* %126)
  store i32 %127, i32* %2, align 4
  br label %301

128:                                              ; preds = %103
  br label %129

129:                                              ; preds = %128, %64
  %130 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %131 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %130, i32 0, i32 3
  %132 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %131, align 8
  %133 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %163

137:                                              ; preds = %129
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load %struct.da9062*, %struct.da9062** %4, align 8
  %141 = getelementptr inbounds %struct.da9062, %struct.da9062* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %144 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %143, i32 0, i32 3
  %145 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %144, align 8
  %146 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @devm_regmap_field_alloc(%struct.TYPE_9__* %139, i32 %142, i64 %148)
  %150 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %151 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %150, i32 0, i32 5
  store i8* %149, i8** %151, align 8
  %152 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %153 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %152, i32 0, i32 5
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @IS_ERR(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %137
  %158 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %159 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %158, i32 0, i32 5
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @PTR_ERR(i8* %160)
  store i32 %161, i32* %2, align 4
  br label %301

162:                                              ; preds = %137
  br label %163

163:                                              ; preds = %162, %129
  %164 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %165 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %164, i32 0, i32 3
  %166 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %165, align 8
  %167 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %197

171:                                              ; preds = %163
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load %struct.da9062*, %struct.da9062** %4, align 8
  %175 = getelementptr inbounds %struct.da9062, %struct.da9062* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %178 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %177, i32 0, i32 3
  %179 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %178, align 8
  %180 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i8* @devm_regmap_field_alloc(%struct.TYPE_9__* %173, i32 %176, i64 %182)
  %184 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %185 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %184, i32 0, i32 4
  store i8* %183, i8** %185, align 8
  %186 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %187 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %186, i32 0, i32 4
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @IS_ERR(i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %171
  %192 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %193 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %192, i32 0, i32 4
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @PTR_ERR(i8* %194)
  store i32 %195, i32* %2, align 4
  br label %301

196:                                              ; preds = %171
  br label %197

197:                                              ; preds = %196, %163
  %198 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %199 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %198, i32 0, i32 3
  %200 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %199, align 8
  %201 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %231

205:                                              ; preds = %197
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = load %struct.da9062*, %struct.da9062** %4, align 8
  %209 = getelementptr inbounds %struct.da9062, %struct.da9062* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %212 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %211, i32 0, i32 3
  %213 = load %struct.da9062_regulator_info*, %struct.da9062_regulator_info** %212, align 8
  %214 = getelementptr inbounds %struct.da9062_regulator_info, %struct.da9062_regulator_info* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i8* @devm_regmap_field_alloc(%struct.TYPE_9__* %207, i32 %210, i64 %216)
  %218 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %219 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %218, i32 0, i32 2
  store i8* %217, i8** %219, align 8
  %220 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %221 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @IS_ERR(i8* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %205
  %226 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %227 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %226, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @PTR_ERR(i8* %228)
  store i32 %229, i32* %2, align 4
  br label %301

230:                                              ; preds = %205
  br label %231

231:                                              ; preds = %230, %197
  %232 = call i32 @memset(%struct.regulator_config* %7, i32 0, i32 24)
  %233 = load %struct.da9062*, %struct.da9062** %4, align 8
  %234 = getelementptr inbounds %struct.da9062, %struct.da9062* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i32 %235, i32* %236, align 8
  %237 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %238 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.da9062_regulator* %237, %struct.da9062_regulator** %238, align 8
  %239 = load %struct.da9062*, %struct.da9062** %4, align 8
  %240 = getelementptr inbounds %struct.da9062, %struct.da9062* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i32 %241, i32* %242, align 8
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 0
  %245 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %246 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %245, i32 0, i32 1
  %247 = call i8* @devm_regulator_register(%struct.TYPE_9__* %244, %struct.TYPE_10__* %246, %struct.regulator_config* %7)
  %248 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %249 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %248, i32 0, i32 0
  store i8* %247, i8** %249, align 8
  %250 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %251 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i64 @IS_ERR(i8* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %231
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %259 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %257, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %261)
  %263 = load %struct.da9062_regulator*, %struct.da9062_regulator** %6, align 8
  %264 = getelementptr inbounds %struct.da9062_regulator, %struct.da9062_regulator* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @PTR_ERR(i8* %265)
  store i32 %266, i32* %2, align 4
  br label %301

267:                                              ; preds = %231
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %10, align 4
  br label %58

270:                                              ; preds = %58
  %271 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %272 = call i32 @platform_get_irq_byname(%struct.platform_device* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = load i32, i32* %9, align 4
  store i32 %276, i32* %2, align 4
  br label %301

277:                                              ; preds = %270
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %280 = getelementptr inbounds %struct.da9062_regulators, %struct.da9062_regulators* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* @da9062_ldo_lim_event, align 4
  %285 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %286 = load i32, i32* @IRQF_ONESHOT, align 4
  %287 = or i32 %285, %286
  %288 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %289 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %282, i32 %283, i32* null, i32 %284, i32 %287, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.da9062_regulators* %288)
  store i32 %289, i32* %11, align 4
  %290 = load i32, i32* %11, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %277
  %293 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %294 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %293, i32 0, i32 0
  %295 = call i32 @dev_warn(%struct.TYPE_9__* %294, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %296 = load i32, i32* @ENXIO, align 4
  %297 = sub nsw i32 0, %296
  %298 = load %struct.da9062_regulators*, %struct.da9062_regulators** %5, align 8
  %299 = getelementptr inbounds %struct.da9062_regulators, %struct.da9062_regulators* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  br label %300

300:                                              ; preds = %292, %277
  store i32 0, i32* %2, align 4
  br label %301

301:                                              ; preds = %300, %275, %255, %225, %191, %157, %123, %48, %28
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local %struct.da9062* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.da9062_regulators* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.da9062_regulators*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9062_regulators*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @devm_regmap_field_alloc(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @memset(%struct.regulator_config*, i32, i32) #1

declare dso_local i8* @devm_regulator_register(%struct.TYPE_9__*, %struct.TYPE_10__*, %struct.regulator_config*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32*, i32, i32, i8*, %struct.da9062_regulators*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
