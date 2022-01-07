; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64* }
%struct.us_data = type { i8*, i64 }
%struct.usbat_info = type { i32, i64, i8, i8, i8 }

@usbat_flash_transport.inquiry_response = internal global <{ i8, i8, i8, i8, i8, [31 x i8] }> <{ i8 0, i8 -128, i8 0, i8 1, i8 31, [31 x i8] zeroinitializer }>, align 16
@INQUIRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"INQUIRY - Returning bogus response\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"READ_CAPACITY: %ld sectors, %ld bytes per sector\0A\00", align 1
@MODE_SELECT_10 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Gah! MODE_SELECT_10\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"READ_10: read block 0x%04lx  count %ld\0A\00", align 1
@READ_12 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"READ_12: read block 0x%04lx  count %ld\0A\00", align 1
@WRITE_10 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"WRITE_10: write block 0x%04lx  count %ld\0A\00", align 1
@WRITE_12 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"WRITE_12: write block 0x%04lx  count %ld\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"TEST_UNIT_READY\0A\00", align 1
@REQUEST_SENSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"REQUEST_SENSE\0A\00", align 1
@ALLOW_MEDIUM_REMOVAL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [33 x i8] c"Gah! Unknown command: %d (0x%x)\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @usbat_flash_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_flash_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usbat_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %11 = load %struct.us_data*, %struct.us_data** %5, align 8
  %12 = getelementptr inbounds %struct.us_data, %struct.us_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.usbat_info*
  store %struct.usbat_info* %14, %struct.usbat_info** %7, align 8
  %15 = load %struct.us_data*, %struct.us_data** %5, align 8
  %16 = getelementptr inbounds %struct.us_data, %struct.us_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INQUIRY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.us_data*, %struct.us_data** %5, align 8
  %27 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @memcpy(i8* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* bitcast (<{ i8, i8, i8, i8, i8, [31 x i8] }>* @usbat_flash_transport.inquiry_response to [36 x i8]*), i64 0, i64 0), i32 36)
  %30 = load %struct.us_data*, %struct.us_data** %5, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @fill_inquiry_response(%struct.us_data* %30, i8* %31, i32 36)
  %33 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %33, i32* %3, align 4
  br label %479

34:                                               ; preds = %2
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @READ_CAPACITY, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %34
  %43 = load %struct.us_data*, %struct.us_data** %5, align 8
  %44 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %45 = call i32 @usbat_flash_check_media(%struct.us_data* %43, %struct.usbat_info* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %479

51:                                               ; preds = %42
  %52 = load %struct.us_data*, %struct.us_data** %5, align 8
  %53 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %54 = call i32 @usbat_flash_get_sector_count(%struct.us_data* %52, %struct.usbat_info* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %479

60:                                               ; preds = %51
  %61 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %62 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %61, i32 0, i32 0
  store i32 512, i32* %62, align 8
  %63 = load %struct.us_data*, %struct.us_data** %5, align 8
  %64 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %65 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %68 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %66, i32 %69)
  %71 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %72 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, 1
  %75 = call i32 @cpu_to_be32(i64 %74)
  %76 = load i8*, i8** %10, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %75, i32* %78, align 4
  %79 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %80 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = call i32 @cpu_to_be32(i64 %82)
  %84 = load i8*, i8** %10, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %83, i32* %86, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %89 = call i32 @usb_stor_set_xfer_buf(i8* %87, i32 8, %struct.scsi_cmnd* %88)
  %90 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %90, i32* %3, align 4
  br label %479

91:                                               ; preds = %34
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MODE_SELECT_10, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.us_data*, %struct.us_data** %5, align 8
  %101 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %102, i32* %3, align 4
  br label %479

103:                                              ; preds = %91
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @READ_10, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %167

111:                                              ; preds = %103
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %113 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 2
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = shl i32 %117, 24
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 3
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = shl i32 %124, 16
  %126 = or i32 %118, %125
  %127 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %128 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 4
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = shl i32 %132, 8
  %134 = or i32 %126, %133
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %136 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 5
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = or i32 %134, %140
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %8, align 8
  %143 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %144 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 7
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = shl i32 %148, 8
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %151 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 8
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = or i32 %149, %155
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %9, align 8
  %158 = load %struct.us_data*, %struct.us_data** %5, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* %9, align 8
  %161 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %158, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %159, i64 %160)
  %162 = load %struct.us_data*, %struct.us_data** %5, align 8
  %163 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %164 = load i64, i64* %8, align 8
  %165 = load i64, i64* %9, align 8
  %166 = call i32 @usbat_flash_read_data(%struct.us_data* %162, %struct.usbat_info* %163, i64 %164, i64 %165)
  store i32 %166, i32* %3, align 4
  br label %479

