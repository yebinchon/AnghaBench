; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88090-regulator.c_pv88090_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88090-regulator.c_pv88090_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.regulator_init_data = type { i32 }
%struct.pv88090 = type { i32*, i32*, i32 }
%struct.regulator_config = type { i8*, %struct.regulator_init_data*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pv88090_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@PV88090_REG_MASK_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to mask A reg: %d\0A\00", align 1
@PV88090_REG_MASK_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to mask B reg: %d\0A\00", align 1
@pv88090_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"pv88090\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@PV88090_M_VDD_FLT = common dso_local global i32 0, align 4
@PV88090_M_OVER_TEMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to update mask reg: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@PV88090_MAX_REGULATORS = common dso_local global i32 0, align 4
@PV88090_ID_BUCK2 = common dso_local global i32 0, align 4
@PV88090_ID_BUCK3 = common dso_local global i32 0, align 4
@pv88090_regulator_info = common dso_local global %struct.TYPE_4__* null, align 8
@PV88090_BUCK_VDAC_RANGE_SHIFT = common dso_local global i32 0, align 4
@PV88090_BUCK_VDAC_RANGE_MASK = common dso_local global i32 0, align 4
@PV88090_REG_BUCK_FOLD_RANGE = common dso_local global i32 0, align 4
@PV88090_BUCK_VRANGE_GAIN_SHIFT = common dso_local global i32 0, align 4
@PV88090_BUCK_VRANGE_GAIN_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"Invalid index(%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pv88090_buck_vol = common dso_local global %struct.TYPE_5__* null, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to register PV88090 regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pv88090_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pv88090_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_init_data*, align 8
  %7 = alloca %struct.pv88090*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = call %struct.regulator_init_data* @dev_get_platdata(i32* %16)
  store %struct.regulator_init_data* %17, %struct.regulator_init_data** %6, align 8
  %18 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  store i32 0, i32* %11, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.pv88090* @devm_kzalloc(i32* %20, i32 24, i32 %21)
  store %struct.pv88090* %22, %struct.pv88090** %7, align 8
  %23 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %24 = icmp ne %struct.pv88090* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %323

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %32 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %33, i32* @pv88090_regmap_config)
  %35 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %36 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %38 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %28
  %43 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %44 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %48 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %323

53:                                               ; preds = %28
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %56 = call i32 @i2c_set_clientdata(%struct.i2c_client* %54, %struct.pv88090* %55)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %133

61:                                               ; preds = %53
  %62 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %63 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PV88090_REG_MASK_A, align 4
  %66 = call i32 @regmap_write(i32 %64, i32 %65, i32 255)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %71 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %3, align 4
  br label %323

76:                                               ; preds = %61
  %77 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %78 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PV88090_REG_MASK_B, align 4
  %81 = call i32 @regmap_write(i32 %79, i32 %80, i32 255)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %86 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %323

