; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i8*, i64 }
%struct.us_data = type { i8* }

@USBAT_ATA_FEATURES = common dso_local global i8 0, align 1
@USBAT_ATA_SECCNT = common dso_local global i8 0, align 1
@USBAT_ATA_SECNUM = common dso_local global i8 0, align 1
@USBAT_ATA_LBA_ME = common dso_local global i8 0, align 1
@USBAT_ATA_LBA_HI = common dso_local global i8 0, align 1
@USBAT_ATA_DEVICE = common dso_local global i8 0, align 1
@USBAT_ATA_CMD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [15 x i8] c"Status = %02X\0A\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i64 0, align 8
@transferred = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@USBAT_ATA = common dso_local global i32 0, align 4
@USBAT_ATA_DATA = common dso_local global i32 0, align 4
@USBAT_ATA_STATUS = common dso_local global i32 0, align 4
@USBAT_QUAL_FCQ = common dso_local global i32 0, align 4
@USBAT_QUAL_ALQ = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Wrote %08X bytes\0A\00", align 1
@READ_10 = common dso_local global i64 0, align 8
@GPCMD_READ_CD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Error: len = %08X... what do I do now?\0A\00", align 1
@GPCMD_BLANK = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @usbat_hp8200e_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_hp8200e_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %12 = load %struct.us_data*, %struct.us_data** %5, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i8, i8* @USBAT_ATA_FEATURES, align 1
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8 %17, i8* %18, align 16
  %19 = load i8, i8* @USBAT_ATA_SECCNT, align 1
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 1
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* @USBAT_ATA_SECNUM, align 1
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 2
  store i8 %21, i8* %22, align 2
  %23 = load i8, i8* @USBAT_ATA_LBA_ME, align 1
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 3
  store i8 %23, i8* %24, align 1
  %25 = load i8, i8* @USBAT_ATA_LBA_HI, align 1
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 4
  store i8 %25, i8* %26, align 4
  %27 = load i8, i8* @USBAT_ATA_DEVICE, align 1
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 5
  store i8 %27, i8* %28, align 1
  %29 = load i8, i8* @USBAT_ATA_CMD, align 1
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 6
  store i8 %29, i8* %30, align 2
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %31, align 16
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 2
  store i8 0, i8* %33, align 2
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 3
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %10, align 4
  %39 = lshr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 4
  store i8 %41, i8* %42, align 4
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 5
  store i8 -80, i8* %43, align 1
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 6
  store i8 -96, i8* %44, align 2
  store i32 7, i32* %11, align 4
  br label %45

45:                                               ; preds = %75, %2
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 19
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %50
  store i8 16, i8* %51, align 1
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 7
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %69

59:                                               ; preds = %48
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %63, 7
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  br label %69

69:                                               ; preds = %59, %58
  %70 = phi i32 [ 0, %58 ], [ %68, %59 ]
  %71 = trunc i32 %70 to i8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %73
  store i8 %71, i8* %74, align 1
  br label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %45

