; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_srb_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_srb_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i32, %struct.ScsiReqBlk*, i32 }
%struct.DeviceCtlBlk = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ScsiReqBlk = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32*, i64*, i32, i64, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.ScsiInqData = type { i32, i32 }
%struct.scatterlist = type { i32 }

@DBG_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"srb_done: (0x%p) <%02i-%i>\0A\00", align 1
@DBG_SG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"srb_done: srb=%p sg=%i(%i/%i) buf=%p\0A\00", align 1
@AUTO_REQSENSE = common dso_local global i32 0, align 4
@DBG_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"srb_done: AUTO_REQSENSE1\0A\00", align 1
@CHECK_CONDITION = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"ReqSense: NOT_READY cmnd=0x%02x <%02i-%i> stat=%i scan=%i \00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"ReqSense: UNIT_ATTENTION cmnd=0x%02x <%02i-%i> stat=%i scan=%i \00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"ReqSense: ILLEGAL_REQUEST cmnd=0x%02x <%02i-%i> stat=%i scan=%i \00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"ReqSense: MEDIUM_ERROR cmnd=0x%02x <%02i-%i> stat=%i scan=%i \00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"ReqSense: HARDWARE_ERROR cmnd=0x%02x <%02i-%i> stat=%i scan=%i \00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"sense=0x%02x ASC=0x%02x ASCQ=0x%02x (0x%08x 0x%08x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"sense=0x%02x No ASC/ASCQ (0x%08x)\0A\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"srb_done: AUTO_REQSENSE2\0A\00", align 1
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@QUEUE_FULL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"QUEUE_FULL for dev <%02i-%i> with %i cmnds\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@SCSI_STAT_SEL_TIMEOUT = common dso_local global i32 0, align 4
@H_SEL_TIMEOUT = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@H_OVER_UNDER_RUN = common dso_local global i32 0, align 4
@PARITY_ERROR = common dso_local global i32 0, align 4
@DID_PARITY = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@RES_DID = common dso_local global i32 0, align 4
@PCI_DMA_NONE = common dso_local global i32 0, align 4
@DBG_KG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [56 x i8] c"srb_done: (0x%p) <%02i-%i> cmnd=0x%02x Missed %i bytes\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"srb_done: (0x%p) done result=0x%08x\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [45 x i8] c"srb_done: ERROR! Completed cmd with tmp_srb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*)* @srb_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srb_done(%struct.AdapterCtlBlk* %0, %struct.DeviceCtlBlk* %1, %struct.ScsiReqBlk* %2) #0 {
  %4 = alloca %struct.AdapterCtlBlk*, align 8
  %5 = alloca %struct.DeviceCtlBlk*, align 8
  %6 = alloca %struct.ScsiReqBlk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ScsiInqData*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %4, align 8
  store %struct.DeviceCtlBlk* %1, %struct.DeviceCtlBlk** %5, align 8
  store %struct.ScsiReqBlk* %2, %struct.ScsiReqBlk** %6, align 8
  %18 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %19 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %18, i32 0, i32 9
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %19, align 8
  store %struct.scsi_cmnd* %20, %struct.scsi_cmnd** %9, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %24 = load i32, i32* @DBG_1, align 4
  %25 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %26 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %25, i32 0, i32 9
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %26, align 8
  %28 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %29 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %28, i32 0, i32 9
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %29, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 6
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %36 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %35, i32 0, i32 9
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %36, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 6
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %27, i32 %34, i32 %42)
  %44 = load i32, i32* @DBG_SG, align 4
  %45 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %47 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %46)
  %48 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %49 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %52 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %55 = call i32 @scsi_sgtalbe(%struct.scsi_cmnd* %54)
  %56 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.ScsiReqBlk* %45, i32 %47, i32 %50, i32 %53, i32 %55)
  %57 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %58 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  %60 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %61 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AUTO_REQSENSE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %279

