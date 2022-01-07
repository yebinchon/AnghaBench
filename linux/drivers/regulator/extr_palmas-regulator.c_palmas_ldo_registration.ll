; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_ldo_registration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_ldo_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_pmic = type { i32, i32, %struct.regulator_desc* }
%struct.regulator_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i8*, i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.palmas_pmic_driver_data = type { i32, i32, i32, %struct.TYPE_2__*, i32, %struct.palmas_regs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.palmas_regs_info = type { i32, i32, i32, i32 }
%struct.palmas_pmic_platform_data = type { %struct.palmas_reg_init**, i32**, i64, i64 }
%struct.palmas_reg_init = type { i64 }
%struct.regulator_config = type { i32, i32* }
%struct.regulator_dev = type { i32 }

@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@PALMAS_REG_REGEN1 = common dso_local global i32 0, align 4
@PALMAS_LDO_NUM_VOLTAGES = common dso_local global i32 0, align 4
@palmas_ops_ext_control_ldo = common dso_local global i32 0, align 4
@palmas_ops_ldo = common dso_local global i32 0, align 4
@PALMAS_LDO_BASE = common dso_local global i32 0, align 4
@PALMAS_LDO1_VOLTAGE_VSEL_MASK = common dso_local global i32 0, align 4
@PALMAS_LDO1_CTRL_MODE_ACTIVE = common dso_local global i32 0, align 4
@PALMAS_REG_LDO8 = common dso_local global i32 0, align 4
@PALMAS_REG_LDO6 = common dso_local global i32 0, align 4
@PALMAS_REG_LDO9 = common dso_local global i32 0, align 4
@palmas_ops_ldo9 = common dso_local global i32 0, align 4
@PALMAS_LDO9_CTRL_LDO_BYPASS_EN = common dso_local global i8* null, align 8
@PALMAS_REG_REGEN3 = common dso_local global i32 0, align 4
@palmas_ops_ext_control_extreg = common dso_local global i32 0, align 4
@palmas_ops_extreg = common dso_local global i32 0, align 4
@PALMAS_RESOURCE_BASE = common dso_local global i32 0, align 4
@PALMAS_REGEN1_CTRL_MODE_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, i32, i32*)* @palmas_ldo_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_ldo_registration(%struct.palmas_pmic* %0, %struct.palmas_pmic_driver_data* %1, %struct.palmas_pmic_platform_data* %2, i8* %3, i32 %4, i32* %5) #0 {
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

25:                                               ; preds = %305, %6
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %28 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %308

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
  %54 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %53, i32 0, i32 5
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
  %69 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %68, i32 0, i32 17
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %72 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %74 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %75 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %74, i32 0, i32 16
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @THIS_MODULE, align 4
  %77 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %78 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %77, i32 0, i32 15
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @PALMAS_REG_REGEN1, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %182

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
  %95 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %94, i32 0, i32 9
  store i32* @palmas_ops_ext_control_ldo, i32** %95, align 8
  br label %99

96:                                               ; preds = %88, %82
  %97 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %98 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %97, i32 0, i32 9
  store i32* @palmas_ops_ldo, i32** %98, align 8
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
  %114 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %113, i32 0, i32 14
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @PALMAS_LDO1_VOLTAGE_VSEL_MASK, align 4
  %116 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %117 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %116, i32 0, i32 13
  store i32 %115, i32* %117, align 8
  %118 = load i32, i32* @PALMAS_LDO_BASE, align 4
  %119 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %120 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @PALMAS_BASE_TO_REG(i32 %118, i32 %121)
  %123 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %124 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %123, i32 0, i32 8
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @PALMAS_LDO1_CTRL_MODE_ACTIVE, align 4
  %126 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %127 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %129 = icmp ne %struct.palmas_pmic_platform_data* %128, null
  br i1 %129, label %130, label %148

130:                                              ; preds = %99
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @PALMAS_REG_LDO8, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %136 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %141 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @palmas_enable_ldo8_track(i32 %142)
  %144 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %145 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %144, i32 0, i32 2
  store i32 450000, i32* %145, align 8
  %146 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %147 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %146, i32 0, i32 3
  store i32 25000, i32* %147, align 4
  br label %148

148:                                              ; preds = %139, %134, %130, %99
  %149 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %150 = icmp ne %struct.palmas_pmic_platform_data* %149, null
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %153 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @PALMAS_REG_LDO6, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %162 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %161, i32 0, i32 5
  store i32 2000, i32* %162, align 4
  br label %163

163:                                              ; preds = %160, %156, %151, %148
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* @PALMAS_REG_LDO9, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %163
  %168 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %169 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %168, i32 0, i32 9
  store i32* @palmas_ops_ldo9, i32** %169, align 8
  %170 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %171 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %170, i32 0, i32 8
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %174 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %173, i32 0, i32 12
  store i8* %172, i8** %174, align 8
  %175 = load i8*, i8** @PALMAS_LDO9_CTRL_LDO_BYPASS_EN, align 8
  %176 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %177 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %176, i32 0, i32 11
  store i8* %175, i8** %177, align 8
  %178 = load i8*, i8** @PALMAS_LDO9_CTRL_LDO_BYPASS_EN, align 8
  %179 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %180 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %179, i32 0, i32 10
  store i8* %178, i8** %180, align 8
  br label %181

