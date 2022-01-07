; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8907-regulator.c_max8907_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8907-regulator.c_max8907_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.max8907 = type { i32, i32 }
%struct.max8907_platform_data = type { %struct.regulator_init_data** }
%struct.regulator_init_data = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.max8907_regulator = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i32*, i32 }
%struct.regulator_config = type { i32, i32, %struct.max8907_regulator*, %struct.regulator_init_data*, i32 }
%struct.regulator_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max8907_regulators = common dso_local global i32 0, align 4
@MAX8907_REG_II2RR = common dso_local global i32 0, align 4
@MAX8907_II2RR_VERSION_MASK = common dso_local global i32 0, align 4
@MAX8907_II2RR_VERSION_REV_B = common dso_local global i32 0, align 4
@MAX8907_SD1 = common dso_local global i64 0, align 8
@MAX8907_NUM_REGULATORS = common dso_local global i32 0, align 4
@max8907_ldo_ops = common dso_local global i32 0, align 4
@MAX8907_MASK_LDO_SEQ = common dso_local global i32 0, align 4
@max8907_ldo_hwctl_ops = common dso_local global i32 0, align 4
@max8907_out5v_ops = common dso_local global i32 0, align 4
@MAX8907_MASK_OUT5V_VINEN = common dso_local global i32 0, align 4
@MAX8907_MASK_OUT5V_ENSRC = common dso_local global i32 0, align 4
@max8907_out5v_hwctl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8907_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8907_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8907*, align 8
  %5 = alloca %struct.max8907_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.max8907_regulator*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.regulator_config, align 8
  %11 = alloca %struct.regulator_init_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.regulator_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.max8907* @dev_get_drvdata(i32 %17)
  store %struct.max8907* %18, %struct.max8907** %4, align 8
  %19 = load %struct.max8907*, %struct.max8907** %4, align 8
  %20 = getelementptr inbounds %struct.max8907, %struct.max8907* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.max8907_platform_data* @dev_get_platdata(i32 %21)
  store %struct.max8907_platform_data* %22, %struct.max8907_platform_data** %5, align 8
  %23 = bitcast %struct.regulator_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 32, i1 false)
  store i8* null, i8** %12, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @max8907_regulator_parse_dt(%struct.platform_device* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %257

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.max8907_regulator* @devm_kzalloc(%struct.TYPE_9__* %32, i32 8, i32 %33)
  store %struct.max8907_regulator* %34, %struct.max8907_regulator** %7, align 8
  %35 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %36 = icmp ne %struct.max8907_regulator* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %257

40:                                               ; preds = %30
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.max8907_regulator* %42)
  %44 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %45 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* @max8907_regulators, align 4
  %48 = call i32 @memcpy(%struct.TYPE_8__* %46, i32 %47, i32 8)
  %49 = load %struct.max8907*, %struct.max8907** %4, align 8
  %50 = getelementptr inbounds %struct.max8907, %struct.max8907* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MAX8907_REG_II2RR, align 4
  %53 = call i32 @regmap_read(i32 %51, i32 %52, i32* %8)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MAX8907_II2RR_VERSION_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @MAX8907_II2RR_VERSION_REV_B, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %40
  %60 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %61 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i64, i64* @MAX8907_SD1, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 637500, i32* %65, align 8
  %66 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %67 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i64, i64* @MAX8907_SD1, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 12500, i32* %71, align 4
  %72 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %73 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i64, i64* @MAX8907_SD1, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  store i32 64, i32* %77, align 8
  br label %78

78:                                               ; preds = %59, %40
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %253, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MAX8907_NUM_REGULATORS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %256

83:                                               ; preds = %79
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 4
  store i32 %87, i32* %88, align 8
  %89 = load %struct.max8907_platform_data*, %struct.max8907_platform_data** %5, align 8
  %90 = icmp ne %struct.max8907_platform_data* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load %struct.max8907_platform_data*, %struct.max8907_platform_data** %5, align 8
  %93 = getelementptr inbounds %struct.max8907_platform_data, %struct.max8907_platform_data* %92, i32 0, i32 0
  %94 = load %struct.regulator_init_data**, %struct.regulator_init_data*** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.regulator_init_data*, %struct.regulator_init_data** %94, i64 %96
  %98 = load %struct.regulator_init_data*, %struct.regulator_init_data** %97, align 8
  store %struct.regulator_init_data* %98, %struct.regulator_init_data** %11, align 8
  br label %102

99:                                               ; preds = %83
  %100 = load i32, i32* %9, align 4
  %101 = call %struct.regulator_init_data* @match_init_data(i32 %100)
  store %struct.regulator_init_data* %101, %struct.regulator_init_data** %11, align 8
  br label %102

