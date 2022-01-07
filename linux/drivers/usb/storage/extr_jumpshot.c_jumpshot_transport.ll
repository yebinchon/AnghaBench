; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_jumpshot.c_jumpshot_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_jumpshot.c_jumpshot_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, i32 }
%struct.us_data = type { i8*, i64, i32 }
%struct.jumpshot_info = type { i32, i64, i8, i8, i8 }

@jumpshot_transport.inquiry_response = internal global [8 x i8] c"\00\80\00\01\1F\00\00\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@jumpshot_info_destructor = common dso_local global i32 0, align 4
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
@.str.5 = private unnamed_addr constant [42 x i8] c"WRITE_10: write block 0x%04lx  count %ld\0A\00", align 1
@WRITE_12 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"WRITE_12: write block 0x%04lx  count %ld\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [17 x i8] c"TEST_UNIT_READY\0A\00", align 1
@REQUEST_SENSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"REQUEST_SENSE\0A\00", align 1
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @jumpshot_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumpshot_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca %struct.jumpshot_info*, align 8
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
  br i1 %17, label %33, label %18

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
  br label %550

29:                                               ; preds = %18
  %30 = load i32, i32* @jumpshot_info_destructor, align 4
  %31 = load %struct.us_data*, %struct.us_data** %5, align 8
  %32 = getelementptr inbounds %struct.us_data, %struct.us_data* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.us_data*, %struct.us_data** %5, align 8
  %35 = getelementptr inbounds %struct.us_data, %struct.us_data* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.jumpshot_info*
  store %struct.jumpshot_info* %37, %struct.jumpshot_info** %6, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @INQUIRY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %33
  %46 = load %struct.us_data*, %struct.us_data** %5, align 8
  %47 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @memcpy(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @jumpshot_transport.inquiry_response, i64 0, i64 0), i32 8)
  %50 = load %struct.us_data*, %struct.us_data** %5, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @fill_inquiry_response(%struct.us_data* %50, i8* %51, i32 36)
  %53 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %53, i32* %3, align 4
  br label %550

54:                                               ; preds = %33
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @READ_CAPACITY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %110

62:                                               ; preds = %54
  %63 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %64 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %63, i32 0, i32 0
  store i32 512, i32* %64, align 8
  %65 = load %struct.us_data*, %struct.us_data** %5, align 8
  %66 = call i32 @jumpshot_get_status(%struct.us_data* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %550

72:                                               ; preds = %62
  %73 = load %struct.us_data*, %struct.us_data** %5, align 8
  %74 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %75 = call i32 @jumpshot_id_device(%struct.us_data* %73, %struct.jumpshot_info* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %550

81:                                               ; preds = %72
  %82 = load %struct.us_data*, %struct.us_data** %5, align 8
  %83 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %84 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %87 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %85, i32 %88)
  %90 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %91 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %92, 1
  %94 = call i32 @cpu_to_be32(i64 %93)
  %95 = load i8*, i8** %10, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %94, i32* %97, align 4
  %98 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %99 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = call i32 @cpu_to_be32(i64 %101)
  %103 = load i8*, i8** %10, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 %102, i32* %105, align 4
  %106 = load i8*, i8** %10, align 8
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %108 = call i32 @usb_stor_set_xfer_buf(i8* %106, i32 8, %struct.scsi_cmnd* %107)
  %109 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %109, i32* %3, align 4
  br label %550

110:                                              ; preds = %54
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %112 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MODE_SELECT_10, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load %struct.us_data*, %struct.us_data** %5, align 8
  %120 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %121, i32* %3, align 4
  br label %550

122:                                              ; preds = %110
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @READ_10, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %186

130:                                              ; preds = %122
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = shl i32 %136, 24
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 3
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = shl i32 %143, 16
  %145 = or i32 %137, %144
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %147 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 4
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = shl i32 %151, 8
  %153 = or i32 %145, %152
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %155 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 5
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = or i32 %153, %159
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %8, align 8
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %163 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 7
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = shl i32 %167, 8
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %170 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 8
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = or i32 %168, %174
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %9, align 8
  %177 = load %struct.us_data*, %struct.us_data** %5, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* %9, align 8
  %180 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %177, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %178, i64 %179)
  %181 = load %struct.us_data*, %struct.us_data** %5, align 8
  %182 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* %9, align 8
  %185 = call i32 @jumpshot_read_data(%struct.us_data* %181, %struct.jumpshot_info* %182, i64 %183, i64 %184)
  store i32 %185, i32* %3, align 4
  br label %550

