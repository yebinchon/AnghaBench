; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_mtk_thermal.c_mtk_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_mtk_thermal.c_mtk_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mtk_thermal = type { %struct.thermal_zone_device*, %struct.thermal_zone_device*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32, %struct.thermal_zone_device* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.thermal_zone_device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"therm\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"auxadc\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"mediatek,auxadc\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"missing auxadc node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OF_BAD_ADDR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Can't get auxadc phys address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"mediatek,apmixedsys\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"missing apmixedsys node\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Can't enable auxadc clk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Can't enable peri clk: %d\0A\00", align 1
@mtk_thermal_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.mtk_thermal*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.thermal_zone_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %9, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mtk_thermal* @devm_kzalloc(%struct.TYPE_11__* %20, i32 48, i32 %21)
  store %struct.mtk_thermal* %22, %struct.mtk_thermal** %10, align 8
  %23 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %24 = icmp ne %struct.mtk_thermal* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %244

28:                                               ; preds = %1
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__* %30)
  %32 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %33 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %32, i32 0, i32 2
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i8* @devm_clk_get(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %37 = bitcast i8* %36 to %struct.thermal_zone_device*
  %38 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %39 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %38, i32 0, i32 1
  store %struct.thermal_zone_device* %37, %struct.thermal_zone_device** %39, align 8
  %40 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %41 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %40, i32 0, i32 1
  %42 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %41, align 8
  %43 = call i64 @IS_ERR(%struct.thermal_zone_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %28
  %46 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %47 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %46, i32 0, i32 1
  %48 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %47, align 8
  %49 = call i32 @PTR_ERR(%struct.thermal_zone_device* %48)
  store i32 %49, i32* %2, align 4
  br label %244

50:                                               ; preds = %28
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i8* @devm_clk_get(%struct.TYPE_11__* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %54 = bitcast i8* %53 to %struct.thermal_zone_device*
  %55 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %56 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %55, i32 0, i32 0
  store %struct.thermal_zone_device* %54, %struct.thermal_zone_device** %56, align 8
  %57 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %58 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %57, i32 0, i32 0
  %59 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %58, align 8
  %60 = call i64 @IS_ERR(%struct.thermal_zone_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %50
  %63 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %64 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %63, i32 0, i32 0
  %65 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %64, align 8
  %66 = call i32 @PTR_ERR(%struct.thermal_zone_device* %65)
  store i32 %66, i32* %2, align 4
  br label %244

67:                                               ; preds = %50
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = load i32, i32* @IORESOURCE_MEM, align 4
  %70 = call %struct.resource* @platform_get_resource(%struct.platform_device* %68, i32 %69, i32 0)
  store %struct.resource* %70, %struct.resource** %11, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.resource*, %struct.resource** %11, align 8
  %74 = call %struct.thermal_zone_device* @devm_ioremap_resource(%struct.TYPE_11__* %72, %struct.resource* %73)
  %75 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %76 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %75, i32 0, i32 5
  store %struct.thermal_zone_device* %74, %struct.thermal_zone_device** %76, align 8
  %77 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %78 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %77, i32 0, i32 5
  %79 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %78, align 8
  %80 = call i64 @IS_ERR(%struct.thermal_zone_device* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %67
  %83 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %84 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %83, i32 0, i32 5
  %85 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %84, align 8
  %86 = call i32 @PTR_ERR(%struct.thermal_zone_device* %85)
  store i32 %86, i32* %2, align 4
  br label %244

87:                                               ; preds = %67
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %91 = call i32 @mtk_thermal_get_calibration_data(%struct.TYPE_11__* %89, %struct.mtk_thermal* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %244

96:                                               ; preds = %87
  %97 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %98 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %97, i32 0, i32 4
  %99 = call i32 @mutex_init(i32* %98)
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %103 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %102, i32 0, i32 3
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %103, align 8
  %104 = load %struct.device_node*, %struct.device_node** %9, align 8
  %105 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %105, %struct.device_node** %7, align 8
  %106 = load %struct.device_node*, %struct.device_node** %7, align 8
  %107 = icmp ne %struct.device_node* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %96
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %244

114:                                              ; preds = %96
  %115 = load %struct.device_node*, %struct.device_node** %7, align 8
  %116 = call i64 @of_get_phys_base(%struct.device_node* %115)
  store i64 %116, i64* %12, align 8
  %117 = load %struct.device_node*, %struct.device_node** %7, align 8
  %118 = call i32 @of_node_put(%struct.device_node* %117)
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @OF_BAD_ADDR, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %244

128:                                              ; preds = %114
  %129 = load %struct.device_node*, %struct.device_node** %9, align 8
  %130 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.device_node* %130, %struct.device_node** %8, align 8
  %131 = load %struct.device_node*, %struct.device_node** %8, align 8
  %132 = icmp ne %struct.device_node* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %128
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %244

139:                                              ; preds = %128
  %140 = load %struct.device_node*, %struct.device_node** %8, align 8
  %141 = call i64 @of_get_phys_base(%struct.device_node* %140)
  store i64 %141, i64* %13, align 8
  %142 = load %struct.device_node*, %struct.device_node** %8, align 8
  %143 = call i32 @of_node_put(%struct.device_node* %142)
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* @OF_BAD_ADDR, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %139
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %244

153:                                              ; preds = %139
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @device_reset(%struct.TYPE_11__* %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %244

161:                                              ; preds = %153
  %162 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %163 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %162, i32 0, i32 0
  %164 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %163, align 8
  %165 = call i32 @clk_prepare_enable(%struct.thermal_zone_device* %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = load i32, i32* %4, align 4
  %172 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %244

174:                                              ; preds = %161
  %175 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %176 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %175, i32 0, i32 1
  %177 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %176, align 8
  %178 = call i32 @clk_prepare_enable(%struct.thermal_zone_device* %177)
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = load i32, i32* %4, align 4
  %185 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %184)
  br label %238

186:                                              ; preds = %174
  store i32 0, i32* %6, align 4
  br label %187

187:                                              ; preds = %215, %186
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %190 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %189, i32 0, i32 2
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %188, %193
  br i1 %194, label %195, label %218

195:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %211, %195
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %199 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %198, i32 0, i32 2
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %197, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %196
  %205 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load i64, i64* %13, align 8
  %208 = load i64, i64* %12, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @mtk_thermal_init_bank(%struct.mtk_thermal* %205, i32 %206, i64 %207, i64 %208, i32 %209)
  br label %211

211:                                              ; preds = %204
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %196

214:                                              ; preds = %196
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  br label %187

218:                                              ; preds = %187
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %221 = call i32 @platform_set_drvdata(%struct.platform_device* %219, %struct.mtk_thermal* %220)
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %225 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.TYPE_11__* %223, i32 0, %struct.mtk_thermal* %224, i32* @mtk_thermal_ops)
  store %struct.thermal_zone_device* %225, %struct.thermal_zone_device** %14, align 8
  %226 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %14, align 8
  %227 = call i64 @IS_ERR(%struct.thermal_zone_device* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %218
  %230 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %14, align 8
  %231 = call i32 @PTR_ERR(%struct.thermal_zone_device* %230)
  store i32 %231, i32* %4, align 4
  br label %233

232:                                              ; preds = %218
  store i32 0, i32* %2, align 4
  br label %244

233:                                              ; preds = %229
  %234 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %235 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %234, i32 0, i32 1
  %236 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %235, align 8
  %237 = call i32 @clk_disable_unprepare(%struct.thermal_zone_device* %236)
  br label %238

238:                                              ; preds = %233, %181
  %239 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  %240 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %239, i32 0, i32 0
  %241 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %240, align 8
  %242 = call i32 @clk_disable_unprepare(%struct.thermal_zone_device* %241)
  %243 = load i32, i32* %4, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %238, %232, %168, %159, %147, %133, %122, %108, %94, %82, %62, %45, %25
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local %struct.mtk_thermal* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.thermal_zone_device* @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i32 @mtk_thermal_get_calibration_data(%struct.TYPE_11__*, %struct.mtk_thermal*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i64 @of_get_phys_base(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @device_reset(%struct.TYPE_11__*) #1

declare dso_local i32 @clk_prepare_enable(%struct.thermal_zone_device*) #1

declare dso_local i32 @mtk_thermal_init_bank(%struct.mtk_thermal*, i32, i64, i64, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_thermal*) #1

declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(%struct.TYPE_11__*, i32, %struct.mtk_thermal*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.thermal_zone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