167:                                              ; preds = %103
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %169 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @READ_12, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %247

175:                                              ; preds = %167
  %176 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %177 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 2
  %180 = load i64, i64* %179, align 8
  %181 = trunc i64 %180 to i32
  %182 = shl i32 %181, 24
  %183 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %184 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 3
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = shl i32 %188, 16
  %190 = or i32 %182, %189
  %191 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %192 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %191, i32 0, i32 0
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 4
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = shl i32 %196, 8
  %198 = or i32 %190, %197
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %200 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 5
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = or i32 %198, %204
  %206 = sext i32 %205 to i64
  store i64 %206, i64* %8, align 8
  %207 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %208 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %207, i32 0, i32 0
  %209 = load i64*, i64** %208, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 6
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = shl i32 %212, 24
  %214 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %215 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 7
  %218 = load i64, i64* %217, align 8
  %219 = trunc i64 %218 to i32
  %220 = shl i32 %219, 16
  %221 = or i32 %213, %220
  %222 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %223 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 8
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  %228 = shl i32 %227, 8
  %229 = or i32 %221, %228
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 0
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 9
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = or i32 %229, %235
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %9, align 8
  %238 = load %struct.us_data*, %struct.us_data** %5, align 8
  %239 = load i64, i64* %8, align 8
  %240 = load i64, i64* %9, align 8
  %241 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %238, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %239, i64 %240)
  %242 = load %struct.us_data*, %struct.us_data** %5, align 8
  %243 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %244 = load i64, i64* %8, align 8
  %245 = load i64, i64* %9, align 8
  %246 = call i32 @usbat_flash_read_data(%struct.us_data* %242, %struct.usbat_info* %243, i64 %244, i64 %245)
  store i32 %246, i32* %3, align 4
  br label %479

247:                                              ; preds = %167
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %249 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %248, i32 0, i32 0
  %250 = load i64*, i64** %249, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @WRITE_10, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %311

255:                                              ; preds = %247
  %256 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %257 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %256, i32 0, i32 0
  %258 = load i64*, i64** %257, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 2
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = shl i32 %261, 24
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %264 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %263, i32 0, i32 0
  %265 = load i64*, i64** %264, align 8
  %266 = getelementptr inbounds i64, i64* %265, i64 3
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i32
  %269 = shl i32 %268, 16
  %270 = or i32 %262, %269
  %271 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %272 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %271, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 4
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = shl i32 %276, 8
  %278 = or i32 %270, %277
  %279 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %280 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %279, i32 0, i32 0
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 5
  %283 = load i64, i64* %282, align 8
  %284 = trunc i64 %283 to i32
  %285 = or i32 %278, %284
  %286 = sext i32 %285 to i64
  store i64 %286, i64* %8, align 8
  %287 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %288 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %287, i32 0, i32 0
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 7
  %291 = load i64, i64* %290, align 8
  %292 = trunc i64 %291 to i32
  %293 = shl i32 %292, 8
  %294 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %295 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %294, i32 0, i32 0
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 8
  %298 = load i64, i64* %297, align 8
  %299 = trunc i64 %298 to i32
  %300 = or i32 %293, %299
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %9, align 8
  %302 = load %struct.us_data*, %struct.us_data** %5, align 8
  %303 = load i64, i64* %8, align 8
  %304 = load i64, i64* %9, align 8
  %305 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %302, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %303, i64 %304)
  %306 = load %struct.us_data*, %struct.us_data** %5, align 8
  %307 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %308 = load i64, i64* %8, align 8
  %309 = load i64, i64* %9, align 8
  %310 = call i32 @usbat_flash_write_data(%struct.us_data* %306, %struct.usbat_info* %307, i64 %308, i64 %309)
  store i32 %310, i32* %3, align 4
  br label %479