66:                                               ; preds = %3
  %67 = load i32, i32* @DBG_0, align 4
  %68 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %70 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %71 = call i32 @pci_unmap_srb_sense(%struct.AdapterCtlBlk* %69, %struct.ScsiReqBlk* %70)
  %72 = load i32, i32* @AUTO_REQSENSE, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %75 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %79 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %78, i32 0, i32 2
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* @CHECK_CONDITION, align 4
  %81 = shl i32 %80, 1
  %82 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %83 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @DBG_1, align 4
  %85 = call i64 @debug_enabled(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %231

87:                                               ; preds = %66
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 15
  switch i32 %93, label %184 [
    i32 129, label %94
    i32 128, label %112
    i32 131, label %130
    i32 130, label %148
    i32 132, label %166
  ]

94:                                               ; preds = %87
  %95 = load i32, i32* @KERN_DEBUG, align 4
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %97 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %102 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %105 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %109 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @dprintkl(i32 %95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %100, i32 %103, i32 %106, i32 %107, i32 %110)
  br label %184

112:                                              ; preds = %87
  %113 = load i32, i32* @KERN_DEBUG, align 4
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 2
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %120 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %123 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %127 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @dprintkl(i32 %113, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i64 %118, i32 %121, i32 %124, i32 %125, i32 %128)
  br label %184

130:                                              ; preds = %87
  %131 = load i32, i32* @KERN_DEBUG, align 4
  %132 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %133 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %138 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %141 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %145 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @dprintkl(i32 %131, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i64 %136, i32 %139, i32 %142, i32 %143, i32 %146)
  br label %184

148:                                              ; preds = %87
  %149 = load i32, i32* @KERN_DEBUG, align 4
  %150 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %151 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %150, i32 0, i32 2
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %156 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %159 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %163 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 (i32, i8*, ...) @dprintkl(i32 %149, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 %154, i32 %157, i32 %160, i32 %161, i32 %164)
  br label %184

166:                                              ; preds = %87
  %167 = load i32, i32* @KERN_DEBUG, align 4
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %169 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %168, i32 0, i32 2
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %174 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %177 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %181 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i32, i8*, ...) @dprintkl(i32 %167, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i64 %172, i32 %175, i32 %178, i32 %179, i32 %182)
  br label %184

184:                                              ; preds = %87, %166, %148, %130, %112, %94
  %185 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %186 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 7
  %189 = load i32, i32* %188, align 4
  %190 = icmp sge i32 %189, 6
  br i1 %190, label %191, label %218

191:                                              ; preds = %184
  %192 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %193 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %198 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 12
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %203 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 13
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %208 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %213 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 8
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %196, i32 %201, i32 %206, i32 %211, i32 %216)
  br label %230

218:                                              ; preds = %184
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %220 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %225 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i8*, i32, i32, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %223, i32 %228)
  br label %230

230:                                              ; preds = %218, %191
  br label %231

231:                                              ; preds = %230, %66
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @CHECK_CONDITION, align 4
  %234 = shl i32 %233, 1
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load i32, i32* @DID_BAD_TARGET, align 4
  %238 = shl i32 %237, 16
  %239 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %240 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 8
  br label %429

241:                                              ; preds = %231
  %242 = load i32, i32* @DBG_0, align 4
  %243 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %242, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %244 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %245 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %267

248:                                              ; preds = %241
  %249 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %250 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %253 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = icmp sge i64 %251, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %248
  %257 = load i32, i32* @DRIVER_SENSE, align 4
  %258 = load i32, i32* @DID_OK, align 4
  %259 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %260 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @CHECK_CONDITION, align 4
  %263 = call i8* @MK_RES_LNX(i32 %257, i32 %258, i32 %261, i32 %262)
  %264 = ptrtoint i8* %263 to i32
  %265 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %266 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %265, i32 0, i32 3
  store i32 %264, i32* %266, align 8
  br label %278

267:                                              ; preds = %248, %241
  %268 = load i32, i32* @DRIVER_SENSE, align 4
  %269 = load i32, i32* @DID_OK, align 4
  %270 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %271 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @CHECK_CONDITION, align 4
  %274 = call i8* @MK_RES_LNX(i32 %268, i32 %269, i32 %272, i32 %273)
  %275 = ptrtoint i8* %274 to i32
  %276 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %277 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 8
  br label %278

278:                                              ; preds = %267, %256
  br label %429

279:                                              ; preds = %3
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %373

282:                                              ; preds = %279
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @status_byte(i32 %283)
  %285 = load i32, i32* @CHECK_CONDITION, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %289 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %290 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %291 = call i32 @request_sense(%struct.AdapterCtlBlk* %288, %struct.DeviceCtlBlk* %289, %struct.ScsiReqBlk* %290)
  br label %600

292:                                              ; preds = %282
  %293 = load i32, i32* %8, align 4
  %294 = call i32 @status_byte(i32 %293)
  %295 = load i32, i32* @QUEUE_FULL, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %336