91:                                               ; preds = %76
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 1
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @pv88090_irq_handler, align 4
  %98 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %99 = load i32, i32* @IRQF_ONESHOT, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %102 = call i32 @devm_request_threaded_irq(i32* %93, i32 %96, i32* null, i32 %97, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %struct.pv88090* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %91
  %106 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %107 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %323

114:                                              ; preds = %91
  %115 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %116 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @PV88090_REG_MASK_A, align 4
  %119 = load i32, i32* @PV88090_M_VDD_FLT, align 4
  %120 = load i32, i32* @PV88090_M_OVER_TEMP, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @regmap_update_bits(i32 %117, i32 %118, i32 %121, i32 0)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %114
  %126 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %127 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %3, align 4
  br label %323

132:                                              ; preds = %114
  br label %138

133:                                              ; preds = %53
  %134 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %135 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @dev_warn(i32* %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %138

138:                                              ; preds = %133, %132
  %139 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %140 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store i32* %141, i32** %142, align 8
  %143 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %144 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store i32 %145, i32* %146, align 8
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %319, %138
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @PV88090_MAX_REGULATORS, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %322

151:                                              ; preds = %147
  %152 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %153 = icmp ne %struct.regulator_init_data* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %155, i64 %157
  %159 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.regulator_init_data* %158, %struct.regulator_init_data** %159, align 8
  br label %160

160:                                              ; preds = %154, %151
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @PV88090_ID_BUCK2, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @PV88090_ID_BUCK3, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %274

168:                                              ; preds = %164, %160
  %169 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %170 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pv88090_regulator_info, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @regmap_read(i32 %171, i32 %177, i32* %12)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %168
  %182 = load i32, i32* %11, align 4
  store i32 %182, i32* %3, align 4
  br label %323

183:                                              ; preds = %168
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* @PV88090_BUCK_VDAC_RANGE_SHIFT, align 4
  %186 = lshr i32 %184, %185
  %187 = load i32, i32* @PV88090_BUCK_VDAC_RANGE_MASK, align 4
  %188 = and i32 %186, %187
  store i32 %188, i32* %12, align 4
  %189 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %190 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @PV88090_REG_BUCK_FOLD_RANGE, align 4
  %193 = call i32 @regmap_read(i32 %191, i32 %192, i32* %13)
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %183
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %3, align 4
  br label %323

198:                                              ; preds = %183
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* @PV88090_BUCK_VRANGE_GAIN_SHIFT, align 4
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %200, %201
  %203 = sub nsw i32 %202, 1
  %204 = lshr i32 %199, %203
  %205 = load i32, i32* @PV88090_BUCK_VRANGE_GAIN_MASK, align 4
  %206 = and i32 %204, %205
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = shl i32 %207, 1
  %209 = load i32, i32* %12, align 4
  %210 = or i32 %208, %209
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @PV88090_ID_BUCK3, align 4
  %213 = icmp ugt i32 %211, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %198
  %215 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %216 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %14, align 4
  %219 = call i32 (i32*, i8*, ...) @dev_err(i32* %217, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %3, align 4
  br label %323

222:                                              ; preds = %198
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pv88090_buck_vol, align 8
  %224 = load i32, i32* %14, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pv88090_regulator_info, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  store i32 %228, i32* %234, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pv88090_buck_vol, align 8
  %236 = load i32, i32* %14, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pv88090_regulator_info, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  store i32 %240, i32* %246, align 4
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pv88090_buck_vol, align 8
  %248 = load i32, i32* %14, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pv88090_buck_vol, align 8
  %254 = load i32, i32* %14, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sub nsw i32 %252, %258
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pv88090_buck_vol, align 8
  %261 = load i32, i32* %14, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = sdiv i32 %259, %265
  %267 = add nsw i32 %266, 1
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pv88090_regulator_info, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 2
  store i32 %267, i32* %273, align 4
  br label %274

274:                                              ; preds = %222, %164
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pv88090_regulator_info, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 %277
  %279 = bitcast %struct.TYPE_4__* %278 to i8*
  %280 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i8* %279, i8** %280, align 8
  %281 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %282 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pv88090_regulator_info, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 0
  %289 = call i32 @devm_regulator_register(i32* %283, %struct.TYPE_6__* %288, %struct.regulator_config* %8)
  %290 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %291 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %10, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32 %289, i32* %295, align 4
  %296 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %297 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %10, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i64 @IS_ERR(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %318

305:                                              ; preds = %274
  %306 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %307 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = call i32 (i32*, i8*, ...) @dev_err(i32* %308, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %310 = load %struct.pv88090*, %struct.pv88090** %7, align 8
  %311 = getelementptr inbounds %struct.pv88090, %struct.pv88090* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %10, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @PTR_ERR(i32 %316)
  store i32 %317, i32* %3, align 4
  br label %323

318:                                              ; preds = %274
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %10, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %10, align 4
  br label %147

322:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %323

323:                                              ; preds = %322, %305, %214, %196, %181, %125, %105, %84, %69, %42, %25
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local %struct.regulator_init_data* @dev_get_platdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.pv88090* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pv88090*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.pv88090*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @devm_regulator_register(i32*, %struct.TYPE_6__*, %struct.regulator_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
