; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_gpio_regulator_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_gpio_regulator_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.gpio_regulator_config = type { i32, i32*, i32, i32, i64, i32, i32, i32, i32 }
%struct.gpio_regulator_data = type { i32, i32, i32, %struct.TYPE_3__, i32*, %struct.regulator_dev** }
%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32, i32* }
%struct.regulator_dev = type { i32, i32*, i32, i32, i64, i32, i32, i32, i32 }
%struct.regulator_config = type { %struct.regulator_dev*, %struct.device_node*, %struct.gpio_regulator_data*, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate supply name\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate state data\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@gpio_regulator_voltage_ops = common dso_local global i32 0, align 4
@gpio_regulator_current_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"No regulator type set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIOD_FLAGS_BIT_NONEXCLUSIVE = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to register regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gpio_regulator_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_regulator_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gpio_regulator_config*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.gpio_regulator_data*, align 8
  %8 = alloca %struct.regulator_config, align 8
  %9 = alloca %struct.regulator_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call %struct.regulator_dev* @dev_get_platdata(%struct.device* %17)
  %19 = bitcast %struct.regulator_dev* %18 to %struct.gpio_regulator_config*
  store %struct.gpio_regulator_config* %19, %struct.gpio_regulator_config** %5, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  store %struct.device_node* %22, %struct.device_node** %6, align 8
  %23 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 40, i1 false)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.device* %24, i32 64, i32 %25)
  %27 = bitcast i8* %26 to %struct.gpio_regulator_data*
  store %struct.gpio_regulator_data* %27, %struct.gpio_regulator_data** %7, align 8
  %28 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %29 = icmp eq %struct.gpio_regulator_data* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %301

