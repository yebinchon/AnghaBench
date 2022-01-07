; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_handle_read10.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_handle_read10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.scatterlist = type { i32 }

@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"transfersize %d\0A\00", align 1
@USBAT_ATA = common dso_local global i32 0, align 4
@USBAT_ATA_DATA = common dso_local global i32 0, align 4
@USBAT_ATA_STATUS = common dso_local global i32 0, align 4
@USBAT_QUAL_FCQ = common dso_local global i32 0, align 4
@USBAT_QUAL_ALQ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GPCMD_READ_CD = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GPCMD_READ_CD: len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"transfersize 0, forcing %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Max read is %d bytes\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@transferred = common dso_local global i32 0, align 4
@TO_XFER_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*, i8*, %struct.scsi_cmnd*)* @usbat_hp8200e_handle_read10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_hp8200e_handle_read10(%struct.us_data* %0, i8* %1, i8* %2, %struct.scsi_cmnd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.scsi_cmnd* %3, %struct.scsi_cmnd** %9, align 8
  %16 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %15, align 8
  %17 = load %struct.us_data*, %struct.us_data** %6, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_stor_dbg(%struct.us_data* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %23 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %22)
  %24 = icmp ult i32 %23, 65536
  br i1 %24, label %25, label %44

25:                                               ; preds = %4
  %26 = load %struct.us_data*, %struct.us_data** %6, align 8
  %27 = load i32, i32* @USBAT_ATA, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @USBAT_ATA_DATA, align 4
  %31 = load i32, i32* @USBAT_ATA_STATUS, align 4
  %32 = load i32, i32* @USBAT_QUAL_FCQ, align 4
  %33 = load i32, i32* @USBAT_QUAL_ALQ, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %37 = call i8* @scsi_sglist(%struct.scsi_cmnd* %36)
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %39 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %38)
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %41 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %40)
  %42 = call i32 @usbat_hp8200e_rw_block_test(%struct.us_data* %26, i32 %27, i8* %28, i8* %29, i32 19, i32 %30, i32 %31, i32 253, i32 %34, i32 %35, i8* %37, i32 %39, i32 %41, i32 1)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %245