297:                                              ; preds = %292
  %298 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %299 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %298, i32 0, i32 6
  %300 = call i64 @list_size(i32* %299)
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %7, align 4
  %302 = load i32, i32* @KERN_INFO, align 4
  %303 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %304 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %307 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %7, align 4
  %310 = call i32 (i32, i8*, ...) @dprintkl(i32 %302, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i32 %305, i32 %308, i32 %309)
  %311 = load i32, i32* %7, align 4
  %312 = icmp sgt i32 %311, 1
  br i1 %312, label %313, label %316

313:                                              ; preds = %297
  %314 = load i32, i32* %7, align 4
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* %7, align 4
  br label %316

316:                                              ; preds = %313, %297
  %317 = load i32, i32* %7, align 4
  %318 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %319 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 4
  %320 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %321 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %322 = call i32 @free_tag(%struct.DeviceCtlBlk* %320, %struct.ScsiReqBlk* %321)
  %323 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %324 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %323, i32 0, i32 5
  %325 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %326 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %325, i32 0, i32 3
  %327 = call i32 @list_move(i32* %324, i32* %326)
  %328 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %329 = load i32, i32* @HZ, align 4
  %330 = sdiv i32 %329, 20
  %331 = call i32 @waiting_set_timer(%struct.AdapterCtlBlk* %328, i32 %330)
  %332 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %333 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %332, i32 0, i32 2
  store i32 0, i32* %333, align 8
  %334 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %335 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %334, i32 0, i32 0
  store i32 0, i32* %335, align 8
  br label %600

336:                                              ; preds = %292
  %337 = load i32, i32* %8, align 4
  %338 = load i32, i32* @SCSI_STAT_SEL_TIMEOUT, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %350

340:                                              ; preds = %336
  %341 = load i32, i32* @H_SEL_TIMEOUT, align 4
  %342 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %343 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %342, i32 0, i32 2
  store i32 %341, i32* %343, align 8
  %344 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %345 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %344, i32 0, i32 0
  store i32 0, i32* %345, align 8
  %346 = load i32, i32* @DID_NO_CONNECT, align 4
  %347 = shl i32 %346, 16
  %348 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %349 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %348, i32 0, i32 3
  store i32 %347, i32* %349, align 8
  br label %370

350:                                              ; preds = %336
  %351 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %352 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %351, i32 0, i32 2
  store i32 0, i32* %352, align 8
  %353 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %354 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* @DID_ERROR, align 4
  %357 = call i32 @SET_RES_DID(i32 %355, i32 %356)
  %358 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %359 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %362 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @SET_RES_MSG(i32 %360, i32 %363)
  %365 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %366 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* %8, align 4
  %369 = call i32 @SET_RES_TARGET(i32 %367, i32 %368)
  br label %370

370:                                              ; preds = %350, %340
  br label %371

371:                                              ; preds = %370
  br label %372

372:                                              ; preds = %371
  br label %428

373:                                              ; preds = %279
  %374 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %375 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  store i32 %376, i32* %8, align 4
  %377 = load i32, i32* %8, align 4
  %378 = load i32, i32* @H_OVER_UNDER_RUN, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %396

381:                                              ; preds = %373
  %382 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %383 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %382, i32 0, i32 0
  store i32 0, i32* %383, align 8
  %384 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %385 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @DID_OK, align 4
  %388 = call i32 @SET_RES_DID(i32 %386, i32 %387)
  %389 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %390 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %393 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %392, i32 0, i32 6
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @SET_RES_MSG(i32 %391, i32 %394)
  br label %427

396:                                              ; preds = %373
  %397 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %398 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @PARITY_ERROR, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %416

403:                                              ; preds = %396
  %404 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %405 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @DID_PARITY, align 4
  %408 = call i32 @SET_RES_DID(i32 %406, i32 %407)
  %409 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %410 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %413 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %412, i32 0, i32 6
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @SET_RES_MSG(i32 %411, i32 %414)
  br label %426

416:                                              ; preds = %396
  %417 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %418 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %417, i32 0, i32 2
  store i32 0, i32* %418, align 8
  %419 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %420 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %419, i32 0, i32 0
  store i32 0, i32* %420, align 8
  %421 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %422 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = load i32, i32* @DID_OK, align 4
  %425 = call i32 @SET_RES_DID(i32 %423, i32 %424)
  br label %426

426:                                              ; preds = %416, %403
  br label %427

427:                                              ; preds = %426, %381
  br label %428

428:                                              ; preds = %427, %372
  store i32 0, i32* %11, align 4
  br label %429

