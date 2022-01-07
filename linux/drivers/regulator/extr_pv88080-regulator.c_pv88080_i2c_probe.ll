; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88080-regulator.c_pv88080_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88080-regulator.c_pv88080_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pv88080_compatible_regmap = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.i2c_client = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.regulator_init_data = type { i32 }
%struct.pv88080 = type { i64, i8**, %struct.TYPE_14__*, i8*, %struct.pv88080_compatible_regmap* }
%struct.of_device_id = type { i64 }
%struct.regulator_config = type { i8*, %struct.regulator_init_data*, i8*, %struct.TYPE_14__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pv88080_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@pv88080_dt_ids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get of_match_node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PV88080_REG_MASK_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to mask A reg: %d\0A\00", align 1
@PV88080_REG_MASK_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to mask B reg: %d\0A\00", align 1
@PV88080_REG_MASK_C = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to mask C reg: %d\0A\00", align 1
@pv88080_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"pv88080\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@PV88080_M_VDD_FLT = common dso_local global i32 0, align 4
@PV88080_M_OVER_TEMP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to update mask reg: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@pv88080_aa_regs = common dso_local global %struct.pv88080_compatible_regmap zeroinitializer, align 8
@pv88080_ba_regs = common dso_local global %struct.pv88080_compatible_regmap zeroinitializer, align 8
@PV88080_MAX_REGULATORS = common dso_local global i32 0, align 4
@pv88080_regulator_info = common dso_local global %struct.TYPE_12__* null, align 8
@PV88080_BUCK_VDAC_RANGE_SHIFT = common dso_local global i32 0, align 4
@PV88080_BUCK_VDAC_RANGE_MASK = common dso_local global i32 0, align 4
@PV88080_BUCK_VRANGE_GAIN_SHIFT = common dso_local global i32 0, align 4
@PV88080_BUCK_VRANGE_GAIN_MASK = common dso_local global i32 0, align 4
@pv88080_buck_vol = common dso_local global %struct.TYPE_13__* null, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"Failed to register PV88080 regulator\0A\00", align 1
@PV88080_ID_HVBUCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pv88080_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pv88080_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_init_data*, align 8
  %7 = alloca %struct.pv88080*, align 8
  %8 = alloca %struct.pv88080_compatible_regmap*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca %struct.regulator_config, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = call %struct.regulator_init_data* @dev_get_platdata(%struct.TYPE_14__* %17)
  store %struct.regulator_init_data* %18, %struct.regulator_init_data** %6, align 8
  %19 = bitcast %struct.regulator_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.pv88080* @devm_kzalloc(%struct.TYPE_14__* %21, i32 40, i32 %22)
  store %struct.pv88080* %23, %struct.pv88080** %7, align 8
  %24 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %25 = icmp ne %struct.pv88080* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %577

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %33 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %32, i32 0, i32 2
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = call i8* @devm_regmap_init_i2c(%struct.i2c_client* %34, i32* @pv88080_regmap_config)
  %36 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %37 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %39 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %29
  %44 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %45 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %49 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %48, i32 0, i32 2
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %3, align 4
  br label %577

54:                                               ; preds = %29
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load i32, i32* @pv88080_dt_ids, align 4
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.of_device_id* @of_match_node(i32 %61, i64 %65)
  store %struct.of_device_id* %66, %struct.of_device_id** %9, align 8
  %67 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %68 = icmp ne %struct.of_device_id* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %60
  %70 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %71 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %70, i32 0, i32 2
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %577

76:                                               ; preds = %60
  %77 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %78 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %81 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %88

82:                                               ; preds = %54
  %83 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %84 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %87 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %91 = call i32 @i2c_set_clientdata(%struct.i2c_client* %89, %struct.pv88080* %90)
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %183

96:                                               ; preds = %88
  %97 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %98 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* @PV88080_REG_MASK_A, align 4
  %101 = call i32 @regmap_write(i8* %99, i32 %100, i32 255)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %106 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %105, i32 0, i32 2
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %3, align 4
  br label %577

111:                                              ; preds = %96
  %112 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %113 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %112, i32 0, i32 3
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* @PV88080_REG_MASK_B, align 4
  %116 = call i32 @regmap_write(i8* %114, i32 %115, i32 255)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %121 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %120, i32 0, i32 2
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %122, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %3, align 4
  br label %577

126:                                              ; preds = %111
  %127 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %128 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %127, i32 0, i32 3
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* @PV88080_REG_MASK_C, align 4
  %131 = call i32 @regmap_write(i8* %129, i32 %130, i32 255)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %136 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %135, i32 0, i32 2
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %3, align 4
  br label %577

141:                                              ; preds = %126
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 1
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @pv88080_irq_handler, align 4
  %148 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %149 = load i32, i32* @IRQF_ONESHOT, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %152 = call i32 @devm_request_threaded_irq(%struct.TYPE_14__* %143, i32 %146, i32* null, i32 %147, i32 %150, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.pv88080* %151)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %141
  %156 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %157 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %156, i32 0, i32 2
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %3, align 4
  br label %577

164:                                              ; preds = %141
  %165 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %166 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %165, i32 0, i32 3
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* @PV88080_REG_MASK_A, align 4
  %169 = load i32, i32* @PV88080_M_VDD_FLT, align 4
  %170 = load i32, i32* @PV88080_M_OVER_TEMP, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @regmap_update_bits(i8* %167, i32 %168, i32 %171, i32 0)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %164
  %176 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %177 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %176, i32 0, i32 2
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %3, align 4
  br label %577

182:                                              ; preds = %164
  br label %188

183:                                              ; preds = %88
  %184 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %185 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %184, i32 0, i32 2
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = call i32 @dev_warn(%struct.TYPE_14__* %186, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %188

188:                                              ; preds = %183, %182
  %189 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %190 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  switch i64 %191, label %198 [
    i64 129, label %192
    i64 128, label %195
  ]

192:                                              ; preds = %188
  %193 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %194 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %193, i32 0, i32 4
  store %struct.pv88080_compatible_regmap* @pv88080_aa_regs, %struct.pv88080_compatible_regmap** %194, align 8
  br label %198

195:                                              ; preds = %188
  %196 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %197 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %196, i32 0, i32 4
  store %struct.pv88080_compatible_regmap* @pv88080_ba_regs, %struct.pv88080_compatible_regmap** %197, align 8
  br label %198

198:                                              ; preds = %188, %195, %192
  %199 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %200 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %199, i32 0, i32 4
  %201 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %200, align 8
  store %struct.pv88080_compatible_regmap* %201, %struct.pv88080_compatible_regmap** %8, align 8
  %202 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %203 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %202, i32 0, i32 2
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 3
  store %struct.TYPE_14__* %204, %struct.TYPE_14__** %205, align 8
  %206 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %207 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %206, i32 0, i32 3
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 2
  store i8* %208, i8** %209, align 8
  store i32 0, i32* %11, align 4
  br label %210

210:                                              ; preds = %494, %198
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @PV88080_MAX_REGULATORS, align 4
  %213 = sub nsw i32 %212, 1
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %215, label %497

215:                                              ; preds = %210
  %216 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %217 = icmp ne %struct.regulator_init_data* %216, null
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %219, i64 %221
  %223 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store %struct.regulator_init_data* %222, %struct.regulator_init_data** %223, align 8
  br label %224

224:                                              ; preds = %218, %215
  %225 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %226 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %225, i32 0, i32 4
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 8
  store i32 %232, i32* %238, align 4
  %239 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %240 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %239, i32 0, i32 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 7
  store i32 %246, i32* %252, align 4
  %253 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %254 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %253, i32 0, i32 4
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 3
  store i32 %260, i32* %265, align 4
  %266 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %267 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %266, i32 0, i32 4
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 2
  store i32 %273, i32* %278, align 4
  %279 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %280 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %279, i32 0, i32 4
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %280, align 8
  %282 = load i32, i32* %11, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 1
  store i32 %286, i32* %291, align 4
  %292 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %293 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %292, i32 0, i32 4
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %293, align 8
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 6
  store i32 %299, i32* %305, align 4
  %306 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %307 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %306, i32 0, i32 4
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %307, align 8
  %309 = load i32, i32* %11, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %315 = load i32, i32* %11, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 5
  store i32 %313, i32* %319, align 4
  %320 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %321 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %320, i32 0, i32 4
  %322 = load %struct.TYPE_11__*, %struct.TYPE_11__** %321, align 8
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %329 = load i32, i32* %11, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 4
  store i32 %327, i32* %333, align 4
  %334 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %335 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %334, i32 0, i32 4
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %335, align 8
  %337 = load i32, i32* %11, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %343 = load i32, i32* %11, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 3
  store i32 %341, i32* %347, align 4
  %348 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %349 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %348, i32 0, i32 3
  %350 = load i8*, i8** %349, align 8
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %352 = load i32, i32* %11, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @regmap_read(i8* %350, i32 %356, i32* %14)
  store i32 %357, i32* %13, align 4
  %358 = load i32, i32* %13, align 4
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %224
  %361 = load i32, i32* %13, align 4
  store i32 %361, i32* %3, align 4
  br label %577

362:                                              ; preds = %224
  %363 = load i32, i32* %14, align 4
  %364 = load i32, i32* @PV88080_BUCK_VDAC_RANGE_SHIFT, align 4
  %365 = lshr i32 %363, %364
  %366 = load i32, i32* @PV88080_BUCK_VDAC_RANGE_MASK, align 4
  %367 = and i32 %365, %366
  store i32 %367, i32* %14, align 4
  %368 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %369 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %368, i32 0, i32 3
  %370 = load i8*, i8** %369, align 8
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %372 = load i32, i32* %11, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @regmap_read(i8* %370, i32 %376, i32* %15)
  store i32 %377, i32* %13, align 4
  %378 = load i32, i32* %13, align 4
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %362
  %381 = load i32, i32* %13, align 4
  store i32 %381, i32* %3, align 4
  br label %577

382:                                              ; preds = %362
  %383 = load i32, i32* %15, align 4
  %384 = load i32, i32* @PV88080_BUCK_VRANGE_GAIN_SHIFT, align 4
  %385 = lshr i32 %383, %384
  %386 = load i32, i32* @PV88080_BUCK_VRANGE_GAIN_MASK, align 4
  %387 = and i32 %385, %386
  store i32 %387, i32* %15, align 4
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pv88080_buck_vol, align 8
  %389 = load i32, i32* %14, align 4
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %15, align 4
  %395 = add i32 %394, 1
  %396 = mul i32 %393, %395
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %398 = load i32, i32* %11, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 0
  store i32 %396, i32* %402, align 4
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pv88080_buck_vol, align 8
  %404 = load i32, i32* %14, align 4
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %15, align 4
  %410 = add i32 %409, 1
  %411 = mul i32 %408, %410
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %416, i32 0, i32 1
  store i32 %411, i32* %417, align 4
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pv88080_buck_vol, align 8
  %419 = load i32, i32* %14, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %15, align 4
  %425 = add i32 %424, 1
  %426 = mul i32 %423, %425
  %427 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %428 = load i32, i32* %11, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = sub i32 %426, %433
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %436 = load i32, i32* %11, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = udiv i32 %434, %441
  %443 = add i32 %442, 1
  %444 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %445 = load i32, i32* %11, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i64 %446
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 2
  store i32 %443, i32* %449, align 4
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %451 = load i32, i32* %11, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i64 %452
  %454 = bitcast %struct.TYPE_12__* %453 to i8*
  %455 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  store i8* %454, i8** %455, align 8
  %456 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %457 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %456, i32 0, i32 2
  %458 = load %struct.TYPE_14__*, %struct.TYPE_14__** %457, align 8
  %459 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %460 = load i32, i32* %11, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 0
  %464 = call i8* @devm_regulator_register(%struct.TYPE_14__* %458, %struct.TYPE_15__* %463, %struct.regulator_config* %10)
  %465 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %466 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %465, i32 0, i32 1
  %467 = load i8**, i8*** %466, align 8
  %468 = load i32, i32* %11, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8*, i8** %467, i64 %469
  store i8* %464, i8** %470, align 8
  %471 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %472 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %471, i32 0, i32 1
  %473 = load i8**, i8*** %472, align 8
  %474 = load i32, i32* %11, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8*, i8** %473, i64 %475
  %477 = load i8*, i8** %476, align 8
  %478 = call i64 @IS_ERR(i8* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %493

480:                                              ; preds = %382
  %481 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %482 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %481, i32 0, i32 2
  %483 = load %struct.TYPE_14__*, %struct.TYPE_14__** %482, align 8
  %484 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %483, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %485 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %486 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %485, i32 0, i32 1
  %487 = load i8**, i8*** %486, align 8
  %488 = load i32, i32* %11, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8*, i8** %487, i64 %489
  %491 = load i8*, i8** %490, align 8
  %492 = call i32 @PTR_ERR(i8* %491)
  store i32 %492, i32* %3, align 4
  br label %577

493:                                              ; preds = %382
  br label %494

494:                                              ; preds = %493
  %495 = load i32, i32* %11, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %11, align 4
  br label %210

497:                                              ; preds = %210
  %498 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %499 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %498, i32 0, i32 3
  %500 = load i32, i32* %499, align 4
  %501 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %502 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %501, i64 %502
  %504 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %504, i32 0, i32 6
  store i32 %500, i32* %505, align 4
  %506 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %507 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %506, i32 0, i32 2
  %508 = load i32, i32* %507, align 8
  %509 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %510 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %511 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %509, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %512, i32 0, i32 5
  store i32 %508, i32* %513, align 4
  %514 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %515 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  %517 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %518 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %517, i64 %518
  %520 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %520, i32 0, i32 4
  store i32 %516, i32* %521, align 4
  %522 = load %struct.pv88080_compatible_regmap*, %struct.pv88080_compatible_regmap** %8, align 8
  %523 = getelementptr inbounds %struct.pv88080_compatible_regmap, %struct.pv88080_compatible_regmap* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %526 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %527 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %525, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %528, i32 0, i32 3
  store i32 %524, i32* %529, align 4
  %530 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %531 = icmp ne %struct.regulator_init_data* %530, null
  br i1 %531, label %532, label %537

532:                                              ; preds = %497
  %533 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %534 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %535 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %533, i64 %534
  %536 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 1
  store %struct.regulator_init_data* %535, %struct.regulator_init_data** %536, align 8
  br label %537

537:                                              ; preds = %532, %497
  %538 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %539 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %540 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %538, i64 %539
  %541 = bitcast %struct.TYPE_12__* %540 to i8*
  %542 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %10, i32 0, i32 0
  store i8* %541, i8** %542, align 8
  %543 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %544 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %543, i32 0, i32 2
  %545 = load %struct.TYPE_14__*, %struct.TYPE_14__** %544, align 8
  %546 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pv88080_regulator_info, align 8
  %547 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %548 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %546, i64 %547
  %549 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %548, i32 0, i32 0
  %550 = call i8* @devm_regulator_register(%struct.TYPE_14__* %545, %struct.TYPE_15__* %549, %struct.regulator_config* %10)
  %551 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %552 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %551, i32 0, i32 1
  %553 = load i8**, i8*** %552, align 8
  %554 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %555 = getelementptr inbounds i8*, i8** %553, i64 %554
  store i8* %550, i8** %555, align 8
  %556 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %557 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %556, i32 0, i32 1
  %558 = load i8**, i8*** %557, align 8
  %559 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %560 = getelementptr inbounds i8*, i8** %558, i64 %559
  %561 = load i8*, i8** %560, align 8
  %562 = call i64 @IS_ERR(i8* %561)
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %576

564:                                              ; preds = %537
  %565 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %566 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %565, i32 0, i32 2
  %567 = load %struct.TYPE_14__*, %struct.TYPE_14__** %566, align 8
  %568 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %567, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %569 = load %struct.pv88080*, %struct.pv88080** %7, align 8
  %570 = getelementptr inbounds %struct.pv88080, %struct.pv88080* %569, i32 0, i32 1
  %571 = load i8**, i8*** %570, align 8
  %572 = load i64, i64* @PV88080_ID_HVBUCK, align 8
  %573 = getelementptr inbounds i8*, i8** %571, i64 %572
  %574 = load i8*, i8** %573, align 8
  %575 = call i32 @PTR_ERR(i8* %574)
  store i32 %575, i32* %3, align 4
  br label %577

576:                                              ; preds = %537
  store i32 0, i32* %3, align 4
  br label %577

577:                                              ; preds = %576, %564, %480, %380, %360, %175, %155, %134, %119, %104, %69, %43, %26
  %578 = load i32, i32* %3, align 4
  ret i32 %578
}

declare dso_local %struct.regulator_init_data* @dev_get_platdata(%struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.pv88080* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i8* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i64) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pv88080*) #1

declare dso_local i32 @regmap_write(i8*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_14__*, i32, i32*, i32, i32, i8*, %struct.pv88080*) #1

declare dso_local i32 @regmap_update_bits(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @regmap_read(i8*, i32, i32*) #1

declare dso_local i8* @devm_regulator_register(%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.regulator_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
