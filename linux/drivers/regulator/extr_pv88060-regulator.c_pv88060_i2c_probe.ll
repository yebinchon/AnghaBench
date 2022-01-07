; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88060-regulator.c_pv88060_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88060-regulator.c_pv88060_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.regulator_init_data = type { i32 }
%struct.pv88060 = type { i32*, i32*, i32 }
%struct.regulator_config = type { i8*, %struct.regulator_init_data*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pv88060_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to allocate register map: %d\0A\00", align 1
@PV88060_REG_MASK_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to mask A reg: %d\0A\00", align 1
@PV88060_REG_MASK_B = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to mask B reg: %d\0A\00", align 1
@PV88060_REG_MASK_C = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to mask C reg: %d\0A\00", align 1
@pv88060_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"pv88060\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Failed to request IRQ: %d\0A\00", align 1
@PV88060_M_VDD_FLT = common dso_local global i32 0, align 4
@PV88060_M_OVER_TEMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Failed to update mask reg: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"No IRQ configured\0A\00", align 1
@PV88060_MAX_REGULATORS = common dso_local global i32 0, align 4
@pv88060_regulator_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to register PV88060 regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pv88060_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pv88060_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regulator_init_data*, align 8
  %7 = alloca %struct.pv88060*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = call %struct.regulator_init_data* @dev_get_platdata(i32* %13)
  store %struct.regulator_init_data* %14, %struct.regulator_init_data** %6, align 8
  %15 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  store i32 0, i32* %11, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pv88060* @devm_kzalloc(i32* %17, i32 24, i32 %18)
  store %struct.pv88060* %19, %struct.pv88060** %7, align 8
  %20 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %21 = icmp ne %struct.pv88060* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %221

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %29 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %30, i32* @pv88060_regmap_config)
  %32 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %33 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %35 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %25
  %40 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %41 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %45 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %221

50:                                               ; preds = %25
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %53 = call i32 @i2c_set_clientdata(%struct.i2c_client* %51, %struct.pv88060* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %145

58:                                               ; preds = %50
  %59 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %60 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PV88060_REG_MASK_A, align 4
  %63 = call i32 @regmap_write(i32 %61, i32 %62, i32 255)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %68 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %3, align 4
  br label %221

73:                                               ; preds = %58
  %74 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %75 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PV88060_REG_MASK_B, align 4
  %78 = call i32 @regmap_write(i32 %76, i32 %77, i32 255)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  %82 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %83 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %3, align 4
  br label %221

88:                                               ; preds = %73
  %89 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %90 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PV88060_REG_MASK_C, align 4
  %93 = call i32 @regmap_write(i32 %91, i32 %92, i32 255)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %88
  %97 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %98 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %221

103:                                              ; preds = %88
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 1
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @pv88060_irq_handler, align 4
  %110 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %111 = load i32, i32* @IRQF_ONESHOT, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %114 = call i32 @devm_request_threaded_irq(i32* %105, i32 %108, i32* null, i32 %109, i32 %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.pv88060* %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %103
  %118 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %119 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32*, i8*, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %3, align 4
  br label %221

126:                                              ; preds = %103
  %127 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %128 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PV88060_REG_MASK_A, align 4
  %131 = load i32, i32* @PV88060_M_VDD_FLT, align 4
  %132 = load i32, i32* @PV88060_M_OVER_TEMP, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @regmap_update_bits(i32 %129, i32 %130, i32 %133, i32 0)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %126
  %138 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %139 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 (i32*, i8*, ...) @dev_err(i32* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %3, align 4
  br label %221

144:                                              ; preds = %126
  br label %150

145:                                              ; preds = %50
  %146 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %147 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @dev_warn(i32* %148, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %150

150:                                              ; preds = %145, %144
  %151 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %152 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store i32* %153, i32** %154, align 8
  %155 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %156 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store i32 %157, i32* %158, align 8
  store i32 0, i32* %10, align 4
  br label %159

159:                                              ; preds = %217, %150
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @PV88060_MAX_REGULATORS, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %220

163:                                              ; preds = %159
  %164 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %165 = icmp ne %struct.regulator_init_data* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.regulator_init_data*, %struct.regulator_init_data** %6, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %167, i64 %169
  %171 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.regulator_init_data* %170, %struct.regulator_init_data** %171, align 8
  br label %172

172:                                              ; preds = %166, %163
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pv88060_regulator_info, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = bitcast %struct.TYPE_2__* %176 to i8*
  %178 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i8* %177, i8** %178, align 8
  %179 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %180 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pv88060_regulator_info, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = call i32 @devm_regulator_register(i32* %181, i32* %186, %struct.regulator_config* %8)
  %188 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %189 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %187, i32* %193, align 4
  %194 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %195 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @IS_ERR(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %172
  %204 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %205 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 (i32*, i8*, ...) @dev_err(i32* %206, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %208 = load %struct.pv88060*, %struct.pv88060** %7, align 8
  %209 = getelementptr inbounds %struct.pv88060, %struct.pv88060* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @PTR_ERR(i32 %214)
  store i32 %215, i32* %3, align 4
  br label %221

216:                                              ; preds = %172
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %159

220:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %220, %203, %137, %117, %96, %81, %66, %39, %22
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

declare dso_local %struct.regulator_init_data* @dev_get_platdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.pv88060* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pv88060*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.pv88060*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @devm_regulator_register(i32*, i32*, %struct.regulator_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
