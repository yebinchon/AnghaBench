; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_transport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sddr09.c_sddr09_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32*, i32, i64 }
%struct.us_data = type { i8*, i32, i32, i64 }
%struct.sddr09_card_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_flash_dev = type { i32, i32, i32 }

@sddr09_transport.sensekey = internal global i8 0, align 1
@sddr09_transport.sensecode = internal global i8 0, align 1
@sddr09_transport.havefakesense = internal global i8 0, align 1
@sddr09_transport.inquiry_response = internal global [8 x i8] c"\00\80\00\02\1F\00\00\00", align 1
@sddr09_transport.mode_page_01 = internal global <{ [9 x i8], [10 x i8] }> <{ [9 x i8] c"\00\0F\00\00\00\00\00\01\0A", [10 x i8] zeroinitializer }>, align 16
@REQUEST_SENSE = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i32 0, align 4
@READ_CAPACITY = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@MODE_SENSE_10 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Dummy up request for mode page 0x%x\0A\00", align 1
@SDDR09_WP = common dso_local global i32 0, align 4
@ALLOW_MEDIUM_REMOVAL = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"READ_10: read page %d pagect %d\0A\00", align 1
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"WRITE_10: write page %d pagect %d\0A\00", align 1
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@LUNBITS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Send control for command %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"sddr09_send_scsi_command returns %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"%s %d bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"sending\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"receiving\00", align 1
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.us_data*)* @sddr09_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sddr09_card_info*, align 8
  %13 = alloca %struct.nand_flash_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %16 = load %struct.us_data*, %struct.us_data** %5, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.us_data*, %struct.us_data** %5, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sddr09_card_info*
  store %struct.sddr09_card_info* %22, %struct.sddr09_card_info** %12, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @REQUEST_SENSE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %2
  %31 = load i8, i8* @sddr09_transport.havefakesense, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @memset(i8* %35, i32 0, i32 18)
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 112, i8* %38, align 1
  %39 = load i8, i8* @sddr09_transport.sensekey, align 1
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8 %39, i8* %41, align 1
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 7
  store i8 11, i8* %43, align 1
  %44 = load i8, i8* @sddr09_transport.sensecode, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 12
  store i8 %44, i8* %46, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %49 = call i32 @usb_stor_set_xfer_buf(i8* %47, i32 18, %struct.scsi_cmnd* %48)
  store i8 0, i8* @sddr09_transport.havefakesense, align 1
  store i8 0, i8* @sddr09_transport.sensecode, align 1
  store i8 0, i8* @sddr09_transport.sensekey, align 1
  %50 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %50, i32* %3, align 4
  br label %477

51:                                               ; preds = %30, %2
  store i8 1, i8* @sddr09_transport.havefakesense, align 1
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INQUIRY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @memcpy(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @sddr09_transport.inquiry_response, i64 0, i64 0), i32 8)
  %62 = load %struct.us_data*, %struct.us_data** %5, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @fill_inquiry_response(%struct.us_data* %62, i8* %63, i32 36)
  %65 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %65, i32* %3, align 4
  br label %477

66:                                               ; preds = %51
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @READ_CAPACITY, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %154

74:                                               ; preds = %66
  %75 = load %struct.us_data*, %struct.us_data** %5, align 8
  %76 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %77 = call i32 @sddr09_get_wp(%struct.us_data* %75, %struct.sddr09_card_info* %76)
  %78 = load %struct.us_data*, %struct.us_data** %5, align 8
  %79 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %80 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.nand_flash_dev* @sddr09_get_cardinfo(%struct.us_data* %78, i32 %81)
  store %struct.nand_flash_dev* %82, %struct.nand_flash_dev** %13, align 8
  %83 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %13, align 8
  %84 = icmp ne %struct.nand_flash_dev* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %126, %85
  store i8 2, i8* @sddr09_transport.sensekey, align 1
  store i8 58, i8* @sddr09_transport.sensecode, align 1
  %87 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %87, i32* %3, align 4
  br label %477