33:                                               ; preds = %1
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = icmp ne %struct.device_node* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %40 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %39, i32 0, i32 3
  %41 = call %struct.regulator_dev* @of_get_gpio_regulator_config(%struct.device* %37, %struct.device_node* %38, %struct.TYPE_3__* %40)
  %42 = bitcast %struct.regulator_dev* %41 to %struct.gpio_regulator_config*
  store %struct.gpio_regulator_config* %42, %struct.gpio_regulator_config** %5, align 8
  %43 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %44 = bitcast %struct.gpio_regulator_config* %43 to %struct.regulator_dev*
  %45 = call i64 @IS_ERR(%struct.regulator_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %49 = bitcast %struct.gpio_regulator_config* %48 to %struct.regulator_dev*
  %50 = call i32 @PTR_ERR(%struct.regulator_dev* %49)
  store i32 %50, i32* %2, align 4
  br label %301

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51, %33
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %55 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32* @devm_kstrdup(%struct.device* %53, i32 %56, i32 %57)
  %59 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %60 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store i32* %58, i32** %61, align 8
  %62 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %63 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %52
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %301

72:                                               ; preds = %52
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i8* @devm_kzalloc(%struct.device* %73, i32 8, i32 %74)
  %76 = bitcast i8* %75 to %struct.regulator_dev**
  %77 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %78 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %77, i32 0, i32 5
  store %struct.regulator_dev** %76, %struct.regulator_dev*** %78, align 8
  %79 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %80 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %79, i32 0, i32 5
  %81 = load %struct.regulator_dev**, %struct.regulator_dev*** %80, align 8
  %82 = icmp ne %struct.regulator_dev** %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %301

86:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %141, %86
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %90 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %144

93:                                               ; preds = %87
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %97 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.regulator_dev* @devm_gpiod_get_index(%struct.device* %94, i32* null, i32 %95, i32 %102)
  %104 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %105 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %104, i32 0, i32 5
  %106 = load %struct.regulator_dev**, %struct.regulator_dev*** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %106, i64 %108
  store %struct.regulator_dev* %103, %struct.regulator_dev** %109, align 8
  %110 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %111 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %110, i32 0, i32 5
  %112 = load %struct.regulator_dev**, %struct.regulator_dev*** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %112, i64 %114
  %116 = load %struct.regulator_dev*, %struct.regulator_dev** %115, align 8
  %117 = call i64 @IS_ERR(%struct.regulator_dev* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %93
  %120 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %121 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %120, i32 0, i32 5
  %122 = load %struct.regulator_dev**, %struct.regulator_dev*** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %122, i64 %124
  %126 = load %struct.regulator_dev*, %struct.regulator_dev** %125, align 8
  %127 = call i32 @PTR_ERR(%struct.regulator_dev* %126)
  store i32 %127, i32* %2, align 4
  br label %301

128:                                              ; preds = %93
  %129 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %130 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %129, i32 0, i32 5
  %131 = load %struct.regulator_dev**, %struct.regulator_dev*** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.regulator_dev*, %struct.regulator_dev** %131, i64 %133
  %135 = load %struct.regulator_dev*, %struct.regulator_dev** %134, align 8
  %136 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %137 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @gpiod_set_consumer_name(%struct.regulator_dev* %135, i32* %139)
  br label %141

141:                                              ; preds = %128
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %87

144:                                              ; preds = %87
  %145 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %146 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %149 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  %150 = load %struct.device*, %struct.device** %4, align 8
  %151 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %152 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %155 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i32* @devm_kmemdup(%struct.device* %150, i32 %153, i32 %159, i32 %160)
  %162 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %163 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %162, i32 0, i32 4
  store i32* %161, i32** %163, align 8
  %164 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %165 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %144
  %169 = load %struct.device*, %struct.device** %4, align 8
  %170 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %169, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %301

173:                                              ; preds = %144
  %174 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %175 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %178 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @THIS_MODULE, align 4
  %180 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %181 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 4
  store i32 %179, i32* %182, align 4
  %183 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %184 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %187 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 3
  store i32 %185, i32* %188, align 8
  %189 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %190 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %212 [
    i32 128, label %192
    i32 129, label %205
  ]

192:                                              ; preds = %173
  %193 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %194 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  store i32 128, i32* %195, align 8
  %196 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %197 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 2
  store i32* @gpio_regulator_voltage_ops, i32** %198, align 8
  %199 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %200 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %203 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  store i32 %201, i32* %204, align 4
  br label %217

205:                                              ; preds = %173
  %206 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %207 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  store i32 129, i32* %208, align 8
  %209 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %210 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  store i32* @gpio_regulator_current_ops, i32** %211, align 8
  br label %217

212:                                              ; preds = %173
  %213 = load %struct.device*, %struct.device** %4, align 8
  %214 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %213, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %2, align 4
  br label %301

217:                                              ; preds = %205, %192
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %218

218:                                              ; preds = %240, %217
  %219 = load i32, i32* %11, align 4
  %220 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %221 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %243

224:                                              ; preds = %218
  %225 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %226 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %224
  %235 = load i32, i32* %11, align 4
  %236 = shl i32 1, %235
  %237 = load i32, i32* %13, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %13, align 4
  br label %239

239:                                              ; preds = %234, %224
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %11, align 4
  br label %218

243:                                              ; preds = %218
  %244 = load i32, i32* %13, align 4
  %245 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %246 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load %struct.device*, %struct.device** %4, align 8
  %248 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 4
  store %struct.device* %247, %struct.device** %248, align 8
  %249 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %250 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store i32 %251, i32* %252, align 8
  %253 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %254 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.gpio_regulator_data* %253, %struct.gpio_regulator_data** %254, align 8
  %255 = load %struct.device_node*, %struct.device_node** %6, align 8
  %256 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store %struct.device_node* %255, %struct.device_node** %256, align 8
  %257 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %5, align 8
  %258 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %243
  %262 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %263 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %264 = or i32 %262, %263
  store i32 %264, i32* %10, align 4
  br label %269

265:                                              ; preds = %243
  %266 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %267 = load i32, i32* @GPIOD_FLAGS_BIT_NONEXCLUSIVE, align 4
  %268 = or i32 %266, %267
  store i32 %268, i32* %10, align 4
  br label %269

269:                                              ; preds = %265, %261
  %270 = load %struct.device*, %struct.device** %4, align 8
  %271 = load i32, i32* %10, align 4
  %272 = call %struct.regulator_dev* @gpiod_get_optional(%struct.device* %270, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %271)
  %273 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store %struct.regulator_dev* %272, %struct.regulator_dev** %273, align 8
  %274 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  %275 = load %struct.regulator_dev*, %struct.regulator_dev** %274, align 8
  %276 = call i64 @IS_ERR(%struct.regulator_dev* %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %269
  %279 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  %280 = load %struct.regulator_dev*, %struct.regulator_dev** %279, align 8
  %281 = call i32 @PTR_ERR(%struct.regulator_dev* %280)
  store i32 %281, i32* %2, align 4
  br label %301

282:                                              ; preds = %269
  %283 = load %struct.device*, %struct.device** %4, align 8
  %284 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %285 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %284, i32 0, i32 3
  %286 = call %struct.regulator_dev* @devm_regulator_register(%struct.device* %283, %struct.TYPE_3__* %285, %struct.regulator_config* %8)
  store %struct.regulator_dev* %286, %struct.regulator_dev** %9, align 8
  %287 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %288 = call i64 @IS_ERR(%struct.regulator_dev* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %282
  %291 = load %struct.regulator_dev*, %struct.regulator_dev** %9, align 8
  %292 = call i32 @PTR_ERR(%struct.regulator_dev* %291)
  store i32 %292, i32* %12, align 4
  %293 = load %struct.device*, %struct.device** %4, align 8
  %294 = load i32, i32* %12, align 4
  %295 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %293, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %294)
  %296 = load i32, i32* %12, align 4
  store i32 %296, i32* %2, align 4
  br label %301

297:                                              ; preds = %282
  %298 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %299 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %7, align 8
  %300 = call i32 @platform_set_drvdata(%struct.platform_device* %298, %struct.gpio_regulator_data* %299)
  store i32 0, i32* %2, align 4
  br label %301

301:                                              ; preds = %297, %290, %278, %212, %168, %119, %83, %67, %47, %30
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local %struct.regulator_dev* @dev_get_platdata(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regulator_dev* @of_get_gpio_regulator_config(%struct.device*, %struct.device_node*, %struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.regulator_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator_dev*) #1

declare dso_local i32* @devm_kstrdup(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.regulator_dev* @devm_gpiod_get_index(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @gpiod_set_consumer_name(%struct.regulator_dev*, i32*) #1

declare dso_local i32* @devm_kmemdup(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.regulator_dev* @gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local %struct.regulator_dev* @devm_regulator_register(%struct.device*, %struct.TYPE_3__*, %struct.regulator_config*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gpio_regulator_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
