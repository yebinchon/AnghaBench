; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_smps_registration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_smps_registration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.palmas_pmic = type { i32*, i32*, i32, i32, i32*, %struct.regulator_desc*, i32, i32 }
%struct.regulator_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32*, i32, i8*, i8*, i8*, i32, i32 }
%struct.palmas_pmic_driver_data = type { i32, i32, %struct.TYPE_2__*, %struct.palmas_regs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.palmas_regs_info = type { i32, i32, i32, i32, i32 }
%struct.palmas_pmic_platform_data = type { i32**, %struct.palmas_reg_init** }
%struct.palmas_reg_init = type { i32 }
%struct.regulator_config = type { i32, i32* }
%struct.regulator_dev = type { i32 }

@SMPS10_BOOST = common dso_local global i32 0, align 4
@PALMAS_REG_SMPS6 = common dso_local global i32 0, align 4
@PALMAS_REG_SMPS8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reading TSTEP reg failed: %d\0A\00", align 1
@palmas_smps_ramp_delay = common dso_local global i32* null, align 8
@PALMAS_SMPS10_NUM_VOLTAGES = common dso_local global i32 0, align 4
@palmas_ops_smps10 = common dso_local global i32 0, align 4
@PALMAS_SMPS_BASE = common dso_local global i32 0, align 4
@PALMAS_SMPS10_CTRL = common dso_local global i32 0, align 4
@SMPS10_VSEL = common dso_local global i32 0, align 4
@SMPS10_SWITCH_EN = common dso_local global i32 0, align 4
@SMPS10_BOOST_EN = common dso_local global i32 0, align 4
@SMPS10_BYPASS_EN = common dso_local global i8* null, align 8
@PALMAS_SMPS12_VOLTAGE_RANGE = common dso_local global i32 0, align 4
@smps_high_ranges = common dso_local global i32 0, align 4
@smps_low_ranges = common dso_local global i32 0, align 4
@palmas_ops_ext_control_smps = common dso_local global i32 0, align 4
@palmas_ops_smps = common dso_local global i32 0, align 4
@PALMAS_SMPS_NUM_VOLTAGES = common dso_local global i32 0, align 4
@PALMAS_SMPS12_VOLTAGE_VSEL_MASK = common dso_local global i32 0, align 4
@PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK = common dso_local global i32 0, align 4
@SMPS_CTRL_MODE_ON = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.palmas_pmic*, %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_platform_data*, i8*, i32, i32*)* @palmas_smps_registration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_smps_registration(%struct.palmas_pmic* %0, %struct.palmas_pmic_driver_data* %1, %struct.palmas_pmic_platform_data* %2, i8* %3, i32 %4, i32* %5) #0 {
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
  %21 = alloca i32, align 4
  %22 = bitcast %struct.regulator_config* %8 to { i32, i32* }*
  %23 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %22, i32 0, i32 0
  store i32 %4, i32* %23, align 8
  %24 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %22, i32 0, i32 1
  store i32* %5, i32** %24, align 8
  store %struct.palmas_pmic* %0, %struct.palmas_pmic** %9, align 8
  store %struct.palmas_pmic_driver_data* %1, %struct.palmas_pmic_driver_data** %10, align 8
  store %struct.palmas_pmic_platform_data* %2, %struct.palmas_pmic_platform_data** %11, align 8
  store i8* %3, i8** %12, align 8
  %25 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %26 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %387, %6
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %31 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %390

34:                                               ; preds = %28
  store i32 0, i32* %21, align 4
  %35 = load i32, i32* %13, align 4
  switch i32 %35, label %81 [
    i32 133, label %36
    i32 131, label %36
    i32 132, label %47
    i32 130, label %54
    i32 128, label %54
    i32 129, label %65
    i32 135, label %72
    i32 134, label %72
  ]

36:                                               ; preds = %34, %34
  %37 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %38 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %387

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 133
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %21, align 4
  br label %46

46:                                               ; preds = %45, %42
  br label %81

47:                                               ; preds = %34
  %48 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %49 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %387

53:                                               ; preds = %47
  store i32 1, i32* %21, align 4
  br label %81

54:                                               ; preds = %34, %34
  %55 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %56 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %387

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 130
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* %21, align 4
  br label %64