88:                                               ; preds = %74
  %89 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %13, align 8
  %90 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 1, %91
  %93 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %94 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %13, align 8
  %96 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %99 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %101 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 1, %102
  %104 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %105 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %13, align 8
  %107 = getelementptr inbounds %struct.nand_flash_dev, %struct.nand_flash_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %110 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %112 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 1, %113
  %115 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %116 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %118 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %122 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load %struct.us_data*, %struct.us_data** %5, align 8
  %124 = call i64 @sddr09_read_map(%struct.us_data* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %88
  br label %86

127:                                              ; preds = %88
  %128 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %129 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %132 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %130, %133
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @cpu_to_be32(i64 %137)
  %139 = load i8*, i8** %8, align 8
  %140 = bitcast i8* %139 to i32*
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %138, i32* %141, align 4
  %142 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %143 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = call i32 @cpu_to_be32(i64 %145)
  %147 = load i8*, i8** %8, align 8
  %148 = bitcast i8* %147 to i32*
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 %146, i32* %149, align 4
  %150 = load i8*, i8** %8, align 8
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %152 = call i32 @usb_stor_set_xfer_buf(i8* %150, i32 8, %struct.scsi_cmnd* %151)
  %153 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %153, i32* %3, align 4
  br label %477

154:                                              ; preds = %66
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @MODE_SENSE_10, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %201

162:                                              ; preds = %154
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %164 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 63
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %174, label %171

171:                                              ; preds = %162
  %172 = load i32, i32* %14, align 4
  %173 = icmp eq i32 %172, 63
  br i1 %173, label %174, label %199

174:                                              ; preds = %171, %162
  %175 = load %struct.us_data*, %struct.us_data** %5, align 8
  %176 = load i32, i32* %14, align 4
  %177 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = load i8*, i8** %8, align 8
  %179 = call i32 @memcpy(i8* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* bitcast (<{ [9 x i8], [10 x i8] }>* @sddr09_transport.mode_page_01 to [19 x i8]*), i64 0, i64 0), i32 19)
  %180 = call i32 @cpu_to_be16(i32 17)
  %181 = load i8*, i8** %8, align 8
  %182 = bitcast i8* %181 to i32*
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  store i32 %180, i32* %183, align 4
  %184 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %12, align 8
  %185 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SDDR09_WP, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 128, i32 0
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %8, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 3
  store i8 %192, i8* %194, align 1
  %195 = load i8*, i8** %8, align 8
  %196 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %197 = call i32 @usb_stor_set_xfer_buf(i8* %195, i32 19, %struct.scsi_cmnd* %196)
  %198 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %198, i32* %3, align 4
  br label %477

199:                                              ; preds = %171
  store i8 5, i8* @sddr09_transport.sensekey, align 1
  store i8 36, i8* @sddr09_transport.sensecode, align 1
  %200 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %200, i32* %3, align 4
  br label %477

201:                                              ; preds = %154
  %202 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %203 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @ALLOW_MEDIUM_REMOVAL, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %201
  %210 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %210, i32* %3, align 4
  br label %477

211:                                              ; preds = %201
  store i8 0, i8* @sddr09_transport.havefakesense, align 1
  %212 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %213 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @READ_10, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %273

219:                                              ; preds = %211
  %220 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %221 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %226 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @short_pack(i32 %224, i32 %229)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %10, align 4
  %232 = shl i32 %231, 16
  store i32 %232, i32* %10, align 4
  %233 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %234 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %239 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 4
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @short_pack(i32 %237, i32 %242)
  %244 = load i32, i32* %10, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %10, align 4
  %246 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %247 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 8
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %252 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 7
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @short_pack(i32 %250, i32 %255)
  store i32 %256, i32* %11, align 4
  %257 = load %struct.us_data*, %struct.us_data** %5, align 8
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %11, align 4
  %260 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %257, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %258, i32 %259)
  %261 = load %struct.us_data*, %struct.us_data** %5, align 8
  %262 = load i32, i32* %10, align 4
  %263 = load i32, i32* %11, align 4
  %264 = call i32 @sddr09_read_data(%struct.us_data* %261, i32 %262, i32 %263)
  store i32 %264, i32* %6, align 4
  %265 = load i32, i32* %6, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %219
  %268 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  br label %271

