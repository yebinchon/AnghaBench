; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_scsi_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_scsi_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32, i32, %struct.ahd_dma_seg*, i64, %struct.hardware_scb* }
%struct.ahd_dma_seg = type { i32 }
%struct.hardware_scb = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_status_iu_header = type { i32, i32, i32, i32 }
%struct.ahd_devinfo = type { i32, i32, i32, i32 }
%struct.scsi_sense = type { i32, i32, i32, i32*, i32 }
%struct.ahd_initiator_tinfo = type { %struct.ahd_transinfo }
%struct.ahd_transinfo = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }

@KERNEL_QFREEZE_COUNT = common dso_local global i32 0, align 4
@SCB_SENSE = common dso_local global i32 0, align 4
@CAM_AUTOSENSE_FAIL = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@SIU_RSPVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to parse pkt_failures\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"No packet failure found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Invalid Command IU Field\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"TMF not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"TMF failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Invalid L_Q Type code\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Illegal request\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@SIU_SNSVALID = common dso_local global i32 0, align 4
@SCB_PKT_SENSE = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SCSI_REV_2 = common dso_local global i32 0, align 4
@AHD_NEG_IF_NON_ASYNC = common dso_local global i32 0, align 4
@MK_MESSAGE = common dso_local global i32 0, align 4
@SCB_NEGOTIATE = common dso_local global i32 0, align 4
@SCB_ABORT = common dso_local global i32 0, align 4
@SCB_DEVICE_RESET = common dso_local global i32 0, align 4
@SCB_AUTO_NEGOTIATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"%s: Interrupted for status of 0???\0A\00", align 1
@AHD_SHOW_SENSE = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.scb*)* @ahd_handle_scsi_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_handle_scsi_status(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.hardware_scb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_status_iu_header*, align 8
  %8 = alloca %struct.ahd_devinfo, align 4
  %9 = alloca %struct.ahd_dma_seg*, align 8
  %10 = alloca %struct.scsi_sense*, align 8
  %11 = alloca %struct.ahd_initiator_tinfo*, align 8
  %12 = alloca %struct.ahd_tmode_tstate*, align 8
  %13 = alloca %struct.ahd_transinfo*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %14 = load %struct.scb*, %struct.scb** %4, align 8
  %15 = getelementptr inbounds %struct.scb, %struct.scb* %14, i32 0, i32 4
  %16 = load %struct.hardware_scb*, %struct.hardware_scb** %15, align 8
  store %struct.hardware_scb* %16, %struct.hardware_scb** %5, align 8
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %18 = call i64 @ahd_is_paused(%struct.ahd_softc* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %24

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %23 = call i32 @ahd_pause(%struct.ahd_softc* %22)
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %26 = load %struct.scb*, %struct.scb** %4, align 8
  %27 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %25, %struct.scb* %26)
  %28 = load %struct.scb*, %struct.scb** %4, align 8
  %29 = call i32 @ahd_freeze_scb(%struct.scb* %28)
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %35 = load i32, i32* @KERNEL_QFREEZE_COUNT, align 4
  %36 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ahd_outw(%struct.ahd_softc* %34, i32 %35, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %44 = call i32 @ahd_unpause(%struct.ahd_softc* %43)
  br label %45

45:                                               ; preds = %42, %24
  %46 = load %struct.scb*, %struct.scb** %4, align 8
  %47 = getelementptr inbounds %struct.scb, %struct.scb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SCB_SENSE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load i32, i32* @SCB_SENSE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.scb*, %struct.scb** %4, align 8
  %56 = getelementptr inbounds %struct.scb, %struct.scb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.scb*, %struct.scb** %4, align 8
  %60 = load i32, i32* @CAM_AUTOSENSE_FAIL, align 4
  %61 = call i32 @ahd_set_transaction_status(%struct.scb* %59, i32 %60)
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %63 = load %struct.scb*, %struct.scb** %4, align 8
  %64 = call i32 @ahd_done(%struct.ahd_softc* %62, %struct.scb* %63)
  br label %309

65:                                               ; preds = %45
  %66 = load %struct.scb*, %struct.scb** %4, align 8
  %67 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %68 = call i32 @ahd_set_transaction_status(%struct.scb* %66, i32 %67)
  %69 = load %struct.scb*, %struct.scb** %4, align 8
  %70 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %71 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ahd_set_scsi_status(%struct.scb* %69, i32 %74)
  %76 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %77 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %305 [
    i32 128, label %81
    i32 136, label %156
    i32 137, label %156
    i32 135, label %301
  ]

81:                                               ; preds = %65
  %82 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %83 = load %struct.scb*, %struct.scb** %4, align 8
  %84 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %85 = call i32 @ahd_sync_sense(%struct.ahd_softc* %82, %struct.scb* %83, i32 %84)
  %86 = load %struct.scb*, %struct.scb** %4, align 8
  %87 = getelementptr inbounds %struct.scb, %struct.scb* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.scsi_status_iu_header*
  store %struct.scsi_status_iu_header* %89, %struct.scsi_status_iu_header** %7, align 8
  %90 = load %struct.scb*, %struct.scb** %4, align 8
  %91 = load %struct.scsi_status_iu_header*, %struct.scsi_status_iu_header** %7, align 8
  %92 = getelementptr inbounds %struct.scsi_status_iu_header, %struct.scsi_status_iu_header* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ahd_set_scsi_status(%struct.scb* %90, i32 %93)
  %95 = load %struct.scsi_status_iu_header*, %struct.scsi_status_iu_header** %7, align 8
  %96 = getelementptr inbounds %struct.scsi_status_iu_header, %struct.scsi_status_iu_header* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SIU_RSPVALID, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %81
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %103 = load %struct.scb*, %struct.scb** %4, align 8
  %104 = call i32 @ahd_print_path(%struct.ahd_softc* %102, %struct.scb* %103)
  %105 = load %struct.scsi_status_iu_header*, %struct.scsi_status_iu_header** %7, align 8
  %106 = getelementptr inbounds %struct.scsi_status_iu_header, %struct.scsi_status_iu_header* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @scsi_4btoul(i32 %107)
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %129

112:                                              ; preds = %101
  %113 = load %struct.scsi_status_iu_header*, %struct.scsi_status_iu_header** %7, align 8
  %114 = call i32 @SIU_PKTFAIL_CODE(%struct.scsi_status_iu_header* %113)
  switch i32 %114, label %127 [
    i32 131, label %115
    i32 134, label %117
    i32 129, label %119
    i32 130, label %121
    i32 132, label %123
    i32 133, label %125
  ]

115:                                              ; preds = %112
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %128

117:                                              ; preds = %112
  %118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %128

119:                                              ; preds = %112
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %128

121:                                              ; preds = %112
  %122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %128

123:                                              ; preds = %112
  %124 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %128

125:                                              ; preds = %112
  %126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %112, %125
  br label %128

128:                                              ; preds = %127, %123, %121, %119, %117, %115
  br label %129

129:                                              ; preds = %128, %110
  %130 = load %struct.scsi_status_iu_header*, %struct.scsi_status_iu_header** %7, align 8
  %131 = getelementptr inbounds %struct.scsi_status_iu_header, %struct.scsi_status_iu_header* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 135
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.scb*, %struct.scb** %4, align 8
  %136 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %137 = call i32 @ahd_set_transaction_status(%struct.scb* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %129
  br label %139

139:                                              ; preds = %138, %81
  %140 = load %struct.scsi_status_iu_header*, %struct.scsi_status_iu_header** %7, align 8
  %141 = getelementptr inbounds %struct.scsi_status_iu_header, %struct.scsi_status_iu_header* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SIU_SNSVALID, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* @SCB_PKT_SENSE, align 4
  %148 = load %struct.scb*, %struct.scb** %4, align 8
  %149 = getelementptr inbounds %struct.scb, %struct.scb* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %139
  %153 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %154 = load %struct.scb*, %struct.scb** %4, align 8
  %155 = call i32 @ahd_done(%struct.ahd_softc* %153, %struct.scb* %154)
  br label %309

156:                                              ; preds = %65, %65
  %157 = load %struct.scb*, %struct.scb** %4, align 8
  %158 = call i32 @ahd_perform_autosense(%struct.scb* %157)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %309

161:                                              ; preds = %156
  %162 = load %struct.scb*, %struct.scb** %4, align 8
  %163 = call i32 @SCB_GET_OUR_ID(%struct.scb* %162)
  %164 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %165 = load %struct.scb*, %struct.scb** %4, align 8
  %166 = call i32 @SCB_GET_TARGET(%struct.ahd_softc* %164, %struct.scb* %165)
  %167 = load %struct.scb*, %struct.scb** %4, align 8
  %168 = call i32 @SCB_GET_LUN(%struct.scb* %167)
  %169 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %170 = load %struct.scb*, %struct.scb** %4, align 8
  %171 = call i32 @SCB_GET_CHANNEL(%struct.ahd_softc* %169, %struct.scb* %170)
  %172 = load i32, i32* @ROLE_INITIATOR, align 4
  %173 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %8, i32 %163, i32 %166, i32 %168, i32 %171, i32 %172)
  %174 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %175 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %8, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %8, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %8, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %174, i32 %176, i32 %178, i32 %180, %struct.ahd_tmode_tstate** %12)
  store %struct.ahd_initiator_tinfo* %181, %struct.ahd_initiator_tinfo** %11, align 8
  %182 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %11, align 8
  %183 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %182, i32 0, i32 0
  store %struct.ahd_transinfo* %183, %struct.ahd_transinfo** %13, align 8
  %184 = load %struct.scb*, %struct.scb** %4, align 8
  %185 = getelementptr inbounds %struct.scb, %struct.scb* %184, i32 0, i32 2
  %186 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %185, align 8
  store %struct.ahd_dma_seg* %186, %struct.ahd_dma_seg** %9, align 8
  %187 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %188 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to %struct.scsi_sense*
  store %struct.scsi_sense* %192, %struct.scsi_sense** %10, align 8
  %193 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %194 = load %struct.scb*, %struct.scb** %4, align 8
  %195 = call i32 @ahd_update_residual(%struct.ahd_softc* %193, %struct.scb* %194)
  %196 = load %struct.scb*, %struct.scb** %4, align 8
  %197 = getelementptr inbounds %struct.scb, %struct.scb* %196, i32 0, i32 1
  store i32 0, i32* %197, align 4
  %198 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %199 = load %struct.scb*, %struct.scb** %4, align 8
  %200 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %9, align 8
  %201 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %202 = load %struct.scb*, %struct.scb** %4, align 8
  %203 = call i32 @ahd_get_sense_bufaddr(%struct.ahd_softc* %201, %struct.scb* %202)
  %204 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %205 = load %struct.scb*, %struct.scb** %4, align 8
  %206 = call i32 @ahd_get_sense_bufsize(%struct.ahd_softc* %204, %struct.scb* %205)
  %207 = load i32, i32* @TRUE, align 4
  %208 = call %struct.ahd_dma_seg* @ahd_sg_setup(%struct.ahd_softc* %198, %struct.scb* %199, %struct.ahd_dma_seg* %200, i32 %203, i32 %206, i32 %207)
  store %struct.ahd_dma_seg* %208, %struct.ahd_dma_seg** %9, align 8
  %209 = load i32, i32* @REQUEST_SENSE, align 4
  %210 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %211 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 8
  %212 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %213 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %212, i32 0, i32 0
  store i32 0, i32* %213, align 8
  %214 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %13, align 8
  %215 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @SCSI_REV_2, align 4
  %218 = icmp sle i32 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %161
  %220 = load %struct.scb*, %struct.scb** %4, align 8
  %221 = call i32 @SCB_GET_LUN(%struct.scb* %220)
  %222 = icmp slt i32 %221, 8
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load %struct.scb*, %struct.scb** %4, align 8
  %225 = call i32 @SCB_GET_LUN(%struct.scb* %224)
  %226 = shl i32 %225, 5
  %227 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %228 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  br label %229

229:                                              ; preds = %223, %219, %161
  %230 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %231 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 0, i32* %233, align 4
  %234 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %235 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %234, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  store i32 0, i32* %237, align 4
  %238 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %239 = load %struct.scb*, %struct.scb** %4, align 8
  %240 = call i32 @ahd_get_sense_bufsize(%struct.ahd_softc* %238, %struct.scb* %239)
  %241 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %242 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.scsi_sense*, %struct.scsi_sense** %10, align 8
  %244 = getelementptr inbounds %struct.scsi_sense, %struct.scsi_sense* %243, i32 0, i32 1
  store i32 0, i32* %244, align 4
  %245 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %246 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %245, i32 0, i32 1
  store i32 0, i32* %246, align 4
  %247 = load %struct.scb*, %struct.scb** %4, align 8
  %248 = call i32 @ahd_get_residual(%struct.scb* %247)
  %249 = load %struct.scb*, %struct.scb** %4, align 8
  %250 = call i32 @ahd_get_transfer_length(%struct.scb* %249)
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %229
  %253 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %254 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %12, align 8
  %255 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %11, align 8
  %256 = load i32, i32* @AHD_NEG_IF_NON_ASYNC, align 4
  %257 = call i32 @ahd_update_neg_request(%struct.ahd_softc* %253, %struct.ahd_devinfo* %8, %struct.ahd_tmode_tstate* %254, %struct.ahd_initiator_tinfo* %255, i32 %256)
  br label %258

258:                                              ; preds = %252, %229
  %259 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %12, align 8
  %260 = getelementptr inbounds %struct.ahd_tmode_tstate, %struct.ahd_tmode_tstate* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %8, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %261, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %287

266:                                              ; preds = %258
  %267 = load i32, i32* @MK_MESSAGE, align 4
  %268 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %269 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* @SCB_NEGOTIATE, align 4
  %273 = load i32, i32* @SCB_ABORT, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @SCB_DEVICE_RESET, align 4
  %276 = or i32 %274, %275
  %277 = xor i32 %276, -1
  %278 = load %struct.scb*, %struct.scb** %4, align 8
  %279 = getelementptr inbounds %struct.scb, %struct.scb* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load i32, i32* @SCB_AUTO_NEGOTIATE, align 4
  %283 = load %struct.scb*, %struct.scb** %4, align 8
  %284 = getelementptr inbounds %struct.scb, %struct.scb* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %266, %258
  %288 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %289 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %288, i32 0, i32 0
  store i32 32, i32* %289, align 8
  %290 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %291 = load %struct.scb*, %struct.scb** %4, align 8
  %292 = call i32 @ahd_setup_data_scb(%struct.ahd_softc* %290, %struct.scb* %291)
  %293 = load i32, i32* @SCB_SENSE, align 4
  %294 = load %struct.scb*, %struct.scb** %4, align 8
  %295 = getelementptr inbounds %struct.scb, %struct.scb* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  %298 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %299 = load %struct.scb*, %struct.scb** %4, align 8
  %300 = call i32 @ahd_queue_scb(%struct.ahd_softc* %298, %struct.scb* %299)
  br label %309

301:                                              ; preds = %65
  %302 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %303 = call i32 @ahd_name(%struct.ahd_softc* %302)
  %304 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %303)
  br label %305

