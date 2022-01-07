; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/avs/extr_rockchip-io-domain.c_rockchip_iodomain_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/avs/extr_rockchip-io-domain.c_rockchip_iodomain_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device*, %struct.device_node* }
%struct.device = type { i64 }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8**, i32 (%struct.rockchip_iodomain*)* }
%struct.rockchip_iodomain = type { %struct.rockchip_iodomain_supply*, %struct.TYPE_9__*, %struct.TYPE_11__*, %struct.regulator* }
%struct.rockchip_iodomain_supply = type { i32, %struct.TYPE_10__, %struct.regulator*, %struct.rockchip_iodomain* }
%struct.TYPE_10__ = type { i32 }
%struct.regulator = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rockchip_iodomain_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"falling back to old binding\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"couldn't find grf regmap\0A\00", align 1
@MAX_SUPPLIES = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"couldn't get regulator %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Can't determine voltage: %s\0A\00", align 1
@MAX_VOLTAGE_3_3 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"%d uV is too high. May damage SoC!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rockchip_iodomain_notify = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"regulator notifier request failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_iodomain_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_iodomain_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.rockchip_iodomain*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.rockchip_iodomain_supply*, align 8
  %12 = alloca %struct.regulator*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rockchip_iodomain_supply*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %4, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = icmp ne %struct.device_node* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %252

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.rockchip_iodomain* @devm_kzalloc(%struct.TYPE_11__* %26, i32 32, i32 %27)
  store %struct.rockchip_iodomain* %28, %struct.rockchip_iodomain** %6, align 8
  %29 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %30 = icmp ne %struct.rockchip_iodomain* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %252

34:                                               ; preds = %24
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %38 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %37, i32 0, i32 2
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.rockchip_iodomain* %40)
  %42 = load i32, i32* @rockchip_iodomain_match, align 4
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call %struct.of_device_id* @of_match_node(i32 %42, %struct.device_node* %43)
  store %struct.of_device_id* %44, %struct.of_device_id** %5, align 8
  %45 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %46 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %49 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %48, i32 0, i32 1
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.device*, %struct.device** %52, align 8
  store %struct.device* %53, %struct.device** %7, align 8
  %54 = load %struct.device*, %struct.device** %7, align 8
  %55 = icmp ne %struct.device* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %34
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.regulator* @syscon_node_to_regmap(i64 %64)
  %66 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %67 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %66, i32 0, i32 3
  store %struct.regulator* %65, %struct.regulator** %67, align 8
  br label %76

