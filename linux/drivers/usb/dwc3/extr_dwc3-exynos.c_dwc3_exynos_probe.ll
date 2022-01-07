; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-exynos.c_dwc3_exynos_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-exynos.c_dwc3_exynos_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dwc3_exynos = type { i32, i8**, i64, i8**, i8*, i8*, %struct.device* }
%struct.dwc3_exynos_driverdata = type { i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vdd33\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to enable VDD33 supply\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vdd10\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to enable VDD10 supply\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to add dwc3 core\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"no device node, failed to add dwc3 core\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc3_exynos_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_exynos_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dwc3_exynos*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.dwc3_exynos_driverdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dwc3_exynos* @devm_kzalloc(%struct.device* %15, i32 56, i32 %16)
  store %struct.dwc3_exynos* %17, %struct.dwc3_exynos** %4, align 8
  %18 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %19 = icmp ne %struct.dwc3_exynos* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %270

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call %struct.dwc3_exynos_driverdata* @of_device_get_match_data(%struct.device* %24)
  store %struct.dwc3_exynos_driverdata* %25, %struct.dwc3_exynos_driverdata** %7, align 8
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %28 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %27, i32 0, i32 6
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.dwc3_exynos_driverdata*, %struct.dwc3_exynos_driverdata** %7, align 8
  %30 = getelementptr inbounds %struct.dwc3_exynos_driverdata, %struct.dwc3_exynos_driverdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %33 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.dwc3_exynos_driverdata*, %struct.dwc3_exynos_driverdata** %7, align 8
  %35 = getelementptr inbounds %struct.dwc3_exynos_driverdata, %struct.dwc3_exynos_driverdata* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8**
  %38 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %39 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %38, i32 0, i32 1
  store i8** %37, i8*** %39, align 8
  %40 = load %struct.dwc3_exynos_driverdata*, %struct.dwc3_exynos_driverdata** %7, align 8
  %41 = getelementptr inbounds %struct.dwc3_exynos_driverdata, %struct.dwc3_exynos_driverdata* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %44 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.dwc3_exynos* %46)
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %98, %23
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %51 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %101

54:                                               ; preds = %48
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %57 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @devm_clk_get(%struct.device* %55, i8* %62)
  %64 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %65 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %64, i32 0, i32 3
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %63, i8** %69, align 8
  %70 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %71 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %70, i32 0, i32 3
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %54
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %82 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %87)
  %89 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %90 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %89, i32 0, i32 3
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %2, align 4
  br label %270

97:                                               ; preds = %54
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %48

101:                                              ; preds = %48
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %136, %101
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %105 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %139

108:                                              ; preds = %102
  %109 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %110 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %109, i32 0, i32 3
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @clk_prepare_enable(i8* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %124, %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %8, align 4
  %123 = icmp sgt i32 %121, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %120
  %125 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %126 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %125, i32 0, i32 3
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @clk_disable_unprepare(i8* %131)
  br label %120

133:                                              ; preds = %120
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %270

135:                                              ; preds = %108
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %102

139:                                              ; preds = %102
  %140 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %141 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp uge i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %146 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %145, i32 0, i32 3
  %147 = load i8**, i8*** %146, align 8
  %148 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %149 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8*, i8** %147, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @clk_prepare_enable(i8* %152)
  br label %154

154:                                              ; preds = %144, %139
  %155 = load %struct.device*, %struct.device** %5, align 8
  %156 = call i8* @devm_regulator_get(%struct.device* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %157 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %158 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %160 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @IS_ERR(i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %166 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @PTR_ERR(i8* %167)
  store i32 %168, i32* %9, align 4
  br label %233

169:                                              ; preds = %154
  %170 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %171 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @regulator_enable(i8* %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load %struct.device*, %struct.device** %5, align 8
  %178 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %233

179:                                              ; preds = %169
  %180 = load %struct.device*, %struct.device** %5, align 8
  %181 = call i8* @devm_regulator_get(%struct.device* %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %182 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %183 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %182, i32 0, i32 5
  store i8* %181, i8** %183, align 8
  %184 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %185 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %184, i32 0, i32 5
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @IS_ERR(i8* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %179
  %190 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %191 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %190, i32 0, i32 5
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @PTR_ERR(i8* %192)
  store i32 %193, i32* %9, align 4
  br label %228

194:                                              ; preds = %179
  %195 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %196 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %195, i32 0, i32 5
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @regulator_enable(i8* %197)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  %202 = load %struct.device*, %struct.device** %5, align 8
  %203 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %202, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %228

204:                                              ; preds = %194
  %205 = load %struct.device_node*, %struct.device_node** %6, align 8
  %206 = icmp ne %struct.device_node* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %204
  %208 = load %struct.device_node*, %struct.device_node** %6, align 8
  %209 = load %struct.device*, %struct.device** %5, align 8
  %210 = call i32 @of_platform_populate(%struct.device_node* %208, i32* null, i32* null, %struct.device* %209)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load %struct.device*, %struct.device** %5, align 8
  %215 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %223

216:                                              ; preds = %207
  br label %222

217:                                              ; preds = %204
  %218 = load %struct.device*, %struct.device** %5, align 8
  %219 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %218, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %220 = load i32, i32* @ENODEV, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %9, align 4
  br label %223

222:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %270

223:                                              ; preds = %217, %213
  %224 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %225 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %224, i32 0, i32 5
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @regulator_disable(i8* %226)
  br label %228

228:                                              ; preds = %223, %201, %189
  %229 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %230 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %229, i32 0, i32 4
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @regulator_disable(i8* %231)
  br label %233

233:                                              ; preds = %228, %176, %164
  %234 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %235 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %238

238:                                              ; preds = %250, %233
  %239 = load i32, i32* %8, align 4
  %240 = icmp sge i32 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %238
  %242 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %243 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %242, i32 0, i32 3
  %244 = load i8**, i8*** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %244, i64 %246
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @clk_disable_unprepare(i8* %248)
  br label %250

250:                                              ; preds = %241
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %8, align 4
  br label %238

253:                                              ; preds = %238
  %254 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %255 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp uge i64 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %253
  %259 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %260 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %259, i32 0, i32 3
  %261 = load i8**, i8*** %260, align 8
  %262 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %4, align 8
  %263 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds i8*, i8** %261, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @clk_disable_unprepare(i8* %266)
  br label %268

268:                                              ; preds = %258, %253
  %269 = load i32, i32* %9, align 4
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %268, %222, %133, %79, %20
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local %struct.dwc3_exynos* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.dwc3_exynos_driverdata* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dwc3_exynos*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @regulator_enable(i8*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

declare dso_local i32 @regulator_disable(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
