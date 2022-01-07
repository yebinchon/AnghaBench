; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_tps65917_smps_registration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_tps65917_smps_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_pmic = type { i32*, i32*, i32, i32, i64, %struct.regulator_desc* }
%struct.regulator_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32*, i32, i32 }
%struct.palmas_pmic_driver_data = type { i32, i32, %struct.TYPE_2__*, %struct.palmas_regs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.palmas_regs_info = type { i32, i32, i32, i32 }
%struct.palmas_pmic_platform_data = type { i32**, %struct.palmas_reg_init** }
%struct.palmas_reg_init = type { i64 }
%struct.regulator_config = type { i32, i32* }
%struct.regulator_dev = type { i32 }

@TPS65917_REG_SMPS2 = common dso_local global i32 0, align 4
@TPS65917_REG_SMPS1 = common dso_local global i32 0, align 4
@TPS65917_SMPS1_VOLTAGE_RANGE = common dso_local global i32 0, align 4
@smps_high_ranges = common dso_local global i32 0, align 4
@smps_low_ranges = common dso_local global i32 0, align 4
@tps65917_ops_ext_control_smps = common dso_local global i32 0, align 4
@tps65917_ops_smps = common dso_local global i32 0, align 4
@PALMAS_SMPS_NUM_VOLTAGES = common dso_local global i32 0, align 4
@PALMAS_SMPS_BASE = common dso_local global i32 0, align 4
@PALMAS_SMPS12_VOLTAGE_VSEL_MASK = common dso_local global i32 0, align 4
@PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK = common dso_local global i32 0, align 4
@SMPS_CTRL_MODE_ON = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, i32, i32*)* @tps65917_smps_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65917_smps_registration(%struct.palmas_pmic* %0, %struct.palmas_pmic_driver_data* %1, %struct.palmas_pmic_platform_data* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.palmas_pmic*, align 8
  %10 = alloca %struct.palmas_pmic_driver_data*, align 8
  %11 = alloca %struct.palmas_pmic_platform_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.regulator_dev*, align 8
  %18 = alloca %struct.palmas_reg_init*, align 8
  %19 = alloca %struct.palmas_regs_info*, align 8
  %20 = alloca %struct.regulator_desc*, align 8
  %21 = bitcast %struct.regulator_config* %8 to { i32, i32* }*
  %22 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %21, i32 0, i32 0
  store i32 %4, i32* %22, align 8
  %23 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %21, i32 0, i32 1
  store i32* %5, i32** %23, align 8
  store %struct.palmas_pmic* %0, %struct.palmas_pmic** %9, align 8
  store %struct.palmas_pmic_driver_data* %1, %struct.palmas_pmic_driver_data** %10, align 8
  store %struct.palmas_pmic_platform_data* %2, %struct.palmas_pmic_platform_data** %11, align 8
  store i8* %3, i8** %12, align 8
  %24 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %25 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %259, %6
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %30 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %28, %31
  br i1 %32, label %33, label %262

33:                                               ; preds = %27
  %34 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %35 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %34, i32 0, i32 5
  %36 = load %struct.regulator_desc*, %struct.regulator_desc** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %36, i64 %38
  store %struct.regulator_desc* %39, %struct.regulator_desc** %20, align 8
  %40 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %41 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %40, i32 0, i32 0
  store i32 3, i32* %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @TPS65917_REG_SMPS2, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @TPS65917_REG_SMPS1, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45, %33
  %50 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %51 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %259

55:                                               ; preds = %49, %45
  %56 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %57 = icmp ne %struct.palmas_pmic_platform_data* %56, null
  br i1 %57, label %58, label %86

58:                                               ; preds = %55
  %59 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %60 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %59, i32 0, i32 1
  %61 = load %struct.palmas_reg_init**, %struct.palmas_reg_init*** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.palmas_reg_init*, %struct.palmas_reg_init** %61, i64 %63
  %65 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %64, align 8
  %66 = icmp ne %struct.palmas_reg_init* %65, null
  br i1 %66, label %67, label %86

67:                                               ; preds = %58
  %68 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %69 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %68, i32 0, i32 1
  %70 = load %struct.palmas_reg_init**, %struct.palmas_reg_init*** %69, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.palmas_reg_init*, %struct.palmas_reg_init** %70, i64 %72
  %74 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %73, align 8
  store %struct.palmas_reg_init* %74, %struct.palmas_reg_init** %18, align 8
  %75 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %76 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %18, align 8
  %80 = call i32 @palmas_smps_init(i32 %77, i32 %78, %struct.palmas_reg_init* %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %67
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %7, align 4
  br label %263

85:                                               ; preds = %67
  br label %87

86:                                               ; preds = %58, %55
  store %struct.palmas_reg_init* null, %struct.palmas_reg_init** %18, align 8
  br label %87

87:                                               ; preds = %86, %85
  %88 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %89 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %88, i32 0, i32 3
  %90 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %90, i64 %92
  store %struct.palmas_regs_info* %93, %struct.palmas_regs_info** %19, align 8
  %94 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %95 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %98 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %97, i32 0, i32 14
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %101 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %103 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %15, align 4
  %105 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %106 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @palmas_smps_read(i32 %107, i32 %108, i32* %16)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %87
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %7, align 4
  br label %263

114:                                              ; preds = %87
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @TPS65917_SMPS1_VOLTAGE_RANGE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %121 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %114
  %127 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %128 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %126
  %136 = load i32, i32* @smps_high_ranges, align 4
  %137 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %138 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %137, i32 0, i32 13
  store i32 %136, i32* %138, align 8
  br label %143

139:                                              ; preds = %126
  %140 = load i32, i32* @smps_low_ranges, align 4
  %141 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %142 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %141, i32 0, i32 13
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %139, %135
  %144 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %18, align 8
  %145 = icmp ne %struct.palmas_reg_init* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %18, align 8
  %148 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %153 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %152, i32 0, i32 12
  store i32* @tps65917_ops_ext_control_smps, i32** %153, align 8
  br label %157

154:                                              ; preds = %146, %143
  %155 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %156 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %155, i32 0, i32 12
  store i32* @tps65917_ops_smps, i32** %156, align 8
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* @PALMAS_SMPS_NUM_VOLTAGES, align 4
  %159 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %160 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %159, i32 0, i32 11
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @PALMAS_SMPS_BASE, align 4
  %162 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %163 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @PALMAS_BASE_TO_REG(i32 %161, i32 %164)
  %166 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %167 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %166, i32 0, i32 10
  store i8* %165, i8** %167, align 8
  %168 = load i32, i32* @PALMAS_SMPS12_VOLTAGE_VSEL_MASK, align 4
  %169 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %170 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %169, i32 0, i32 9
  store i32 %168, i32* %170, align 8
  %171 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %172 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %171, i32 0, i32 2
  store i32 2500, i32* %172, align 8
  %173 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %174 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %15, align 4
  %176 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %177 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @palmas_smps_read(i32 %178, i32 %179, i32* %16)
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %157
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %7, align 4
  br label %263

185:                                              ; preds = %157
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* @PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK, align 4
  %188 = and i32 %186, %187
  %189 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %190 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  %195 = load i32, i32* @PALMAS_SMPS_BASE, align 4
  %196 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %197 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i8* @PALMAS_BASE_TO_REG(i32 %195, i32 %198)
  %200 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %201 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %200, i32 0, i32 8
  store i8* %199, i8** %201, align 8
  %202 = load i32, i32* @PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK, align 4
  %203 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %204 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* @SMPS_CTRL_MODE_ON, align 4
  %206 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %207 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %209 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %210 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* @THIS_MODULE, align 4
  %212 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %213 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %212, i32 0, i32 5
  store i32 %211, i32* %213, align 4
  %214 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %215 = icmp ne %struct.palmas_pmic_platform_data* %214, null
  br i1 %215, label %216, label %225

216:                                              ; preds = %185
  %217 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %218 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %217, i32 0, i32 0
  %219 = load i32**, i32*** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32* %223, i32** %224, align 8
  br label %227

225:                                              ; preds = %185
  %226 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32* null, i32** %226, align 8
  br label %227

227:                                              ; preds = %225, %216
  %228 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %229 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %232 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  %233 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %234 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %233, i32 0, i32 2
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %240, i32* %241, align 8
  %242 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %243 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %246 = call %struct.regulator_dev* @devm_regulator_register(i32 %244, %struct.regulator_desc* %245, %struct.regulator_config* %8)
  store %struct.regulator_dev* %246, %struct.regulator_dev** %17, align 8
  %247 = load %struct.regulator_dev*, %struct.regulator_dev** %17, align 8
  %248 = call i64 @IS_ERR(%struct.regulator_dev* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %227
  %251 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %252 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load i8*, i8** %12, align 8
  %255 = call i32 @dev_err(i32 %253, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %254)
  %256 = load %struct.regulator_dev*, %struct.regulator_dev** %17, align 8
  %257 = call i32 @PTR_ERR(%struct.regulator_dev* %256)
  store i32 %257, i32* %7, align 4
  br label %263

258:                                              ; preds = %227
  br label %259

259:                                              ; preds = %258, %54
  %260 = load i32, i32* %13, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %13, align 4
  br label %27

262:                                              ; preds = %27
  store i32 0, i32* %7, align 4
  br label %263

263:                                              ; preds = %262, %250, %183, %112, %83
  %264 = load i32, i32* %7, align 4
  ret i32 %264
}

declare dso_local i32 @palmas_smps_init(i32, i32, %struct.palmas_reg_init*) #1

declare dso_local i32 @palmas_smps_read(i32, i32, i32*) #1

declare dso_local i8* @PALMAS_BASE_TO_REG(i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