311:                                              ; preds = %247
  %312 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %313 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %312, i32 0, i32 0
  %314 = load i64*, i64** %313, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @WRITE_12, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %391

319:                                              ; preds = %311
  %320 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %321 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %320, i32 0, i32 0
  %322 = load i64*, i64** %321, align 8
  %323 = getelementptr inbounds i64, i64* %322, i64 2
  %324 = load i64, i64* %323, align 8
  %325 = trunc i64 %324 to i32
  %326 = shl i32 %325, 24
  %327 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %328 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %327, i32 0, i32 0
  %329 = load i64*, i64** %328, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 3
  %331 = load i64, i64* %330, align 8
  %332 = trunc i64 %331 to i32
  %333 = shl i32 %332, 16
  %334 = or i32 %326, %333
  %335 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %336 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %335, i32 0, i32 0
  %337 = load i64*, i64** %336, align 8
  %338 = getelementptr inbounds i64, i64* %337, i64 4
  %339 = load i64, i64* %338, align 8
  %340 = trunc i64 %339 to i32
  %341 = shl i32 %340, 8
  %342 = or i32 %334, %341
  %343 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %344 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %343, i32 0, i32 0
  %345 = load i64*, i64** %344, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 5
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = or i32 %342, %348
  %350 = sext i32 %349 to i64
  store i64 %350, i64* %8, align 8
  %351 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %352 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %351, i32 0, i32 0
  %353 = load i64*, i64** %352, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 6
  %355 = load i64, i64* %354, align 8
  %356 = trunc i64 %355 to i32
  %357 = shl i32 %356, 24
  %358 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %359 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %358, i32 0, i32 0
  %360 = load i64*, i64** %359, align 8
  %361 = getelementptr inbounds i64, i64* %360, i64 7
  %362 = load i64, i64* %361, align 8
  %363 = trunc i64 %362 to i32
  %364 = shl i32 %363, 16
  %365 = or i32 %357, %364
  %366 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %367 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %366, i32 0, i32 0
  %368 = load i64*, i64** %367, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 8
  %370 = load i64, i64* %369, align 8
  %371 = trunc i64 %370 to i32
  %372 = shl i32 %371, 8
  %373 = or i32 %365, %372
  %374 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %375 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %374, i32 0, i32 0
  %376 = load i64*, i64** %375, align 8
  %377 = getelementptr inbounds i64, i64* %376, i64 9
  %378 = load i64, i64* %377, align 8
  %379 = trunc i64 %378 to i32
  %380 = or i32 %373, %379
  %381 = sext i32 %380 to i64
  store i64 %381, i64* %9, align 8
  %382 = load %struct.us_data*, %struct.us_data** %5, align 8
  %383 = load i64, i64* %8, align 8
  %384 = load i64, i64* %9, align 8
  %385 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %382, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %383, i64 %384)
  %386 = load %struct.us_data*, %struct.us_data** %5, align 8
  %387 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %388 = load i64, i64* %8, align 8
  %389 = load i64, i64* %9, align 8
  %390 = call i32 @usbat_flash_write_data(%struct.us_data* %386, %struct.usbat_info* %387, i64 %388, i64 %389)
  store i32 %390, i32* %3, align 4
  br label %479

391:                                              ; preds = %311
  %392 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %393 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %392, i32 0, i32 0
  %394 = load i64*, i64** %393, align 8
  %395 = getelementptr inbounds i64, i64* %394, i64 0
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @TEST_UNIT_READY, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %413

399:                                              ; preds = %391
  %400 = load %struct.us_data*, %struct.us_data** %5, align 8
  %401 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %400, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %402 = load %struct.us_data*, %struct.us_data** %5, align 8
  %403 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %404 = call i32 @usbat_flash_check_media(%struct.us_data* %402, %struct.usbat_info* %403)
  store i32 %404, i32* %6, align 4
  %405 = load i32, i32* %6, align 4
  %406 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %410

