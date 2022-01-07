; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_scsi_debug_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode_info_t = type { i32, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, i32, i64, i32, i32*, %struct.opcode_info_t* }
%struct.scsi_cmnd = type { i64*, i32, i32, %struct.scsi_device* }
%struct.scsi_device = type { i64, i64 }
%struct.sdebug_dev_info = type { i32, i32 }
%struct.Scsi_Host = type { i32 }

@sdebug_statistics = common dso_local global i64 0, align 8
@sdebug_cmnd_count = common dso_local global i32 0, align 4
@sdebug_verbose = common dso_local global i64 0, align 8
@SDEBUG_OPT_NO_CDB_NOISE = common dso_local global i32 0, align 4
@sdebug_opts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"too long, over 32 bytes\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: tag=%#x, cmd %s\0A\00", align 1
@my_name = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@SCSI_W_LUN_REPORT_LUNS = common dso_local global i64 0, align 8
@sdebug_max_luns = common dso_local global i64 0, align 8
@opcode_ind_arr = common dso_local global i64* null, align 8
@opcode_info_arr = common dso_local global %struct.opcode_info_t* null, align 8
@FF_SA = common dso_local global i32 0, align 4
@F_SA_LOW = common dso_local global i32 0, align 4
@SDEB_IN_CDB = common dso_local global i32 0, align 4
@F_SA_HIGH = common dso_local global i32 0, align 4
@F_INV_OP = common dso_local global i32 0, align 4
@F_RL_WLUN_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: Opcode 0x%x not%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" supported for wlun\00", align 1
@sdebug_strict = common dso_local global i32 0, align 4
@F_SKIP_UA = common dso_local global i32 0, align 4
@SDEBUG_NUM_UAS = common dso_local global i64 0, align 8
@F_M_ACCESS = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i32 0, align 4
@LOGICAL_UNIT_NOT_READY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"%s reports: Not ready: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"initializing command required\00", align 1
@check_condition_result = common dso_local global i32 0, align 4
@sdebug_fake_rw = common dso_local global i64 0, align 8
@F_FAKE_RW = common dso_local global i32 0, align 4
@sdebug_every_nth = common dso_local global i32 0, align 4
@F_DELAY_OVERR = common dso_local global i32 0, align 4
@F_LONG_DELAY = common dso_local global i32 0, align 4
@sdebug_jdelay = common dso_local global i32 0, align 4
@sdebug_ndelay = common dso_local global i32 0, align 4
@F_SYNC_DELAY = common dso_local global i32 0, align 4
@USER_HZ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @scsi_debug_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_debug_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.opcode_info_t*, align 8
  %9 = alloca %struct.opcode_info_t*, align 8
  %10 = alloca %struct.sdebug_dev_info*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, align 8
  %13 = alloca i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca [120 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 3
  %31 = load %struct.scsi_device*, %struct.scsi_device** %30, align 8
  store %struct.scsi_device* %31, %struct.scsi_device** %7, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %11, align 8
  store i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* null, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %13, align 8
  store i32 0, i32* %16, align 4
  %35 = load i64*, i64** %11, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %19, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %39 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %38, i32 0)
  %40 = load i64, i64* @sdebug_statistics, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = call i32 @atomic_inc(i32* @sdebug_cmnd_count)
  br label %44

44:                                               ; preds = %42, %2
  %45 = load i64, i64* @sdebug_verbose, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* @SDEBUG_OPT_NO_CDB_NOISE, align 4
  %49 = load i32, i32* @sdebug_opts, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ false, %44 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %111

