; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_upload_nvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_boot.c_wlcore_boot_upload_nvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64*, i32, i32, i32, i32*, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.platform_device* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64* }
%struct.platform_device = type { i32 }
%struct.wlcore_platdev_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.wl1271_nvs_file = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.wl128x_nvs_file = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"NVS file is needed during boot\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WLCORE_QUIRK_LEGACY_NVS = common dso_local global i32 0, align 4
@WL1271_INI_LEGACY_NVS_FILE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s size is not as expected: %zu != %zu\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"nvs burst write 0x%x: 0x%x\00", align 1
@PART_WORK = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_CMD_MBOX_ADDRESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"nvs data is malformed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_boot_upload_nvs(%struct.wl1271* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.wlcore_platdev_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wl1271_nvs_file*, align 8
  %16 = alloca %struct.wl128x_nvs_file*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  %17 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 7
  %19 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  store %struct.platform_device* %19, %struct.platform_device** %4, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call %struct.wlcore_platdev_data* @dev_get_platdata(i32* %21)
  store %struct.wlcore_platdev_data* %22, %struct.wlcore_platdev_data** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %23 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %379

31:                                               ; preds = %1
  %32 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %33 = icmp ne %struct.wlcore_platdev_data* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %36 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %5, align 8
  %41 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %39, %34, %31
  %46 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @WLCORE_QUIRK_LEGACY_NVS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %116

52:                                               ; preds = %45
  %53 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = bitcast i64* %55 to %struct.wl1271_nvs_file*
  store %struct.wl1271_nvs_file* %56, %struct.wl1271_nvs_file** %15, align 8
  %57 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp eq i64 %60, 16
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %64 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WL1271_INI_LEGACY_NVS_FILE_SIZE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62, %52
  %69 = load %struct.wl1271_nvs_file*, %struct.wl1271_nvs_file** %15, align 8
  %70 = getelementptr inbounds %struct.wl1271_nvs_file, %struct.wl1271_nvs_file* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %76 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %75, i32 0, i32 3
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %68
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %80 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ne i64 %82, 16
  br i1 %83, label %84, label %111

84:                                               ; preds = %78
  %85 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %86 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @WL1271_INI_LEGACY_NVS_FILE_SIZE, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %84
  %91 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %90, %84
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %98 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %96, i32 %99, i64 16)
  %101 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = call i32 @kfree(i64* %103)
  %105 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %106 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %105, i32 0, i32 0
  store i64* null, i64** %106, align 8
  %107 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %108 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %107, i32 0, i32 2
  store i32 0, i32* %108, align 4
  %109 = load i32, i32* @EILSEQ, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %379

111:                                              ; preds = %90, %78
  store i64 8, i64* %7, align 8
  %112 = load %struct.wl1271_nvs_file*, %struct.wl1271_nvs_file** %15, align 8
  %113 = getelementptr inbounds %struct.wl1271_nvs_file, %struct.wl1271_nvs_file* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i64*
  store i64* %115, i64** %12, align 8
  br label %157

116:                                              ; preds = %45
  %117 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %118 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = bitcast i64* %119 to %struct.wl128x_nvs_file*
  store %struct.wl128x_nvs_file* %120, %struct.wl128x_nvs_file** %16, align 8
  %121 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %122 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp eq i64 %124, 16
  br i1 %125, label %126, label %136

126:                                              ; preds = %116
  %127 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %16, align 8
  %128 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %134 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %133, i32 0, i32 3
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %126
  br label %152

136:                                              ; preds = %116
  %137 = load i8*, i8** %6, align 8
  %138 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %139 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %137, i32 %140, i64 16)
  %142 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %143 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = call i32 @kfree(i64* %144)
  %146 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %147 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %146, i32 0, i32 0
  store i64* null, i64** %147, align 8
  %148 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %149 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %148, i32 0, i32 2
  store i32 0, i32* %149, align 4
  %150 = load i32, i32* @EILSEQ, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %379

152:                                              ; preds = %135
  store i64 8, i64* %7, align 8
  %153 = load %struct.wl128x_nvs_file*, %struct.wl128x_nvs_file** %16, align 8
  %154 = getelementptr inbounds %struct.wl128x_nvs_file, %struct.wl128x_nvs_file* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i64*
  store i64* %156, i64** %12, align 8
  br label %157