429:                                              ; preds = %428, %278, %236
  %430 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %431 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %432 = call i32 @pci_unmap_srb(%struct.AdapterCtlBlk* %430, %struct.ScsiReqBlk* %431)
  %433 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %434 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %433, i32 0, i32 2
  %435 = load i64*, i64** %434, align 8
  %436 = getelementptr inbounds i64, i64* %435, i64 0
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @INQUIRY, align 8
  %439 = icmp eq i64 %437, %438
  br i1 %439, label %440, label %524

440:                                              ; preds = %429
  store i8* null, i8** %12, align 8
  store i64 0, i64* %14, align 8
  %441 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %442 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %441)
  store %struct.scatterlist* %442, %struct.scatterlist** %15, align 8
  store i64 0, i64* %16, align 8
  store i64 8, i64* %17, align 8
  %443 = load i64, i64* %14, align 8
  %444 = call i32 @local_irq_save(i64 %443)
  %445 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %446 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %447 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %446)
  %448 = call i8* @scsi_kmap_atomic_sg(%struct.scatterlist* %445, i32 %447, i64* %16, i64* %17)
  store i8* %448, i8** %12, align 8
  %449 = load i8*, i8** %12, align 8
  %450 = load i64, i64* %16, align 8
  %451 = getelementptr inbounds i8, i8* %449, i64 %450
  %452 = bitcast i8* %451 to %struct.ScsiInqData*
  store %struct.ScsiInqData* %452, %struct.ScsiInqData** %13, align 8
  %453 = load i32, i32* %11, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %492, label %455

455:                                              ; preds = %440
  %456 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %457 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* @RES_DID, align 4
  %460 = and i32 %458, %459
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %492

462:                                              ; preds = %455
  %463 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %464 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %463, i32 0, i32 2
  %465 = load i64*, i64** %464, align 8
  %466 = getelementptr inbounds i64, i64* %465, i64 2
  %467 = load i64, i64* %466, align 8
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %492

469:                                              ; preds = %462
  %470 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %471 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %470)
  %472 = icmp sge i32 %471, 8
  br i1 %472, label %473, label %492

473:                                              ; preds = %469
  %474 = load i32, i32* %10, align 4
  %475 = load i32, i32* @PCI_DMA_NONE, align 4
  %476 = icmp ne i32 %474, %475
  br i1 %476, label %477, label %492

477:                                              ; preds = %473
  %478 = load %struct.ScsiInqData*, %struct.ScsiInqData** %13, align 8
  %479 = icmp ne %struct.ScsiInqData* %478, null
  br i1 %479, label %480, label %492

480:                                              ; preds = %477
  %481 = load %struct.ScsiInqData*, %struct.ScsiInqData** %13, align 8
  %482 = getelementptr inbounds %struct.ScsiInqData, %struct.ScsiInqData* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = and i32 %483, 7
  %485 = icmp sge i32 %484, 2
  br i1 %485, label %486, label %492

486:                                              ; preds = %480
  %487 = load %struct.ScsiInqData*, %struct.ScsiInqData** %13, align 8
  %488 = getelementptr inbounds %struct.ScsiInqData, %struct.ScsiInqData* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %491 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %490, i32 0, i32 2
  store i32 %489, i32* %491, align 4
  br label %492

492:                                              ; preds = %486, %480, %477, %473, %469, %462, %455, %440
  %493 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %494 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %493, i32 0, i32 3
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @DID_OK, align 4
  %497 = shl i32 %496, 16
  %498 = icmp eq i32 %495, %497
  br i1 %498, label %506, label %499

499:                                              ; preds = %492
  %500 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %501 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %500, i32 0, i32 3
  %502 = load i32, i32* %501, align 8
  %503 = call i32 @status_byte(i32 %502)
  %504 = load i32, i32* @CHECK_CONDITION, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %519

506:                                              ; preds = %499, %492
  %507 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %508 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %518, label %511

511:                                              ; preds = %506
  %512 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %513 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %514 = load %struct.ScsiInqData*, %struct.ScsiInqData** %13, align 8
  %515 = call i32 @add_dev(%struct.AdapterCtlBlk* %512, %struct.DeviceCtlBlk* %513, %struct.ScsiInqData* %514)
  %516 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %5, align 8
  %517 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %516, i32 0, i32 1
  store i32 1, i32* %517, align 4
  br label %518

518:                                              ; preds = %511, %506
  br label %519

519:                                              ; preds = %518, %499
  %520 = load i8*, i8** %12, align 8
  %521 = call i32 @scsi_kunmap_atomic_sg(i8* %520)
  %522 = load i64, i64* %14, align 8
  %523 = call i32 @local_irq_restore(i64 %522)
  br label %524