44:                                               ; preds = %4
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 7
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @GPCMD_READ_CD, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 16
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 15
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @short_pack(i8 zeroext %55, i8 zeroext %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 %60, 16
  store i32 %61, i32* %12, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 14
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %12, align 4
  %68 = load %struct.us_data*, %struct.us_data** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @usb_stor_dbg(%struct.us_data* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %72 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %71)
  %73 = load i32, i32* %12, align 4
  %74 = udiv i32 %72, %73
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %52, %44
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 0
  store i32 2048, i32* %84, align 4
  %85 = load %struct.us_data*, %struct.us_data** %6, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @usb_stor_dbg(%struct.us_data* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %82, %77
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = udiv i32 65535, %93
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul i32 %94, %97
  store i32 %98, i32* %12, align 4
  %99 = load %struct.us_data*, %struct.us_data** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @usb_stor_dbg(%struct.us_data* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %104 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %103)
  %105 = call i32 @min(i32 %102, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @GFP_NOIO, align 4
  %108 = call i8* @kmalloc(i32 %106, i32 %107)
  store i8* %108, i8** %11, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %90
  %112 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %112, i32* %5, align 4
  br label %245

113:                                              ; preds = %90
  %114 = load i8*, i8** %8, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 10
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %8, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 9
  %119 = load i8, i8* %118, align 1
  %120 = call i32 @short_pack(i8 zeroext %116, i8 zeroext %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = shl i32 %121, 16
  store i32 %122, i32* %13, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 12
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 11
  %128 = load i8, i8* %127, align 1
  %129 = call i32 @short_pack(i8 zeroext %125, i8 zeroext %128)
  %130 = load i32, i32* %13, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %13, align 4
  store i32 0, i32* @transferred, align 4
  br label %132

132:                                              ; preds = %225, %113
  %133 = load i32, i32* @transferred, align 4
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %135 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %134)
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %241

137:                                              ; preds = %132
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %140 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %139)
  %141 = load i32, i32* @transferred, align 4
  %142 = sub i32 %140, %141
  %143 = icmp ugt i32 %138, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %146 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %145)
  %147 = load i32, i32* @transferred, align 4
  %148 = sub i32 %146, %147
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %144, %137
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %150, 255
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 3
  store i8 %152, i8* %154, align 1
  %155 = load i32, i32* %12, align 4
  %156 = lshr i32 %155, 8
  %157 = and i32 %156, 255
  %158 = trunc i32 %157 to i8
  %159 = load i8*, i8** %8, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 4
  store i8 %158, i8* %160, align 1
  %161 = load i32, i32* %13, align 4
  %162 = lshr i32 %161, 16
  %163 = call zeroext i8 @MSB_of(i32 %162)
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 9
  store i8 %163, i8* %165, align 1
  %166 = load i32, i32* %13, align 4
  %167 = lshr i32 %166, 16
  %168 = call zeroext i8 @LSB_of(i32 %167)
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 10
  store i8 %168, i8* %170, align 1
  %171 = load i32, i32* %13, align 4
  %172 = and i32 %171, 65535
  %173 = call zeroext i8 @MSB_of(i32 %172)
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 11
  store i8 %173, i8* %175, align 1
  %176 = load i32, i32* %13, align 4
  %177 = and i32 %176, 65535
  %178 = call zeroext i8 @LSB_of(i32 %177)
  %179 = load i8*, i8** %8, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 12
  store i8 %178, i8* %180, align 1
  %181 = load i8*, i8** %8, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 7
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8, i8* @GPCMD_READ_CD, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %149
  %189 = load i8*, i8** %8, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 13
  store i8 0, i8* %190, align 1
  br label %191

191:                                              ; preds = %188, %149
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %194 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = udiv i32 %192, %195
  %197 = call zeroext i8 @MSB_of(i32 %196)
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 14
  store i8 %197, i8* %199, align 1
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %202 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = udiv i32 %200, %203
  %205 = call zeroext i8 @LSB_of(i32 %204)
  %206 = load i8*, i8** %8, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 15
  store i8 %205, i8* %207, align 1
  %208 = load %struct.us_data*, %struct.us_data** %6, align 8
  %209 = load i32, i32* @USBAT_ATA, align 4
  %210 = load i8*, i8** %7, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = load i32, i32* @USBAT_ATA_DATA, align 4
  %213 = load i32, i32* @USBAT_ATA_STATUS, align 4
  %214 = load i32, i32* @USBAT_QUAL_FCQ, align 4
  %215 = load i32, i32* @USBAT_QUAL_ALQ, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %218 = load i8*, i8** %11, align 8
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @usbat_hp8200e_rw_block_test(%struct.us_data* %208, i32 %209, i8* %210, i8* %211, i32 19, i32 %212, i32 %213, i32 253, i32 %216, i32 %217, i8* %218, i32 %219, i32 0, i32 1)
  store i32 %220, i32* %10, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %191
  br label %241

225:                                              ; preds = %191
  %226 = load i8*, i8** %11, align 8
  %227 = load i32, i32* %12, align 4
  %228 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %229 = load i32, i32* @TO_XFER_BUF, align 4
  %230 = call i32 @usb_stor_access_xfer_buf(i8* %226, i32 %227, %struct.scsi_cmnd* %228, %struct.scatterlist** %15, i32* %14, i32 %229)
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* @transferred, align 4
  %233 = add i32 %232, %231
  store i32 %233, i32* @transferred, align 4
  %234 = load i32, i32* %12, align 4
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = udiv i32 %234, %237
  %239 = load i32, i32* %13, align 4
  %240 = add i32 %239, %238
  store i32 %240, i32* %13, align 4
  br label %132

241:                                              ; preds = %224, %132
  %242 = load i8*, i8** %11, align 8
  %243 = call i32 @kfree(i8* %242)
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %5, align 4
  br label %245

245:                                              ; preds = %241, %111, %25
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_hp8200e_rw_block_test(%struct.us_data*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @short_pack(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local zeroext i8 @MSB_of(i32) #1

declare dso_local zeroext i8 @LSB_of(i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, %struct.scsi_cmnd*, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
