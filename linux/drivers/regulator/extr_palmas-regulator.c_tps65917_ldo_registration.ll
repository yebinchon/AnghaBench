; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_tps65917_ldo_registration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_tps65917_ldo_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_pmic = type { i32, i32, %struct.regulator_desc* }
%struct.regulator_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i8*, i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.palmas_pmic_driver_data = type { i32, i32, %struct.TYPE_2__*, %struct.palmas_regs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.palmas_regs_info = type { i32, i32, i32, i32 }
%struct.palmas_pmic_platform_data = type { %struct.palmas_reg_init**, i32** }
%struct.palmas_reg_init = type { i64 }
%struct.regulator_config = type { i32, i32* }
%struct.regulator_dev = type { i32 }

@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@TPS65917_REG_REGEN1 = common dso_local global i32 0, align 4
@PALMAS_LDO_NUM_VOLTAGES = common dso_local global i32 0, align 4
@palmas_ops_ext_control_ldo = common dso_local global i32 0, align 4
@tps65917_ops_ldo = common dso_local global i32 0, align 4
@PALMAS_LDO_BASE = common dso_local global i32 0, align 4
@PALMAS_LDO1_VOLTAGE_VSEL_MASK = common dso_local global i32 0, align 4
@PALMAS_LDO1_CTRL_MODE_ACTIVE = common dso_local global i32 0, align 4
@TPS65917_REG_LDO1 = common dso_local global i32 0, align 4
@TPS65917_REG_LDO2 = common dso_local global i32 0, align 4
@tps65917_ops_ldo_1_2 = common dso_local global i32 0, align 4
@TPS65917_LDO1_CTRL_BYPASS_EN = common dso_local global i8* null, align 8
@palmas_ops_ext_control_extreg = common dso_local global i32 0, align 4
@palmas_ops_extreg = common dso_local global i32 0, align 4
@PALMAS_RESOURCE_BASE = common dso_local global i32 0, align 4
@PALMAS_REGEN1_CTRL_MODE_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, i32, i32*)* @tps65917_ldo_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65917_ldo_registration(%struct.palmas_pmic* %0, %struct.palmas_pmic_driver_data* %1, %struct.palmas_pmic_platform_data* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.palmas_pmic*, align 8
  %10 = alloca %struct.palmas_pmic_driver_data*, align 8
  %11 = alloca %struct.palmas_pmic_platform_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.regulator_dev*, align 8
  %16 = alloca %struct.palmas_reg_init*, align 8
  %17 = alloca %struct.palmas_regs_info*, align 8
  %18 = alloca %struct.regulator_desc*, align 8
  %19 = bitcast %struct.regulator_config* %8 to { i32, i32* }*
  %20 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %19, i32 0, i32 0
  store i32 %4, i32* %20, align 8
  %21 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %19, i32 0, i32 1
  store i32* %5, i32** %21, align 8
  store %struct.palmas_pmic* %0, %struct.palmas_pmic** %9, align 8
  store %struct.palmas_pmic_driver_data* %1, %struct.palmas_pmic_driver_data** %10, align 8
  store %struct.palmas_pmic_platform_data* %2, %struct.palmas_pmic_platform_data** %11, align 8
  store i8* %3, i8** %12, align 8
  %22 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %23 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %263, %6
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %28 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %266

31:                                               ; preds = %25
  %32 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %33 = icmp ne %struct.palmas_pmic_platform_data* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %36 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %35, i32 0, i32 0
  %37 = load %struct.palmas_reg_init**, %struct.palmas_reg_init*** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.palmas_reg_init*, %struct.palmas_reg_init** %37, i64 %39
  %41 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %40, align 8
  %42 = icmp ne %struct.palmas_reg_init* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %45 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %44, i32 0, i32 0
  %46 = load %struct.palmas_reg_init**, %struct.palmas_reg_init*** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.palmas_reg_init*, %struct.palmas_reg_init** %46, i64 %48
  %50 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %49, align 8
  store %struct.palmas_reg_init* %50, %struct.palmas_reg_init** %16, align 8
  br label %52

51:                                               ; preds = %34, %31
  store %struct.palmas_reg_init* null, %struct.palmas_reg_init** %16, align 8
  br label %52

52:                                               ; preds = %51, %43
  %53 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %54 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %53, i32 0, i32 3
  %55 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %55, i64 %57
  store %struct.palmas_regs_info* %58, %struct.palmas_regs_info** %17, align 8
  %59 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %60 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %59, i32 0, i32 2
  %61 = load %struct.regulator_desc*, %struct.regulator_desc** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %61, i64 %63
  store %struct.regulator_desc* %64, %struct.regulator_desc** %18, align 8
  %65 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %66 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %69 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %68, i32 0, i32 18
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %72 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %74 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %75 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %74, i32 0, i32 17
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @THIS_MODULE, align 4
  %77 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %78 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %77, i32 0, i32 16
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @TPS65917_REG_REGEN1, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %152

82:                                               ; preds = %52
  %83 = load i32, i32* @PALMAS_LDO_NUM_VOLTAGES, align 4
  %84 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %85 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %87 = icmp ne %struct.palmas_reg_init* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %90 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %95 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %94, i32 0, i32 10
  store i32* @palmas_ops_ext_control_ldo, i32** %95, align 8
  br label %99

96:                                               ; preds = %88, %82
  %97 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %98 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %97, i32 0, i32 10
  store i32* @tps65917_ops_ldo, i32** %98, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %101 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %100, i32 0, i32 2
  store i32 900000, i32* %101, align 8
  %102 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %103 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %102, i32 0, i32 3
  store i32 50000, i32* %103, align 4
  %104 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %105 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %104, i32 0, i32 4
  store i32 1, i32* %105, align 8
  %106 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %107 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %106, i32 0, i32 5
  store i32 500, i32* %107, align 4
  %108 = load i32, i32* @PALMAS_LDO_BASE, align 4
  %109 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %110 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @PALMAS_BASE_TO_REG(i32 %108, i32 %111)
  %113 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %114 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %113, i32 0, i32 15
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @PALMAS_LDO1_VOLTAGE_VSEL_MASK, align 4
  %116 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %117 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %116, i32 0, i32 14
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @PALMAS_LDO_BASE, align 4
  %119 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %120 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @PALMAS_BASE_TO_REG(i32 %118, i32 %121)
  %123 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %124 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %123, i32 0, i32 9
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @PALMAS_LDO1_CTRL_MODE_ACTIVE, align 4
  %126 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %127 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 8
  %128 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %129 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %128, i32 0, i32 6
  store i32 2500, i32* %129, align 8
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @TPS65917_REG_LDO1, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %99
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @TPS65917_REG_LDO2, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %133, %99
  %138 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %139 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %138, i32 0, i32 10
  store i32* @tps65917_ops_ldo_1_2, i32** %139, align 8
  %140 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %141 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %140, i32 0, i32 9
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %144 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %143, i32 0, i32 13
  store i8* %142, i8** %144, align 8
  %145 = load i8*, i8** @TPS65917_LDO1_CTRL_BYPASS_EN, align 8
  %146 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %147 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %146, i32 0, i32 12
  store i8* %145, i8** %147, align 8
  %148 = load i8*, i8** @TPS65917_LDO1_CTRL_BYPASS_EN, align 8
  %149 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %150 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %149, i32 0, i32 11
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %137, %133
  br label %179

152:                                              ; preds = %52
  %153 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %154 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %156 = icmp ne %struct.palmas_reg_init* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %159 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %164 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %163, i32 0, i32 10
  store i32* @palmas_ops_ext_control_extreg, i32** %164, align 8
  br label %168

165:                                              ; preds = %157, %152
  %166 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %167 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %166, i32 0, i32 10
  store i32* @palmas_ops_extreg, i32** %167, align 8
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* @PALMAS_RESOURCE_BASE, align 4
  %170 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %171 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @PALMAS_BASE_TO_REG(i32 %169, i32 %172)
  %174 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %175 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %174, i32 0, i32 9
  store i8* %173, i8** %175, align 8
  %176 = load i32, i32* @PALMAS_REGEN1_CTRL_MODE_ACTIVE, align 4
  %177 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %178 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %177, i32 0, i32 8
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %168, %151
  %180 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %181 = icmp ne %struct.palmas_pmic_platform_data* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %179
  %183 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %184 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %183, i32 0, i32 1
  %185 = load i32**, i32*** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32* %189, i32** %190, align 8
  br label %193

191:                                              ; preds = %179
  %192 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32* null, i32** %192, align 8
  br label %193

193:                                              ; preds = %191, %182
  %194 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %195 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %198 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 4
  %199 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %200 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %199, i32 0, i32 2
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %206, i32* %207, align 8
  %208 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %209 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %212 = call %struct.regulator_dev* @devm_regulator_register(i32 %210, %struct.regulator_desc* %211, %struct.regulator_config* %8)
  store %struct.regulator_dev* %212, %struct.regulator_dev** %15, align 8
  %213 = load %struct.regulator_dev*, %struct.regulator_dev** %15, align 8
  %214 = call i64 @IS_ERR(%struct.regulator_dev* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %193
  %217 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %218 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %12, align 8
  %221 = call i32 @dev_err(i32 %219, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %220)
  %222 = load %struct.regulator_dev*, %struct.regulator_dev** %15, align 8
  %223 = call i32 @PTR_ERR(%struct.regulator_dev* %222)
  store i32 %223, i32* %7, align 4
  br label %267

224:                                              ; preds = %193
  %225 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %226 = icmp ne %struct.palmas_pmic_platform_data* %225, null
  br i1 %226, label %227, label %262

227:                                              ; preds = %224
  %228 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %229 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %228, i32 0, i32 0
  %230 = load %struct.palmas_reg_init**, %struct.palmas_reg_init*** %229, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.palmas_reg_init*, %struct.palmas_reg_init** %230, i64 %232
  %234 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %233, align 8
  store %struct.palmas_reg_init* %234, %struct.palmas_reg_init** %16, align 8
  %235 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %236 = icmp ne %struct.palmas_reg_init* %235, null
  br i1 %236, label %237, label %261

237:                                              ; preds = %227
  %238 = load i32, i32* %13, align 4
  %239 = load i32, i32* @TPS65917_REG_REGEN1, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  %242 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %243 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %247 = call i32 @palmas_ldo_init(i32 %244, i32 %245, %struct.palmas_reg_init* %246)
  store i32 %247, i32* %14, align 4
  br label %255

248:                                              ; preds = %237
  %249 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %250 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %254 = call i32 @palmas_extreg_init(i32 %251, i32 %252, %struct.palmas_reg_init* %253)
  store i32 %254, i32* %14, align 4
  br label %255

255:                                              ; preds = %248, %241
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %255
  %259 = load i32, i32* %14, align 4
  store i32 %259, i32* %7, align 4
  br label %267

260:                                              ; preds = %255
  br label %261

261:                                              ; preds = %260, %227
  br label %262

262:                                              ; preds = %261, %224
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %25

266:                                              ; preds = %25
  store i32 0, i32* %7, align 4
  br label %267

267:                                              ; preds = %266, %258, %216
  %268 = load i32, i32* %7, align 4
  ret i32 %268
}

declare dso_local i8* @PALMAS_BASE_TO_REG(i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @palmas_ldo_init(i32, i32, %struct.palmas_reg_init*) #1

declare dso_local i32 @palmas_extreg_init(i32, i32, %struct.palmas_reg_init*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
