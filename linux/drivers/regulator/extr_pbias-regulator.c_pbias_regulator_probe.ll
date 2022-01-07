; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pbias-regulator.c_pbias_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pbias-regulator.c_pbias_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.pbias_reg_info* }
%struct.pbias_reg_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pbias_regulator_data = type { %struct.regmap*, %struct.TYPE_12__, %struct.pbias_reg_info*, %struct.regmap* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.regmap = type { i32 }
%struct.resource = type { i32 }
%struct.regulator_config = type { i64, %struct.pbias_regulator_data*, i64, %struct.TYPE_11__*, %struct.regmap* }
%struct.of_device_id = type { %struct.pbias_of_data* }
%struct.pbias_of_data = type { i32 }

@pbias_matches = common dso_local global %struct.TYPE_10__* null, align 8
@PBIAS_NUM_REGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@pbias_of_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"using legacy dt data for pbias offset\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@pbias_regulator_voltage_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to register regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pbias_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbias_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.pbias_regulator_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.regulator_config, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.pbias_reg_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.of_device_id*, align 8
  %15 = alloca %struct.pbias_of_data*, align 8
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %4, align 8
  %21 = bitcast %struct.regulator_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pbias_matches, align 8
  %26 = load i32, i32* @PBIAS_NUM_REGS, align 4
  %27 = call i32 @of_regulator_match(%struct.TYPE_11__* %23, %struct.device_node* %24, %struct.TYPE_10__* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %2, align 4
  br label %316

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.pbias_regulator_data* @devm_kcalloc(%struct.TYPE_11__* %34, i32 %35, i32 88, i32 %36)
  store %struct.pbias_regulator_data* %37, %struct.pbias_regulator_data** %5, align 8
  %38 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %39 = icmp ne %struct.pbias_regulator_data* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %316

43:                                               ; preds = %32
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %45, %struct.regmap** %8, align 8
  %46 = load %struct.regmap*, %struct.regmap** %8, align 8
  %47 = call i64 @IS_ERR(%struct.regmap* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.regmap*, %struct.regmap** %8, align 8
  %51 = call i32 @PTR_ERR(%struct.regmap* %50)
  store i32 %51, i32* %2, align 4
  br label %316

52:                                               ; preds = %43
  %53 = load i32, i32* @pbias_of_match, align 4
  %54 = call i32 @of_match_ptr(i32 %53)
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call %struct.of_device_id* @of_match_device(i32 %54, %struct.TYPE_11__* %56)
  store %struct.of_device_id* %57, %struct.of_device_id** %14, align 8
  %58 = load %struct.of_device_id*, %struct.of_device_id** %14, align 8
  %59 = icmp ne %struct.of_device_id* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = load %struct.of_device_id*, %struct.of_device_id** %14, align 8
  %62 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %61, i32 0, i32 0
  %63 = load %struct.pbias_of_data*, %struct.pbias_of_data** %62, align 8
  %64 = icmp ne %struct.pbias_of_data* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.of_device_id*, %struct.of_device_id** %14, align 8
  %67 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %66, i32 0, i32 0
  %68 = load %struct.pbias_of_data*, %struct.pbias_of_data** %67, align 8
  store %struct.pbias_of_data* %68, %struct.pbias_of_data** %15, align 8
  %69 = load %struct.pbias_of_data*, %struct.pbias_of_data** %15, align 8
  %70 = getelementptr inbounds %struct.pbias_of_data, %struct.pbias_of_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %16, align 4
  br label %88

72:                                               ; preds = %60, %52
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = call %struct.resource* @platform_get_resource(%struct.platform_device* %73, i32 %74, i32 0)
  store %struct.resource* %75, %struct.resource** %6, align 8
  %76 = load %struct.resource*, %struct.resource** %6, align 8
  %77 = icmp ne %struct.resource* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %316

81:                                               ; preds = %72
  %82 = load %struct.resource*, %struct.resource** %6, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_WARN(%struct.TYPE_11__* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %81, %65
  %89 = load %struct.regmap*, %struct.regmap** %8, align 8
  %90 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 4
  store %struct.regmap* %89, %struct.regmap** %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 3
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %93, align 8
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %307, %88
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @PBIAS_NUM_REGS, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br label %102

102:                                              ; preds = %98, %94
  %103 = phi i1 [ false, %94 ], [ %101, %98 ]
  br i1 %103, label %104, label %310

104:                                              ; preds = %102
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pbias_matches, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %104
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pbias_matches, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112, %104
  br label %307

121:                                              ; preds = %112
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pbias_matches, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %126, align 8
  store %struct.pbias_reg_info* %127, %struct.pbias_reg_info** %9, align 8
  %128 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %129 = icmp ne %struct.pbias_reg_info* %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %121
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %316

133:                                              ; preds = %121
  %134 = load %struct.regmap*, %struct.regmap** %8, align 8
  %135 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %135, i64 %137
  %139 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %138, i32 0, i32 3
  store %struct.regmap* %134, %struct.regmap** %139, align 8
  %140 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %141 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %141, i64 %143
  %145 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %144, i32 0, i32 2
  store %struct.pbias_reg_info* %140, %struct.pbias_reg_info** %145, align 8
  %146 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %147 = getelementptr inbounds %struct.pbias_reg_info, %struct.pbias_reg_info* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %149, i64 %151
  %153 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 12
  store i32 %148, i32* %154, align 8
  %155 = load i32, i32* @THIS_MODULE, align 4
  %156 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %156, i64 %158
  %160 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 11
  store i32 %155, i32* %161, align 4
  %162 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %163 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %163, i64 %165
  %167 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 10
  store i32 %162, i32* %168, align 8
  %169 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %169, i64 %171
  %173 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 9
  store i32* @pbias_regulator_voltage_ops, i32** %174, align 8
  %175 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %176 = getelementptr inbounds %struct.pbias_reg_info, %struct.pbias_reg_info* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %178, i64 %180
  %182 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 8
  store i32 %177, i32* %183, align 8
  %184 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %185 = getelementptr inbounds %struct.pbias_reg_info, %struct.pbias_reg_info* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %187, i64 %189
  %191 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 7
  store i32 %186, i32* %192, align 4
  %193 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %194 = getelementptr inbounds %struct.pbias_reg_info, %struct.pbias_reg_info* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %196, i64 %198
  %200 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 6
  store i32 %195, i32* %201, align 8
  %202 = load i32, i32* %16, align 4
  %203 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %203, i64 %205
  %207 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  store i32 %202, i32* %208, align 8
  %209 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %210 = getelementptr inbounds %struct.pbias_reg_info, %struct.pbias_reg_info* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %212, i64 %214
  %216 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 5
  store i32 %211, i32* %217, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %219, i64 %221
  %223 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  store i32 %218, i32* %224, align 4
  %225 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %226 = getelementptr inbounds %struct.pbias_reg_info, %struct.pbias_reg_info* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %228, i64 %230
  %232 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 4
  store i32 %227, i32* %233, align 8
  %234 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %235 = getelementptr inbounds %struct.pbias_reg_info, %struct.pbias_reg_info* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %237, i64 %239
  %241 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 3
  store i32 %236, i32* %242, align 4
  %243 = load %struct.pbias_reg_info*, %struct.pbias_reg_info** %9, align 8
  %244 = getelementptr inbounds %struct.pbias_reg_info, %struct.pbias_reg_info* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %246, i64 %248
  %250 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 2
  store i32 %245, i32* %251, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pbias_matches, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 2
  store i64 %257, i64* %258, align 8
  %259 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %259, i64 %261
  %263 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 1
  store %struct.pbias_regulator_data* %262, %struct.pbias_regulator_data** %263, align 8
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pbias_matches, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %7, i32 0, i32 0
  store i64 %269, i64* %270, align 8
  %271 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %272 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %271, i32 0, i32 0
  %273 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %273, i64 %275
  %277 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %276, i32 0, i32 1
  %278 = call %struct.regmap* @devm_regulator_register(%struct.TYPE_11__* %272, %struct.TYPE_12__* %277, %struct.regulator_config* %7)
  %279 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %279, i64 %281
  %283 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %282, i32 0, i32 0
  store %struct.regmap* %278, %struct.regmap** %283, align 8
  %284 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %284, i64 %286
  %288 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %287, i32 0, i32 0
  %289 = load %struct.regmap*, %struct.regmap** %288, align 8
  %290 = call i64 @IS_ERR(%struct.regmap* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %304

292:                                              ; preds = %133
  %293 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %294 = load i32, i32* %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %293, i64 %295
  %297 = getelementptr inbounds %struct.pbias_regulator_data, %struct.pbias_regulator_data* %296, i32 0, i32 0
  %298 = load %struct.regmap*, %struct.regmap** %297, align 8
  %299 = call i32 @PTR_ERR(%struct.regmap* %298)
  store i32 %299, i32* %10, align 4
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %300, i32 0, i32 0
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @dev_err(%struct.TYPE_11__* %301, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %302)
  br label %314

304:                                              ; preds = %133
  %305 = load i32, i32* %13, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %13, align 4
  br label %307

307:                                              ; preds = %304, %120
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %12, align 4
  br label %94

310:                                              ; preds = %102
  %311 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %312 = load %struct.pbias_regulator_data*, %struct.pbias_regulator_data** %5, align 8
  %313 = call i32 @platform_set_drvdata(%struct.platform_device* %311, %struct.pbias_regulator_data* %312)
  br label %314

314:                                              ; preds = %310, %292
  %315 = load i32, i32* %10, align 4
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %314, %130, %78, %49, %40, %30
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @of_regulator_match(%struct.TYPE_11__*, %struct.device_node*, %struct.TYPE_10__*, i32) #2

declare dso_local %struct.pbias_regulator_data* @devm_kcalloc(%struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.regmap*) #2

declare dso_local i32 @PTR_ERR(%struct.regmap*) #2

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_11__*) #2

declare dso_local i32 @of_match_ptr(i32) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @dev_WARN(%struct.TYPE_11__*, i8*) #2

declare dso_local %struct.regmap* @devm_regulator_register(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.regulator_config*) #2

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pbias_regulator_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
