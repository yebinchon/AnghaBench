; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_setup_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8903_charger.c_max8903_setup_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.max8903_pdata* }
%struct.max8903_pdata = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.max8903_data = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Failed GPIO request for dok: %d err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"When DC is wired, DOK should be wired as well.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed GPIO request for dcm: %d err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed GPIO request for uok: %d err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"When USB is wired, UOK should be wired.as well.\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Failed GPIO request for cen: %d err %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed GPIO request for chg: %d err %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Failed GPIO request for flt: %d err %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed GPIO request for usus: %d err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max8903_setup_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8903_setup_gpios(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.max8903_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.max8903_pdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call %struct.max8903_data* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.max8903_data* %12, %struct.max8903_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.max8903_pdata*, %struct.max8903_pdata** %17, align 8
  store %struct.max8903_pdata* %18, %struct.max8903_pdata** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %20 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %1
  %24 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %25 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @gpio_is_valid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %32 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %35 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @devm_gpio_request(%struct.device* %30, i32 %33, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %44 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %273

49:                                               ; preds = %29
  %50 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %51 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @gpio_get_value(i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 0, i32 1
  store i32 %57, i32* %9, align 4
  br label %63

58:                                               ; preds = %23
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %273

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %66 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @gpio_is_valid(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %73 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %76 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @devm_gpio_request(%struct.device* %71, i32 %74, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %85 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %273

90:                                               ; preds = %70
  %91 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %92 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @gpio_set_value(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %64
  %98 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %99 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %143

102:                                              ; preds = %97
  %103 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %104 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @gpio_is_valid(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %102
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %111 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %114 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @devm_gpio_request(%struct.device* %109, i32 %112, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %108
  %121 = load %struct.device*, %struct.device** %5, align 8
  %122 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %123 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %273

128:                                              ; preds = %108
  %129 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %130 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @gpio_get_value(i32 %132)
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 0, i32 1
  store i32 %136, i32* %10, align 4
  br label %142

137:                                              ; preds = %102
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %273

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142, %97
  %144 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %145 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @gpio_is_valid(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %183

149:                                              ; preds = %143
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %152 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %155 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @devm_gpio_request(%struct.device* %150, i32 %153, i32 %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %149
  %162 = load %struct.device*, %struct.device** %5, align 8
  %163 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %164 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %165, i32 %166)
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %2, align 4
  br label %273

169:                                              ; preds = %149
  %170 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %171 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %169
  %176 = load i32, i32* %10, align 4
  %177 = icmp ne i32 %176, 0
  br label %178

178:                                              ; preds = %175, %169
  %179 = phi i1 [ true, %169 ], [ %177, %175 ]
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 0, i32 1
  %182 = call i32 @gpio_set_value(i32 %172, i32 %181)
  br label %183

183:                                              ; preds = %178, %143
  %184 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %185 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @gpio_is_valid(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %210

189:                                              ; preds = %183
  %190 = load %struct.device*, %struct.device** %5, align 8
  %191 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %192 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %195 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @devm_gpio_request(%struct.device* %190, i32 %193, i32 %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %189
  %202 = load %struct.device*, %struct.device** %5, align 8
  %203 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %204 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %202, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %205, i32 %206)
  %208 = load i32, i32* %7, align 4
  store i32 %208, i32* %2, align 4
  br label %273

209:                                              ; preds = %189
  br label %210

210:                                              ; preds = %209, %183
  %211 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %212 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @gpio_is_valid(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %237

216:                                              ; preds = %210
  %217 = load %struct.device*, %struct.device** %5, align 8
  %218 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %219 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %222 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @devm_gpio_request(%struct.device* %217, i32 %220, i32 %224)
  store i32 %225, i32* %7, align 4
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %216
  %229 = load %struct.device*, %struct.device** %5, align 8
  %230 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %231 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %7, align 4
  %234 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %229, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %232, i32 %233)
  %235 = load i32, i32* %7, align 4
  store i32 %235, i32* %2, align 4
  br label %273

236:                                              ; preds = %216
  br label %237

237:                                              ; preds = %236, %210
  %238 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %239 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @gpio_is_valid(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %264

243:                                              ; preds = %237
  %244 = load %struct.device*, %struct.device** %5, align 8
  %245 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %246 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %249 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @devm_gpio_request(%struct.device* %244, i32 %247, i32 %251)
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %243
  %256 = load %struct.device*, %struct.device** %5, align 8
  %257 = load %struct.max8903_pdata*, %struct.max8903_pdata** %6, align 8
  %258 = getelementptr inbounds %struct.max8903_pdata, %struct.max8903_pdata* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %7, align 4
  %261 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %256, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %259, i32 %260)
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %2, align 4
  br label %273

263:                                              ; preds = %243
  br label %264

264:                                              ; preds = %263, %237
  %265 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %266 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %265, i32 0, i32 0
  store i32 0, i32* %266, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %269 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.max8903_data*, %struct.max8903_data** %4, align 8
  %272 = getelementptr inbounds %struct.max8903_data, %struct.max8903_data* %271, i32 0, i32 2
  store i32 %270, i32* %272, align 4
  store i32 0, i32* %2, align 4
  br label %273

273:                                              ; preds = %264, %255, %228, %201, %161, %137, %120, %82, %58, %41
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local %struct.max8903_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