186:                                              ; preds = %122
  %187 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %188 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @READ_12, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %266

194:                                              ; preds = %186
  %195 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %196 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 2
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = shl i32 %200, 24
  %202 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %203 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 3
  %206 = load i64, i64* %205, align 8
  %207 = trunc i64 %206 to i32
  %208 = shl i32 %207, 16
  %209 = or i32 %201, %208
  %210 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %211 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 4
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = shl i32 %215, 8
  %217 = or i32 %209, %216
  %218 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %219 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 5
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = or i32 %217, %223
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %8, align 8
  %226 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %227 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %226, i32 0, i32 0
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 6
  %230 = load i64, i64* %229, align 8
  %231 = trunc i64 %230 to i32
  %232 = shl i32 %231, 24
  %233 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %234 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %233, i32 0, i32 0
  %235 = load i64*, i64** %234, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 7
  %237 = load i64, i64* %236, align 8
  %238 = trunc i64 %237 to i32
  %239 = shl i32 %238, 16
  %240 = or i32 %232, %239
  %241 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %242 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 8
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  %247 = shl i32 %246, 8
  %248 = or i32 %240, %247
  %249 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %250 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %249, i32 0, i32 0
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 9
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = or i32 %248, %254
  %256 = sext i32 %255 to i64
  store i64 %256, i64* %9, align 8
  %257 = load %struct.us_data*, %struct.us_data** %5, align 8
  %258 = load i64, i64* %8, align 8
  %259 = load i64, i64* %9, align 8
  %260 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %257, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i64 %258, i64 %259)
  %261 = load %struct.us_data*, %struct.us_data** %5, align 8
  %262 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %263 = load i64, i64* %8, align 8
  %264 = load i64, i64* %9, align 8
  %265 = call i32 @jumpshot_read_data(%struct.us_data* %261, %struct.jumpshot_info* %262, i64 %263, i64 %264)
  store i32 %265, i32* %3, align 4
  br label %550

266:                                              ; preds = %186
  %267 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %268 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %267, i32 0, i32 0
  %269 = load i64*, i64** %268, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @WRITE_10, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %330

274:                                              ; preds = %266
  %275 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %276 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %275, i32 0, i32 0
  %277 = load i64*, i64** %276, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 2
  %279 = load i64, i64* %278, align 8
  %280 = trunc i64 %279 to i32
  %281 = shl i32 %280, 24
  %282 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %283 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %282, i32 0, i32 0
  %284 = load i64*, i64** %283, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 3
  %286 = load i64, i64* %285, align 8
  %287 = trunc i64 %286 to i32
  %288 = shl i32 %287, 16
  %289 = or i32 %281, %288
  %290 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %291 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %290, i32 0, i32 0
  %292 = load i64*, i64** %291, align 8
  %293 = getelementptr inbounds i64, i64* %292, i64 4
  %294 = load i64, i64* %293, align 8
  %295 = trunc i64 %294 to i32
  %296 = shl i32 %295, 8
  %297 = or i32 %289, %296
  %298 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %299 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %298, i32 0, i32 0
  %300 = load i64*, i64** %299, align 8
  %301 = getelementptr inbounds i64, i64* %300, i64 5
  %302 = load i64, i64* %301, align 8
  %303 = trunc i64 %302 to i32
  %304 = or i32 %297, %303
  %305 = sext i32 %304 to i64
  store i64 %305, i64* %8, align 8
  %306 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %307 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %306, i32 0, i32 0
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 7
  %310 = load i64, i64* %309, align 8
  %311 = trunc i64 %310 to i32
  %312 = shl i32 %311, 8
  %313 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %314 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %313, i32 0, i32 0
  %315 = load i64*, i64** %314, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 8
  %317 = load i64, i64* %316, align 8
  %318 = trunc i64 %317 to i32
  %319 = or i32 %312, %318
  %320 = sext i32 %319 to i64
  store i64 %320, i64* %9, align 8
  %321 = load %struct.us_data*, %struct.us_data** %5, align 8
  %322 = load i64, i64* %8, align 8
  %323 = load i64, i64* %9, align 8
  %324 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %321, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %322, i64 %323)
  %325 = load %struct.us_data*, %struct.us_data** %5, align 8
  %326 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %327 = load i64, i64* %8, align 8
  %328 = load i64, i64* %9, align 8
  %329 = call i32 @jumpshot_write_data(%struct.us_data* %325, %struct.jumpshot_info* %326, i64 %327, i64 %328)
  store i32 %329, i32* %3, align 4
  br label %550

