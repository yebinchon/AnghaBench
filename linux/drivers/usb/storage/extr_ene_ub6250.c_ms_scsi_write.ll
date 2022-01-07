; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_scsi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_scsi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, i64 }
%struct.scsi_cmnd = type { i8* }
%struct.bulk_cb_wrap = type { i32, i32, i32*, i32 }
%struct.ene_ub6250_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i64 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@MSP_RW_PATTERN = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Load MSP RW pattern Fail !!\0A\00", align 1
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@FDIR_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MS_RW_PATTERN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Load MS RW pattern Fail !!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"MS_SCSI_Write --- result = %x\0A\00", align 1
@MS_LB_NOT_USED_ERASED = common dso_local global i32 0, align 4
@MS_BYTES_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*)* @ms_scsi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_scsi_write(%struct.us_data* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bulk_cb_wrap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ene_ub6250_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %20 = load %struct.us_data*, %struct.us_data** %4, align 8
  %21 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %23, %struct.bulk_cb_wrap** %7, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.us_data*, %struct.us_data** %4, align 8
  %28 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %30, %struct.ene_ub6250_info** %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 24
  %36 = and i32 %35, -16777216
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 16
  %42 = and i32 %41, 16711680
  %43 = or i32 %36, %42
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = and i32 %48, 65280
  %50 = or i32 %43, %49
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 5
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 0
  %56 = and i32 %55, 255
  %57 = or i32 %50, %56
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 7
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 8
  %63 = and i32 %62, 65280
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 0
  %69 = and i32 %68, 255
  %70 = or i32 %63, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %71, 512
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %75 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %2
  %79 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %79, i32* %3, align 4
  br label %263

80:                                               ; preds = %2
  %81 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %82 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %152

86:                                               ; preds = %80
  %87 = load %struct.us_data*, %struct.us_data** %4, align 8
  %88 = load i32, i32* @MSP_RW_PATTERN, align 4
  %89 = call i32 @ene_load_bincode(%struct.us_data* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %95, i32* %3, align 4
  br label %263

96:                                               ; preds = %86
  %97 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %98 = call i32 @memset(%struct.bulk_cb_wrap* %97, i32 0, i32 24)
  %99 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %100 = call i32 @cpu_to_le32(i32 %99)
  %101 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %102 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %105 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %107 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  %108 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %109 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 240, i32* %111, align 4
  %112 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %113 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 4, i32* %115, align 4
  %116 = load i32, i32* %10, align 4
  %117 = trunc i32 %116 to i8
  %118 = zext i8 %117 to i32
  %119 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %120 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* %10, align 4
  %124 = ashr i32 %123, 8
  %125 = trunc i32 %124 to i8
  %126 = zext i8 %125 to i32
  %127 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %128 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %10, align 4
  %132 = ashr i32 %131, 16
  %133 = trunc i32 %132 to i8
  %134 = zext i8 %133 to i32
  %135 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %136 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %10, align 4
  %140 = ashr i32 %139, 24
  %141 = trunc i32 %140 to i8
  %142 = zext i8 %141 to i32
  %143 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %144 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32 %142, i32* %146, align 4
  %147 = load %struct.us_data*, %struct.us_data** %4, align 8
  %148 = load i32, i32* @FDIR_WRITE, align 4
  %149 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %150 = call i32 @scsi_sglist(%struct.scsi_cmnd* %149)
  %151 = call i32 @ene_send_scsi_cmd(%struct.us_data* %147, i32 %148, i32 %150, i32 1)
  store i32 %151, i32* %6, align 4
  br label %261

152:                                              ; preds = %80
  store i32 0, i32* %14, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* @GFP_KERNEL, align 4
  %155 = call i8* @kmalloc(i32 %153, i32 %154)
  store i8* %155, i8** %13, align 8
  %156 = load i8*, i8** %13, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %159, i32* %3, align 4
  br label %263

160:                                              ; preds = %152
  %161 = load i8*, i8** %13, align 8
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %164 = call i32 @usb_stor_set_xfer_buf(i8* %161, i32 %162, %struct.scsi_cmnd* %163)
  %165 = load %struct.us_data*, %struct.us_data** %4, align 8
  %166 = load i32, i32* @MS_RW_PATTERN, align 4
  %167 = call i32 @ene_load_bincode(%struct.us_data* %165, i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %173 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %173, i32* %6, align 4
  br label %258

174:                                              ; preds = %160
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %177 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sdiv i32 %175, %179
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %183 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = srem i32 %181, %185
  store i32 %186, i32* %16, align 4
  br label %187

187:                                              ; preds = %174, %249
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %190 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sub nsw i32 %192, %193
  %195 = icmp sgt i32 %188, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %187
  %197 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %198 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = sub nsw i32 %200, %201
  store i32 %202, i32* %17, align 4
  br label %205

203:                                              ; preds = %187
  %204 = load i32, i32* %11, align 4
  store i32 %204, i32* %17, align 4
  br label %205

205:                                              ; preds = %203, %196
  %206 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @ms_libconv_to_physical(%struct.ene_ub6250_info* %206, i32 %207)
  store i32 %208, i32* %18, align 4
  %209 = load %struct.us_data*, %struct.us_data** %4, align 8
  %210 = load i32, i32* %15, align 4
  %211 = call i32 @ms_libsearch_block_from_logical(%struct.us_data* %209, i32 %210)
  store i32 %211, i32* %19, align 4
  %212 = load %struct.us_data*, %struct.us_data** %4, align 8
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %16, align 4
  %217 = load i8*, i8** %13, align 8
  %218 = load i32, i32* %14, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr i8, i8* %217, i64 %219
  %221 = load i32, i32* %17, align 4
  %222 = call i32 @ms_read_copyblock(%struct.us_data* %212, i32 %213, i32 %214, i32 %215, i32 %216, i8* %220, i32 %221)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %205
  %227 = load i32, i32* %6, align 4
  %228 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %229, i32* %6, align 4
  br label %258

230:                                              ; preds = %205
  %231 = load i32, i32* @MS_LB_NOT_USED_ERASED, align 4
  %232 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %233 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %231, i32* %238, align 4
  %239 = load %struct.us_data*, %struct.us_data** %4, align 8
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %19, align 4
  %242 = call i32 @ms_lib_force_setlogical_pair(%struct.us_data* %239, i32 %240, i32 %241)
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %11, align 4
  %245 = sub nsw i32 %244, %243
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp sle i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %230
  br label %257

249:                                              ; preds = %230
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %252 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %253 = load i32, i32* %17, align 4
  %254 = mul nsw i32 %252, %253
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %14, align 4
  br label %187

257:                                              ; preds = %248
  br label %258

258:                                              ; preds = %257, %226, %171
  %259 = load i8*, i8** %13, align 8
  %260 = call i32 @kfree(i8* %259)
  br label %261

261:                                              ; preds = %258, %96
  %262 = load i32, i32* %6, align 4
  store i32 %262, i32* %3, align 4
  br label %263

263:                                              ; preds = %261, %158, %93, %78
  %264 = load i32, i32* %3, align 4
  ret i32 %264
}

declare dso_local i32 @ene_load_bincode(%struct.us_data*, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @ms_libconv_to_physical(%struct.ene_ub6250_info*, i32) #1

declare dso_local i32 @ms_libsearch_block_from_logical(%struct.us_data*, i32) #1

declare dso_local i32 @ms_read_copyblock(%struct.us_data*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ms_lib_force_setlogical_pair(%struct.us_data*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
