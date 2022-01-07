; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_of_get_gpio_regulator_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_of_get_gpio_regulator_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_regulator_config = type { i32, i32, i32, i8*, %struct.TYPE_6__*, i8**, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"enable-at-boot\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"startup-delay-us\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"gpios-states\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i8* null, align 8
@GPIOD_OUT_LOW = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"No 'states' property found\0A\00", align 1
@REGULATOR_VOLTAGE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"regulator-type\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"voltage\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@REGULATOR_CURRENT = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"Unknown regulator-type '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpio_regulator_config* (%struct.device*, %struct.device_node*, %struct.regulator_desc*)* @of_get_gpio_regulator_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpio_regulator_config* @of_get_gpio_regulator_config(%struct.device* %0, %struct.device_node* %1, %struct.regulator_desc* %2) #0 {
  %4 = alloca %struct.gpio_regulator_config*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regulator_desc*, align 8
  %8 = alloca %struct.gpio_regulator_config*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.regulator_desc* %2, %struct.regulator_desc** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @devm_kzalloc(%struct.device* %15, i32 64, i32 %16)
  %18 = bitcast i8* %17 to %struct.gpio_regulator_config*
  store %struct.gpio_regulator_config* %18, %struct.gpio_regulator_config** %8, align 8
  %19 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %20 = icmp ne %struct.gpio_regulator_config* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.gpio_regulator_config* @ERR_PTR(i32 %23)
  store %struct.gpio_regulator_config* %24, %struct.gpio_regulator_config** %4, align 8
  br label %220

25:                                               ; preds = %3
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.device_node*, %struct.device_node** %6, align 8
  %28 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %29 = call %struct.TYPE_5__* @of_get_regulator_init_data(%struct.device* %26, %struct.device_node* %27, %struct.regulator_desc* %28)
  %30 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %31 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %30, i32 0, i32 7
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %31, align 8
  %32 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %33 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %32, i32 0, i32 7
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.gpio_regulator_config* @ERR_PTR(i32 %38)
  store %struct.gpio_regulator_config* %39, %struct.gpio_regulator_config** %4, align 8
  br label %220

40:                                               ; preds = %25
  %41 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %42 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %41, i32 0, i32 7
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %48 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = call i64 @of_property_read_bool(%struct.device_node* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %54 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %40
  %56 = load %struct.device_node*, %struct.device_node** %6, align 8
  %57 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %58 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %57, i32 0, i32 6
  %59 = call i32 @of_property_read_u32(%struct.device_node* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %58)
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @gpiod_count(%struct.device* %60, i32* null)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %122

64:                                               ; preds = %55
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @devm_kzalloc(%struct.device* %65, i32 %69, i32 %70)
  %72 = bitcast i8* %71 to i8**
  %73 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %74 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %73, i32 0, i32 5
  store i8** %72, i8*** %74, align 8
  %75 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %76 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %75, i32 0, i32 5
  %77 = load i8**, i8*** %76, align 8
  %78 = icmp ne i8** %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %64
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.gpio_regulator_config* @ERR_PTR(i32 %81)
  store %struct.gpio_regulator_config* %82, %struct.gpio_regulator_config** %4, align 8
  br label %220

83:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %118, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %121

88:                                               ; preds = %84
  %89 = load %struct.device_node*, %struct.device_node** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @of_property_read_u32_index(%struct.device_node* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %90, i64* %14)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load i8*, i8** @GPIOD_OUT_HIGH, align 8
  %96 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %97 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %96, i32 0, i32 5
  %98 = load i8**, i8*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* %95, i8** %101, align 8
  br label %117

102:                                              ; preds = %88
  %103 = load i64, i64* %14, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i8*, i8** @GPIOD_OUT_HIGH, align 8
  br label %109

107:                                              ; preds = %102
  %108 = load i8*, i8** @GPIOD_OUT_LOW, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i8* [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %112 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %111, i32 0, i32 5
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  store i8* %110, i8** %116, align 8
  br label %117

117:                                              ; preds = %109, %94
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %84

121:                                              ; preds = %84
  br label %122

122:                                              ; preds = %121, %55
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %125 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.device_node*, %struct.device_node** %6, align 8
  %127 = call i32 @of_property_count_u32_elems(%struct.device_node* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %122
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  %135 = call %struct.gpio_regulator_config* @ERR_PTR(i32 %134)
  store %struct.gpio_regulator_config* %135, %struct.gpio_regulator_config** %4, align 8
  br label %220

136:                                              ; preds = %122
  %137 = load %struct.device*, %struct.device** %5, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sdiv i32 %138, 2
  %140 = load i32, i32* @GFP_KERNEL, align 4
  %141 = call %struct.TYPE_6__* @devm_kcalloc(%struct.device* %137, i32 %139, i32 4, i32 %140)
  %142 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %143 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %142, i32 0, i32 4
  store %struct.TYPE_6__* %141, %struct.TYPE_6__** %143, align 8
  %144 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %145 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %144, i32 0, i32 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = icmp ne %struct.TYPE_6__* %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %136
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  %151 = call %struct.gpio_regulator_config* @ERR_PTR(i32 %150)
  store %struct.gpio_regulator_config* %151, %struct.gpio_regulator_config** %4, align 8
  br label %220

152:                                              ; preds = %136
  store i32 0, i32* %11, align 4
  br label %153

153:                                              ; preds = %182, %152
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %10, align 4
  %156 = sdiv i32 %155, 2
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %185

158:                                              ; preds = %153
  %159 = load %struct.device_node*, %struct.device_node** %6, align 8
  %160 = load i32, i32* %11, align 4
  %161 = mul nsw i32 %160, 2
  %162 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %163 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %162, i32 0, i32 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = call i32 @of_property_read_u32_index(%struct.device_node* %159, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %161, i64* %168)
  %170 = load %struct.device_node*, %struct.device_node** %6, align 8
  %171 = load i32, i32* %11, align 4
  %172 = mul nsw i32 %171, 2
  %173 = add nsw i32 %172, 1
  %174 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %175 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %174, i32 0, i32 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = call i32 @of_property_read_u32_index(%struct.device_node* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %173, i64* %180)
  br label %182

182:                                              ; preds = %158
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %153

185:                                              ; preds = %153
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %188 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load i8*, i8** @REGULATOR_VOLTAGE, align 8
  %190 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %191 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  %192 = load %struct.device_node*, %struct.device_node** %6, align 8
  %193 = call i32 @of_property_read_string(%struct.device_node* %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %9)
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %218

196:                                              ; preds = %185
  %197 = load i8*, i8** %9, align 8
  %198 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %197, i32 7)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** @REGULATOR_VOLTAGE, align 8
  %202 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %203 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  br label %217

204:                                              ; preds = %196
  %205 = load i8*, i8** %9, align 8
  %206 = call i32 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %205, i32 7)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %204
  %209 = load i8*, i8** @REGULATOR_CURRENT, align 8
  %210 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  %211 = getelementptr inbounds %struct.gpio_regulator_config, %struct.gpio_regulator_config* %210, i32 0, i32 3
  store i8* %209, i8** %211, align 8
  br label %216

212:                                              ; preds = %204
  %213 = load %struct.device*, %struct.device** %5, align 8
  %214 = load i8*, i8** %9, align 8
  %215 = call i32 @dev_warn(%struct.device* %213, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %212, %208
  br label %217

217:                                              ; preds = %216, %200
  br label %218

218:                                              ; preds = %217, %185
  %219 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %8, align 8
  store %struct.gpio_regulator_config* %219, %struct.gpio_regulator_config** %4, align 8
  br label %220

220:                                              ; preds = %218, %148, %130, %79, %36, %21
  %221 = load %struct.gpio_regulator_config*, %struct.gpio_regulator_config** %4, align 8
  ret %struct.gpio_regulator_config* %221
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.gpio_regulator_config* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_5__* @of_get_regulator_init_data(%struct.device*, %struct.device_node*, %struct.regulator_desc*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @gpiod_count(%struct.device*, i32*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i64*) #1

declare dso_local i32 @of_property_count_u32_elems(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_6__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