102:                                              ; preds = %99, %91
  %103 = load %struct.regulator_init_data*, %struct.regulator_init_data** %11, align 8
  %104 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 3
  store %struct.regulator_init_data* %103, %struct.regulator_init_data** %104, align 8
  %105 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %106 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 2
  store %struct.max8907_regulator* %105, %struct.max8907_regulator** %106, align 8
  %107 = load %struct.max8907*, %struct.max8907** %4, align 8
  %108 = getelementptr inbounds %struct.max8907, %struct.max8907* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @match_of_node(i32 %111)
  %113 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  %114 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %115 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %150 [
    i32 130, label %122
    i32 131, label %146
    i32 129, label %146
    i32 128, label %146
  ]

122:                                              ; preds = %102
  %123 = load %struct.regulator_init_data*, %struct.regulator_init_data** %11, align 8
  %124 = icmp ne %struct.regulator_init_data* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load %struct.regulator_init_data*, %struct.regulator_init_data** %11, align 8
  %127 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.regulator_init_data*, %struct.regulator_init_data** %11, align 8
  %133 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %12, align 8
  br label %145

136:                                              ; preds = %125, %122
  %137 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %138 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 4
  %144 = load i8*, i8** %143, align 8
  store i8* %144, i8** %12, align 8
  br label %145

145:                                              ; preds = %136, %131
  br label %150

146:                                              ; preds = %102, %102, %102
  %147 = load i8*, i8** %12, align 8
  %148 = load %struct.regulator_init_data*, %struct.regulator_init_data** %11, align 8
  %149 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  br label %150

150:                                              ; preds = %102, %146, %145
  %151 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %152 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, @max8907_ldo_ops
  br i1 %159, label %160, label %186

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %164 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %163, i32 0, i32 0
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @regmap_read(i32 %162, i32 %170, i32* %8)
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @MAX8907_MASK_LDO_SEQ, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @MAX8907_MASK_LDO_SEQ, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %160
  %178 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %179 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  store i32* @max8907_ldo_hwctl_ops, i32** %184, align 8
  br label %185

185:                                              ; preds = %177, %160
  br label %225

186:                                              ; preds = %150
  %187 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %188 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %187, i32 0, i32 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, @max8907_out5v_ops
  br i1 %195, label %196, label %224

196:                                              ; preds = %186
  %197 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %200 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %199, i32 0, i32 0
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @regmap_read(i32 %198, i32 %206, i32* %8)
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @MAX8907_MASK_OUT5V_VINEN, align 4
  %210 = load i32, i32* @MAX8907_MASK_OUT5V_ENSRC, align 4
  %211 = or i32 %209, %210
  %212 = and i32 %208, %211
  %213 = load i32, i32* @MAX8907_MASK_OUT5V_ENSRC, align 4
  %214 = icmp ne i32 %212, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %196
  %216 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %217 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 5
  store i32* @max8907_out5v_hwctl_ops, i32** %222, align 8
  br label %223

223:                                              ; preds = %215, %196
  br label %224

224:                                              ; preds = %223, %186
  br label %225

225:                                              ; preds = %224, %185
  %226 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %227 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %226, i32 0, i32 0
  %228 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %229 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %228, i32 0, i32 0
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i64 %232
  %234 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__* %227, %struct.TYPE_8__* %233, %struct.regulator_config* %10)
  store %struct.regulator_dev* %234, %struct.regulator_dev** %13, align 8
  %235 = load %struct.regulator_dev*, %struct.regulator_dev** %13, align 8
  %236 = call i64 @IS_ERR(%struct.regulator_dev* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %252

238:                                              ; preds = %225
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = load %struct.max8907_regulator*, %struct.max8907_regulator** %7, align 8
  %242 = getelementptr inbounds %struct.max8907_regulator, %struct.max8907_regulator* %241, i32 0, i32 0
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @dev_err(%struct.TYPE_9__* %240, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %248)
  %250 = load %struct.regulator_dev*, %struct.regulator_dev** %13, align 8
  %251 = call i32 @PTR_ERR(%struct.regulator_dev* %250)
  store i32 %251, i32* %2, align 4
  br label %257

252:                                              ; preds = %225
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  br label %79

256:                                              ; preds = %79
  store i32 0, i32* %2, align 4
  br label %257

257:                                              ; preds = %256, %238, %37, %28
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local %struct.max8907* @dev_get_drvdata(i32) #1

declare dso_local %struct.max8907_platform_data* @dev_get_platdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @max8907_regulator_parse_dt(%struct.platform_device*) #1

declare dso_local %struct.max8907_regulator* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max8907_regulator*) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local %struct.regulator_init_data* @match_init_data(i32) #1

declare dso_local i32 @match_of_node(i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_9__*, %struct.TYPE_8__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
