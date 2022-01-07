; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65090-regulator.c_tps65090_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65090-regulator.c_tps65090_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32* }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.tps65090 = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.tps65090_regulator = type { i64, %struct.tps65090_platform_data*, %struct.TYPE_10__*, i32, %struct.TYPE_11__* }
%struct.tps65090_platform_data = type { %struct.tps65090_regulator_plat_data** }
%struct.tps65090_regulator_plat_data = type { i64, i32*, i64, i32, i64 }
%struct.regulator_config = type { i64, i32*, i32*, i32, %struct.tps65090_regulator*, i32 }
%struct.regulator_dev = type { %struct.tps65090_regulator_plat_data** }
%struct.of_regulator_match = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"Probing regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Platform data missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS65090_REGULATOR_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65090_regulator_desc = common dso_local global %struct.TYPE_10__* null, align 8
@tps65090_ext_control_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed disable ext control\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tps65090_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65090_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tps65090*, align 8
  %5 = alloca %struct.tps65090_regulator*, align 8
  %6 = alloca %struct.regulator_config, align 8
  %7 = alloca %struct.regulator_dev*, align 8
  %8 = alloca %struct.tps65090_regulator_plat_data*, align 8
  %9 = alloca %struct.tps65090_regulator*, align 8
  %10 = alloca %struct.tps65090_platform_data*, align 8
  %11 = alloca %struct.of_regulator_match*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.tps65090* @dev_get_drvdata(i32 %17)
  store %struct.tps65090* %18, %struct.tps65090** %4, align 8
  store %struct.tps65090_regulator* null, %struct.tps65090_regulator** %5, align 8
  %19 = bitcast %struct.regulator_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 48, i1 false)
  store %struct.of_regulator_match* null, %struct.of_regulator_match** %11, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_dbg(%struct.TYPE_11__* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.tps65090_platform_data* @dev_get_platdata(i32 %26)
  store %struct.tps65090_platform_data* %27, %struct.tps65090_platform_data** %10, align 8
  %28 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %10, align 8
  %29 = icmp ne %struct.tps65090_platform_data* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %1
  %31 = load %struct.tps65090*, %struct.tps65090** %4, align 8
  %32 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call %struct.tps65090_platform_data* @tps65090_parse_dt_reg_data(%struct.platform_device* %38, %struct.of_regulator_match** %11)
  store %struct.tps65090_platform_data* %39, %struct.tps65090_platform_data** %10, align 8
  br label %40

40:                                               ; preds = %37, %30, %1
  %41 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %10, align 8
  %42 = call i64 @IS_ERR_OR_NULL(%struct.tps65090_platform_data* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %10, align 8
  %49 = icmp ne %struct.tps65090_platform_data* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %10, align 8
  %52 = call i32 @PTR_ERR(%struct.tps65090_platform_data* %51)
  br label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %53 ]
  store i32 %57, i32* %2, align 4
  br label %268

58:                                               ; preds = %40
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load i32, i32* @TPS65090_REGULATOR_MAX, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.tps65090_regulator* @devm_kcalloc(%struct.TYPE_11__* %60, i32 %61, i32 40, i32 %62)
  store %struct.tps65090_regulator* %63, %struct.tps65090_regulator** %9, align 8
  %64 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %9, align 8
  %65 = icmp ne %struct.tps65090_regulator* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %268

69:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %261, %69
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @TPS65090_REGULATOR_MAX, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %264

74:                                               ; preds = %70
  %75 = load %struct.tps65090_platform_data*, %struct.tps65090_platform_data** %10, align 8
  %76 = getelementptr inbounds %struct.tps65090_platform_data, %struct.tps65090_platform_data* %75, i32 0, i32 0
  %77 = load %struct.tps65090_regulator_plat_data**, %struct.tps65090_regulator_plat_data*** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %77, i64 %79
  %81 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %80, align 8
  store %struct.tps65090_regulator_plat_data* %81, %struct.tps65090_regulator_plat_data** %8, align 8
  %82 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %9, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %82, i64 %84
  store %struct.tps65090_regulator* %85, %struct.tps65090_regulator** %5, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %89 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %88, i32 0, i32 4
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @tps65090_regulator_desc, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %92
  %94 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %95 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %94, i32 0, i32 2
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %95, align 8
  %96 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %97 = icmp ne %struct.tps65090_regulator_plat_data* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %74
  %99 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %100 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %103 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %105 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %108 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %98, %74
  %110 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %111 = icmp ne %struct.tps65090_regulator_plat_data* %110, null
  br i1 %111, label %112, label %148

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = call i64 @is_dcdc(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %112
  %117 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %118 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %148

121:                                              ; preds = %116
  %122 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %123 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %128 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  store i64 %129, i64* %130, align 8
  %131 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %132 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %131, i32 0, i32 2
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  store i32* @tps65090_ext_control_ops, i32** %134, align 8
  br label %147

135:                                              ; preds = %121
  %136 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %137 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %138 = call i32 @tps65090_regulator_disable_ext_control(%struct.tps65090_regulator* %136, %struct.tps65090_regulator_plat_data* %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %2, align 4
  br label %268

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %126
  br label %148

148:                                              ; preds = %147, %116, %112, %109
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 5
  store i32 %152, i32* %153, align 8
  %154 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %155 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 4
  store %struct.tps65090_regulator* %154, %struct.tps65090_regulator** %155, align 8
  %156 = load %struct.tps65090*, %struct.tps65090** %4, align 8
  %157 = getelementptr inbounds %struct.tps65090, %struct.tps65090* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 3
  store i32 %158, i32* %159, align 8
  %160 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %161 = icmp ne %struct.tps65090_regulator_plat_data* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %148
  %163 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %164 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32* %165, i32** %166, align 8
  br label %169

167:                                              ; preds = %148
  %168 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 2
  store i32* null, i32** %168, align 8
  br label %169

169:                                              ; preds = %167, %162
  %170 = load %struct.of_regulator_match*, %struct.of_regulator_match** %11, align 8
  %171 = icmp ne %struct.of_regulator_match* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %169
  %173 = load %struct.of_regulator_match*, %struct.of_regulator_match** %11, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %173, i64 %175
  %177 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i32* %178, i32** %179, align 8
  br label %182

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 1
  store i32* null, i32** %181, align 8
  br label %182

182:                                              ; preds = %180, %172
  %183 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %6, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @devm_gpiod_unhinge(%struct.TYPE_11__* %188, i64 %190)
  br label %192

192:                                              ; preds = %186, %182
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %196 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %195, i32 0, i32 2
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = call %struct.tps65090_platform_data* @devm_regulator_register(%struct.TYPE_11__* %194, %struct.TYPE_10__* %197, %struct.regulator_config* %6)
  %199 = bitcast %struct.tps65090_platform_data* %198 to %struct.regulator_dev*
  store %struct.regulator_dev* %199, %struct.regulator_dev** %7, align 8
  %200 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %201 = bitcast %struct.regulator_dev* %200 to %struct.tps65090_platform_data*
  %202 = call i64 @IS_ERR(%struct.tps65090_platform_data* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %192
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %208 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %207, i32 0, i32 2
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %206, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %211)
  %213 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %214 = bitcast %struct.regulator_dev* %213 to %struct.tps65090_platform_data*
  %215 = call i32 @PTR_ERR(%struct.tps65090_platform_data* %214)
  store i32 %215, i32* %2, align 4
  br label %268

216:                                              ; preds = %192
  %217 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %218 = bitcast %struct.regulator_dev* %217 to %struct.tps65090_platform_data*
  %219 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %220 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %219, i32 0, i32 1
  store %struct.tps65090_platform_data* %218, %struct.tps65090_platform_data** %220, align 8
  %221 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %222 = getelementptr inbounds %struct.tps65090_regulator, %struct.tps65090_regulator* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %216
  %226 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %227 = load %struct.regulator_dev*, %struct.regulator_dev** %7, align 8
  %228 = bitcast %struct.regulator_dev* %227 to %struct.tps65090_platform_data*
  %229 = call i32 @tps65090_reg_set_overcurrent_wait(%struct.tps65090_regulator* %226, %struct.tps65090_platform_data* %228)
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %13, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %225
  %233 = load i32, i32* %13, align 4
  store i32 %233, i32* %2, align 4
  br label %268

234:                                              ; preds = %225
  br label %235

235:                                              ; preds = %234, %216
  %236 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %237 = icmp ne %struct.tps65090_regulator_plat_data* %236, null
  br i1 %237, label %238, label %260

238:                                              ; preds = %235
  %239 = load i32, i32* %12, align 4
  %240 = call i64 @is_dcdc(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %260

242:                                              ; preds = %238
  %243 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %244 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %260

247:                                              ; preds = %242
  %248 = load %struct.tps65090_regulator_plat_data*, %struct.tps65090_regulator_plat_data** %8, align 8
  %249 = getelementptr inbounds %struct.tps65090_regulator_plat_data, %struct.tps65090_regulator_plat_data* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %247
  %253 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %5, align 8
  %254 = call i32 @tps65090_config_ext_control(%struct.tps65090_regulator* %253, i32 1)
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* %13, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = load i32, i32* %13, align 4
  store i32 %258, i32* %2, align 4
  br label %268

259:                                              ; preds = %252
  br label %260

260:                                              ; preds = %259, %247, %242, %238, %235
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %12, align 4
  br label %70

264:                                              ; preds = %70
  %265 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %266 = load %struct.tps65090_regulator*, %struct.tps65090_regulator** %9, align 8
  %267 = call i32 @platform_set_drvdata(%struct.platform_device* %265, %struct.tps65090_regulator* %266)
  store i32 0, i32* %2, align 4
  br label %268

268:                                              ; preds = %264, %257, %232, %204, %141, %66, %56
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local %struct.tps65090* @dev_get_drvdata(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.tps65090_platform_data* @dev_get_platdata(i32) #1

declare dso_local %struct.tps65090_platform_data* @tps65090_parse_dt_reg_data(%struct.platform_device*, %struct.of_regulator_match**) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.tps65090_platform_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.tps65090_platform_data*) #1

declare dso_local %struct.tps65090_regulator* @devm_kcalloc(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i64 @is_dcdc(i32) #1

declare dso_local i32 @tps65090_regulator_disable_ext_control(%struct.tps65090_regulator*, %struct.tps65090_regulator_plat_data*) #1

declare dso_local i32 @devm_gpiod_unhinge(%struct.TYPE_11__*, i64) #1

declare dso_local %struct.tps65090_platform_data* @devm_regulator_register(%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.regulator_config*) #1

declare dso_local i64 @IS_ERR(%struct.tps65090_platform_data*) #1

declare dso_local i32 @tps65090_reg_set_overcurrent_wait(%struct.tps65090_regulator*, %struct.tps65090_platform_data*) #1

declare dso_local i32 @tps65090_config_ext_control(%struct.tps65090_regulator*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tps65090_regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