408:                                              ; preds = %399
  %409 = load i32, i32* %6, align 4
  store i32 %409, i32* %3, align 4
  br label %479

410:                                              ; preds = %399
  %411 = load %struct.us_data*, %struct.us_data** %5, align 8
  %412 = call i32 @usbat_check_status(%struct.us_data* %411)
  store i32 %412, i32* %3, align 4
  br label %479

413:                                              ; preds = %391
  %414 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %415 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %414, i32 0, i32 0
  %416 = load i64*, i64** %415, align 8
  %417 = getelementptr inbounds i64, i64* %416, i64 0
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @REQUEST_SENSE, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %421, label %449

421:                                              ; preds = %413
  %422 = load %struct.us_data*, %struct.us_data** %5, align 8
  %423 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %422, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %424 = load i8*, i8** %10, align 8
  %425 = call i32 @memset(i8* %424, i32 0, i32 18)
  %426 = load i8*, i8** %10, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 0
  store i8 -16, i8* %427, align 1
  %428 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %429 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %428, i32 0, i32 2
  %430 = load i8, i8* %429, align 8
  %431 = load i8*, i8** %10, align 8
  %432 = getelementptr inbounds i8, i8* %431, i64 2
  store i8 %430, i8* %432, align 1
  %433 = load i8*, i8** %10, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 7
  store i8 11, i8* %434, align 1
  %435 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %436 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %435, i32 0, i32 3
  %437 = load i8, i8* %436, align 1
  %438 = load i8*, i8** %10, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 12
  store i8 %437, i8* %439, align 1
  %440 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %441 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %440, i32 0, i32 4
  %442 = load i8, i8* %441, align 2
  %443 = load i8*, i8** %10, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 13
  store i8 %442, i8* %444, align 1
  %445 = load i8*, i8** %10, align 8
  %446 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %447 = call i32 @usb_stor_set_xfer_buf(i8* %445, i32 18, %struct.scsi_cmnd* %446)
  %448 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %448, i32* %3, align 4
  br label %479

449:                                              ; preds = %413
  %450 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %451 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %450, i32 0, i32 0
  %452 = load i64*, i64** %451, align 8
  %453 = getelementptr inbounds i64, i64* %452, i64 0
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %456 = icmp eq i64 %454, %455
  br i1 %456, label %457, label %459

457:                                              ; preds = %449
  %458 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %458, i32* %3, align 4
  br label %479

459:                                              ; preds = %449
  %460 = load %struct.us_data*, %struct.us_data** %5, align 8
  %461 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %462 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %461, i32 0, i32 0
  %463 = load i64*, i64** %462, align 8
  %464 = getelementptr inbounds i64, i64* %463, i64 0
  %465 = load i64, i64* %464, align 8
  %466 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %467 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %466, i32 0, i32 0
  %468 = load i64*, i64** %467, align 8
  %469 = getelementptr inbounds i64, i64* %468, i64 0
  %470 = load i64, i64* %469, align 8
  %471 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %460, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %465, i64 %470)
  %472 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %473 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %472, i32 0, i32 2
  store i8 5, i8* %473, align 8
  %474 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %475 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %474, i32 0, i32 3
  store i8 32, i8* %475, align 1
  %476 = load %struct.usbat_info*, %struct.usbat_info** %7, align 8
  %477 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %476, i32 0, i32 4
  store i8 0, i8* %477, align 2
  %478 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %478, i32* %3, align 4
  br label %479

479:                                              ; preds = %459, %457, %421, %410, %408, %319, %255, %175, %111, %99, %60, %58, %49, %25
  %480 = load i32, i32* %3, align 4
  ret i32 %480
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usbat_flash_check_media(%struct.us_data*, %struct.usbat_info*) #1

declare dso_local i32 @usbat_flash_get_sector_count(%struct.us_data*, %struct.usbat_info*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_flash_read_data(%struct.us_data*, %struct.usbat_info*, i64, i64) #1

declare dso_local i32 @usbat_flash_write_data(%struct.us_data*, %struct.usbat_info*, i64, i64) #1

declare dso_local i32 @usbat_check_status(%struct.us_data*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