269:                                              ; preds = %219
  %270 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  br label %271

271:                                              ; preds = %269, %267
  %272 = phi i32 [ %268, %267 ], [ %270, %269 ]
  store i32 %272, i32* %3, align 4
  br label %477

273:                                              ; preds = %211
  %274 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %275 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @WRITE_10, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %335

281:                                              ; preds = %273
  %282 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %283 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %288 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @short_pack(i32 %286, i32 %291)
  store i32 %292, i32* %10, align 4
  %293 = load i32, i32* %10, align 4
  %294 = shl i32 %293, 16
  store i32 %294, i32* %10, align 4
  %295 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %296 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 5
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %301 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 4
  %304 = load i32, i32* %303, align 4
  %305 = call i32 @short_pack(i32 %299, i32 %304)
  %306 = load i32, i32* %10, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %10, align 4
  %308 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %309 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 8
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %314 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 7
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @short_pack(i32 %312, i32 %317)
  store i32 %318, i32* %11, align 4
  %319 = load %struct.us_data*, %struct.us_data** %5, align 8
  %320 = load i32, i32* %10, align 4
  %321 = load i32, i32* %11, align 4
  %322 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %319, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %320, i32 %321)
  %323 = load %struct.us_data*, %struct.us_data** %5, align 8
  %324 = load i32, i32* %10, align 4
  %325 = load i32, i32* %11, align 4
  %326 = call i32 @sddr09_write_data(%struct.us_data* %323, i32 %324, i32 %325)
  store i32 %326, i32* %6, align 4
  %327 = load i32, i32* %6, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %281
  %330 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  br label %333

331:                                              ; preds = %281
  %332 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  br label %333

333:                                              ; preds = %331, %329
  %334 = phi i32 [ %330, %329 ], [ %332, %331 ]
  store i32 %334, i32* %3, align 4
  br label %477

335:                                              ; preds = %273
  %336 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %337 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @TEST_UNIT_READY, align 4
  %342 = icmp ne i32 %340, %341
  br i1 %342, label %343, label %353

343:                                              ; preds = %335
  %344 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %345 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @REQUEST_SENSE, align 4
  %350 = icmp ne i32 %348, %349
  br i1 %350, label %351, label %353

351:                                              ; preds = %343
  store i8 5, i8* @sddr09_transport.sensekey, align 1
  store i8 32, i8* @sddr09_transport.sensecode, align 1
  store i8 1, i8* @sddr09_transport.havefakesense, align 1
  %352 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %352, i32* %3, align 4
  br label %477

353:                                              ; preds = %343, %335
  br label %354

354:                                              ; preds = %368, %353
  %355 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %356 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = icmp slt i32 %357, 12
  br i1 %358, label %359, label %373

359:                                              ; preds = %354
  %360 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %361 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %360, i32 0, i32 0
  %362 = load i32*, i32** %361, align 8
  %363 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %364 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %362, i64 %366
  store i32 0, i32* %367, align 4
  br label %368

368:                                              ; preds = %359
  %369 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %370 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %370, align 8
  br label %354

373:                                              ; preds = %354
  %374 = load i32, i32* @LUNBITS, align 4
  %375 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %376 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 1
  store i32 %374, i32* %378, align 4
  %379 = load i8*, i8** %8, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 0
  store i8 0, i8* %380, align 1
  store i32 0, i32* %7, align 4
  br label %381

381:                                              ; preds = %398, %373
  %382 = load i32, i32* %7, align 4
  %383 = icmp slt i32 %382, 12
  br i1 %383, label %384, label %401

384:                                              ; preds = %381
  %385 = load i8*, i8** %8, align 8
  %386 = load i8*, i8** %8, align 8
  %387 = call i32 @strlen(i8* %386)
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, i8* %385, i64 %388
  %390 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %391 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %390, i32 0, i32 0
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %7, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @sprintf(i8* %389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %396)
  br label %398

398:                                              ; preds = %384
  %399 = load i32, i32* %7, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %7, align 4
  br label %381

