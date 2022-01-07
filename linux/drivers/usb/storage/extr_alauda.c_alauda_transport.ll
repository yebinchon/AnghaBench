; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_alauda_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }
%struct.us_data = type { i8*, i64 }
%struct.alauda_info = type { i8, i8, i8 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@alauda_transport.inquiry_response = internal global <{ i8, i8, i8, i8, i8, [31 x i8] }> <{ i8 0, i8 -128, i8 0, i8 1, i8 31, [31 x i8] zeroinitializer }>, align 16
@INQUIRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"INQUIRY - Returning bogus response\0A\00", align 1
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"TEST_UNIT_READY\0A\00", align 1
@READ_CAPACITY = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"READ_10: page %d pagect %d\0A\00", align 1
@WRITE_10 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"WRITE_10: page %d pagect %d\0A\00", align 1
@REQUEST_SENSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"REQUEST_SENSE\0A\00", align 1
@ALLOW_MEDIUM_REMOVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Gah! Unknown command: %d (0x%x)\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @alauda_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alauda_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_2__, align 4
  %12 = alloca %struct.TYPE_2__, align 4
  %13 = alloca %struct.TYPE_2__, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %21 = load %struct.us_data*, %struct.us_data** %5, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.alauda_info*
  store %struct.alauda_info* %24, %struct.alauda_info** %7, align 8
  %25 = load %struct.us_data*, %struct.us_data** %5, align 8
  %26 = getelementptr inbounds %struct.us_data, %struct.us_data* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @INQUIRY, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load %struct.us_data*, %struct.us_data** %5, align 8
  %37 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @memcpy(i8* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* bitcast (<{ i8, i8, i8, i8, i8, [31 x i8] }>* @alauda_transport.inquiry_response to [36 x i8]*), i64 0, i64 0), i32 36)
  %40 = load %struct.us_data*, %struct.us_data** %5, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @fill_inquiry_response(%struct.us_data* %40, i8* %41, i32 36)
  %43 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %43, i32* %3, align 4
  br label %304

44:                                               ; preds = %2
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TEST_UNIT_READY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.us_data*, %struct.us_data** %5, align 8
  %54 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.us_data*, %struct.us_data** %5, align 8
  %56 = call i32 @alauda_check_media(%struct.us_data* %55)
  store i32 %56, i32* %3, align 4
  br label %304

57:                                               ; preds = %44
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @READ_CAPACITY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %57
  %66 = load %struct.us_data*, %struct.us_data** %5, align 8
  %67 = call i32 @alauda_check_media(%struct.us_data* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %304

73:                                               ; preds = %65
  %74 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %11, %struct.us_data* %74)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %12, %struct.us_data* %77)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %13, %struct.us_data* %80)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add i32 %79, %82
  %84 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %14, %struct.us_data* %84)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %83, %86
  %88 = lshr i32 %76, %87
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %15, %struct.us_data* %90)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = mul i32 %89, %92
  %94 = load %struct.us_data*, %struct.us_data** %5, align 8
  call void @MEDIA_INFO(%struct.TYPE_2__* sret %16, %struct.us_data* %94)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = mul i32 %93, %96
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %10, align 8
  %100 = sub i64 %99, 1
  %101 = trunc i64 %100 to i32
  %102 = call i32 @cpu_to_be32(i32 %101)
  %103 = load i8*, i8** %8, align 8
  %104 = bitcast i8* %103 to i32*
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %102, i32* %105, align 4
  %106 = call i32 @cpu_to_be32(i32 512)
  %107 = load i8*, i8** %8, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %106, i32* %109, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %112 = call i32 @usb_stor_set_xfer_buf(i8* %110, i32 8, %struct.scsi_cmnd* %111)
  %113 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %113, i32* %3, align 4
  br label %304

114:                                              ; preds = %57
  %115 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %116 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @READ_10, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %176

122:                                              ; preds = %114
  %123 = load %struct.us_data*, %struct.us_data** %5, align 8
  %124 = call i32 @alauda_check_media(%struct.us_data* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %3, align 4
  br label %304

130:                                              ; preds = %122
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %137 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @short_pack(i32 %135, i32 %140)
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %17, align 4
  %143 = shl i32 %142, 16
  store i32 %143, i32* %17, align 4
  %144 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %145 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 5
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %150 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @short_pack(i32 %148, i32 %153)
  %155 = load i32, i32* %17, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %17, align 4
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %158 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 8
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %163 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 7
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @short_pack(i32 %161, i32 %166)
  store i32 %167, i32* %18, align 4
  %168 = load %struct.us_data*, %struct.us_data** %5, align 8
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* %18, align 4
  %171 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %170)
  %172 = load %struct.us_data*, %struct.us_data** %5, align 8
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %18, align 4
  %175 = call i32 @alauda_read_data(%struct.us_data* %172, i32 %173, i32 %174)
  store i32 %175, i32* %3, align 4
  br label %304

