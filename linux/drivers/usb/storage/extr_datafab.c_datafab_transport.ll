; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_datafab.c_datafab_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_datafab.c_datafab_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, i32 }
%struct.us_data = type { i8*, i64, i32 }
%struct.datafab_info = type { i32, i32, i64, i8, i8, i8 }

@datafab_transport.inquiry_reply = internal global [8 x i8] c"\00\80\00\01\1F\00\00\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@datafab_info_destructor = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"INQUIRY - Returning bogus response\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"READ_CAPACITY:  %ld sectors, %ld bytes per sector\0A\00", align 1
@MODE_SELECT_10 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Gah! MODE_SELECT_10\0A\00", align 1
@READ_10 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"READ_10: read block 0x%04lx  count %ld\0A\00", align 1
@READ_12 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"READ_12: read block 0x%04lx  count %ld\0A\00", align 1
@WRITE_10 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"WRITE_10: write block 0x%04lx count %ld\0A\00", align 1
@WRITE_12 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"WRITE_12: write block 0x%04lx count %ld\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"TEST_UNIT_READY\0A\00", align 1
@REQUEST_SENSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [42 x i8] c"REQUEST_SENSE - Returning faked response\0A\00", align 1
@MODE_SENSE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"MODE_SENSE_6 detected\0A\00", align 1
@MODE_SENSE_10 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"MODE_SENSE_10 detected\0A\00", align 1
@ALLOW_MEDIUM_REMOVAL = common dso_local global i64 0, align 8
@START_STOP = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [12 x i8] c"START_STOP\0A\00", align 1
@NO_SENSE = common dso_local global i8 0, align 1
@SUCCESS = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i8 0, align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Gah! Unknown command: %d (0x%x)\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @datafab_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datafab_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca %struct.datafab_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %11 = load %struct.us_data*, %struct.us_data** %5, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load %struct.us_data*, %struct.us_data** %5, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = call i64 @kzalloc(i32 24, i32 %19)
  %21 = load %struct.us_data*, %struct.us_data** %5, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.us_data*, %struct.us_data** %5, align 8
  %24 = getelementptr inbounds %struct.us_data, %struct.us_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %548

29:                                               ; preds = %18
  %30 = load i32, i32* @datafab_info_destructor, align 4
  %31 = load %struct.us_data*, %struct.us_data** %5, align 8
  %32 = getelementptr inbounds %struct.us_data, %struct.us_data* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.us_data*, %struct.us_data** %5, align 8
  %34 = getelementptr inbounds %struct.us_data, %struct.us_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.datafab_info*
  %37 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  br label %38

38:                                               ; preds = %29, %2
  %39 = load %struct.us_data*, %struct.us_data** %5, align 8
  %40 = getelementptr inbounds %struct.us_data, %struct.us_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.datafab_info*
  store %struct.datafab_info* %42, %struct.datafab_info** %6, align 8
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INQUIRY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %38
  %51 = load %struct.us_data*, %struct.us_data** %5, align 8
  %52 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @memcpy(i8* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @datafab_transport.inquiry_reply, i64 0, i64 0), i32 8)
  %55 = load %struct.us_data*, %struct.us_data** %5, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @fill_inquiry_response(%struct.us_data* %55, i8* %56, i32 36)
  %58 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %58, i32* %3, align 4
  br label %548

59:                                               ; preds = %38
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @READ_CAPACITY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %59
  %68 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %69 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %68, i32 0, i32 1
  store i32 512, i32* %69, align 4
  %70 = load %struct.us_data*, %struct.us_data** %5, align 8
  %71 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %72 = call i32 @datafab_id_device(%struct.us_data* %70, %struct.datafab_info* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %548

78:                                               ; preds = %67
  %79 = load %struct.us_data*, %struct.us_data** %5, align 8
  %80 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %81 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %84 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %79, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %85)
  %87 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %88 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %89, 1
  %91 = call i32 @cpu_to_be32(i64 %90)
  %92 = load i8*, i8** %10, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %96 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = call i32 @cpu_to_be32(i64 %98)
  %100 = load i8*, i8** %10, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %99, i32* %102, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %105 = call i32 @usb_stor_set_xfer_buf(i8* %103, i32 8, %struct.scsi_cmnd* %104)
  %106 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %106, i32* %3, align 4
  br label %548

