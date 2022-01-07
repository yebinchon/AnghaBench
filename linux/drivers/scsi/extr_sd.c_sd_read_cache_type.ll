; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_cache_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_read_cache_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, i32, i64, i64, %struct.scsi_device*, i64 }
%struct.scsi_device = type { i64, i64, i32, i32, i64, i64, i64, i64 }
%struct.scsi_mode_data = type { i32, i32, i32, i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }

@TYPE_RBC = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Missing header in MODE_SENSE response\0A\00", align 1
@SD_BUF_SIZE = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Truncating mode parameter data from %d to %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Incomplete mode parameter data\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"No Caching mode page found\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Disabling FUA\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Uses READ/WRITE(6), disabling FUA\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Write cache: %s, read cache: %s, %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"supports DPO and FUA\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"doesn't support DPO or FUA\00", align 1
@ILLEGAL_REQUEST = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"Cache data unavailable\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Asking for cache data failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Assuming drive cache: write back\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Assuming drive cache: write through\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i8*)* @sd_read_cache_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_cache_type(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_mode_data, align 4
  %12 = alloca %struct.scsi_sense_hdr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %19 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %19, i32 0, i32 5
  %21 = load %struct.scsi_device*, %struct.scsi_device** %20, align 8
  store %struct.scsi_device* %21, %struct.scsi_device** %7, align 8
  %22 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %26 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %29 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %15, align 4
  %31 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %425

36:                                               ; preds = %2
  store i32 4, i32* %10, align 4
  %37 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TYPE_RBC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %403

48:                                               ; preds = %41
  %49 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %50 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %403

54:                                               ; preds = %48
  store i32 63, i32* %9, align 4
  %55 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %56 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 192, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %54
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %60
  br label %71

62:                                               ; preds = %36
  %63 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TYPE_RBC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 6, i32* %9, align 4
  store i32 8, i32* %8, align 4
  br label %70

69:                                               ; preds = %62
  store i32 8, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %61
  %72 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @sd_do_mode_sense(%struct.scsi_device* %72, i32 %73, i32 %74, i8* %75, i32 %76, %struct.scsi_mode_data* %11, %struct.scsi_sense_hdr* %12)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @scsi_status_is_good(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %71
  br label %378

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %11, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  store i32 6, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %87 = load i32, i32* @KERN_ERR, align 4
  %88 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %89 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %87, %struct.scsi_disk* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %11, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %378

96:                                               ; preds = %90
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SD_BUF_SIZE, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32, i32* @KERN_NOTICE, align 4
  %102 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @SD_BUF_SIZE, align 4
  %105 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %101, %struct.scsi_disk* %102, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104)
  %106 = load i32, i32* @SD_BUF_SIZE, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %100, %96
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 63
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %113 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 192, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %111, %108
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i8*, i8** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @sd_do_mode_sense(%struct.scsi_device* %122, i32 %123, i32 %124, i8* %125, i32 %126, %struct.scsi_mode_data* %11, %struct.scsi_sense_hdr* %12)
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %121, %117
  %129 = load i32, i32* %6, align 4
  %130 = call i64 @scsi_status_is_good(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %377

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %11, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %11, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %134, %136
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %226, %132
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %227

142:                                              ; preds = %138
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, 63
  store i32 %149, i32* %17, align 4
  %150 = load i8*, i8** %4, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = and i32 %155, 64
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %17, align 4
  %158 = icmp eq i32 %157, 8
  br i1 %158, label %162, label %159

159:                                              ; preds = %142
  %160 = load i32, i32* %17, align 4
  %161 = icmp eq i32 %160, 6
  br i1 %161, label %162, label %173

162:                                              ; preds = %159, %142
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %16, align 4
  %165 = sub nsw i32 %163, %164
  %166 = icmp sle i32 %165, 2
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @KERN_ERR, align 4
  %169 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %170 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %168, %struct.scsi_disk* %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %403

171:                                              ; preds = %162
  %172 = load i32, i32* %17, align 4
  store i32 %172, i32* %9, align 4
  br label %231

173:                                              ; preds = %159
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %201

176:                                              ; preds = %173
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %16, align 4
  %179 = sub nsw i32 %177, %178
  %180 = icmp sgt i32 %179, 3
  br i1 %180, label %181, label %201

181:                                              ; preds = %176
  %182 = load i8*, i8** %4, align 8
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl i32 %188, 8
  %190 = add nsw i32 4, %189
  %191 = load i8*, i8** %4, align 8
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, 3
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = add nsw i32 %190, %197
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %16, align 4
  br label %225

201:                                              ; preds = %176, %173
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %220, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %16, align 4
  %207 = sub nsw i32 %205, %206
  %208 = icmp sgt i32 %207, 1
  br i1 %208, label %209, label %220

209:                                              ; preds = %204
  %210 = load i8*, i8** %4, align 8
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %210, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = add nsw i32 2, %216
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %16, align 4
  br label %224

220:                                              ; preds = %204, %201
  %221 = load i32, i32* @KERN_ERR, align 4
  %222 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %223 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %221, %struct.scsi_disk* %222, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %403

224:                                              ; preds = %209
  br label %225

225:                                              ; preds = %224, %181
  br label %226

226:                                              ; preds = %225
  br label %138

227:                                              ; preds = %138
  %228 = load i32, i32* @KERN_ERR, align 4
  %229 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %230 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %228, %struct.scsi_disk* %229, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %403

231:                                              ; preds = %171
  %232 = load i32, i32* %9, align 4
  %233 = icmp eq i32 %232, 8
  br i1 %233, label %234, label %259

234:                                              ; preds = %231
  %235 = load i8*, i8** %4, align 8
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, 2
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %235, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = and i32 %241, 4
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i32
  %245 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %246 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load i8*, i8** %4, align 8
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = and i32 %253, 1
  %255 = icmp ne i32 %254, 0
  %256 = zext i1 %255 to i32
  %257 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %258 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  br label %274

259:                                              ; preds = %231
  %260 = load i8*, i8** %4, align 8
  %261 = load i32, i32* %16, align 4
  %262 = add nsw i32 %261, 2
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %260, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = and i32 %266, 1
  %268 = icmp eq i32 %267, 0
  %269 = zext i1 %268 to i32
  %270 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %271 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %273 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %272, i32 0, i32 1
  store i32 0, i32* %273, align 4
  br label %274

274:                                              ; preds = %259, %234
  %275 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %11, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, 16
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i32
  %280 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %281 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  %282 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %283 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %274
  %287 = load i32, i32* @KERN_NOTICE, align 4
  %288 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %289 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %287, %struct.scsi_disk* %288, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %290 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %291 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %290, i32 0, i32 2
  store i32 0, i32* %291, align 8
  br label %318

292:                                              ; preds = %274
  %293 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %294 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %317

297:                                              ; preds = %292
  %298 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %299 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %298, i32 0, i32 5
  %300 = load %struct.scsi_device*, %struct.scsi_device** %299, align 8
  %301 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %317, label %304

304:                                              ; preds = %297
  %305 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %306 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %305, i32 0, i32 5
  %307 = load %struct.scsi_device*, %struct.scsi_device** %306, align 8
  %308 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %304
  %312 = load i32, i32* @KERN_NOTICE, align 4
  %313 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %314 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %312, %struct.scsi_disk* %313, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %315 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %316 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %315, i32 0, i32 2
  store i32 0, i32* %316, align 8
  br label %317

317:                                              ; preds = %311, %304, %297, %292
  br label %318

318:                                              ; preds = %317, %286
  %319 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %320 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %331

323:                                              ; preds = %318
  %324 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %325 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %330 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %329, i32 0, i32 0
  store i32 0, i32* %330, align 8
  br label %331

331:                                              ; preds = %328, %323, %318
  %332 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %333 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %354, label %336

336:                                              ; preds = %331
  %337 = load i32, i32* %13, align 4
  %338 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %339 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %337, %340
  br i1 %341, label %354, label %342

342:                                              ; preds = %336
  %343 = load i32, i32* %14, align 4
  %344 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %345 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %343, %346
  br i1 %347, label %354, label %348

348:                                              ; preds = %342
  %349 = load i32, i32* %15, align 4
  %350 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %351 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %349, %352
  br i1 %353, label %354, label %376

354:                                              ; preds = %348, %342, %336, %331
  %355 = load i32, i32* @KERN_NOTICE, align 4
  %356 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %357 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %358 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  %361 = zext i1 %360 to i64
  %362 = select i1 %360, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %363 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %364 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  %367 = zext i1 %366 to i64
  %368 = select i1 %366, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %369 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %370 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp ne i32 %371, 0
  %373 = zext i1 %372 to i64
  %374 = select i1 %372, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0)
  %375 = call i32 @sd_printk(i32 %355, %struct.scsi_disk* %356, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %362, i8* %368, i8* %374)
  br label %376