181:                                              ; preds = %167, %163
  br label %219

182:                                              ; preds = %52
  %183 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %184 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* @PALMAS_REG_REGEN3, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %305

192:                                              ; preds = %187, %182
  %193 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %194 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %193, i32 0, i32 1
  store i32 1, i32* %194, align 4
  %195 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %196 = icmp ne %struct.palmas_reg_init* %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %199 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %204 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %203, i32 0, i32 9
  store i32* @palmas_ops_ext_control_extreg, i32** %204, align 8
  br label %208

205:                                              ; preds = %197, %192
  %206 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %207 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %206, i32 0, i32 9
  store i32* @palmas_ops_extreg, i32** %207, align 8
  br label %208

208:                                              ; preds = %205, %202
  %209 = load i32, i32* @PALMAS_RESOURCE_BASE, align 4
  %210 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %211 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @PALMAS_BASE_TO_REG(i32 %209, i32 %212)
  %214 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %215 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %214, i32 0, i32 8
  store i8* %213, i8** %215, align 8
  %216 = load i32, i32* @PALMAS_REGEN1_CTRL_MODE_ACTIVE, align 4
  %217 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %218 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %208, %181
  %220 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %221 = icmp ne %struct.palmas_pmic_platform_data* %220, null
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %224 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %223, i32 0, i32 1
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32* %229, i32** %230, align 8
  br label %233

231:                                              ; preds = %219
  %232 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32* null, i32** %232, align 8
  br label %233

233:                                              ; preds = %231, %222
  %234 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %17, align 8
  %235 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %238 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %237, i32 0, i32 6
  store i32 %236, i32* %238, align 8
  %239 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %240 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %239, i32 0, i32 3
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %246, i32* %247, align 8
  %248 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %249 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.regulator_desc*, %struct.regulator_desc** %18, align 8
  %252 = call %struct.regulator_dev* @devm_regulator_register(i32 %250, %struct.regulator_desc* %251, %struct.regulator_config* %8)
  store %struct.regulator_dev* %252, %struct.regulator_dev** %15, align 8
  %253 = load %struct.regulator_dev*, %struct.regulator_dev** %15, align 8
  %254 = call i64 @IS_ERR(%struct.regulator_dev* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %233
  %257 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %258 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i8*, i8** %12, align 8
  %261 = call i32 @dev_err(i32 %259, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %260)
  %262 = load %struct.regulator_dev*, %struct.regulator_dev** %15, align 8
  %263 = call i32 @PTR_ERR(%struct.regulator_dev* %262)
  store i32 %263, i32* %7, align 4
  br label %309

264:                                              ; preds = %233
  %265 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %266 = icmp ne %struct.palmas_pmic_platform_data* %265, null
  br i1 %266, label %267, label %304

267:                                              ; preds = %264
  %268 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %269 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %268, i32 0, i32 0
  %270 = load %struct.palmas_reg_init**, %struct.palmas_reg_init*** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.palmas_reg_init*, %struct.palmas_reg_init** %270, i64 %272
  %274 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %273, align 8
  store %struct.palmas_reg_init* %274, %struct.palmas_reg_init** %16, align 8
  %275 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %276 = icmp ne %struct.palmas_reg_init* %275, null
  br i1 %276, label %277, label %303

277:                                              ; preds = %267
  %278 = load i32, i32* %13, align 4
  %279 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %280 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = icmp sle i32 %278, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %277
  %284 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %285 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %13, align 4
  %288 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %289 = call i32 @palmas_ldo_init(i32 %286, i32 %287, %struct.palmas_reg_init* %288)
  store i32 %289, i32* %14, align 4
  br label %297

290:                                              ; preds = %277
  %291 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %292 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %16, align 8
  %296 = call i32 @palmas_extreg_init(i32 %293, i32 %294, %struct.palmas_reg_init* %295)
  store i32 %296, i32* %14, align 4
  br label %297

297:                                              ; preds = %290, %283
  %298 = load i32, i32* %14, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i32, i32* %14, align 4
  store i32 %301, i32* %7, align 4
  br label %309

302:                                              ; preds = %297
  br label %303

303:                                              ; preds = %302, %267
  br label %304

304:                                              ; preds = %303, %264
  br label %305

305:                                              ; preds = %304, %191
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %25

308:                                              ; preds = %25
  store i32 0, i32* %7, align 4
  br label %309

309:                                              ; preds = %308, %300, %256
  %310 = load i32, i32* %7, align 4
  ret i32 %310
}

declare dso_local i8* @PALMAS_BASE_TO_REG(i32, i32) #1

declare dso_local i32 @palmas_enable_ldo8_track(i32) #1

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
