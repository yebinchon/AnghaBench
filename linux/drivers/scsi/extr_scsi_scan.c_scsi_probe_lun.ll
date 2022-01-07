; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_probe_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_probe_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i8, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32, i64 }

@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"scsi scan: INQUIRY pass %d length %d\0A\00", align 1
@INQUIRY = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@scsi_inq_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"scsi scan: INQUIRY %s with code 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"successful\00", align 1
@DRIVER_SENSE = common dso_local global i64 0, align 8
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@BLIST_INQUIRY_36 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [79 x i8] c"scsi scan: %d byte inquiry failed.  Consider BLIST_INQUIRY_36 for this device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"scsi scan: INQUIRY result too short (%d), using 36\0A\00", align 1
@SCSI_2 = common dso_local global i32 0, align 4
@SCSI_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i8*, i32, i32*)* @scsi_probe_lun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_probe_lun(%struct.scsi_device* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scsi_sense_hdr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %22 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  br label %36

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 36, %35 ]
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %39

39:                                               ; preds = %181, %174, %36
  %40 = load i32, i32* @KERN_INFO, align 4
  %41 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %40, %struct.scsi_device* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = call i32 @SCSI_LOG_SCAN_BUS(i32 3, i32 %44)
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %116, %39
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %119

49:                                               ; preds = %46
  %50 = call i32 @memset(i8* %25, i32 0, i32 6)
  %51 = load i8, i8* @INQUIRY, align 1
  %52 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %51, i8* %52, align 16
  %53 = load i32, i32* %13, align 4
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds i8, i8* %25, i64 4
  store i8 %54, i8* %55, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @memset(i8* %56, i32 0, i32 %57)
  %59 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @HZ, align 4
  %64 = sdiv i32 %63, 2
  %65 = load i32, i32* @HZ, align 4
  %66 = load i32, i32* @scsi_inq_timeout, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %64, %67
  %69 = call i32 @scsi_execute_req(%struct.scsi_device* %59, i8* %25, i32 %60, i8* %61, i32 %62, %struct.scsi_sense_hdr* %19, i32 %68, i32 3, i32* %20)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* @KERN_INFO, align 4
  %71 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %76 = load i32, i32* %18, align 4
  %77 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %70, %struct.scsi_device* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %76)
  %78 = call i32 @SCSI_LOG_SCAN_BUS(i32 3, i32 %77)
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %49
  %82 = load i32, i32* %18, align 4
  %83 = call i64 @driver_byte(i32 %82)
  %84 = load i64, i64* @DRIVER_SENSE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %81
  %87 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %19)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %19, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @UNIT_ATTENTION, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %19, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 40
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %19, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 41
  br i1 %101, label %102, label %107

102:                                              ; preds = %98, %94
  %103 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %19, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %116

107:                                              ; preds = %102, %98, %89
  br label %108

108:                                              ; preds = %107, %86, %81
  br label %115

109:                                              ; preds = %49
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %116

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %114, %108
  br label %119

116:                                              ; preds = %113, %106
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  br label %46

119:                                              ; preds = %115, %46
  %120 = load i32, i32* %18, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %178

122:                                              ; preds = %119
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 8
  %125 = call i32 @scsi_sanitize_inquiry_string(i8* %124, i32 8)
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 16
  %128 = call i32 @scsi_sanitize_inquiry_string(i8* %127, i32 16)
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 32
  %131 = call i32 @scsi_sanitize_inquiry_string(i8* %130, i32 4)
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 4
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = add nsw i32 %135, 5
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp sgt i32 %137, 255
  br i1 %138, label %139, label %141

139:                                              ; preds = %122
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %139, %122
  %142 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 8
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 16
  %147 = call i32 @scsi_get_device_flags(%struct.scsi_device* %142, i8* %144, i8* %146)
  %148 = load i32*, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %177

151:                                              ; preds = %141
  %152 = load i32, i32* @BLIST_INQUIRY_36, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %152, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 36, i32* %14, align 4
  br label %170

158:                                              ; preds = %151
  %159 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %160 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %165 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %14, align 4
  br label %169

167:                                              ; preds = %158
  %168 = load i32, i32* %15, align 4
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %167, %163
  br label %170

170:                                              ; preds = %169, %157
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* %14, align 4
  store i32 %175, i32* %13, align 4
  store i32 2, i32* %16, align 4
  br label %39

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176, %141
  br label %188