330:                                              ; preds = %266
  %331 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %332 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @WRITE_12, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %410

338:                                              ; preds = %330
  %339 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %340 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %339, i32 0, i32 0
  %341 = load i64*, i64** %340, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 2
  %343 = load i64, i64* %342, align 8
  %344 = trunc i64 %343 to i32
  %345 = shl i32 %344, 24
  %346 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %347 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %346, i32 0, i32 0
  %348 = load i64*, i64** %347, align 8
  %349 = getelementptr inbounds i64, i64* %348, i64 3
  %350 = load i64, i64* %349, align 8
  %351 = trunc i64 %350 to i32
  %352 = shl i32 %351, 16
  %353 = or i32 %345, %352
  %354 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %355 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %354, i32 0, i32 0
  %356 = load i64*, i64** %355, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 4
  %358 = load i64, i64* %357, align 8
  %359 = trunc i64 %358 to i32
  %360 = shl i32 %359, 8
  %361 = or i32 %353, %360
  %362 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %363 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %362, i32 0, i32 0
  %364 = load i64*, i64** %363, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 5
  %366 = load i64, i64* %365, align 8
  %367 = trunc i64 %366 to i32
  %368 = or i32 %361, %367
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %8, align 8
  %370 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %371 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %370, i32 0, i32 0
  %372 = load i64*, i64** %371, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 6
  %374 = load i64, i64* %373, align 8
  %375 = trunc i64 %374 to i32
  %376 = shl i32 %375, 24
  %377 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %378 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %377, i32 0, i32 0
  %379 = load i64*, i64** %378, align 8
  %380 = getelementptr inbounds i64, i64* %379, i64 7
  %381 = load i64, i64* %380, align 8
  %382 = trunc i64 %381 to i32
  %383 = shl i32 %382, 16
  %384 = or i32 %376, %383
  %385 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %386 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %385, i32 0, i32 0
  %387 = load i64*, i64** %386, align 8
  %388 = getelementptr inbounds i64, i64* %387, i64 8
  %389 = load i64, i64* %388, align 8
  %390 = trunc i64 %389 to i32
  %391 = shl i32 %390, 8
  %392 = or i32 %384, %391
  %393 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %394 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %393, i32 0, i32 0
  %395 = load i64*, i64** %394, align 8
  %396 = getelementptr inbounds i64, i64* %395, i64 9
  %397 = load i64, i64* %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = or i32 %392, %398
  %400 = sext i32 %399 to i64
  store i64 %400, i64* %9, align 8
  %401 = load %struct.us_data*, %struct.us_data** %5, align 8
  %402 = load i64, i64* %8, align 8
  %403 = load i64, i64* %9, align 8
  %404 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %401, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i64 %402, i64 %403)
  %405 = load %struct.us_data*, %struct.us_data** %5, align 8
  %406 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %407 = load i64, i64* %8, align 8
  %408 = load i64, i64* %9, align 8
  %409 = call i32 @jumpshot_write_data(%struct.us_data* %405, %struct.jumpshot_info* %406, i64 %407, i64 %408)
  store i32 %409, i32* %3, align 4
  br label %550