157:                                              ; preds = %152, %111
  %158 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %159 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %158, i32 0, i32 6
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64*, i64** %12, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 11
  store i64 %165, i64* %167, align 8
  %168 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %169 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %168, i32 0, i32 6
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** %12, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 10
  store i64 %175, i64* %177, align 8
  %178 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %179 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %178, i32 0, i32 6
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 2
  %185 = load i64, i64* %184, align 8
  %186 = load i64*, i64** %12, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 6
  store i64 %185, i64* %187, align 8
  %188 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %189 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %188, i32 0, i32 6
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 3
  %195 = load i64, i64* %194, align 8
  %196 = load i64*, i64** %12, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 5
  store i64 %195, i64* %197, align 8
  %198 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %199 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %198, i32 0, i32 6
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 4
  %205 = load i64, i64* %204, align 8
  %206 = load i64*, i64** %12, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 4
  store i64 %205, i64* %207, align 8
  %208 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %209 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %208, i32 0, i32 6
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i64 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 5
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %12, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 3
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %308, %157
  %219 = load i64*, i64** %12, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %309

223:                                              ; preds = %218
  %224 = load i64*, i64** %12, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 0
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %8, align 8
  %227 = load i64*, i64** %12, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = and i64 %229, 254
  %231 = load i64*, i64** %12, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 2
  %233 = load i64, i64* %232, align 8
  %234 = shl i64 %233, 8
  %235 = or i64 %230, %234
  store i64 %235, i64* %10, align 8
  %236 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %237 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* %10, align 8
  %242 = add i64 %241, %240
  store i64 %242, i64* %10, align 8
  %243 = load i64*, i64** %12, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 3
  store i64* %244, i64** %12, align 8
  store i32 0, i32* %9, align 4
  br label %245

245:                                              ; preds = %296, %223
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = load i64, i64* %8, align 8
  %249 = icmp ult i64 %247, %248
  br i1 %249, label %250, label %299

250:                                              ; preds = %245
  %251 = load i64*, i64** %12, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 3
  %253 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %254 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %253, i32 0, i32 0
  %255 = load i64*, i64** %254, align 8
  %256 = load i64, i64* %7, align 8
  %257 = getelementptr inbounds i64, i64* %255, i64 %256
  %258 = icmp uge i64* %252, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %250
  br label %375

260:                                              ; preds = %250
  %261 = load i64*, i64** %12, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64*, i64** %12, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 1
  %266 = load i64, i64* %265, align 8
  %267 = shl i64 %266, 8
  %268 = or i64 %263, %267
  %269 = load i64*, i64** %12, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 2
  %271 = load i64, i64* %270, align 8
  %272 = shl i64 %271, 16
  %273 = or i64 %268, %272
  %274 = load i64*, i64** %12, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 3
  %276 = load i64, i64* %275, align 8
  %277 = shl i64 %276, 24
  %278 = or i64 %273, %277
  store i64 %278, i64* %11, align 8
  %279 = load i32, i32* @DEBUG_BOOT, align 4
  %280 = load i64, i64* %10, align 8
  %281 = load i64, i64* %11, align 8
  %282 = call i32 @wl1271_debug(i32 %279, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %280, i64 %281)
  %283 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %284 = load i64, i64* %10, align 8
  %285 = load i64, i64* %11, align 8
  %286 = call i32 @wlcore_write32(%struct.wl1271* %283, i64 %284, i64 %285)
  store i32 %286, i32* %14, align 4
  %287 = load i32, i32* %14, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %260
  %290 = load i32, i32* %14, align 4
  store i32 %290, i32* %2, align 4
  br label %379

291:                                              ; preds = %260
  %292 = load i64*, i64** %12, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 4
  store i64* %293, i64** %12, align 8
  %294 = load i64, i64* %10, align 8
  %295 = add i64 %294, 4
  store i64 %295, i64* %10, align 8
  br label %296

296:                                              ; preds = %291
  %297 = load i32, i32* %9, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %9, align 4
  br label %245

