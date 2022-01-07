; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps_info = type { i8*, i32, i32, i32 }
%struct.platform_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tps6507x_dev = type { %struct.tps6507x_pmic*, i32 }
%struct.tps6507x_pmic = type { %struct.TYPE_5__*, %struct.tps_info**, %struct.tps6507x_dev*, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32*, i32, i32, i32, i8*, i8* }
%struct.regulator_config = type { %struct.tps6507x_pmic*, %struct.regulator_init_data*, i32 }
%struct.regulator_init_data = type { %struct.tps6507x_reg_platform_data* }
%struct.tps6507x_reg_platform_data = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.tps6507x_board = type { %struct.regulator_init_data* }

@tps6507x_pmic_regs = common dso_local global %struct.tps_info* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TPS6507X_NUM_REGULATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@tps6507x_pmic_of_parse_cb = common dso_local global i32 0, align 4
@tps6507x_pmic_ops = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps6507x_pmic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6507x_pmic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps6507x_dev*, align 8
  %5 = alloca %struct.tps_info*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca %struct.regulator_dev*, align 8
  %9 = alloca %struct.tps6507x_pmic*, align 8
  %10 = alloca %struct.tps6507x_board*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tps6507x_reg_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.tps6507x_dev* @dev_get_drvdata(i32 %16)
  store %struct.tps6507x_dev* %17, %struct.tps6507x_dev** %4, align 8
  %18 = load %struct.tps_info*, %struct.tps_info** @tps6507x_pmic_regs, align 8
  %19 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %18, i64 0
  store %struct.tps_info* %19, %struct.tps_info** %5, align 8
  %20 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %7, align 8
  %21 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %4, align 8
  %22 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.tps6507x_board* @dev_get_platdata(i32 %23)
  store %struct.tps6507x_board* %24, %struct.tps6507x_board** %10, align 8
  %25 = load %struct.tps6507x_board*, %struct.tps6507x_board** %10, align 8
  %26 = icmp ne %struct.tps6507x_board* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.tps6507x_board*, %struct.tps6507x_board** %10, align 8
  %29 = getelementptr inbounds %struct.tps6507x_board, %struct.tps6507x_board* %28, i32 0, i32 0
  %30 = load %struct.regulator_init_data*, %struct.regulator_init_data** %29, align 8
  store %struct.regulator_init_data* %30, %struct.regulator_init_data** %7, align 8
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 1
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.tps6507x_pmic* @devm_kzalloc(%struct.TYPE_4__* %33, i32 32, i32 %34)
  store %struct.tps6507x_pmic* %35, %struct.tps6507x_pmic** %9, align 8
  %36 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %37 = icmp ne %struct.tps6507x_pmic* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %214

41:                                               ; preds = %31
  %42 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %43 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %42, i32 0, i32 3
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %4, align 8
  %46 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %47 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %46, i32 0, i32 2
  store %struct.tps6507x_dev* %45, %struct.tps6507x_dev** %47, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %202, %41
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @TPS6507X_NUM_REGULATOR, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %207