107:                                              ; preds = %59
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MODE_SELECT_10, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load %struct.us_data*, %struct.us_data** %5, align 8
  %117 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %118, i32* %3, align 4
  br label %548

119:                                              ; preds = %107
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %121 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @READ_10, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %183

127:                                              ; preds = %119
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 2
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 %133, 24
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 3
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = shl i32 %140, 16
  %142 = or i32 %134, %141
  %143 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %144 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 4
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = shl i32 %148, 8
  %150 = or i32 %142, %149
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %152 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 5
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = or i32 %150, %156
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %8, align 8
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %160 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 7
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = shl i32 %164, 8
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %166, i32 0, i32 0
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 8
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = or i32 %165, %171
  %173 = sext i32 %172 to i64
  store i64 %173, i64* %9, align 8
  %174 = load %struct.us_data*, %struct.us_data** %5, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* %9, align 8
  %177 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %174, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %175, i64 %176)
  %178 = load %struct.us_data*, %struct.us_data** %5, align 8
  %179 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %180 = load i64, i64* %8, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call i32 @datafab_read_data(%struct.us_data* %178, %struct.datafab_info* %179, i64 %180, i64 %181)
  store i32 %182, i32* %3, align 4
  br label %548

183:                                              ; preds = %119
  %184 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %185 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @READ_12, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %263

191:                                              ; preds = %183
  %192 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %193 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 2
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = shl i32 %197, 24
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %200 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 3
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = shl i32 %204, 16
  %206 = or i32 %198, %205
  %207 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %208 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %207, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 4
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = shl i32 %212, 8
  %214 = or i32 %206, %213
  %215 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %216 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 5
  %219 = load i64, i64* %218, align 8
  %220 = trunc i64 %219 to i32
  %221 = or i32 %214, %220
  %222 = sext i32 %221 to i64
  store i64 %222, i64* %8, align 8
  %223 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %224 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %223, i32 0, i32 0
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 6
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = shl i32 %228, 24
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 0
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 7
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = shl i32 %235, 16
  %237 = or i32 %229, %236
  %238 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %239 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %238, i32 0, i32 0
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 8
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = shl i32 %243, 8
  %245 = or i32 %237, %244
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %247 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 9
  %250 = load i64, i64* %249, align 8
  %251 = trunc i64 %250 to i32
  %252 = or i32 %245, %251
  %253 = sext i32 %252 to i64
  store i64 %253, i64* %9, align 8
  %254 = load %struct.us_data*, %struct.us_data** %5, align 8
  %255 = load i64, i64* %8, align 8
  %256 = load i64, i64* %9, align 8
  %257 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %254, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %255, i64 %256)
  %258 = load %struct.us_data*, %struct.us_data** %5, align 8
  %259 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %260 = load i64, i64* %8, align 8
  %261 = load i64, i64* %9, align 8
  %262 = call i32 @datafab_read_data(%struct.us_data* %258, %struct.datafab_info* %259, i64 %260, i64 %261)
  store i32 %262, i32* %3, align 4
  br label %548

263:                                              ; preds = %183
  %264 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %265 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %264, i32 0, i32 0
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @WRITE_10, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %327