58:                                               ; preds = %53
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %23, align 4
  store i32 120, i32* %24, align 4
  %62 = load i32, i32* %23, align 4
  %63 = icmp sgt i32 %62, 32
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = getelementptr inbounds [120 x i8], [120 x i8]* %21, i64 0, i64 0
  %66 = call i32 @strcpy(i8* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %101

67:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  store i32 0, i32* %22, align 4
  br label %68

68:                                               ; preds = %97, %67
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %23, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %24, align 4
  %75 = icmp slt i32 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %100

78:                                               ; preds = %76
  %79 = getelementptr inbounds [120 x i8], [120 x i8]* %21, i64 0, i64 0
  %80 = load i32, i32* %22, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %22, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i64*, i64** %11, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i64 @scnprintf(i8* %82, i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %22, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %22, align 4
  br label %97

97:                                               ; preds = %78
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %68

100:                                              ; preds = %76
  br label %101

101:                                              ; preds = %100, %64
  %102 = load i32, i32* @KERN_INFO, align 4
  %103 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %104 = load i32, i32* @my_name, align 4
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @blk_mq_unique_tag(i32 %107)
  %109 = getelementptr inbounds [120 x i8], [120 x i8]* %21, i64 0, i64 0
  %110 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %102, %struct.scsi_device* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %108, i8* %109)
  br label %111

111:                                              ; preds = %101, %53
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %113 = call i64 @fake_host_busy(%struct.scsi_cmnd* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %116, i32* %3, align 4
  br label %535

117:                                              ; preds = %111
  %118 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %119 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SCSI_W_LUN_REPORT_LUNS, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %20, align 4
  %124 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %125 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @sdebug_max_luns, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %117
  %130 = load i32, i32* %20, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br label %133

133:                                              ; preds = %129, %117
  %134 = phi i1 [ false, %117 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %530

139:                                              ; preds = %133
  %140 = load i64*, i64** @opcode_ind_arr, align 8
  %141 = load i64, i64* %19, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %6, align 8
  %144 = load %struct.opcode_info_t*, %struct.opcode_info_t** @opcode_info_arr, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %144, i64 %145
  store %struct.opcode_info_t* %146, %struct.opcode_info_t** %8, align 8
  %147 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %148 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to %struct.sdebug_dev_info*
  store %struct.sdebug_dev_info* %150, %struct.sdebug_dev_info** %10, align 8
  %151 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %152 = icmp ne %struct.sdebug_dev_info* %151, null
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = call i64 @unlikely(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %139
  %158 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %159 = call %struct.sdebug_dev_info* @find_build_dev_info(%struct.scsi_device* %158)
  store %struct.sdebug_dev_info* %159, %struct.sdebug_dev_info** %10, align 8
  %160 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %161 = icmp eq %struct.sdebug_dev_info* null, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %530

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %139
  %165 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %166 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %15, align 4
  %168 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %169 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %168, i32 0, i32 1
  %170 = load i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %169, align 8
  store i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* %170, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %12, align 8
  %171 = load i32, i32* %15, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %280

173:                                              ; preds = %164
  %174 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  store %struct.opcode_info_t* %174, %struct.opcode_info_t** %9, align 8
  %175 = load i32, i32* @FF_SA, align 4
  %176 = load %struct.opcode_info_t*, %struct.opcode_info_t** %9, align 8
  %177 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %226

181:                                              ; preds = %173
  %182 = load i32, i32* @F_SA_LOW, align 4
  %183 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %184 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %182, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = load i64*, i64** %11, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 1
  %191 = load i64, i64* %190, align 8
  %192 = and i64 31, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %18, align 4
  br label %198

194:                                              ; preds = %181
  %195 = load i64*, i64** %11, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 8
  %197 = call i32 @get_unaligned_be16(i64* %196)
  store i32 %197, i32* %18, align 4
  br label %198

198:                                              ; preds = %194, %188
  store i32 0, i32* %14, align 4
  br label %199

199:                                              ; preds = %217, %198
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %15, align 4
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %225

203:                                              ; preds = %199
  %204 = load i64, i64* %19, align 8
  %205 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %206 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %204, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %203
  %210 = load i32, i32* %18, align 4
  %211 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %212 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %210, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %225

216:                                              ; preds = %209, %203
  br label %217

217:                                              ; preds = %216
  %218 = load %struct.opcode_info_t*, %struct.opcode_info_t** %9, align 8
  %219 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %218, i32 0, i32 6
  %220 = load %struct.opcode_info_t*, %struct.opcode_info_t** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %220, i64 %223
  store %struct.opcode_info_t* %224, %struct.opcode_info_t** %8, align 8
  br label %199

225:                                              ; preds = %215, %199
  br label %248

226:                                              ; preds = %173
  store i32 0, i32* %14, align 4
  br label %227

227:                                              ; preds = %239, %226
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %15, align 4
  %230 = icmp sle i32 %228, %229
  br i1 %230, label %231, label %247

231:                                              ; preds = %227
  %232 = load i64, i64* %19, align 8
  %233 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %234 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %232, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %247

238:                                              ; preds = %231
  br label %239

239:                                              ; preds = %238
  %240 = load %struct.opcode_info_t*, %struct.opcode_info_t** %9, align 8
  %241 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %240, i32 0, i32 6
  %242 = load %struct.opcode_info_t*, %struct.opcode_info_t** %241, align 8
  %243 = load i32, i32* %14, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %14, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %242, i64 %245
  store %struct.opcode_info_t* %246, %struct.opcode_info_t** %8, align 8
  br label %227

247:                                              ; preds = %237, %227
  br label %248

248:                                              ; preds = %247, %225
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %15, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %279

252:                                              ; preds = %248
  %253 = load i32, i32* @F_SA_LOW, align 4
  %254 = load %struct.opcode_info_t*, %struct.opcode_info_t** %9, align 8
  %255 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = and i32 %253, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %252
  %260 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %261 = load i32, i32* @SDEB_IN_CDB, align 4
  %262 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %260, i32 %261, i32 1, i32 4)
  br label %278

263:                                              ; preds = %252
  %264 = load i32, i32* @F_SA_HIGH, align 4
  %265 = load %struct.opcode_info_t*, %struct.opcode_info_t** %9, align 8
  %266 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = and i32 %264, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %263
  %271 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %272 = load i32, i32* @SDEB_IN_CDB, align 4
  %273 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %271, i32 %272, i32 8, i32 7)
  br label %277

274:                                              ; preds = %263
  %275 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %276 = call i32 @mk_sense_invalid_opcode(%struct.scsi_cmnd* %275)
  br label %277

277:                                              ; preds = %274, %270
  br label %278

278:                                              ; preds = %277, %259
  br label %525

279:                                              ; preds = %248
  br label %280

280:                                              ; preds = %279, %164
  %281 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %282 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %17, align 4
  %284 = load i32, i32* @F_INV_OP, align 4
  %285 = load i32, i32* %17, align 4
  %286 = and i32 %284, %285
  %287 = call i64 @unlikely(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %280
  %290 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %291 = call i32 @mk_sense_invalid_opcode(%struct.scsi_cmnd* %290)
  br label %525

292:                                              ; preds = %280
  %293 = load i32, i32* %20, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %292
  %296 = load i32, i32* @F_RL_WLUN_OK, align 4
  %297 = load i32, i32* %17, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  %300 = xor i1 %299, true
  br label %301

301:                                              ; preds = %295, %292
  %302 = phi i1 [ false, %292 ], [ %300, %295 ]
  %303 = zext i1 %302 to i32
  %304 = call i64 @unlikely(i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %301
  %307 = load i64, i64* @sdebug_verbose, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %306
  %310 = load i32, i32* @KERN_INFO, align 4
  %311 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %312 = load i32, i32* @my_name, align 4
  %313 = load i64, i64* %19, align 8
  %314 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %310, %struct.scsi_device* %311, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %312, i64 %313, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %315

315:                                              ; preds = %309, %306
  %316 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %317 = call i32 @mk_sense_invalid_opcode(%struct.scsi_cmnd* %316)
  br label %525

318:                                              ; preds = %301
  %319 = load i32, i32* @sdebug_strict, align 4
  %320 = call i64 @unlikely(i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %380

322:                                              ; preds = %318
  store i32 1, i32* %14, align 4
  br label %323

323:                                              ; preds = %376, %322
  %324 = load i32, i32* %14, align 4
  %325 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %326 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %325, i32 0, i32 5
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = load i32, i32* %328, align 4
  %330 = icmp slt i32 %324, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %323
  %332 = load i32, i32* %14, align 4
  %333 = icmp slt i32 %332, 16
  br label %334

334:                                              ; preds = %331, %323
  %335 = phi i1 [ false, %323 ], [ %333, %331 ]
  br i1 %335, label %336, label %379

336:                                              ; preds = %334
  %337 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %338 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %337, i32 0, i32 5
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %14, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = xor i32 %343, -1
  %345 = sext i32 %344 to i64
  %346 = load i64*, i64** %11, align 8
  %347 = load i32, i32* %14, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64, i64* %346, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = and i64 %345, %350
  store i64 %351, i64* %25, align 8
  %352 = load i64, i64* %25, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %375

354:                                              ; preds = %336
  store i32 7, i32* %26, align 4
  br label %355

355:                                              ; preds = %364, %354
  %356 = load i32, i32* %26, align 4
  %357 = icmp sge i32 %356, 0
  br i1 %357, label %358, label %369

358:                                              ; preds = %355
  %359 = load i64, i64* %25, align 8
  %360 = and i64 128, %359
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %358
  br label %369

363:                                              ; preds = %358
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %26, align 4
  %366 = add nsw i32 %365, -1
  store i32 %366, i32* %26, align 4
  %367 = load i64, i64* %25, align 8
  %368 = shl i64 %367, 1
  store i64 %368, i64* %25, align 8
  br label %355

369:                                              ; preds = %362, %355
  %370 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %371 = load i32, i32* @SDEB_IN_CDB, align 4
  %372 = load i32, i32* %14, align 4
  %373 = load i32, i32* %26, align 4
  %374 = call i32 @mk_sense_invalid_fld(%struct.scsi_cmnd* %370, i32 %371, i32 %372, i32 %373)
  br label %525

375:                                              ; preds = %336
  br label %376

376:                                              ; preds = %375
  %377 = load i32, i32* %14, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %14, align 4
  br label %323

379:                                              ; preds = %334
  br label %380

380:                                              ; preds = %379, %318
  %381 = load i32, i32* @F_SKIP_UA, align 4
  %382 = load i32, i32* %17, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %393, label %385

385:                                              ; preds = %380
  %386 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %387 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = load i64, i64* @SDEBUG_NUM_UAS, align 8
  %390 = call i64 @find_first_bit(i32 %388, i64 %389)
  %391 = load i64, i64* @SDEBUG_NUM_UAS, align 8
  %392 = icmp ne i64 %390, %391
  br label %393

393:                                              ; preds = %385, %380
  %394 = phi i1 [ false, %380 ], [ %392, %385 ]
  %395 = zext i1 %394 to i32
  %396 = call i64 @unlikely(i32 %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %393
  %399 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %400 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %401 = call i32 @make_ua(%struct.scsi_cmnd* %399, %struct.sdebug_dev_info* %400)
  store i32 %401, i32* %16, align 4
  %402 = load i32, i32* %16, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %398
  br label %525

405:                                              ; preds = %398
  br label %406

406:                                              ; preds = %405, %393
  %407 = load i32, i32* @F_M_ACCESS, align 4
  %408 = load i32, i32* %17, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %416

411:                                              ; preds = %406
  %412 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %413 = getelementptr inbounds %struct.sdebug_dev_info, %struct.sdebug_dev_info* %412, i32 0, i32 0
  %414 = call i64 @atomic_read(i32* %413)
  %415 = icmp ne i64 %414, 0
  br label %416

416:                                              ; preds = %411, %406
  %417 = phi i1 [ false, %406 ], [ %415, %411 ]
  %418 = zext i1 %417 to i32
  %419 = call i64 @unlikely(i32 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %435

421:                                              ; preds = %416
  %422 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %423 = load i32, i32* @NOT_READY, align 4
  %424 = load i32, i32* @LOGICAL_UNIT_NOT_READY, align 4
  %425 = call i32 @mk_sense_buffer(%struct.scsi_cmnd* %422, i32 %423, i32 %424, i32 2)
  %426 = load i64, i64* @sdebug_verbose, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %421
  %429 = load i32, i32* @KERN_INFO, align 4
  %430 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %431 = load i32, i32* @my_name, align 4
  %432 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %429, %struct.scsi_device* %430, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %431, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %433

433:                                              ; preds = %428, %421
  %434 = load i32, i32* @check_condition_result, align 4
  store i32 %434, i32* %16, align 4
  br label %467

435:                                              ; preds = %416
  %436 = load i64, i64* @sdebug_fake_rw, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %435
  %439 = load i32, i32* @F_FAKE_RW, align 4
  %440 = load i32, i32* %17, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %438
  br label %467

444:                                              ; preds = %438, %435
  %445 = load i32, i32* @sdebug_every_nth, align 4
  %446 = call i64 @unlikely(i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %454

448:                                              ; preds = %444
  %449 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %450 = call i64 @fake_timeout(%struct.scsi_cmnd* %449)
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %448
  store i32 0, i32* %3, align 4
  br label %535

453:                                              ; preds = %448
  br label %454

454:                                              ; preds = %453, %444
  %455 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %456 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %455, i32 0, i32 1
  %457 = load i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %456, align 8
  %458 = call i64 @likely(i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* %457)
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %454
  %461 = load %struct.opcode_info_t*, %struct.opcode_info_t** %8, align 8
  %462 = getelementptr inbounds %struct.opcode_info_t, %struct.opcode_info_t* %461, i32 0, i32 1
  %463 = load i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %462, align 8
  store i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* %463, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %13, align 8
  br label %466

464:                                              ; preds = %454
  %465 = load i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %12, align 8
  store i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* %465, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %13, align 8
  br label %466

466:                                              ; preds = %464, %460
  br label %467

467:                                              ; preds = %466, %443, %433
  %468 = load i32, i32* @F_DELAY_OVERR, align 4
  %469 = load i32, i32* %17, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %478

472:                                              ; preds = %467
  %473 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %474 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %475 = load i32, i32* %16, align 4
  %476 = load i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %13, align 8
  %477 = call i32 @schedule_resp(%struct.scsi_cmnd* %473, %struct.sdebug_dev_info* %474, i32 %475, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* %476, i32 0, i32 0)
  store i32 %477, i32* %3, align 4
  br label %535

478:                                              ; preds = %467
  %479 = load i32, i32* %17, align 4
  %480 = load i32, i32* @F_LONG_DELAY, align 4
  %481 = and i32 %479, %480
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %517

483:                                              ; preds = %478
  %484 = load i32, i32* @sdebug_jdelay, align 4
  %485 = icmp sgt i32 %484, 0
  br i1 %485, label %489, label %486

486:                                              ; preds = %483
  %487 = load i32, i32* @sdebug_ndelay, align 4
  %488 = icmp sgt i32 %487, 10000
  br i1 %488, label %489, label %517

489:                                              ; preds = %486, %483
  %490 = load i32, i32* @sdebug_jdelay, align 4
  %491 = icmp slt i32 %490, 2
  br i1 %491, label %492, label %493

492:                                              ; preds = %489
  br label %495

493:                                              ; preds = %489
  %494 = load i32, i32* @sdebug_jdelay, align 4
  br label %495

495:                                              ; preds = %493, %492
  %496 = phi i32 [ 1, %492 ], [ %494, %493 ]
  store i32 %496, i32* %27, align 4
  %497 = load i32, i32* %17, align 4
  %498 = load i32, i32* @F_SYNC_DELAY, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  %501 = zext i1 %500 to i64
  %502 = select i1 %500, i32 20, i32 1
  store i32 %502, i32* %28, align 4
  %503 = load i32, i32* @USER_HZ, align 4
  %504 = load i32, i32* %27, align 4
  %505 = mul nsw i32 %503, %504
  %506 = load i32, i32* @HZ, align 4
  %507 = load i32, i32* %28, align 4
  %508 = load i32, i32* @USER_HZ, align 4
  %509 = mul nsw i32 %507, %508
  %510 = call i32 @mult_frac(i32 %505, i32 %506, i32 %509)
  store i32 %510, i32* %27, align 4
  %511 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %512 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %513 = load i32, i32* %16, align 4
  %514 = load i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %13, align 8
  %515 = load i32, i32* %27, align 4
  %516 = call i32 @schedule_resp(%struct.scsi_cmnd* %511, %struct.sdebug_dev_info* %512, i32 %513, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* %514, i32 %515, i32 0)
  store i32 %516, i32* %3, align 4
  br label %535

517:                                              ; preds = %486, %478
  %518 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %519 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %520 = load i32, i32* %16, align 4
  %521 = load i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)** %13, align 8
  %522 = load i32, i32* @sdebug_jdelay, align 4
  %523 = load i32, i32* @sdebug_ndelay, align 4
  %524 = call i32 @schedule_resp(%struct.scsi_cmnd* %518, %struct.sdebug_dev_info* %519, i32 %520, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* %521, i32 %522, i32 %523)
  store i32 %524, i32* %3, align 4
  br label %535

525:                                              ; preds = %404, %369, %315, %289, %278
  %526 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %527 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %10, align 8
  %528 = load i32, i32* @check_condition_result, align 4
  %529 = call i32 @schedule_resp(%struct.scsi_cmnd* %526, %struct.sdebug_dev_info* %527, i32 %528, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* null, i32 0, i32 0)
  store i32 %529, i32* %3, align 4
  br label %535

530:                                              ; preds = %162, %138
  %531 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %532 = load i32, i32* @DID_NO_CONNECT, align 4
  %533 = shl i32 %532, 16
  %534 = call i32 @schedule_resp(%struct.scsi_cmnd* %531, %struct.sdebug_dev_info* null, i32 %533, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* null, i32 0, i32 0)
  store i32 %534, i32* %3, align 4
  br label %535

535:                                              ; preds = %530, %525, %517, %495, %472, %452, %115
  %536 = load i32, i32* %3, align 4
  ret i32 %536
}

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

declare dso_local i32 @blk_mq_unique_tag(i32) #1

declare dso_local i64 @fake_host_busy(%struct.scsi_cmnd*) #1

declare dso_local %struct.sdebug_dev_info* @find_build_dev_info(%struct.scsi_device*) #1

declare dso_local i32 @get_unaligned_be16(i64*) #1

declare dso_local i32 @mk_sense_invalid_fld(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i32 @mk_sense_invalid_opcode(%struct.scsi_cmnd*) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @make_ua(%struct.scsi_cmnd*, %struct.sdebug_dev_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mk_sense_buffer(%struct.scsi_cmnd*, i32, i32, i32) #1

declare dso_local i64 @fake_timeout(%struct.scsi_cmnd*) #1

declare dso_local i64 @likely(i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*) #1

declare dso_local i32 @schedule_resp(%struct.scsi_cmnd*, %struct.sdebug_dev_info*, i32, i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)*, i32, i32) #1

declare dso_local i32 @mult_frac(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
