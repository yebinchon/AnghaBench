; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_scsi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_ene_ub6250.c_ms_scsi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, i64 }
%struct.scsi_cmnd = type { i8* }
%struct.bulk_cb_wrap = type { i32, i32*, i8*, i8* }
%struct.ene_ub6250_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@MSP_RW_PATTERN = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Load MPS RW pattern Fail !!\0A\00", align 1
@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@US_BULK_FLAG_IN = common dso_local global i8* null, align 8
@FDIR_READ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MS_RW_PATTERN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Load MS RW pattern Fail !!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"MS_SCSI_Read --- result = %x\0A\00", align 1
@MS_BYTES_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*)* @ms_scsi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_scsi_read(%struct.us_data* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bulk_cb_wrap*, align 8
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
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load %struct.us_data*, %struct.us_data** %4, align 8
  %24 = getelementptr inbounds %struct.us_data, %struct.us_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %26, %struct.bulk_cb_wrap** %8, align 8
  %27 = load %struct.us_data*, %struct.us_data** %4, align 8
  %28 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ene_ub6250_info*
  store %struct.ene_ub6250_info* %30, %struct.ene_ub6250_info** %9, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 24
  %36 = and i32 %35, -16777216
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 16
  %42 = and i32 %41, 16711680
  %43 = or i32 %36, %42
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = and i32 %48, 65280
  %50 = or i32 %43, %49
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 5
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 0
  %56 = and i32 %55, 255
  %57 = or i32 %50, %56
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 7
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 8
  %63 = and i32 %62, 65280
  %64 = load i8*, i8** %7, align 8
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
  br label %302

80:                                               ; preds = %2
  %81 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %82 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %154

86:                                               ; preds = %80
  %87 = load %struct.us_data*, %struct.us_data** %4, align 8
  %88 = load i32, i32* @MSP_RW_PATTERN, align 4
  %89 = call i32 @ene_load_bincode(%struct.us_data* %87, i32 %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.us_data*, %struct.us_data** %4, align 8
  %95 = call i32 @usb_stor_dbg(%struct.us_data* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %96, i32* %3, align 4
  br label %302

97:                                               ; preds = %86
  %98 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %99 = call i32 @memset(%struct.bulk_cb_wrap* %98, i32 0, i32 32)
  %100 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %103 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %106 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** @US_BULK_FLAG_IN, align 8
  %108 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %109 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %111 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 241, i32* %113, align 4
  %114 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %115 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 2, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = trunc i32 %118 to i8
  %120 = zext i8 %119 to i32
  %121 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %122 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 5
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %10, align 4
  %126 = ashr i32 %125, 8
  %127 = trunc i32 %126 to i8
  %128 = zext i8 %127 to i32
  %129 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %130 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* %10, align 4
  %134 = ashr i32 %133, 16
  %135 = trunc i32 %134 to i8
  %136 = zext i8 %135 to i32
  %137 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %138 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  store i32 %136, i32* %140, align 4
  %141 = load i32, i32* %10, align 4
  %142 = ashr i32 %141, 24
  %143 = trunc i32 %142 to i8
  %144 = zext i8 %143 to i32
  %145 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %146 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 %144, i32* %148, align 4
  %149 = load %struct.us_data*, %struct.us_data** %4, align 8
  %150 = load i32, i32* @FDIR_READ, align 4
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %152 = call i8* @scsi_sglist(%struct.scsi_cmnd* %151)
  %153 = call i32 @ene_send_scsi_cmd(%struct.us_data* %149, i32 %150, i8* %152, i32 1)
  store i32 %153, i32* %6, align 4
  br label %300

154:                                              ; preds = %80
  store i32 0, i32* %14, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* @GFP_KERNEL, align 4
  %157 = call i8* @kmalloc(i32 %155, i32 %156)
  store i8* %157, i8** %13, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %161, i32* %3, align 4
  br label %302

162:                                              ; preds = %154
  %163 = load %struct.us_data*, %struct.us_data** %4, align 8
  %164 = load i32, i32* @MS_RW_PATTERN, align 4
  %165 = call i32 @ene_load_bincode(%struct.us_data* %163, i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %171, i32* %6, align 4
  br label %297

172:                                              ; preds = %162
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %175 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sdiv i32 %173, %177
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %181 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = srem i32 %179, %183
  store i32 %184, i32* %17, align 4
  br label %185

185:                                              ; preds = %172, %284
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %188 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %17, align 4
  %192 = sub nsw i32 %190, %191
  %193 = icmp sgt i32 %186, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %185
  %195 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %196 = getelementptr inbounds %struct.ene_ub6250_info, %struct.ene_ub6250_info* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %17, align 4
  %200 = sub nsw i32 %198, %199
  store i32 %200, i32* %18, align 4
  br label %203

201:                                              ; preds = %185
  %202 = load i32, i32* %11, align 4
  store i32 %202, i32* %18, align 4
  br label %203

203:                                              ; preds = %201, %194
  %204 = load %struct.ene_ub6250_info*, %struct.ene_ub6250_info** %9, align 8
  %205 = load i32, i32* %16, align 4
  %206 = call i32 @ms_libconv_to_physical(%struct.ene_ub6250_info* %204, i32 %205)
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  %208 = mul nsw i32 %207, 32
  %209 = load i32, i32* %17, align 4
  %210 = add nsw i32 %208, %209
  store i32 %210, i32* %19, align 4
  %211 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %212 = call i32 @memset(%struct.bulk_cb_wrap* %211, i32 0, i32 32)
  %213 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %214 = call i8* @cpu_to_le32(i32 %213)
  %215 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %216 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %18, align 4
  %218 = mul nsw i32 512, %217
  %219 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %220 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load i8*, i8** @US_BULK_FLAG_IN, align 8
  %222 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %223 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %222, i32 0, i32 2
  store i8* %221, i8** %223, align 8
  %224 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %225 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 241, i32* %227, align 4
  %228 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %229 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  store i32 2, i32* %231, align 4
  %232 = load i32, i32* %19, align 4
  %233 = trunc i32 %232 to i8
  %234 = zext i8 %233 to i32
  %235 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %236 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 5
  store i32 %234, i32* %238, align 4
  %239 = load i32, i32* %19, align 4
  %240 = ashr i32 %239, 8
  %241 = trunc i32 %240 to i8
  %242 = zext i8 %241 to i32
  %243 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %244 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 4
  store i32 %242, i32* %246, align 4
  %247 = load i32, i32* %19, align 4
  %248 = ashr i32 %247, 16
  %249 = trunc i32 %248 to i8
  %250 = zext i8 %249 to i32
  %251 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %252 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 3
  store i32 %250, i32* %254, align 4
  %255 = load i32, i32* %19, align 4
  %256 = ashr i32 %255, 24
  %257 = trunc i32 %256 to i8
  %258 = zext i8 %257 to i32
  %259 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %260 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 2
  store i32 %258, i32* %262, align 4
  %263 = load %struct.us_data*, %struct.us_data** %4, align 8
  %264 = load i32, i32* @FDIR_READ, align 4
  %265 = load i8*, i8** %13, align 8
  %266 = load i32, i32* %14, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr i8, i8* %265, i64 %267
  %269 = call i32 @ene_send_scsi_cmd(%struct.us_data* %263, i32 %264, i8* %268, i32 0)
  store i32 %269, i32* %6, align 4
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %272 = icmp ne i32 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %203
  %274 = load i32, i32* %6, align 4
  %275 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %276, i32* %6, align 4
  br label %297

277:                                              ; preds = %203
  %278 = load i32, i32* %18, align 4
  %279 = load i32, i32* %11, align 4
  %280 = sub nsw i32 %279, %278
  store i32 %280, i32* %11, align 4
  %281 = load i32, i32* %11, align 4
  %282 = icmp sle i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %277
  br label %292

284:                                              ; preds = %277
  %285 = load i32, i32* %16, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %287 = load i32, i32* @MS_BYTES_PER_PAGE, align 4
  %288 = load i32, i32* %18, align 4
  %289 = mul nsw i32 %287, %288
  %290 = load i32, i32* %14, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %14, align 4
  br label %185

292:                                              ; preds = %283
  %293 = load i8*, i8** %13, align 8
  %294 = load i32, i32* %12, align 4
  %295 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %296 = call i32 @usb_stor_set_xfer_buf(i8* %293, i32 %294, %struct.scsi_cmnd* %295)
  br label %297

297:                                              ; preds = %292, %273, %169
  %298 = load i8*, i8** %13, align 8
  %299 = call i32 @kfree(i8* %298)
  br label %300

300:                                              ; preds = %297, %97
  %301 = load i32, i32* %6, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %300, %160, %93, %78
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i32 @ene_load_bincode(%struct.us_data*, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*) #1

declare dso_local i32 @memset(%struct.bulk_cb_wrap*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ene_send_scsi_cmd(%struct.us_data*, i32, i8*, i32) #1

declare dso_local i8* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @ms_libconv_to_physical(%struct.ene_ub6250_info*, i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