271:                                              ; preds = %263
  %272 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %273 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %272, i32 0, i32 0
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 2
  %276 = load i64, i64* %275, align 8
  %277 = trunc i64 %276 to i32
  %278 = shl i32 %277, 24
  %279 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %280 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %279, i32 0, i32 0
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 3
  %283 = load i64, i64* %282, align 8
  %284 = trunc i64 %283 to i32
  %285 = shl i32 %284, 16
  %286 = or i32 %278, %285
  %287 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %288 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %287, i32 0, i32 0
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 4
  %291 = load i64, i64* %290, align 8
  %292 = trunc i64 %291 to i32
  %293 = shl i32 %292, 8
  %294 = or i32 %286, %293
  %295 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %296 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %295, i32 0, i32 0
  %297 = load i64*, i64** %296, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 5
  %299 = load i64, i64* %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = or i32 %294, %300
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %8, align 8
  %303 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %304 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %303, i32 0, i32 0
  %305 = load i64*, i64** %304, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 7
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = shl i32 %308, 8
  %310 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %311 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %310, i32 0, i32 0
  %312 = load i64*, i64** %311, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 8
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = or i32 %309, %315
  %317 = sext i32 %316 to i64
  store i64 %317, i64* %9, align 8
  %318 = load %struct.us_data*, %struct.us_data** %5, align 8
  %319 = load i64, i64* %8, align 8
  %320 = load i64, i64* %9, align 8
  %321 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %318, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %319, i64 %320)
  %322 = load %struct.us_data*, %struct.us_data** %5, align 8
  %323 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %324 = load i64, i64* %8, align 8
  %325 = load i64, i64* %9, align 8
  %326 = call i32 @datafab_write_data(%struct.us_data* %322, %struct.datafab_info* %323, i64 %324, i64 %325)
  store i32 %326, i32* %3, align 4
  br label %548

327:                                              ; preds = %263
  %328 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %329 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %328, i32 0, i32 0
  %330 = load i64*, i64** %329, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @WRITE_12, align 8
  %334 = icmp eq i64 %332, %333
  br i1 %334, label %335, label %407

335:                                              ; preds = %327
  %336 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %337 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %336, i32 0, i32 0
  %338 = load i64*, i64** %337, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 2
  %340 = load i64, i64* %339, align 8
  %341 = trunc i64 %340 to i32
  %342 = shl i32 %341, 24
  %343 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %344 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %343, i32 0, i32 0
  %345 = load i64*, i64** %344, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 3
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = shl i32 %348, 16
  %350 = or i32 %342, %349
  %351 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %352 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %351, i32 0, i32 0
  %353 = load i64*, i64** %352, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 4
  %355 = load i64, i64* %354, align 8
  %356 = trunc i64 %355 to i32
  %357 = shl i32 %356, 8
  %358 = or i32 %350, %357
  %359 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %360 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %359, i32 0, i32 0
  %361 = load i64*, i64** %360, align 8
  %362 = getelementptr inbounds i64, i64* %361, i64 5
  %363 = load i64, i64* %362, align 8
  %364 = trunc i64 %363 to i32
  %365 = or i32 %358, %364
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %8, align 8
  %367 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %368 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %367, i32 0, i32 0
  %369 = load i64*, i64** %368, align 8
  %370 = getelementptr inbounds i64, i64* %369, i64 6
  %371 = load i64, i64* %370, align 8
  %372 = trunc i64 %371 to i32
  %373 = shl i32 %372, 24
  %374 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %375 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %374, i32 0, i32 0
  %376 = load i64*, i64** %375, align 8
  %377 = getelementptr inbounds i64, i64* %376, i64 7
  %378 = load i64, i64* %377, align 8
  %379 = trunc i64 %378 to i32
  %380 = shl i32 %379, 16
  %381 = or i32 %373, %380
  %382 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %383 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %382, i32 0, i32 0
  %384 = load i64*, i64** %383, align 8
  %385 = getelementptr inbounds i64, i64* %384, i64 8
  %386 = load i64, i64* %385, align 8
  %387 = trunc i64 %386 to i32
  %388 = shl i32 %387, 8
  %389 = or i32 %381, %388
  %390 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %391 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %390, i32 0, i32 0
  %392 = load i64*, i64** %391, align 8
  %393 = getelementptr inbounds i64, i64* %392, i64 9
  %394 = load i64, i64* %393, align 8
  %395 = trunc i64 %394 to i32
  %396 = or i32 %389, %395
  %397 = sext i32 %396 to i64
  store i64 %397, i64* %9, align 8
  %398 = load %struct.us_data*, %struct.us_data** %5, align 8
  %399 = load i64, i64* %8, align 8
  %400 = load i64, i64* %9, align 8
  %401 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %398, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %399, i64 %400)
  %402 = load %struct.us_data*, %struct.us_data** %5, align 8
  %403 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %404 = load i64, i64* %8, align 8
  %405 = load i64, i64* %9, align 8
  %406 = call i32 @datafab_write_data(%struct.us_data* %402, %struct.datafab_info* %403, i64 %404, i64 %405)
  store i32 %406, i32* %3, align 4
  br label %548

