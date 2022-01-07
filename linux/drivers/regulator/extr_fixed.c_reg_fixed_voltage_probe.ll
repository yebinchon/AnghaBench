; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fixed.c_reg_fixed_voltage_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fixed.c_reg_fixed_voltage_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.fixed_voltage_config = type { i32, i64, i64, i64, i32, i64 }
%struct.fixed_voltage_data = type { %struct.TYPE_3__, %struct.fixed_voltage_config*, %struct.fixed_voltage_config* }
%struct.TYPE_3__ = type { i32, i64, i32*, i8*, i32, i32*, i32, i32 }
%struct.fixed_dev_type = type { i64 }
%struct.regulator_config = type { i64, %struct.fixed_voltage_data*, i32, %struct.device*, %struct.fixed_voltage_config* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate supply name\0A\00", align 1
@REGULATOR_VOLTAGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@fixed_voltage_clkenabled_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Cant get enable-clock from devicetree\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@fixed_voltage_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to allocate input supply\0A\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to register regulator: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s supplying %duV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @reg_fixed_voltage_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_fixed_voltage_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fixed_voltage_config*, align 8
  %6 = alloca %struct.fixed_voltage_data*, align 8
  %7 = alloca %struct.fixed_dev_type*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.fixed_dev_type* @of_device_get_match_data(%struct.device* %13)
  store %struct.fixed_dev_type* %14, %struct.fixed_dev_type** %7, align 8
  %15 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.fixed_voltage_data* @devm_kzalloc(%struct.device* %17, i32 72, i32 %18)
  store %struct.fixed_voltage_data* %19, %struct.fixed_voltage_data** %6, align 8
  %20 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %21 = icmp ne %struct.fixed_voltage_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %243

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %35 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %34, i32 0, i32 0
  %36 = call %struct.fixed_voltage_config* @of_get_fixed_voltage_config(%struct.device* %33, %struct.TYPE_3__* %35)
  store %struct.fixed_voltage_config* %36, %struct.fixed_voltage_config** %5, align 8
  %37 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %38 = call i64 @IS_ERR(%struct.fixed_voltage_config* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %42 = call i32 @PTR_ERR(%struct.fixed_voltage_config* %41)
  store i32 %42, i32* %2, align 4
  br label %243

43:                                               ; preds = %31
  br label %48

44:                                               ; preds = %25
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = call %struct.fixed_voltage_config* @dev_get_platdata(%struct.device* %46)
  store %struct.fixed_voltage_config* %47, %struct.fixed_voltage_config** %5, align 8
  br label %48

48:                                               ; preds = %44, %43
  %49 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %50 = icmp ne %struct.fixed_voltage_config* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %243

54:                                               ; preds = %48
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %58 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @devm_kstrdup(%struct.device* %56, i64 %59, i32 %60)
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %64 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32* %62, i32** %65, align 8
  %66 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %67 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %54
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %243

77:                                               ; preds = %54
  %78 = load i32, i32* @REGULATOR_VOLTAGE, align 4
  %79 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %80 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @THIS_MODULE, align 4
  %83 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %84 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 6
  store i32 %82, i32* %85, align 8
  %86 = load %struct.fixed_dev_type*, %struct.fixed_dev_type** %7, align 8
  %87 = icmp ne %struct.fixed_dev_type* %86, null
  br i1 %87, label %88, label %112

88:                                               ; preds = %77
  %89 = load %struct.fixed_dev_type*, %struct.fixed_dev_type** %7, align 8
  %90 = getelementptr inbounds %struct.fixed_dev_type, %struct.fixed_dev_type* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %95 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 5
  store i32* @fixed_voltage_clkenabled_ops, i32** %96, align 8
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call %struct.fixed_voltage_config* @devm_clk_get(%struct.device* %97, i32* null)
  %99 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %100 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %99, i32 0, i32 2
  store %struct.fixed_voltage_config* %98, %struct.fixed_voltage_config** %100, align 8
  %101 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %102 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %101, i32 0, i32 2
  %103 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %102, align 8
  %104 = call i64 @IS_ERR(%struct.fixed_voltage_config* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %93
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @ENOENT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %243

111:                                              ; preds = %93
  br label %116

112:                                              ; preds = %88, %77
  %113 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %114 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  store i32* @fixed_voltage_ops, i32** %115, align 8
  br label %116

116:                                              ; preds = %112, %111
  %117 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %118 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %121 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  store i32 %119, i32* %122, align 8
  %123 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %124 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %116
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %131 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call i8* @devm_kstrdup(%struct.device* %129, i64 %132, i32 %133)
  %135 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %136 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  store i8* %134, i8** %137, align 8
  %138 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %139 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %127
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %243

149:                                              ; preds = %127
  br label %150

150:                                              ; preds = %149, %116
  %151 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %152 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %157 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  br label %159

159:                                              ; preds = %155, %150
  %160 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %161 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %164 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i64 %162, i64* %165, align 8
  %166 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %167 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  store i32 %171, i32* %9, align 4
  br label %174

172:                                              ; preds = %159
  %173 = load i32, i32* @GPIOD_OUT_LOW, align 4
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %172, %170
  %175 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %176 = load i32, i32* %9, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %9, align 4
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = load i32, i32* %9, align 4
  %181 = call %struct.fixed_voltage_config* @gpiod_get_optional(%struct.device* %179, i32* null, i32 %180)
  %182 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 4
  store %struct.fixed_voltage_config* %181, %struct.fixed_voltage_config** %182, align 8
  %183 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 4
  %184 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %183, align 8
  %185 = call i64 @IS_ERR(%struct.fixed_voltage_config* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %174
  %188 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 4
  %189 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %188, align 8
  %190 = call i32 @PTR_ERR(%struct.fixed_voltage_config* %189)
  store i32 %190, i32* %2, align 4
  br label %243

191:                                              ; preds = %174
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.device* %193, %struct.device** %194, align 8
  %195 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %5, align 8
  %196 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store i32 %197, i32* %198, align 8
  %199 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %200 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.fixed_voltage_data* %199, %struct.fixed_voltage_data** %200, align 8
  %201 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %202 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.device, %struct.device* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i64 %204, i64* %205, align 8
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %209 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %208, i32 0, i32 0
  %210 = call %struct.fixed_voltage_config* @devm_regulator_register(%struct.device* %207, %struct.TYPE_3__* %209, %struct.regulator_config* %8)
  %211 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %212 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %211, i32 0, i32 1
  store %struct.fixed_voltage_config* %210, %struct.fixed_voltage_config** %212, align 8
  %213 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %214 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %213, i32 0, i32 1
  %215 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %214, align 8
  %216 = call i64 @IS_ERR(%struct.fixed_voltage_config* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %191
  %219 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %220 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %219, i32 0, i32 1
  %221 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %220, align 8
  %222 = call i32 @PTR_ERR(%struct.fixed_voltage_config* %221)
  store i32 %222, i32* %10, align 4
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = load i32, i32* %10, align 4
  %226 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %224, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %2, align 4
  br label %243

228:                                              ; preds = %191
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %231 = call i32 @platform_set_drvdata(%struct.platform_device* %229, %struct.fixed_voltage_data* %230)
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %235 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.fixed_voltage_data*, %struct.fixed_voltage_data** %6, align 8
  %239 = getelementptr inbounds %struct.fixed_voltage_data, %struct.fixed_voltage_data* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @dev_dbg(%struct.device* %233, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* %237, i64 %241)
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %228, %218, %187, %143, %106, %71, %51, %40, %22
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local %struct.fixed_dev_type* @of_device_get_match_data(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.fixed_voltage_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.fixed_voltage_config* @of_get_fixed_voltage_config(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.fixed_voltage_config*) #1

declare dso_local i32 @PTR_ERR(%struct.fixed_voltage_config*) #1

declare dso_local %struct.fixed_voltage_config* @dev_get_platdata(%struct.device*) #1

declare dso_local i8* @devm_kstrdup(%struct.device*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.fixed_voltage_config* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local %struct.fixed_voltage_config* @gpiod_get_optional(%struct.device*, i32*, i32) #1

declare dso_local %struct.fixed_voltage_config* @devm_regulator_register(%struct.device*, %struct.TYPE_3__*, %struct.regulator_config*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fixed_voltage_data*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