176:                                              ; preds = %114
  %177 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %178 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @WRITE_10, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %238

184:                                              ; preds = %176
  %185 = load %struct.us_data*, %struct.us_data** %5, align 8
  %186 = call i32 @alauda_check_media(%struct.us_data* %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %3, align 4
  br label %304

192:                                              ; preds = %184
  %193 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %194 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %199 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @short_pack(i32 %197, i32 %202)
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* %19, align 4
  %205 = shl i32 %204, 16
  store i32 %205, i32* %19, align 4
  %206 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %207 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 5
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %212 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 4
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @short_pack(i32 %210, i32 %215)
  %217 = load i32, i32* %19, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %19, align 4
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %220 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 8
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %225 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 7
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @short_pack(i32 %223, i32 %228)
  store i32 %229, i32* %20, align 4
  %230 = load %struct.us_data*, %struct.us_data** %5, align 8
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %20, align 4
  %233 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %230, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %231, i32 %232)
  %234 = load %struct.us_data*, %struct.us_data** %5, align 8
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %20, align 4
  %237 = call i32 @alauda_write_data(%struct.us_data* %234, i32 %235, i32 %236)
  store i32 %237, i32* %3, align 4
  br label %304

238:                                              ; preds = %176
  %239 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %240 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @REQUEST_SENSE, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %274

246:                                              ; preds = %238
  %247 = load %struct.us_data*, %struct.us_data** %5, align 8
  %248 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %247, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %249 = load i8*, i8** %8, align 8
  %250 = call i32 @memset(i8* %249, i32 0, i32 18)
  %251 = load i8*, i8** %8, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  store i8 -16, i8* %252, align 1
  %253 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %254 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %253, i32 0, i32 0
  %255 = load i8, i8* %254, align 1
  %256 = load i8*, i8** %8, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 2
  store i8 %255, i8* %257, align 1
  %258 = load i8*, i8** %8, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 7
  store i8 11, i8* %259, align 1
  %260 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %261 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %260, i32 0, i32 1
  %262 = load i8, i8* %261, align 1
  %263 = load i8*, i8** %8, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 12
  store i8 %262, i8* %264, align 1
  %265 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %266 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %265, i32 0, i32 2
  %267 = load i8, i8* %266, align 1
  %268 = load i8*, i8** %8, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 13
  store i8 %267, i8* %269, align 1
  %270 = load i8*, i8** %8, align 8
  %271 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %272 = call i32 @usb_stor_set_xfer_buf(i8* %270, i32 18, %struct.scsi_cmnd* %271)
  %273 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %273, i32* %3, align 4
  br label %304

274:                                              ; preds = %238
  %275 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %276 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @ALLOW_MEDIUM_REMOVAL, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %274
  %283 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %283, i32* %3, align 4
  br label %304

284:                                              ; preds = %274
  %285 = load %struct.us_data*, %struct.us_data** %5, align 8
  %286 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %287 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %292 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %285, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %290, i32 %295)
  %297 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %298 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %297, i32 0, i32 0
  store i8 5, i8* %298, align 1
  %299 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %300 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %299, i32 0, i32 1
  store i8 32, i8* %300, align 1
  %301 = load %struct.alauda_info*, %struct.alauda_info** %7, align 8
  %302 = getelementptr inbounds %struct.alauda_info, %struct.alauda_info* %301, i32 0, i32 2
  store i8 0, i8* %302, align 1
  %303 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %303, i32* %3, align 4
  br label %304

304:                                              ; preds = %284, %282, %246, %192, %190, %130, %128, %73, %71, %52, %35
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @alauda_check_media(%struct.us_data*) #1

declare dso_local void @MEDIA_INFO(%struct.TYPE_2__* sret, %struct.us_data*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @short_pack(i32, i32) #1

declare dso_local i32 @alauda_read_data(%struct.us_data*, i32, i32) #1

declare dso_local i32 @alauda_write_data(%struct.us_data*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