407:                                              ; preds = %327
  %408 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %409 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %408, i32 0, i32 0
  %410 = load i64*, i64** %409, align 8
  %411 = getelementptr inbounds i64, i64* %410, i64 0
  %412 = load i64, i64* %411, align 8
  %413 = load i64, i64* @TEST_UNIT_READY, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %415, label %421

415:                                              ; preds = %407
  %416 = load %struct.us_data*, %struct.us_data** %5, align 8
  %417 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %416, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %418 = load %struct.us_data*, %struct.us_data** %5, align 8
  %419 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %420 = call i32 @datafab_id_device(%struct.us_data* %418, %struct.datafab_info* %419)
  store i32 %420, i32* %3, align 4
  br label %548

421:                                              ; preds = %407
  %422 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %423 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %422, i32 0, i32 0
  %424 = load i64*, i64** %423, align 8
  %425 = getelementptr inbounds i64, i64* %424, i64 0
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @REQUEST_SENSE, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %429, label %457

429:                                              ; preds = %421
  %430 = load %struct.us_data*, %struct.us_data** %5, align 8
  %431 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %430, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %432 = load i8*, i8** %10, align 8
  %433 = call i32 @memset(i8* %432, i32 0, i32 18)
  %434 = load i8*, i8** %10, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 0
  store i8 -16, i8* %435, align 1
  %436 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %437 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %436, i32 0, i32 3
  %438 = load i8, i8* %437, align 8
  %439 = load i8*, i8** %10, align 8
  %440 = getelementptr inbounds i8, i8* %439, i64 2
  store i8 %438, i8* %440, align 1
  %441 = load i8*, i8** %10, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 7
  store i8 11, i8* %442, align 1
  %443 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %444 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %443, i32 0, i32 4
  %445 = load i8, i8* %444, align 1
  %446 = load i8*, i8** %10, align 8
  %447 = getelementptr inbounds i8, i8* %446, i64 12
  store i8 %445, i8* %447, align 1
  %448 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %449 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %448, i32 0, i32 5
  %450 = load i8, i8* %449, align 2
  %451 = load i8*, i8** %10, align 8
  %452 = getelementptr inbounds i8, i8* %451, i64 13
  store i8 %450, i8* %452, align 1
  %453 = load i8*, i8** %10, align 8
  %454 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %455 = call i32 @usb_stor_set_xfer_buf(i8* %453, i32 18, %struct.scsi_cmnd* %454)
  %456 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %456, i32* %3, align 4
  br label %548

457:                                              ; preds = %421
  %458 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %459 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %458, i32 0, i32 0
  %460 = load i64*, i64** %459, align 8
  %461 = getelementptr inbounds i64, i64* %460, i64 0
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @MODE_SENSE, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %471

465:                                              ; preds = %457
  %466 = load %struct.us_data*, %struct.us_data** %5, align 8
  %467 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %466, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %468 = load %struct.us_data*, %struct.us_data** %5, align 8
  %469 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %470 = call i32 @datafab_handle_mode_sense(%struct.us_data* %468, %struct.scsi_cmnd* %469, i32 1)
  store i32 %470, i32* %3, align 4
  br label %548

471:                                              ; preds = %457
  %472 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %473 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %472, i32 0, i32 0
  %474 = load i64*, i64** %473, align 8
  %475 = getelementptr inbounds i64, i64* %474, i64 0
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @MODE_SENSE_10, align 8
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %479, label %485