410:                                              ; preds = %330
  %411 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %412 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %411, i32 0, i32 0
  %413 = load i64*, i64** %412, align 8
  %414 = getelementptr inbounds i64, i64* %413, i64 0
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @TEST_UNIT_READY, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %418, label %423

418:                                              ; preds = %410
  %419 = load %struct.us_data*, %struct.us_data** %5, align 8
  %420 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %419, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %421 = load %struct.us_data*, %struct.us_data** %5, align 8
  %422 = call i32 @jumpshot_get_status(%struct.us_data* %421)
  store i32 %422, i32* %3, align 4
  br label %550

423:                                              ; preds = %410
  %424 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %425 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %424, i32 0, i32 0
  %426 = load i64*, i64** %425, align 8
  %427 = getelementptr inbounds i64, i64* %426, i64 0
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @REQUEST_SENSE, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %459

431:                                              ; preds = %423
  %432 = load %struct.us_data*, %struct.us_data** %5, align 8
  %433 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %432, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %434 = load i8*, i8** %10, align 8
  %435 = call i32 @memset(i8* %434, i32 0, i32 18)
  %436 = load i8*, i8** %10, align 8
  %437 = getelementptr inbounds i8, i8* %436, i64 0
  store i8 -16, i8* %437, align 1
  %438 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %439 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %438, i32 0, i32 2
  %440 = load i8, i8* %439, align 8
  %441 = load i8*, i8** %10, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 2
  store i8 %440, i8* %442, align 1
  %443 = load i8*, i8** %10, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 7
  store i8 11, i8* %444, align 1
  %445 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %446 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %445, i32 0, i32 3
  %447 = load i8, i8* %446, align 1
  %448 = load i8*, i8** %10, align 8
  %449 = getelementptr inbounds i8, i8* %448, i64 12
  store i8 %447, i8* %449, align 1
  %450 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %451 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %450, i32 0, i32 4
  %452 = load i8, i8* %451, align 2
  %453 = load i8*, i8** %10, align 8
  %454 = getelementptr inbounds i8, i8* %453, i64 13
  store i8 %452, i8* %454, align 1
  %455 = load i8*, i8** %10, align 8
  %456 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %457 = call i32 @usb_stor_set_xfer_buf(i8* %455, i32 18, %struct.scsi_cmnd* %456)
  %458 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %458, i32* %3, align 4
  br label %550

459:                                              ; preds = %423
  %460 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %461 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %460, i32 0, i32 0
  %462 = load i64*, i64** %461, align 8
  %463 = getelementptr inbounds i64, i64* %462, i64 0
  %464 = load i64, i64* %463, align 8
  %465 = load i64, i64* @MODE_SENSE, align 8
  %466 = icmp eq i64 %464, %465
  br i1 %466, label %467, label %473

467:                                              ; preds = %459
  %468 = load %struct.us_data*, %struct.us_data** %5, align 8
  %469 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %468, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %470 = load %struct.us_data*, %struct.us_data** %5, align 8
  %471 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %472 = call i32 @jumpshot_handle_mode_sense(%struct.us_data* %470, %struct.scsi_cmnd* %471, i32 1)
  store i32 %472, i32* %3, align 4
  br label %550

473:                                              ; preds = %459
  %474 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %475 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %474, i32 0, i32 0
  %476 = load i64*, i64** %475, align 8
  %477 = getelementptr inbounds i64, i64* %476, i64 0
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @MODE_SENSE_10, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %481, label %487