305:                                              ; preds = %65, %301
  %306 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %307 = load %struct.scb*, %struct.scb** %4, align 8
  %308 = call i32 @ahd_done(%struct.ahd_softc* %306, %struct.scb* %307)
  br label %309

309:                                              ; preds = %52, %305, %287, %160, %152
  ret void
}

declare dso_local i64 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_freeze_devq(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_freeze_scb(%struct.scb*) #1

declare dso_local i32 @ahd_outw(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_done(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_set_scsi_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_sync_sense(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @SIU_PKTFAIL_CODE(%struct.scsi_status_iu_header*) #1

declare dso_local i32 @ahd_perform_autosense(%struct.scb*) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SCB_GET_OUR_ID(%struct.scb*) #1

declare dso_local i32 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @SCB_GET_CHANNEL(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_update_residual(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local %struct.ahd_dma_seg* @ahd_sg_setup(%struct.ahd_softc*, %struct.scb*, %struct.ahd_dma_seg*, i32, i32, i32) #1

declare dso_local i32 @ahd_get_sense_bufaddr(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_get_sense_bufsize(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_get_residual(%struct.scb*) #1

declare dso_local i32 @ahd_get_transfer_length(%struct.scb*) #1

declare dso_local i32 @ahd_update_neg_request(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.ahd_tmode_tstate*, %struct.ahd_initiator_tinfo*, i32) #1

declare dso_local i32 @ahd_setup_data_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_queue_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_name(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
