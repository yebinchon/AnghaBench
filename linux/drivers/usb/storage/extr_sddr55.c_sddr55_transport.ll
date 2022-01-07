; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr55.c_sddr55_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr55.c_sddr55_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.us_data = type { i8*, i64, i32 }
%struct.sddr55_card_info = type { i8*, i32*, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@sddr55_transport.inquiry_response = internal global [8 x i8] c"\00\80\00\02\1F\00\00\00", align 1
@sddr55_transport.mode_page_01 = internal global <{ [10 x i8], [10 x i8] }> <{ [10 x i8] c"\00\12\00\80\00\00\00\00\01\0A", [10 x i8] zeroinitializer }>, align 16
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@sddr55_card_info_destructor = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"request sense %02x/%02x/%02x\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i32 0, align 4
@PAGESIZE = common dso_local global i64 0, align 8
@MODE_SENSE_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Dummy up request for mode page 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Dummy up request for all mode pages\0A\00", align 1
@ALLOW_MEDIUM_REMOVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"%s medium removal. Not that I can do anything about it...\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Prevent\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Allow\00", align 1
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"Error: Requested LBA %04X exceeds maximum block %04X\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"WRITE_10: write block %04X (LBA %04X) page %01X pages %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"READ_10: read block %04X (LBA %04X) page %01X pages %d\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@START_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @sddr55_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr55_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca %struct.sddr55_card_info*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %14 = load %struct.us_data*, %struct.us_data** %5, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %7, align 8
  %17 = load %struct.us_data*, %struct.us_data** %5, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call i64 @kzalloc(i32 80, i32 %22)
  %24 = load %struct.us_data*, %struct.us_data** %5, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load %struct.us_data*, %struct.us_data** %5, align 8
  %27 = getelementptr inbounds %struct.us_data, %struct.us_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %31, i32* %3, align 4
  br label %432

32:                                               ; preds = %21
  %33 = load i32, i32* @sddr55_card_info_destructor, align 4
  %34 = load %struct.us_data*, %struct.us_data** %5, align 8
  %35 = getelementptr inbounds %struct.us_data, %struct.us_data* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.us_data*, %struct.us_data** %5, align 8
  %38 = getelementptr inbounds %struct.us_data, %struct.us_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.sddr55_card_info*
  store %struct.sddr55_card_info* %40, %struct.sddr55_card_info** %13, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %42 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @REQUEST_SENSE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %36
  %49 = load %struct.us_data*, %struct.us_data** %5, align 8
  %50 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %51 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %57 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 12
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %63 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 13
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %61, i32 %67)
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %71 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @memcpy(i8* %69, i8* %72, i32 8)
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 112, i8* %75, align 1
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 7
  store i8 11, i8* %77, align 1
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %80 = call i32 @usb_stor_set_xfer_buf(i8* %78, i32 8, %struct.scsi_cmnd* %79)
  %81 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %82 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @memset(i8* %83, i32 0, i32 8)
  %85 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %85, i32* %3, align 4
  br label %432

86:                                               ; preds = %36
  %87 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %88 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @memset(i8* %89, i32 0, i32 8)
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @INQUIRY, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @memcpy(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @sddr55_transport.inquiry_response, i64 0, i64 0), i32 8)
  %101 = load %struct.us_data*, %struct.us_data** %5, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @fill_inquiry_response(%struct.us_data* %101, i8* %102, i32 36)
  %104 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %104, i32* %3, align 4
  br label %432