178:                                              ; preds = %119
  %179 = load i32, i32* %16, align 4
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i32, i32* @KERN_INFO, align 4
  %183 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %184 = load i32, i32* %13, align 4
  %185 = call i32 (i32, %struct.scsi_device*, i8*, ...) @sdev_printk(i32 %182, %struct.scsi_device* %183, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %12, align 4
  store i32 %186, i32* %13, align 4
  store i32 3, i32* %16, align 4
  br label %39

187:                                              ; preds = %178
  br label %188

188:                                              ; preds = %187, %177
  %189 = load i32, i32* %18, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* @EIO, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %294

194:                                              ; preds = %188
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @min(i32 %195, i32 %196)
  %198 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %199 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %201 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %202, 36
  br i1 %203, label %204, label %227

204:                                              ; preds = %194
  %205 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %206 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %205, i32 0, i32 3
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* @KERN_INFO, align 4
  %213 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %214 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %213, i32 0, i32 3
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %217 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @shost_printk(i32 %212, %struct.TYPE_4__* %215, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %218)
  %220 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %221 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %220, i32 0, i32 3
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  store i32 1, i32* %223, align 4
  br label %224

224:                                              ; preds = %211, %204
  %225 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %226 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %225, i32 0, i32 0
  store i32 36, i32* %226, align 8
  br label %227

227:                                              ; preds = %224, %194
  %228 = load i8*, i8** %7, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 2
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = and i32 %231, 7
  %233 = trunc i32 %232 to i8
  %234 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %235 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %234, i32 0, i32 1
  store i8 %233, i8* %235, align 4
  %236 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %237 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %236, i32 0, i32 1
  %238 = load i8, i8* %237, align 4
  %239 = zext i8 %238 to i32
  %240 = icmp sge i32 %239, 2
  br i1 %240, label %254, label %241

241:                                              ; preds = %227
  %242 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %243 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %242, i32 0, i32 1
  %244 = load i8, i8* %243, align 4
  %245 = zext i8 %244 to i32
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %259

247:                                              ; preds = %241
  %248 = load i8*, i8** %7, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 3
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = and i32 %251, 15
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %259

254:                                              ; preds = %247, %227
  %255 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %256 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %255, i32 0, i32 1
  %257 = load i8, i8* %256, align 4
  %258 = add i8 %257, 1
  store i8 %258, i8* %256, align 4
  br label %259

259:                                              ; preds = %254, %247, %241
  %260 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %261 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %260, i32 0, i32 1
  %262 = load i8, i8* %261, align 4
  %263 = zext i8 %262 to i32
  %264 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %265 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %264, i32 0, i32 4
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 0
  store i32 %263, i32* %267, align 4
  %268 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %269 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %268, i32 0, i32 2
  store i32 0, i32* %269, align 8
  %270 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %271 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %270, i32 0, i32 1
  %272 = load i8, i8* %271, align 4
  %273 = zext i8 %272 to i32
  %274 = load i32, i32* @SCSI_2, align 4
  %275 = icmp sle i32 %273, %274
  br i1 %275, label %276, label %293

276:                                              ; preds = %259
  %277 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %278 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %277, i32 0, i32 1
  %279 = load i8, i8* %278, align 4
  %280 = zext i8 %279 to i32
  %281 = load i32, i32* @SCSI_UNKNOWN, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %276
  %284 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %285 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %284, i32 0, i32 3
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %283
  %291 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %292 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %291, i32 0, i32 2
  store i32 1, i32* %292, align 8
  br label %293

293:                                              ; preds = %290, %283, %276, %259
  store i32 0, i32* %5, align 4
  store i32 1, i32* %21, align 4
  br label %294

294:                                              ; preds = %293, %191
  %295 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %295)
  %296 = load i32, i32* %5, align 4
  ret i32 %296
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SCSI_LOG_SCAN_BUS(i32, i32) #2

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, ...) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #2

declare dso_local i64 @driver_byte(i32) #2

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #2

declare dso_local i32 @scsi_sanitize_inquiry_string(i8*, i32) #2

declare dso_local i32 @scsi_get_device_flags(%struct.scsi_device*, i8*, i8*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @shost_printk(i32, %struct.TYPE_4__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