524:                                              ; preds = %519, %429
  %525 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %526 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %527 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %526, i32 0, i32 3
  %528 = load i64, i64* %527, align 8
  %529 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %525, i64 %528)
  %530 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %531 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %530, i32 0, i32 3
  %532 = load i64, i64* %531, align 8
  %533 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %534 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %533, i32 0, i32 7
  %535 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %534, i32 0, i32 0
  store i64 %532, i64* %535, align 8
  %536 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %537 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %536, i32 0, i32 7
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 1
  store i64 0, i64* %538, align 8
  %539 = load i32, i32* @DBG_KG, align 4
  %540 = call i64 @debug_enabled(i32 %539)
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %571

542:                                              ; preds = %524
  %543 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %544 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %543, i32 0, i32 3
  %545 = load i64, i64* %544, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %570

547:                                              ; preds = %542
  %548 = load i32, i32* @DBG_KG, align 4
  %549 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %550 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %551 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %550, i32 0, i32 6
  %552 = load %struct.TYPE_4__*, %struct.TYPE_4__** %551, align 8
  %553 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 8
  %555 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %556 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %555, i32 0, i32 6
  %557 = load %struct.TYPE_4__*, %struct.TYPE_4__** %556, align 8
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = trunc i64 %559 to i32
  %561 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %562 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %561, i32 0, i32 2
  %563 = load i64*, i64** %562, align 8
  %564 = getelementptr inbounds i64, i64* %563, i64 0
  %565 = load i64, i64* %564, align 8
  %566 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %567 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %566, i32 0, i32 3
  %568 = load i64, i64* %567, align 8
  %569 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %548, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), %struct.scsi_cmnd* %549, i32 %554, i32 %560, i64 %565, i64 %568)
  br label %570

570:                                              ; preds = %547, %542
  br label %571

571:                                              ; preds = %570, %524
  %572 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %573 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %574 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %573, i32 0, i32 1
  %575 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %574, align 8
  %576 = icmp ne %struct.ScsiReqBlk* %572, %575
  br i1 %576, label %577, label %589

577:                                              ; preds = %571
  %578 = load i32, i32* @DBG_0, align 4
  %579 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %580 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %581 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %580, i32 0, i32 3
  %582 = load i32, i32* %581, align 8
  %583 = call i32 (i32, i8*, ...) @dprintkdbg(i32 %578, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), %struct.scsi_cmnd* %579, i32 %582)
  %584 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %6, align 8
  %585 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %584, i32 0, i32 5
  %586 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %587 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %586, i32 0, i32 0
  %588 = call i32 @list_move_tail(i32* %585, i32* %587)
  br label %592

589:                                              ; preds = %571
  %590 = load i32, i32* @KERN_ERR, align 4
  %591 = call i32 (i32, i8*, ...) @dprintkl(i32 %590, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0))
  br label %592

592:                                              ; preds = %589, %577
  %593 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %594 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %593, i32 0, i32 5
  %595 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %594, align 8
  %596 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %597 = call i32 %595(%struct.scsi_cmnd* %596)
  %598 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %4, align 8
  %599 = call i32 @waiting_process_next(%struct.AdapterCtlBlk* %598)
  br label %600

600:                                              ; preds = %592, %316, %287
  ret void
}

declare dso_local i32 @dprintkdbg(i32, i8*, ...) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sgtalbe(%struct.scsi_cmnd*) #1

declare dso_local i32 @pci_unmap_srb_sense(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i64 @debug_enabled(i32) #1

declare dso_local i32 @dprintkl(i32, i8*, ...) #1

declare dso_local i32 @printk(i8*, i32, i32, ...) #1

declare dso_local i8* @MK_RES_LNX(i32, i32, i32, i32) #1

declare dso_local i32 @status_byte(i32) #1

declare dso_local i32 @request_sense(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i64 @list_size(i32*) #1

declare dso_local i32 @free_tag(%struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @waiting_set_timer(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @SET_RES_DID(i32, i32) #1

declare dso_local i32 @SET_RES_MSG(i32, i32) #1

declare dso_local i32 @SET_RES_TARGET(i32, i32) #1

declare dso_local i32 @pci_unmap_srb(%struct.AdapterCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @scsi_kmap_atomic_sg(%struct.scatterlist*, i32, i64*, i64*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @add_dev(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiInqData*) #1

declare dso_local i32 @scsi_kunmap_atomic_sg(i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @waiting_process_next(%struct.AdapterCtlBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