481:                                              ; preds = %473
  %482 = load %struct.us_data*, %struct.us_data** %5, align 8
  %483 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %482, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %484 = load %struct.us_data*, %struct.us_data** %5, align 8
  %485 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %486 = call i32 @jumpshot_handle_mode_sense(%struct.us_data* %484, %struct.scsi_cmnd* %485, i32 0)
  store i32 %486, i32* %3, align 4
  br label %550

487:                                              ; preds = %473
  %488 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %489 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %488, i32 0, i32 0
  %490 = load i64*, i64** %489, align 8
  %491 = getelementptr inbounds i64, i64* %490, i64 0
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @ALLOW_MEDIUM_REMOVAL, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %487
  %496 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %496, i32* %3, align 4
  br label %550

497:                                              ; preds = %487
  %498 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %499 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %498, i32 0, i32 0
  %500 = load i64*, i64** %499, align 8
  %501 = getelementptr inbounds i64, i64* %500, i64 0
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @START_STOP, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %530

505:                                              ; preds = %497
  %506 = load %struct.us_data*, %struct.us_data** %5, align 8
  %507 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %506, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %508 = load %struct.us_data*, %struct.us_data** %5, align 8
  %509 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %510 = call i32 @jumpshot_id_device(%struct.us_data* %508, %struct.jumpshot_info* %509)
  store i32 %510, i32* %7, align 4
  %511 = load i32, i32* %7, align 4
  %512 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %514, label %521

514:                                              ; preds = %505
  %515 = load i8, i8* @NO_SENSE, align 1
  %516 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %517 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %516, i32 0, i32 2
  store i8 %515, i8* %517, align 8
  %518 = load i32, i32* @SUCCESS, align 4
  %519 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %520 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %519, i32 0, i32 1
  store i32 %518, i32* %520, align 8
  br label %528

521:                                              ; preds = %505
  %522 = load i8, i8* @UNIT_ATTENTION, align 1
  %523 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %524 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %523, i32 0, i32 2
  store i8 %522, i8* %524, align 8
  %525 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %526 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %527 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %526, i32 0, i32 1
  store i32 %525, i32* %527, align 8
  br label %528

528:                                              ; preds = %521, %514
  %529 = load i32, i32* %7, align 4
  store i32 %529, i32* %3, align 4
  br label %550

530:                                              ; preds = %497
  %531 = load %struct.us_data*, %struct.us_data** %5, align 8
  %532 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %533 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %532, i32 0, i32 0
  %534 = load i64*, i64** %533, align 8
  %535 = getelementptr inbounds i64, i64* %534, i64 0
  %536 = load i64, i64* %535, align 8
  %537 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %538 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %537, i32 0, i32 0
  %539 = load i64*, i64** %538, align 8
  %540 = getelementptr inbounds i64, i64* %539, i64 0
  %541 = load i64, i64* %540, align 8
  %542 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %531, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i64 %536, i64 %541)
  %543 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %544 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %543, i32 0, i32 2
  store i8 5, i8* %544, align 8
  %545 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %546 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %545, i32 0, i32 3
  store i8 32, i8* %546, align 1
  %547 = load %struct.jumpshot_info*, %struct.jumpshot_info** %6, align 8
  %548 = getelementptr inbounds %struct.jumpshot_info, %struct.jumpshot_info* %547, i32 0, i32 4
  store i8 0, i8* %548, align 2
  %549 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %549, i32* %3, align 4
  br label %550

550:                                              ; preds = %530, %528, %495, %481, %467, %431, %418, %338, %274, %194, %130, %118, %81, %79, %70, %45, %27
  %551 = load i32, i32* %3, align 4
  ret i32 %551
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @jumpshot_get_status(%struct.us_data*) #1

declare dso_local i32 @jumpshot_id_device(%struct.us_data*, %struct.jumpshot_info*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @jumpshot_read_data(%struct.us_data*, %struct.jumpshot_info*, i64, i64) #1

declare dso_local i32 @jumpshot_write_data(%struct.us_data*, %struct.jumpshot_info*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @jumpshot_handle_mode_sense(%struct.us_data*, %struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