401:                                              ; preds = %381
  %402 = load %struct.us_data*, %struct.us_data** %5, align 8
  %403 = load i8*, i8** %8, align 8
  %404 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %402, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %403)
  %405 = load %struct.us_data*, %struct.us_data** %5, align 8
  %406 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %407 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %406, i32 0, i32 0
  %408 = load i32*, i32** %407, align 8
  %409 = call i32 @sddr09_send_scsi_command(%struct.us_data* %405, i32* %408, i32 12)
  store i32 %409, i32* %6, align 4
  %410 = load i32, i32* %6, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %417

412:                                              ; preds = %401
  %413 = load %struct.us_data*, %struct.us_data** %5, align 8
  %414 = load i32, i32* %6, align 4
  %415 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %413, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %414)
  %416 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %416, i32* %3, align 4
  br label %477

417:                                              ; preds = %401
  %418 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %419 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %418)
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %417
  %422 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %422, i32* %3, align 4
  br label %477

423:                                              ; preds = %417
  %424 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %425 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %424, i32 0, i32 2
  %426 = load i64, i64* %425, align 8
  %427 = load i64, i64* @DMA_TO_DEVICE, align 8
  %428 = icmp eq i64 %426, %427
  br i1 %428, label %435, label %429

429:                                              ; preds = %423
  %430 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %431 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %430, i32 0, i32 2
  %432 = load i64, i64* %431, align 8
  %433 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %434 = icmp eq i64 %432, %433
  br i1 %434, label %435, label %475

435:                                              ; preds = %429, %423
  %436 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %437 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @DMA_TO_DEVICE, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %441, label %445

441:                                              ; preds = %435
  %442 = load %struct.us_data*, %struct.us_data** %5, align 8
  %443 = getelementptr inbounds %struct.us_data, %struct.us_data* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 8
  br label %449

445:                                              ; preds = %435
  %446 = load %struct.us_data*, %struct.us_data** %5, align 8
  %447 = getelementptr inbounds %struct.us_data, %struct.us_data* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 4
  br label %449

449:                                              ; preds = %445, %441
  %450 = phi i32 [ %444, %441 ], [ %448, %445 ]
  store i32 %450, i32* %15, align 4
  %451 = load %struct.us_data*, %struct.us_data** %5, align 8
  %452 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %453 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %452, i32 0, i32 2
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* @DMA_TO_DEVICE, align 8
  %456 = icmp eq i64 %454, %455
  %457 = zext i1 %456 to i64
  %458 = select i1 %456, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)
  %459 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %460 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %459)
  %461 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %451, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %458, i32 %460)
  %462 = load %struct.us_data*, %struct.us_data** %5, align 8
  %463 = load i32, i32* %15, align 4
  %464 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %465 = call i32 @usb_stor_bulk_srb(%struct.us_data* %462, i32 %463, %struct.scsi_cmnd* %464)
  store i32 %465, i32* %6, align 4
  %466 = load i32, i32* %6, align 4
  %467 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %468 = icmp eq i32 %466, %467
  br i1 %468, label %469, label %471

469:                                              ; preds = %449
  %470 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  br label %473

471:                                              ; preds = %449
  %472 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  br label %473

473:                                              ; preds = %471, %469
  %474 = phi i32 [ %470, %469 ], [ %472, %471 ]
  store i32 %474, i32* %3, align 4
  br label %477

475:                                              ; preds = %429
  %476 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %476, i32* %3, align 4
  br label %477

477:                                              ; preds = %475, %473, %421, %412, %351, %333, %271, %209, %199, %174, %127, %86, %59, %34
  %478 = load i32, i32* %3, align 4
  ret i32 %478
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @sddr09_get_wp(%struct.us_data*, %struct.sddr09_card_info*) #1

declare dso_local %struct.nand_flash_dev* @sddr09_get_cardinfo(%struct.us_data*, i32) #1

declare dso_local i64 @sddr09_read_map(%struct.us_data*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @short_pack(i32, i32) #1

declare dso_local i32 @sddr09_read_data(%struct.us_data*, i32, i32) #1

declare dso_local i32 @sddr09_write_data(%struct.us_data*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sddr09_send_scsi_command(%struct.us_data*, i32*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @usb_stor_bulk_srb(%struct.us_data*, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