105:                                              ; preds = %86
  %106 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %107 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %121, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @jiffies, align 4
  %112 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %113 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %112, i32 0, i32 11
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @HZ, align 4
  %116 = sdiv i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %114, %117
  %119 = call i64 @time_after(i32 %111, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %110, %105
  %122 = load %struct.us_data*, %struct.us_data** %5, align 8
  %123 = call i32 @sddr55_status(%struct.us_data* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.us_data*, %struct.us_data** %5, align 8
  %128 = call i32 @sddr55_status(%struct.us_data* %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = call i32 @set_sense_info(i32 6, i32 40, i32 0)
  br label %133

133:                                              ; preds = %131, %126
  %134 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %134, i32* %3, align 4
  br label %432

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %110
  %137 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %138 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %137, i32 0, i32 10
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = call i32 @set_sense_info(i32 3, i32 49, i32 0)
  %143 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %143, i32* %3, align 4
  br label %432

144:                                              ; preds = %136
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %146 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @READ_CAPACITY, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %205

152:                                              ; preds = %144
  %153 = load %struct.us_data*, %struct.us_data** %5, align 8
  %154 = call i64 @sddr55_get_capacity(%struct.us_data* %153)
  store i64 %154, i64* %8, align 8
  %155 = load i64, i64* %8, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = call i32 @set_sense_info(i32 3, i32 48, i32 0)
  %159 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %159, i32* %3, align 4
  br label %432

160:                                              ; preds = %152
  %161 = load i64, i64* %8, align 8
  %162 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %163 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %165 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %168 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %171 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %169, %172
  %174 = zext i32 %173 to i64
  %175 = lshr i64 %166, %174
  %176 = udiv i64 %175, 256
  %177 = mul i64 %176, 250
  %178 = trunc i64 %177 to i32
  %179 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %180 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load i64, i64* %8, align 8
  %182 = udiv i64 %181, 256
  %183 = mul i64 %182, 250
  store i64 %183, i64* %8, align 8
  %184 = load i64, i64* @PAGESIZE, align 8
  %185 = load i64, i64* %8, align 8
  %186 = udiv i64 %185, %184
  store i64 %186, i64* %8, align 8
  %187 = load i64, i64* %8, align 8
  %188 = add i64 %187, -1
  store i64 %188, i64* %8, align 8
  %189 = load i64, i64* %8, align 8
  %190 = call i32 @cpu_to_be32(i64 %189)
  %191 = load i8*, i8** %7, align 8
  %192 = bitcast i8* %191 to i32*
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %190, i32* %193, align 4
  %194 = load i64, i64* @PAGESIZE, align 8
  %195 = call i32 @cpu_to_be32(i64 %194)
  %196 = load i8*, i8** %7, align 8
  %197 = bitcast i8* %196 to i32*
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  store i32 %195, i32* %198, align 4
  %199 = load i8*, i8** %7, align 8
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %201 = call i32 @usb_stor_set_xfer_buf(i8* %199, i32 8, %struct.scsi_cmnd* %200)
  %202 = load %struct.us_data*, %struct.us_data** %5, align 8
  %203 = call i32 @sddr55_read_map(%struct.us_data* %202)
  %204 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %204, i32* %3, align 4
  br label %432

205:                                              ; preds = %144
  %206 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %207 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @MODE_SENSE_10, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %262

213:                                              ; preds = %205
  %214 = load i8*, i8** %7, align 8
  %215 = call i32 @memcpy(i8* %214, i8* getelementptr inbounds ([20 x i8], [20 x i8]* bitcast (<{ [10 x i8], [10 x i8] }>* @sddr55_transport.mode_page_01 to [20 x i8]*), i64 0, i64 0), i32 20)
  %216 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %217 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %213
  %221 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %222 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %221, i32 0, i32 8
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br label %225

225:                                              ; preds = %220, %213
  %226 = phi i1 [ true, %213 ], [ %224, %220 ]
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 128, i32 0
  %229 = trunc i32 %228 to i8
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 3
  store i8 %229, i8* %231, align 1
  %232 = load i8*, i8** %7, align 8
  %233 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %234 = call i32 @usb_stor_set_xfer_buf(i8* %232, i32 20, %struct.scsi_cmnd* %233)
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 63
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %246

242:                                              ; preds = %225
  %243 = load %struct.us_data*, %struct.us_data** %5, align 8
  %244 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %243, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %245 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %245, i32* %3, align 4
  br label %432

246:                                              ; preds = %225
  %247 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %248 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 2
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 63
  %253 = icmp eq i32 %252, 63
  br i1 %253, label %254, label %258

254:                                              ; preds = %246
  %255 = load %struct.us_data*, %struct.us_data** %5, align 8
  %256 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %255, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %257 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %257, i32* %3, align 4
  br label %432

258:                                              ; preds = %246
  br label %259

259:                                              ; preds = %258
  %260 = call i32 @set_sense_info(i32 5, i32 36, i32 0)
  %261 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %261, i32* %3, align 4
  br label %432

262:                                              ; preds = %205
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %264 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @ALLOW_MEDIUM_REMOVAL, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %283

270:                                              ; preds = %262
  %271 = load %struct.us_data*, %struct.us_data** %5, align 8
  %272 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %273 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 4
  %276 = load i32, i32* %275, align 4
  %277 = and i32 %276, 3
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %281 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %271, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %280)
  %282 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %282, i32* %3, align 4
  br label %432

283:                                              ; preds = %262
  %284 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %285 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @READ_10, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %299, label %291

291:                                              ; preds = %283
  %292 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %293 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @WRITE_10, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %409

299:                                              ; preds = %291, %283
  %300 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %301 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 3
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %306 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @short_pack(i32 %304, i32 %309)
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* %11, align 4
  %312 = shl i32 %311, 16
  store i32 %312, i32* %11, align 4
  %313 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %314 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 5
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %319 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 4
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @short_pack(i32 %317, i32 %322)
  %324 = load i32, i32* %11, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %11, align 4
  %326 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %327 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 8
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %332 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %331, i32 0, i32 0
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 7
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @short_pack(i32 %330, i32 %335)
  %337 = trunc i32 %336 to i16
  store i16 %337, i16* %12, align 2
  %338 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %339 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %11, align 4
  %342 = shl i32 %341, %340
  store i32 %342, i32* %11, align 4
  %343 = load i32, i32* %11, align 4
  %344 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %345 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %344, i32 0, i32 5
  %346 = load i32, i32* %345, align 8
  %347 = lshr i32 %343, %346
  store i32 %347, i32* %9, align 4
  %348 = load i32, i32* %11, align 4
  %349 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %350 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 8
  %352 = and i32 %348, %351
  store i32 %352, i32* %11, align 4
  %353 = load i32, i32* %9, align 4
  %354 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %355 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = icmp uge i32 %353, %356
  br i1 %357, label %358, label %368

358:                                              ; preds = %299
  %359 = load %struct.us_data*, %struct.us_data** %5, align 8
  %360 = load i32, i32* %9, align 4
  %361 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %362 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = sub nsw i32 %363, 1
  %365 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %359, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %360, i32 %364)
  %366 = call i32 @set_sense_info(i32 5, i32 36, i32 0)
  %367 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %367, i32* %3, align 4
  br label %432

368:                                              ; preds = %299
  %369 = load %struct.sddr55_card_info*, %struct.sddr55_card_info** %13, align 8
  %370 = getelementptr inbounds %struct.sddr55_card_info, %struct.sddr55_card_info* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %9, align 4
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  store i32 %375, i32* %10, align 4
  %376 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %377 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 0
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @WRITE_10, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %396

383:                                              ; preds = %368
  %384 = load %struct.us_data*, %struct.us_data** %5, align 8
  %385 = load i32, i32* %10, align 4
  %386 = load i32, i32* %9, align 4
  %387 = load i32, i32* %11, align 4
  %388 = load i16, i16* %12, align 2
  %389 = zext i16 %388 to i32
  %390 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %384, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %385, i32 %386, i32 %387, i32 %389)
  %391 = load %struct.us_data*, %struct.us_data** %5, align 8
  %392 = load i32, i32* %9, align 4
  %393 = load i32, i32* %11, align 4
  %394 = load i16, i16* %12, align 2
  %395 = call i32 @sddr55_write_data(%struct.us_data* %391, i32 %392, i32 %393, i16 zeroext %394)
  store i32 %395, i32* %3, align 4
  br label %432