52:                                               ; preds = %48
  %53 = load %struct.tps_info*, %struct.tps_info** %5, align 8
  %54 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %55 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %54, i32 0, i32 1
  %56 = load %struct.tps_info**, %struct.tps_info*** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tps_info*, %struct.tps_info** %56, i64 %58
  store %struct.tps_info* %53, %struct.tps_info** %59, align 8
  %60 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %61 = icmp ne %struct.regulator_init_data* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %52
  %63 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %63, i64 %65
  %67 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %66, i32 0, i32 0
  %68 = load %struct.tps6507x_reg_platform_data*, %struct.tps6507x_reg_platform_data** %67, align 8
  %69 = icmp ne %struct.tps6507x_reg_platform_data* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %62
  %71 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %71, i64 %73
  %75 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %74, i32 0, i32 0
  %76 = load %struct.tps6507x_reg_platform_data*, %struct.tps6507x_reg_platform_data** %75, align 8
  store %struct.tps6507x_reg_platform_data* %76, %struct.tps6507x_reg_platform_data** %12, align 8
  %77 = load %struct.tps6507x_reg_platform_data*, %struct.tps6507x_reg_platform_data** %12, align 8
  %78 = getelementptr inbounds %struct.tps6507x_reg_platform_data, %struct.tps6507x_reg_platform_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tps_info*, %struct.tps_info** %5, align 8
  %81 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %70, %62, %52
  %83 = load %struct.tps_info*, %struct.tps_info** %5, align 8
  %84 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %87 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i8* %85, i8** %92, align 8
  %93 = load %struct.tps_info*, %struct.tps_info** %5, align 8
  %94 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @of_match_ptr(i8* %95)
  %97 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %98 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 9
  store i8* %96, i8** %103, align 8
  %104 = call i8* @of_match_ptr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %106 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 8
  store i8* %104, i8** %111, align 8
  %112 = load i32, i32* @tps6507x_pmic_of_parse_cb, align 4
  %113 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %114 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 7
  store i32 %112, i32* %119, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %122 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 %120, i32* %127, align 8
  %128 = load %struct.tps_info*, %struct.tps_info** %5, align 8
  %129 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %132 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 6
  store i32 %130, i32* %137, align 4
  %138 = load %struct.tps_info*, %struct.tps_info** %5, align 8
  %139 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %142 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  store i32 %140, i32* %147, align 8
  %148 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %149 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 4
  store i32* @tps6507x_pmic_ops, i32** %154, align 8
  %155 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %156 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %157 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 3
  store i32 %155, i32* %162, align 8
  %163 = load i32, i32* @THIS_MODULE, align 4
  %164 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %165 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %164, i32 0, i32 0
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  store i32 %163, i32* %170, align 4
  %171 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %4, align 8
  %172 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32 %173, i32* %174, align 8
  %175 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %176 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store %struct.regulator_init_data* %175, %struct.regulator_init_data** %176, align 8
  %177 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %178 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store %struct.tps6507x_pmic* %177, %struct.tps6507x_pmic** %178, align 8
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 1
  %181 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %182 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %181, i32 0, i32 0
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = call %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_4__* %180, %struct.TYPE_5__* %186, %struct.regulator_config* %6)
  store %struct.regulator_dev* %187, %struct.regulator_dev** %8, align 8
  %188 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %189 = call i64 @IS_ERR(%struct.regulator_dev* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %82
  %192 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %4, align 8
  %193 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @dev_err(i32 %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  %199 = load %struct.regulator_dev*, %struct.regulator_dev** %8, align 8
  %200 = call i32 @PTR_ERR(%struct.regulator_dev* %199)
  store i32 %200, i32* %2, align 4
  br label %214

201:                                              ; preds = %82
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  %205 = load %struct.tps_info*, %struct.tps_info** %5, align 8
  %206 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %205, i32 1
  store %struct.tps_info* %206, %struct.tps_info** %5, align 8
  br label %48

207:                                              ; preds = %48
  %208 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %9, align 8
  %209 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %4, align 8
  %210 = getelementptr inbounds %struct.tps6507x_dev, %struct.tps6507x_dev* %209, i32 0, i32 0
  store %struct.tps6507x_pmic* %208, %struct.tps6507x_pmic** %210, align 8
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = load %struct.tps6507x_dev*, %struct.tps6507x_dev** %4, align 8
  %213 = call i32 @platform_set_drvdata(%struct.platform_device* %211, %struct.tps6507x_dev* %212)
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %207, %191, %38
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local %struct.tps6507x_dev* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.tps6507x_board* @dev_get_platdata(i32) #1

declare dso_local %struct.tps6507x_pmic* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @of_match_ptr(i8*) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.TYPE_4__*, %struct.TYPE_5__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps6507x_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