68:                                               ; preds = %56, %34
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_dbg(%struct.TYPE_11__* %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.device_node*, %struct.device_node** %4, align 8
  %73 = call %struct.regulator* @syscon_regmap_lookup_by_phandle(%struct.device_node* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %75 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %74, i32 0, i32 3
  store %struct.regulator* %73, %struct.regulator** %75, align 8
  br label %76

76:                                               ; preds = %68, %61
  %77 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %78 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %77, i32 0, i32 3
  %79 = load %struct.regulator*, %struct.regulator** %78, align 8
  %80 = call i64 @IS_ERR(%struct.regulator* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %87 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %86, i32 0, i32 3
  %88 = load %struct.regulator*, %struct.regulator** %87, align 8
  %89 = call i32 @PTR_ERR(%struct.regulator* %88)
  store i32 %89, i32* %2, align 4
  br label %252

90:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %203, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MAX_SUPPLIES, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %206

95:                                               ; preds = %91
  %96 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %97 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %10, align 8
  %105 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %106 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %105, i32 0, i32 0
  %107 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %107, i64 %109
  store %struct.rockchip_iodomain_supply* %110, %struct.rockchip_iodomain_supply** %11, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %95
  br label %203

114:                                              ; preds = %95
  %115 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %116 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %115, i32 0, i32 2
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = call %struct.regulator* @devm_regulator_get_optional(%struct.TYPE_11__* %117, i8* %118)
  store %struct.regulator* %119, %struct.regulator** %12, align 8
  %120 = load %struct.regulator*, %struct.regulator** %12, align 8
  %121 = call i64 @IS_ERR(%struct.regulator* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %114
  %124 = load %struct.regulator*, %struct.regulator** %12, align 8
  %125 = call i32 @PTR_ERR(%struct.regulator* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %203

131:                                              ; preds = %123
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @EPROBE_DEFER, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %138 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %137, i32 0, i32 2
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %136, %131
  br label %143

143:                                              ; preds = %142
  br label %222

144:                                              ; preds = %114
  %145 = load %struct.regulator*, %struct.regulator** %12, align 8
  %146 = call i32 @regulator_get_voltage(%struct.regulator* %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %151 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %150, i32 0, i32 2
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %153)
  br label %222

155:                                              ; preds = %144
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @MAX_VOLTAGE_3_3, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %155
  %160 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %161 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %160, i32 0, i32 2
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @dev_crit(%struct.TYPE_11__* %162, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %9, align 4
  br label %222

167:                                              ; preds = %155
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %11, align 8
  %170 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %172 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %11, align 8
  %173 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %172, i32 0, i32 3
  store %struct.rockchip_iodomain* %171, %struct.rockchip_iodomain** %173, align 8
  %174 = load %struct.regulator*, %struct.regulator** %12, align 8
  %175 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %11, align 8
  %176 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %175, i32 0, i32 2
  store %struct.regulator* %174, %struct.regulator** %176, align 8
  %177 = load i32, i32* @rockchip_iodomain_notify, align 4
  %178 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %11, align 8
  %179 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  store i32 %177, i32* %180, align 4
  %181 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %11, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @rockchip_iodomain_write(%struct.rockchip_iodomain_supply* %181, i32 %182)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %167
  %187 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %11, align 8
  %188 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %187, i32 0, i32 2
  store %struct.regulator* null, %struct.regulator** %188, align 8
  br label %222

189:                                              ; preds = %167
  %190 = load %struct.regulator*, %struct.regulator** %12, align 8
  %191 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %11, align 8
  %192 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %191, i32 0, i32 1
  %193 = call i32 @regulator_register_notifier(%struct.regulator* %190, %struct.TYPE_10__* %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %189
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %198, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %200 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %11, align 8
  %201 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %200, i32 0, i32 2
  store %struct.regulator* null, %struct.regulator** %201, align 8
  br label %222

202:                                              ; preds = %189
  br label %203

203:                                              ; preds = %202, %130, %113
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %91

206:                                              ; preds = %91
  %207 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %208 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %207, i32 0, i32 1
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i32 (%struct.rockchip_iodomain*)*, i32 (%struct.rockchip_iodomain*)** %210, align 8
  %212 = icmp ne i32 (%struct.rockchip_iodomain*)* %211, null
  br i1 %212, label %213, label %221

213:                                              ; preds = %206
  %214 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %215 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %214, i32 0, i32 1
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i32 (%struct.rockchip_iodomain*)*, i32 (%struct.rockchip_iodomain*)** %217, align 8
  %219 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %220 = call i32 %218(%struct.rockchip_iodomain* %219)
  br label %221

221:                                              ; preds = %213, %206
  store i32 0, i32* %2, align 4
  br label %252

222:                                              ; preds = %196, %186, %159, %149, %143
  %223 = load i32, i32* @MAX_SUPPLIES, align 4
  %224 = sub nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %247, %222
  %226 = load i32, i32* %8, align 4
  %227 = icmp sge i32 %226, 0
  br i1 %227, label %228, label %250

228:                                              ; preds = %225
  %229 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %6, align 8
  %230 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %229, i32 0, i32 0
  %231 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %231, i64 %233
  store %struct.rockchip_iodomain_supply* %234, %struct.rockchip_iodomain_supply** %14, align 8
  %235 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %14, align 8
  %236 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %235, i32 0, i32 2
  %237 = load %struct.regulator*, %struct.regulator** %236, align 8
  %238 = icmp ne %struct.regulator* %237, null
  br i1 %238, label %239, label %246

239:                                              ; preds = %228
  %240 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %14, align 8
  %241 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %240, i32 0, i32 2
  %242 = load %struct.regulator*, %struct.regulator** %241, align 8
  %243 = load %struct.rockchip_iodomain_supply*, %struct.rockchip_iodomain_supply** %14, align 8
  %244 = getelementptr inbounds %struct.rockchip_iodomain_supply, %struct.rockchip_iodomain_supply* %243, i32 0, i32 1
  %245 = call i32 @regulator_unregister_notifier(%struct.regulator* %242, %struct.TYPE_10__* %244)
  br label %246

246:                                              ; preds = %239, %228
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, -1
  store i32 %249, i32* %8, align 4
  br label %225

250:                                              ; preds = %225
  %251 = load i32, i32* %9, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %250, %221, %82, %31, %21
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local %struct.rockchip_iodomain* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rockchip_iodomain*) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local %struct.regulator* @syscon_node_to_regmap(i64) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.regulator* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local %struct.regulator* @devm_regulator_get_optional(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local i32 @dev_crit(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @rockchip_iodomain_write(%struct.rockchip_iodomain_supply*, i32) #1

declare dso_local i32 @regulator_register_notifier(%struct.regulator*, %struct.TYPE_10__*) #1

declare dso_local i32 @regulator_unregister_notifier(%struct.regulator*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