479:                                              ; preds = %471
  %480 = load %struct.us_data*, %struct.us_data** %5, align 8
  %481 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %480, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %482 = load %struct.us_data*, %struct.us_data** %5, align 8
  %483 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %484 = call i32 @datafab_handle_mode_sense(%struct.us_data* %482, %struct.scsi_cmnd* %483, i32 0)
  store i32 %484, i32* %3, align 4
  br label %548

485:                                              ; preds = %471
  %486 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %487 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %486, i32 0, i32 0
  %488 = load i64*, i64** %487, align 8
  %489 = getelementptr inbounds i64, i64* %488, i64 0
  %490 = load i64, i64* %489, align 8
  %491 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %493, label %495

493:                                              ; preds = %485
  %494 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %494, i32* %3, align 4
  br label %548

495:                                              ; preds = %485
  %496 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %497 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %496, i32 0, i32 0
  %498 = load i64*, i64** %497, align 8
  %499 = getelementptr inbounds i64, i64* %498, i64 0
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @START_STOP, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %528

503:                                              ; preds = %495
  %504 = load %struct.us_data*, %struct.us_data** %5, align 8
  %505 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %506 = load %struct.us_data*, %struct.us_data** %5, align 8
  %507 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %508 = call i32 @datafab_id_device(%struct.us_data* %506, %struct.datafab_info* %507)
  store i32 %508, i32* %7, align 4
  %509 = load i32, i32* %7, align 4
  %510 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %511 = icmp eq i32 %509, %510
  br i1 %511, label %512, label %519

512:                                              ; preds = %503
  %513 = load i8, i8* @NO_SENSE, align 1
  %514 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %515 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %514, i32 0, i32 3
  store i8 %513, i8* %515, align 8
  %516 = load i32, i32* @SUCCESS, align 4
  %517 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %518 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %517, i32 0, i32 1
  store i32 %516, i32* %518, align 8
  br label %526

519:                                              ; preds = %503
  %520 = load i8, i8* @UNIT_ATTENTION, align 1
  %521 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %522 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %521, i32 0, i32 3
  store i8 %520, i8* %522, align 8
  %523 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %524 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %525 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %524, i32 0, i32 1
  store i32 %523, i32* %525, align 8
  br label %526

526:                                              ; preds = %519, %512
  %527 = load i32, i32* %7, align 4
  store i32 %527, i32* %3, align 4
  br label %548

528:                                              ; preds = %495
  %529 = load %struct.us_data*, %struct.us_data** %5, align 8
  %530 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %531 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %530, i32 0, i32 0
  %532 = load i64*, i64** %531, align 8
  %533 = getelementptr inbounds i64, i64* %532, i64 0
  %534 = load i64, i64* %533, align 8
  %535 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %536 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %535, i32 0, i32 0
  %537 = load i64*, i64** %536, align 8
  %538 = getelementptr inbounds i64, i64* %537, i64 0
  %539 = load i64, i64* %538, align 8
  %540 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %529, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i64 %534, i64 %539)
  %541 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %542 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %541, i32 0, i32 3
  store i8 5, i8* %542, align 8
  %543 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %544 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %543, i32 0, i32 4
  store i8 32, i8* %544, align 1
  %545 = load %struct.datafab_info*, %struct.datafab_info** %6, align 8
  %546 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %545, i32 0, i32 5
  store i8 0, i8* %546, align 2
  %547 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %547, i32* %3, align 4
  br label %548

548:                                              ; preds = %528, %526, %493, %479, %465, %429, %415, %335, %271, %191, %127, %115, %78, %76, %50, %27
  %549 = load i32, i32* %3, align 4
  ret i32 %549
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @datafab_id_device(%struct.us_data*, %struct.datafab_info*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @datafab_read_data(%struct.us_data*, %struct.datafab_info*, i64, i64) #1

declare dso_local i32 @datafab_write_data(%struct.us_data*, %struct.datafab_info*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @datafab_handle_mode_sense(%struct.us_data*, %struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