396:                                              ; preds = %368
  %397 = load %struct.us_data*, %struct.us_data** %5, align 8
  %398 = load i32, i32* %10, align 4
  %399 = load i32, i32* %9, align 4
  %400 = load i32, i32* %11, align 4
  %401 = load i16, i16* %12, align 2
  %402 = zext i16 %401 to i32
  %403 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %397, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %398, i32 %399, i32 %400, i32 %402)
  %404 = load %struct.us_data*, %struct.us_data** %5, align 8
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* %11, align 4
  %407 = load i16, i16* %12, align 2
  %408 = call i32 @sddr55_read_data(%struct.us_data* %404, i32 %405, i32 %406, i16 zeroext %407)
  store i32 %408, i32* %3, align 4
  br label %432

409:                                              ; preds = %291
  %410 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %411 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %410, i32 0, i32 0
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @TEST_UNIT_READY, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %409
  %418 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %418, i32* %3, align 4
  br label %432

419:                                              ; preds = %409
  %420 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %421 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %420, i32 0, i32 0
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @START_STOP, align 4
  %426 = icmp eq i32 %424, %425
  br i1 %426, label %427, label %429

427:                                              ; preds = %419
  %428 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %428, i32* %3, align 4
  br label %432

429:                                              ; preds = %419
  %430 = call i32 @set_sense_info(i32 5, i32 32, i32 0)
  %431 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %431, i32* %3, align 4
  br label %432

432:                                              ; preds = %429, %427, %417, %396, %383, %358, %270, %259, %254, %242, %160, %157, %141, %133, %98, %48, %30
  %433 = load i32, i32* %3, align 4
  ret i32 %433
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @sddr55_status(%struct.us_data*) #1

declare dso_local i32 @set_sense_info(i32, i32, i32) #1

declare dso_local i64 @sddr55_get_capacity(%struct.us_data*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @sddr55_read_map(%struct.us_data*) #1

declare dso_local i32 @short_pack(i32, i32) #1

declare dso_local i32 @sddr55_write_data(%struct.us_data*, i32, i32, i16 zeroext) #1

declare dso_local i32 @sddr55_read_data(%struct.us_data*, i32, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