376:                                              ; preds = %354, %348
  br label %425

377:                                              ; preds = %128
  br label %378

378:                                              ; preds = %377, %95, %81
  %379 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %12)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %398

381:                                              ; preds = %378
  %382 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %12, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* @ILLEGAL_REQUEST, align 8
  %385 = icmp eq i64 %383, %384
  br i1 %385, label %386, label %398

386:                                              ; preds = %381
  %387 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %12, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = icmp eq i32 %388, 36
  br i1 %389, label %390, label %398

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %12, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %390
  %395 = load i32, i32* @KERN_NOTICE, align 4
  %396 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %397 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %395, %struct.scsi_disk* %396, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  br label %402

398:                                              ; preds = %390, %386, %381, %378
  %399 = load i32, i32* @KERN_ERR, align 4
  %400 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %401 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %399, %struct.scsi_disk* %400, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  br label %402

402:                                              ; preds = %398, %394
  br label %403

403:                                              ; preds = %402, %227, %220, %167, %53, %47
  %404 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %405 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %414

408:                                              ; preds = %403
  %409 = load i32, i32* @KERN_NOTICE, align 4
  %410 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %411 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %409, %struct.scsi_disk* %410, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %412 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %413 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %412, i32 0, i32 0
  store i32 1, i32* %413, align 8
  br label %420

414:                                              ; preds = %403
  %415 = load i32, i32* @KERN_ERR, align 4
  %416 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %417 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_first_printk(i32 %415, %struct.scsi_disk* %416, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %418 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %419 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %418, i32 0, i32 0
  store i32 0, i32* %419, align 8
  br label %420

420:                                              ; preds = %414, %408
  %421 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %422 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %421, i32 0, i32 1
  store i32 0, i32* %422, align 4
  %423 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %424 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %423, i32 0, i32 2
  store i32 0, i32* %424, align 8
  br label %425

425:                                              ; preds = %420, %376, %35
  ret void
}

declare dso_local i32 @sd_do_mode_sense(%struct.scsi_device*, i32, i32, i8*, i32, %struct.scsi_mode_data*, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_status_is_good(i32) #1

declare dso_local i32 @sd_first_printk(i32, %struct.scsi_disk*, i8*, ...) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