78:                                               ; preds = %45
  %79 = load %struct.us_data*, %struct.us_data** %5, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @usbat_get_status(%struct.us_data* %79, i8* %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.us_data*, %struct.us_data** %5, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = call i32 @usb_stor_dbg(%struct.us_data* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %91, i32* %3, align 4
  br label %259

92:                                               ; preds = %78
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i64
  %99 = load i64, i64* @TEST_UNIT_READY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i32 0, i32* @transferred, align 4
  br label %102

102:                                              ; preds = %101, %92
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DMA_TO_DEVICE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %137

108:                                              ; preds = %102
  %109 = load %struct.us_data*, %struct.us_data** %5, align 8
  %110 = load i32, i32* @USBAT_ATA, align 4
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %112 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %113 = load i32, i32* @USBAT_ATA_DATA, align 4
  %114 = load i32, i32* @USBAT_ATA_STATUS, align 4
  %115 = load i32, i32* @USBAT_QUAL_FCQ, align 4
  %116 = load i32, i32* @USBAT_QUAL_ALQ, align 4
  %117 = or i32 %115, %116
  %118 = load i64, i64* @DMA_TO_DEVICE, align 8
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %120 = call i32 @scsi_sglist(%struct.scsi_cmnd* %119)
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %123 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %122)
  %124 = call i32 @usbat_hp8200e_rw_block_test(%struct.us_data* %109, i32 %110, i8* %111, i8* %112, i32 19, i32 %113, i32 %114, i32 253, i32 %117, i64 %118, i32 %120, i32 %121, i32 %123, i32 10)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %108
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @transferred, align 4
  %131 = add i32 %130, %129
  store i32 %131, i32* @transferred, align 4
  %132 = load %struct.us_data*, %struct.us_data** %5, align 8
  %133 = load i32, i32* @transferred, align 4
  %134 = call i32 @usb_stor_dbg(%struct.us_data* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %128, %108
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %259

137:                                              ; preds = %102
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  %144 = load i64, i64* @READ_10, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %155, label %146

146:                                              ; preds = %137
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %148 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = load i64, i64* @GPCMD_READ_CD, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %146, %137
  %156 = load %struct.us_data*, %struct.us_data** %5, align 8
  %157 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %158 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %160 = call i32 @usbat_hp8200e_handle_read10(%struct.us_data* %156, i8* %157, i8* %158, %struct.scsi_cmnd* %159)
  store i32 %160, i32* %3, align 4
  br label %259

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %10, align 4
  %164 = icmp ugt i32 %163, 65535
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load %struct.us_data*, %struct.us_data** %5, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @usb_stor_dbg(%struct.us_data* %166, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %169, i32* %3, align 4
  br label %259

170:                                              ; preds = %162
  %171 = load %struct.us_data*, %struct.us_data** %5, align 8
  %172 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %173 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %174 = call i32 @usbat_multiple_write(%struct.us_data* %171, i8* %172, i8* %173, i32 7)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %3, align 4
  br label %259

180:                                              ; preds = %170
  %181 = load %struct.us_data*, %struct.us_data** %5, align 8
  %182 = load i32, i32* @USBAT_ATA, align 4
  %183 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %184 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = bitcast i8* %185 to i64*
  %187 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %188 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i64
  %193 = load i64, i64* @GPCMD_BLANK, align 8
  %194 = icmp eq i64 %192, %193
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 75, i32 10
  %197 = call i32 @usbat_write_block(%struct.us_data* %181, i32 %182, i64* %186, i32 12, i32 %196, i32 0)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %180
  %202 = load i32, i32* %6, align 4
  store i32 %202, i32* %3, align 4
  br label %259

203:                                              ; preds = %180
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %257

206:                                              ; preds = %203
  %207 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %208 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %257

212:                                              ; preds = %206
  %213 = load %struct.us_data*, %struct.us_data** %5, align 8
  %214 = load i32, i32* @USBAT_ATA, align 4
  %215 = load i8, i8* @USBAT_ATA_LBA_ME, align 1
  %216 = load i8*, i8** %7, align 8
  %217 = call i32 @usbat_read(%struct.us_data* %213, i32 %214, i8 zeroext %215, i8* %216)
  %218 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %212
  %221 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %221, i32* %3, align 4
  br label %259

222:                                              ; preds = %212
  %223 = load i32, i32* %10, align 4
  %224 = icmp ugt i32 %223, 255
  br i1 %224, label %225, label %245

225:                                              ; preds = %222
  %226 = load i8*, i8** %7, align 8
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  store i32 %228, i32* %10, align 4
  %229 = load %struct.us_data*, %struct.us_data** %5, align 8
  %230 = load i32, i32* @USBAT_ATA, align 4
  %231 = load i8, i8* @USBAT_ATA_LBA_HI, align 1
  %232 = load i8*, i8** %7, align 8
  %233 = call i32 @usbat_read(%struct.us_data* %229, i32 %230, i8 zeroext %231, i8* %232)
  %234 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %225
  %237 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %237, i32* %3, align 4
  br label %259

238:                                              ; preds = %225
  %239 = load i8*, i8** %7, align 8
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = shl i32 %241, 8
  %243 = load i32, i32* %10, align 4
  %244 = add i32 %243, %242
  store i32 %244, i32* %10, align 4
  br label %249

245:                                              ; preds = %222
  %246 = load i8*, i8** %7, align 8
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  store i32 %248, i32* %10, align 4
  br label %249

249:                                              ; preds = %245, %238
  %250 = load %struct.us_data*, %struct.us_data** %5, align 8
  %251 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %252 = call i32 @scsi_sglist(%struct.scsi_cmnd* %251)
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %255 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %254)
  %256 = call i32 @usbat_read_block(%struct.us_data* %250, i32 %252, i32 %253, i32 %255)
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %249, %206, %203
  %258 = load i32, i32* %6, align 4
  store i32 %258, i32* %3, align 4
  br label %259

259:                                              ; preds = %257, %236, %220, %201, %178, %165, %155, %135, %90
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_get_status(%struct.us_data*, i8*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usbat_hp8200e_rw_block_test(%struct.us_data*, i32, i8*, i8*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_hp8200e_handle_read10(%struct.us_data*, i8*, i8*, %struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_multiple_write(%struct.us_data*, i8*, i8*, i32) #1

declare dso_local i32 @usbat_write_block(%struct.us_data*, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @usbat_read(%struct.us_data*, i32, i8 zeroext, i8*) #1

declare dso_local i32 @usbat_read_block(%struct.us_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