299:                                              ; preds = %245
  %300 = load i64*, i64** %12, align 8
  %301 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %302 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %301, i32 0, i32 0
  %303 = load i64*, i64** %302, align 8
  %304 = load i64, i64* %7, align 8
  %305 = getelementptr inbounds i64, i64* %303, i64 %304
  %306 = icmp uge i64* %300, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  br label %375

308:                                              ; preds = %299
  br label %218

309:                                              ; preds = %218
  %310 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %311 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %310, i32 0, i32 0
  %312 = load i64*, i64** %311, align 8
  %313 = load i64*, i64** %12, align 8
  %314 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %315 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %314, i32 0, i32 0
  %316 = load i64*, i64** %315, align 8
  %317 = ptrtoint i64* %313 to i64
  %318 = ptrtoint i64* %316 to i64
  %319 = sub i64 %317, %318
  %320 = sdiv exact i64 %319, 8
  %321 = add nsw i64 %320, 7
  %322 = trunc i64 %321 to i32
  %323 = call i32 @ALIGN(i32 %322, i32 4)
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %312, i64 %324
  store i64* %325, i64** %12, align 8
  %326 = load i64*, i64** %12, align 8
  %327 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %328 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %327, i32 0, i32 0
  %329 = load i64*, i64** %328, align 8
  %330 = load i64, i64* %7, align 8
  %331 = getelementptr inbounds i64, i64* %329, i64 %330
  %332 = icmp uge i64* %326, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %309
  br label %375

334:                                              ; preds = %309
  %335 = load i64*, i64** %12, align 8
  %336 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %337 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %336, i32 0, i32 0
  %338 = load i64*, i64** %337, align 8
  %339 = ptrtoint i64* %335 to i64
  %340 = ptrtoint i64* %338 to i64
  %341 = sub i64 %339, %340
  %342 = sdiv exact i64 %341, 8
  %343 = load i64, i64* %7, align 8
  %344 = sub i64 %343, %342
  store i64 %344, i64* %7, align 8
  %345 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %346 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %347 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %346, i32 0, i32 4
  %348 = load i32*, i32** %347, align 8
  %349 = load i64, i64* @PART_WORK, align 8
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  %351 = call i32 @wlcore_set_partition(%struct.wl1271* %345, i32* %350)
  store i32 %351, i32* %14, align 4
  %352 = load i32, i32* %14, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %334
  %355 = load i32, i32* %14, align 4
  store i32 %355, i32* %2, align 4
  br label %379

356:                                              ; preds = %334
  %357 = load i64*, i64** %12, align 8
  %358 = load i64, i64* %7, align 8
  %359 = load i32, i32* @GFP_KERNEL, align 4
  %360 = call i64* @kmemdup(i64* %357, i64 %358, i32 %359)
  store i64* %360, i64** %13, align 8
  %361 = load i64*, i64** %13, align 8
  %362 = icmp ne i64* %361, null
  br i1 %362, label %366, label %363

363:                                              ; preds = %356
  %364 = load i32, i32* @ENOMEM, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %2, align 4
  br label %379

366:                                              ; preds = %356
  %367 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %368 = load i32, i32* @REG_CMD_MBOX_ADDRESS, align 4
  %369 = load i64*, i64** %13, align 8
  %370 = load i64, i64* %7, align 8
  %371 = call i32 @wlcore_write_data(%struct.wl1271* %367, i32 %368, i64* %369, i64 %370, i32 0)
  store i32 %371, i32* %14, align 4
  %372 = load i64*, i64** %13, align 8
  %373 = call i32 @kfree(i64* %372)
  %374 = load i32, i32* %14, align 4
  store i32 %374, i32* %2, align 4
  br label %379

375:                                              ; preds = %333, %307, %259
  %376 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %377 = load i32, i32* @EILSEQ, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %2, align 4
  br label %379

379:                                              ; preds = %375, %366, %363, %354, %289, %136, %95, %27
  %380 = load i32, i32* %2, align 4
  ret i32 %380
}

declare dso_local %struct.wlcore_platdev_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i64, i64) #1

declare dso_local i32 @wlcore_write32(%struct.wl1271*, i64, i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @wlcore_set_partition(%struct.wl1271*, i32*) #1

declare dso_local i64* @kmemdup(i64*, i64, i32) #1

declare dso_local i32 @wlcore_write_data(%struct.wl1271*, i32, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