64:                                               ; preds = %63, %60
  br label %81

65:                                               ; preds = %34
  %66 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %67 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %387

71:                                               ; preds = %65
  store i32 1, i32* %21, align 4
  br label %81

72:                                               ; preds = %34, %34
  %73 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %74 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SMPS10_BOOST, align 4
  %77 = call i32 @PALMAS_PMIC_HAS(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %387

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %34, %71, %64, %53, %46
  %82 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %83 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %82, i32 0, i32 3
  %84 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %84, i64 %86
  store %struct.palmas_regs_info* %87, %struct.palmas_regs_info** %19, align 8
  %88 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %89 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %88, i32 0, i32 5
  %90 = load %struct.regulator_desc*, %struct.regulator_desc** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %90, i64 %92
  store %struct.regulator_desc* %93, %struct.regulator_desc** %20, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @PALMAS_REG_SMPS6, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @PALMAS_REG_SMPS8, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %81
  store i32 1, i32* %21, align 4
  br label %102

102:                                              ; preds = %101, %97
  %103 = load i32, i32* %21, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %102
  %106 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %107 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %15, align 4
  %109 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %110 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @palmas_smps_read(i32 %111, i32 %112, i32* %16)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %118 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = call i32 (i32, i8*, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %7, align 4
  br label %391

123:                                              ; preds = %105
  %124 = load i32*, i32** @palmas_smps_ramp_delay, align 8
  %125 = load i32, i32* %16, align 4
  %126 = and i32 %125, 3
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %131 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %130, i32 0, i32 19
  store i32 %129, i32* %131, align 4
  %132 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %133 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %132, i32 0, i32 19
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %136 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  br label %141

141:                                              ; preds = %123, %102
  %142 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %143 = icmp ne %struct.palmas_pmic_platform_data* %142, null
  br i1 %143, label %144, label %172

144:                                              ; preds = %141
  %145 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %146 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %145, i32 0, i32 1
  %147 = load %struct.palmas_reg_init**, %struct.palmas_reg_init*** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.palmas_reg_init*, %struct.palmas_reg_init** %147, i64 %149
  %151 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %150, align 8
  %152 = icmp ne %struct.palmas_reg_init* %151, null
  br i1 %152, label %153, label %172

153:                                              ; preds = %144
  %154 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %155 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %154, i32 0, i32 1
  %156 = load %struct.palmas_reg_init**, %struct.palmas_reg_init*** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.palmas_reg_init*, %struct.palmas_reg_init** %156, i64 %158
  %160 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %159, align 8
  store %struct.palmas_reg_init* %160, %struct.palmas_reg_init** %18, align 8
  %161 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %162 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %18, align 8
  %166 = call i32 @palmas_smps_init(i32 %163, i32 %164, %struct.palmas_reg_init* %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %153
  %170 = load i32, i32* %14, align 4
  store i32 %170, i32* %7, align 4
  br label %391

171:                                              ; preds = %153
  br label %173

172:                                              ; preds = %144, %141
  store %struct.palmas_reg_init* null, %struct.palmas_reg_init** %18, align 8
  br label %173

173:                                              ; preds = %172, %171
  %174 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %175 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %178 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %177, i32 0, i32 18
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %181 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load i32, i32* %13, align 4
  switch i32 %182, label %228 [
    i32 135, label %183
    i32 134, label %183
  ]

183:                                              ; preds = %173, %173
  %184 = load i32, i32* @PALMAS_SMPS10_NUM_VOLTAGES, align 4
  %185 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %186 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %185, i32 0, i32 12
  store i32 %184, i32* %186, align 8
  %187 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %188 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %187, i32 0, i32 13
  store i32* @palmas_ops_smps10, i32** %188, align 8
  %189 = load i32, i32* @PALMAS_SMPS_BASE, align 4
  %190 = load i32, i32* @PALMAS_SMPS10_CTRL, align 4
  %191 = call i8* @PALMAS_BASE_TO_REG(i32 %189, i32 %190)
  %192 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %193 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %192, i32 0, i32 11
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* @SMPS10_VSEL, align 4
  %195 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %196 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %195, i32 0, i32 10
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* @PALMAS_SMPS_BASE, align 4
  %198 = load i32, i32* @PALMAS_SMPS10_CTRL, align 4
  %199 = call i8* @PALMAS_BASE_TO_REG(i32 %197, i32 %198)
  %200 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %201 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %200, i32 0, i32 9
  store i8* %199, i8** %201, align 8
  %202 = load i32, i32* %13, align 4
  %203 = icmp eq i32 %202, 135
  br i1 %203, label %204, label %208

204:                                              ; preds = %183
  %205 = load i32, i32* @SMPS10_SWITCH_EN, align 4
  %206 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %207 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  br label %212

208:                                              ; preds = %183
  %209 = load i32, i32* @SMPS10_BOOST_EN, align 4
  %210 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %211 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  br label %212

212:                                              ; preds = %208, %204
  %213 = load i32, i32* @PALMAS_SMPS_BASE, align 4
  %214 = load i32, i32* @PALMAS_SMPS10_CTRL, align 4
  %215 = call i8* @PALMAS_BASE_TO_REG(i32 %213, i32 %214)
  %216 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %217 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %216, i32 0, i32 17
  store i8* %215, i8** %217, align 8
  %218 = load i8*, i8** @SMPS10_BYPASS_EN, align 8
  %219 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %220 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %219, i32 0, i32 16
  store i8* %218, i8** %220, align 8
  %221 = load i8*, i8** @SMPS10_BYPASS_EN, align 8
  %222 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %223 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %222, i32 0, i32 15
  store i8* %221, i8** %223, align 8
  %224 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %225 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %224, i32 0, i32 2
  store i32 3750000, i32* %225, align 8
  %226 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %227 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %226, i32 0, i32 3
  store i32 1250000, i32* %227, align 4
  br label %335

228:                                              ; preds = %173
  %229 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %230 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %15, align 4
  %232 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %233 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %232, i32 0, i32 4
  store i32 3, i32* %233, align 8
  %234 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %235 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %15, align 4
  %238 = call i32 @palmas_smps_read(i32 %236, i32 %237, i32* %16)
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %228
  %242 = load i32, i32* %14, align 4
  store i32 %242, i32* %7, align 4
  br label %391

243:                                              ; preds = %228
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* @PALMAS_SMPS12_VOLTAGE_RANGE, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %243
  %249 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %250 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 1, i32* %254, align 4
  br label %255

255:                                              ; preds = %248, %243
  %256 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %257 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %255
  %265 = load i32, i32* @smps_high_ranges, align 4
  %266 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %267 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %266, i32 0, i32 14
  store i32 %265, i32* %267, align 8
  br label %272

268:                                              ; preds = %255
  %269 = load i32, i32* @smps_low_ranges, align 4
  %270 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %271 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %270, i32 0, i32 14
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %268, %264
  %273 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %18, align 8
  %274 = icmp ne %struct.palmas_reg_init* %273, null
  br i1 %274, label %275, label %283

275:                                              ; preds = %272
  %276 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %18, align 8
  %277 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %282 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %281, i32 0, i32 13
  store i32* @palmas_ops_ext_control_smps, i32** %282, align 8
  br label %286

283:                                              ; preds = %275, %272
  %284 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %285 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %284, i32 0, i32 13
  store i32* @palmas_ops_smps, i32** %285, align 8
  br label %286

286:                                              ; preds = %283, %280
  %287 = load i32, i32* @PALMAS_SMPS_NUM_VOLTAGES, align 4
  %288 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %289 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %288, i32 0, i32 12
  store i32 %287, i32* %289, align 8
  %290 = load i32, i32* @PALMAS_SMPS_BASE, align 4
  %291 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %292 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i8* @PALMAS_BASE_TO_REG(i32 %290, i32 %293)
  %295 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %296 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %295, i32 0, i32 11
  store i8* %294, i8** %296, align 8
  %297 = load i32, i32* @PALMAS_SMPS12_VOLTAGE_VSEL_MASK, align 4
  %298 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %299 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %298, i32 0, i32 10
  store i32 %297, i32* %299, align 8
  %300 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %301 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %15, align 4
  %303 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %304 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %15, align 4
  %307 = call i32 @palmas_smps_read(i32 %305, i32 %306, i32* %16)
  store i32 %307, i32* %14, align 4
  %308 = load i32, i32* %14, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %286
  %311 = load i32, i32* %14, align 4
  store i32 %311, i32* %7, align 4
  br label %391

312:                                              ; preds = %286
  %313 = load i32, i32* %16, align 4
  %314 = load i32, i32* @PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK, align 4
  %315 = and i32 %313, %314
  %316 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %317 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %315, i32* %321, align 4
  %322 = load i32, i32* @PALMAS_SMPS_BASE, align 4
  %323 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %324 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = call i8* @PALMAS_BASE_TO_REG(i32 %322, i32 %325)
  %327 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %328 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %327, i32 0, i32 9
  store i8* %326, i8** %328, align 8
  %329 = load i32, i32* @PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK, align 4
  %330 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %331 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %330, i32 0, i32 1
  store i32 %329, i32* %331, align 4
  %332 = load i32, i32* @SMPS_CTRL_MODE_ON, align 4
  %333 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %334 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %333, i32 0, i32 8
  store i32 %332, i32* %334, align 8
  br label %335

335:                                              ; preds = %312, %212
  %336 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %337 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %338 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %337, i32 0, i32 7
  store i32 %336, i32* %338, align 4
  %339 = load i32, i32* @THIS_MODULE, align 4
  %340 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %341 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %340, i32 0, i32 6
  store i32 %339, i32* %341, align 8
  %342 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %343 = icmp ne %struct.palmas_pmic_platform_data* %342, null
  br i1 %343, label %344, label %353

344:                                              ; preds = %335
  %345 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %11, align 8
  %346 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %345, i32 0, i32 0
  %347 = load i32**, i32*** %346, align 8
  %348 = load i32, i32* %13, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32*, i32** %347, i64 %349
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32* %351, i32** %352, align 8
  br label %355

353:                                              ; preds = %335
  %354 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32* null, i32** %354, align 8
  br label %355

355:                                              ; preds = %353, %344
  %356 = load %struct.palmas_regs_info*, %struct.palmas_regs_info** %19, align 8
  %357 = getelementptr inbounds %struct.palmas_regs_info, %struct.palmas_regs_info* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %360 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %359, i32 0, i32 5
  store i32 %358, i32* %360, align 4
  %361 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %10, align 8
  %362 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %361, i32 0, i32 2
  %363 = load %struct.TYPE_2__*, %struct.TYPE_2__** %362, align 8
  %364 = load i32, i32* %13, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %368, i32* %369, align 8
  %370 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %371 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.regulator_desc*, %struct.regulator_desc** %20, align 8
  %374 = call %struct.regulator_dev* @devm_regulator_register(i32 %372, %struct.regulator_desc* %373, %struct.regulator_config* %8)
  store %struct.regulator_dev* %374, %struct.regulator_dev** %17, align 8
  %375 = load %struct.regulator_dev*, %struct.regulator_dev** %17, align 8
  %376 = call i64 @IS_ERR(%struct.regulator_dev* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %386

378:                                              ; preds = %355
  %379 = load %struct.palmas_pmic*, %struct.palmas_pmic** %9, align 8
  %380 = getelementptr inbounds %struct.palmas_pmic, %struct.palmas_pmic* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = load i8*, i8** %12, align 8
  %383 = call i32 (i32, i8*, ...) @dev_err(i32 %381, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %382)
  %384 = load %struct.regulator_dev*, %struct.regulator_dev** %17, align 8
  %385 = call i32 @PTR_ERR(%struct.regulator_dev* %384)
  store i32 %385, i32* %7, align 4
  br label %391

386:                                              ; preds = %355
  br label %387

387:                                              ; preds = %386, %79, %70, %59, %52, %41
  %388 = load i32, i32* %13, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %13, align 4
  br label %28

390:                                              ; preds = %28
  store i32 0, i32* %7, align 4
  br label %391

391:                                              ; preds = %390, %378, %310, %241, %169, %116
  %392 = load i32, i32* %7, align 4
  ret i32 %392
}

declare dso_local i32 @PALMAS_PMIC_HAS(i32, i32) #1

declare dso_local i32 @palmas_smps_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @palmas_smps_init(i32, i32, %struct.palmas_reg_init*) #1

declare dso_local i8* @PALMAS_BASE_TO_REG(i32, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(i32, %struct.regulator_desc*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
