; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_hw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_hw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_phy*, %struct.TYPE_2__*, i32, %struct.pm8001_port*, %struct.sas_ha_struct* }
%struct.pm8001_phy = type { i32*, i32, %struct.asd_sas_phy, i32, i32 }
%struct.asd_sas_phy = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.pm8001_port = type { i32 }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)*, %struct.asd_sas_phy** }
%struct.asd_sas_phy.0 = type opaque
%struct.asd_sas_phy.1 = type opaque
%struct.hw_event_resp = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"portid:%d phyid:%d event:0x%x status:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"HW_EVENT_PHY_START_STATUS\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"HW_EVENT_SATA_PHY_UP\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"HW_EVENT_SATA_SPINUP_HOLD\0A\00", align 1
@PHYE_SPINUP_HOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"HW_EVENT_PHY_DOWN\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Reset in progress\0A\00", align 1
@PHY_LINK_DISABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"HW_EVENT_PORT_INVALID\0A\00", align 1
@PORTE_LINK_RESET_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"HW_EVENT_BROADCAST_CHANGE\0A\00", align 1
@PORTE_BROADCAST_RCVD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"HW_EVENT_PHY_ERROR\0A\00", align 1
@PHYE_OOB_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"HW_EVENT_BROADCAST_EXP\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"HW_EVENT_LINK_ERR_INVALID_DWORD\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"HW_EVENT_LINK_ERR_DISPARITY_ERROR\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"HW_EVENT_LINK_ERR_CODE_VIOLATION\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"HW_EVENT_LINK_ERR_LOSS_OF_DWORD_SYNCH\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"HW_EVENT_MALFUNCTION\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"HW_EVENT_BROADCAST_SES\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"HW_EVENT_INBOUND_CRC_ERROR\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"HW_EVENT_HARD_RESET_RECEIVED\0A\00", align 1
@PORTE_HARD_RESET = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"HW_EVENT_ID_FRAME_TIMEOUT\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"HW_EVENT_LINK_ERR_PHY_RESET_FAILED\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"HW_EVENT_PORT_RESET_TIMER_TMO\0A\00", align 1
@PORT_RESET_TMO = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"HW_EVENT_PORT_RECOVERY_TIMER_TMO\0A\00", align 1
@PHYE_LOSS_OF_SIGNAL = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [23 x i8] c"HW_EVENT_PORT_RECOVER\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"HW_EVENT_PORT_RESET_COMPLETE\0A\00", align 1
@PORT_RESET_SUCCESS = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [30 x i8] c"EVENT_BROADCAST_ASYNCH_EVENT\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Unknown event type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i8*)* @mpi_hw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_hw_event(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hw_event_resp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.sas_ha_struct*, align 8
  %16 = alloca %struct.pm8001_phy*, align 8
  %17 = alloca %struct.pm8001_port*, align 8
  %18 = alloca %struct.asd_sas_phy*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr i8, i8* %19, i64 4
  %21 = bitcast i8* %20 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %21, %struct.hw_event_resp** %8, align 8
  %22 = load %struct.hw_event_resp*, %struct.hw_event_resp** %8, align 8
  %23 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.hw_event_resp*, %struct.hw_event_resp** %8, align 8
  %27 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %11, align 8
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 16711680
  %35 = ashr i32 %34, 16
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 16776960
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 251658240
  %42 = ashr i32 %41, 24
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %14, align 8
  %44 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %45 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %44, i32 0, i32 4
  %46 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %45, align 8
  store %struct.sas_ha_struct* %46, %struct.sas_ha_struct** %15, align 8
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %48 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %47, i32 0, i32 0
  %49 = load %struct.pm8001_phy*, %struct.pm8001_phy** %48, align 8
  %50 = load i64, i64* %12, align 8
  %51 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %49, i64 %50
  store %struct.pm8001_phy* %51, %struct.pm8001_phy** %16, align 8
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %53 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %52, i32 0, i32 3
  %54 = load %struct.pm8001_port*, %struct.pm8001_port** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %54, i64 %55
  store %struct.pm8001_port* %56, %struct.pm8001_port** %17, align 8
  %57 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %58 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %57, i32 0, i32 2
  %59 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %59, i64 %60
  %62 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %61, align 8
  store %struct.asd_sas_phy* %62, %struct.asd_sas_phy** %18, align 8
  %63 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i64, i64* %14, align 8
  %68 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %65, i32 %66, i64 %67)
  %69 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %63, i32 %68)
  %70 = load i32, i32* %13, align 4
  switch i32 %70, label %454 [
    i32 130, label %71
    i32 129, label %78
    i32 128, label %85
    i32 137, label %97
    i32 135, label %118
    i32 149, label %133
    i32 136, label %158
    i32 148, label %175
    i32 141, label %196
    i32 142, label %204
    i32 143, label %212
    i32 140, label %220
    i32 138, label %228
    i32 147, label %232
    i32 144, label %253
    i32 146, label %261
    i32 145, label %272
    i32 139, label %287
    i32 131, label %306
    i32 133, label %356
    i32 134, label %408
    i32 132, label %415
    i32 150, label %450
  ]

71:                                               ; preds = %2
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %73 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %72, i32 %73)
  %75 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = call i32 @hw_event_sas_phy_up(%struct.pm8001_hba_info* %75, i8* %76)
  br label %459

78:                                               ; preds = %2
  %79 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %80 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %79, i32 %80)
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @hw_event_sata_phy_up(%struct.pm8001_hba_info* %82, i8* %83)
  br label %459

85:                                               ; preds = %2
  %86 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %87 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %88 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %86, i32 %87)
  %89 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %90 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %89, i32 0, i32 0
  %91 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %90, align 8
  %92 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %93 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %92, i32 0, i32 2
  %94 = bitcast %struct.asd_sas_phy* %93 to %struct.asd_sas_phy.0*
  %95 = load i32, i32* @PHYE_SPINUP_HOLD, align 4
  %96 = call i32 %91(%struct.asd_sas_phy.0* %94, i32 %95)
  br label %459

97:                                               ; preds = %2
  %98 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %99 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %100 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %98, i32 %99)
  %101 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @hw_event_phy_down(%struct.pm8001_hba_info* %101, i8* %102)
  %104 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %105 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %110 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %111 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %109, i32 %110)
  store i32 0, i32* %3, align 4
  br label %460

112:                                              ; preds = %97
  %113 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %114 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %113, i32 0, i32 3
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* @PHY_LINK_DISABLE, align 4
  %116 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %117 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  br label %459

118:                                              ; preds = %2
  %119 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %120 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %121 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %119, i32 %120)
  %122 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %123 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %122)
  %124 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %125 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %124, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %127 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %126, i32 0, i32 1
  %128 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %127, align 8
  %129 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %130 = bitcast %struct.asd_sas_phy* %129 to %struct.asd_sas_phy.1*
  %131 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %132 = call i32 %128(%struct.asd_sas_phy.1* %130, i32 %131)
  br label %459

133:                                              ; preds = %2
  %134 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %135 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %136 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %134, i32 %135)
  %137 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %137, i32 0, i32 149, i64 %138, i64 %139, i32 1, i32 0)
  %141 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %142 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %141, i32 0, i32 1
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @spin_lock_irqsave(i32* %142, i64 %143)
  %145 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %146 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %145, i32 0, i32 0
  store i32 149, i32* %146, align 4
  %147 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %148 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %147, i32 0, i32 1
  %149 = load i64, i64* %6, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %152 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %151, i32 0, i32 1
  %153 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %152, align 8
  %154 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %155 = bitcast %struct.asd_sas_phy* %154 to %struct.asd_sas_phy.1*
  %156 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %157 = call i32 %153(%struct.asd_sas_phy.1* %155, i32 %156)
  br label %459

158:                                              ; preds = %2
  %159 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %160 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %161 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %159, i32 %160)
  %162 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %163 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %162, i32 0, i32 2
  %164 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %163)
  %165 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %166 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %165, i32 0, i32 3
  store i32 0, i32* %166, align 4
  %167 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %168 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %167, i32 0, i32 0
  %169 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %168, align 8
  %170 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %171 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %170, i32 0, i32 2
  %172 = bitcast %struct.asd_sas_phy* %171 to %struct.asd_sas_phy.0*
  %173 = load i32, i32* @PHYE_OOB_ERROR, align 4
  %174 = call i32 %169(%struct.asd_sas_phy.0* %172, i32 %173)
  br label %459

175:                                              ; preds = %2
  %176 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %177 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %178 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %176, i32 %177)
  %179 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %180 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %179, i32 0, i32 1
  %181 = load i64, i64* %6, align 8
  %182 = call i32 @spin_lock_irqsave(i32* %180, i64 %181)
  %183 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %184 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %183, i32 0, i32 0
  store i32 148, i32* %184, align 4
  %185 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %186 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %185, i32 0, i32 1
  %187 = load i64, i64* %6, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %190 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %189, i32 0, i32 1
  %191 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %190, align 8
  %192 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %193 = bitcast %struct.asd_sas_phy* %192 to %struct.asd_sas_phy.1*
  %194 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %195 = call i32 %191(%struct.asd_sas_phy.1* %193, i32 %194)
  br label %459

196:                                              ; preds = %2
  %197 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %198 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %199 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %197, i32 %198)
  %200 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %201 = load i64, i64* %11, align 8
  %202 = load i64, i64* %12, align 8
  %203 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %200, i32 0, i32 141, i64 %201, i64 %202, i32 0, i32 0)
  br label %459

204:                                              ; preds = %2
  %205 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %206 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %207 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %205, i32 %206)
  %208 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %209 = load i64, i64* %11, align 8
  %210 = load i64, i64* %12, align 8
  %211 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %208, i32 0, i32 142, i64 %209, i64 %210, i32 0, i32 0)
  br label %459

212:                                              ; preds = %2
  %213 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %214 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %215 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %213, i32 %214)
  %216 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %217 = load i64, i64* %11, align 8
  %218 = load i64, i64* %12, align 8
  %219 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %216, i32 0, i32 143, i64 %217, i64 %218, i32 0, i32 0)
  br label %459

220:                                              ; preds = %2
  %221 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %222 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %223 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %221, i32 %222)
  %224 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* %12, align 8
  %227 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %224, i32 0, i32 140, i64 %225, i64 %226, i32 0, i32 0)
  br label %459

228:                                              ; preds = %2
  %229 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %230 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %231 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %229, i32 %230)
  br label %459

232:                                              ; preds = %2
  %233 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %234 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %235 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %233, i32 %234)
  %236 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %237 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %236, i32 0, i32 1
  %238 = load i64, i64* %6, align 8
  %239 = call i32 @spin_lock_irqsave(i32* %237, i64 %238)
  %240 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %241 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %240, i32 0, i32 0
  store i32 147, i32* %241, align 4
  %242 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %243 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %242, i32 0, i32 1
  %244 = load i64, i64* %6, align 8
  %245 = call i32 @spin_unlock_irqrestore(i32* %243, i64 %244)
  %246 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %247 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %246, i32 0, i32 1
  %248 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %247, align 8
  %249 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %250 = bitcast %struct.asd_sas_phy* %249 to %struct.asd_sas_phy.1*
  %251 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %252 = call i32 %248(%struct.asd_sas_phy.1* %250, i32 %251)
  br label %459

253:                                              ; preds = %2
  %254 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %255 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %256 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %254, i32 %255)
  %257 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %258 = load i64, i64* %11, align 8
  %259 = load i64, i64* %12, align 8
  %260 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %257, i32 0, i32 144, i64 %258, i64 %259, i32 0, i32 0)
  br label %459

261:                                              ; preds = %2
  %262 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %263 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %264 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %262, i32 %263)
  %265 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %266 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %265, i32 0, i32 1
  %267 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %266, align 8
  %268 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %269 = bitcast %struct.asd_sas_phy* %268 to %struct.asd_sas_phy.1*
  %270 = load i32, i32* @PORTE_HARD_RESET, align 4
  %271 = call i32 %267(%struct.asd_sas_phy.1* %269, i32 %270)
  br label %459

272:                                              ; preds = %2
  %273 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %274 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  %275 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %273, i32 %274)
  %276 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %277 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %276)
  %278 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %279 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %278, i32 0, i32 3
  store i32 0, i32* %279, align 4
  %280 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %281 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %280, i32 0, i32 1
  %282 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %281, align 8
  %283 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %284 = bitcast %struct.asd_sas_phy* %283 to %struct.asd_sas_phy.1*
  %285 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %286 = call i32 %282(%struct.asd_sas_phy.1* %284, i32 %285)
  br label %459

287:                                              ; preds = %2
  %288 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %289 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0))
  %290 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %288, i32 %289)
  %291 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %292 = load i64, i64* %11, align 8
  %293 = load i64, i64* %12, align 8
  %294 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %291, i32 0, i32 139, i64 %292, i64 %293, i32 0, i32 0)
  %295 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %296 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %295)
  %297 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %298 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %297, i32 0, i32 3
  store i32 0, i32* %298, align 4
  %299 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %300 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %299, i32 0, i32 1
  %301 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %300, align 8
  %302 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %303 = bitcast %struct.asd_sas_phy* %302 to %struct.asd_sas_phy.1*
  %304 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %305 = call i32 %301(%struct.asd_sas_phy.1* %303, i32 %304)
  br label %459

306:                                              ; preds = %2
  %307 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %308 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %309 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %307, i32 %308)
  %310 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %311 = load i64, i64* %11, align 8
  %312 = load i64, i64* %12, align 8
  %313 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %310, i32 0, i32 137, i64 %311, i64 %312, i32 0, i32 0)
  %314 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %315 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %314)
  %316 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %317 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %316, i32 0, i32 3
  store i32 0, i32* %317, align 4
  %318 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %319 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %318, i32 0, i32 1
  %320 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %319, align 8
  %321 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %18, align 8
  %322 = bitcast %struct.asd_sas_phy* %321 to %struct.asd_sas_phy.1*
  %323 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %324 = call i32 %320(%struct.asd_sas_phy.1* %322, i32 %323)
  %325 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %326 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %325, i32 0, i32 0
  %327 = load %struct.pm8001_phy*, %struct.pm8001_phy** %326, align 8
  %328 = load i64, i64* %12, align 8
  %329 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %327, i64 %328
  %330 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = icmp ne i32* %331, null
  br i1 %332, label %333, label %355

333:                                              ; preds = %306
  %334 = load i32, i32* @PORT_RESET_TMO, align 4
  %335 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %336 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %335, i32 0, i32 0
  %337 = load %struct.pm8001_phy*, %struct.pm8001_phy** %336, align 8
  %338 = load i64, i64* %12, align 8
  %339 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %337, i64 %338
  %340 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %339, i32 0, i32 1
  store i32 %334, i32* %340, align 8
  %341 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %342 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %341, i32 0, i32 0
  %343 = load %struct.pm8001_phy*, %struct.pm8001_phy** %342, align 8
  %344 = load i64, i64* %12, align 8
  %345 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %343, i64 %344
  %346 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = call i32 @complete(i32* %347)
  %349 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %350 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %349, i32 0, i32 0
  %351 = load %struct.pm8001_phy*, %struct.pm8001_phy** %350, align 8
  %352 = load i64, i64* %12, align 8
  %353 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %351, i64 %352
  %354 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %353, i32 0, i32 0
  store i32* null, i32** %354, align 8
  br label %355

355:                                              ; preds = %333, %306
  br label %459

356:                                              ; preds = %2
  %357 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %358 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0))
  %359 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %357, i32 %358)
  %360 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %361 = load i64, i64* %11, align 8
  %362 = load i64, i64* %12, align 8
  %363 = call i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info* %360, i32 0, i32 133, i64 %361, i64 %362, i32 0, i32 0)
  store i64 0, i64* %7, align 8
  br label %364

364:                                              ; preds = %404, %356
  %365 = load i64, i64* %7, align 8
  %366 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %367 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %366, i32 0, i32 1
  %368 = load %struct.TYPE_2__*, %struct.TYPE_2__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = icmp ult i64 %365, %370
  br i1 %371, label %372, label %407

372:                                              ; preds = %364
  %373 = load %struct.pm8001_port*, %struct.pm8001_port** %17, align 8
  %374 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load i64, i64* %7, align 8
  %377 = trunc i64 %376 to i32
  %378 = shl i32 1, %377
  %379 = and i32 %375, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %403

381:                                              ; preds = %372
  %382 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %383 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %382, i32 0, i32 0
  %384 = load %struct.pm8001_phy*, %struct.pm8001_phy** %383, align 8
  %385 = load i64, i64* %7, align 8
  %386 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %384, i64 %385
  store %struct.pm8001_phy* %386, %struct.pm8001_phy** %16, align 8
  %387 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %15, align 8
  %388 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %387, i32 0, i32 0
  %389 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %388, align 8
  %390 = load %struct.pm8001_phy*, %struct.pm8001_phy** %16, align 8
  %391 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %390, i32 0, i32 2
  %392 = bitcast %struct.asd_sas_phy* %391 to %struct.asd_sas_phy.0*
  %393 = load i32, i32* @PHYE_LOSS_OF_SIGNAL, align 4
  %394 = call i32 %389(%struct.asd_sas_phy.0* %392, i32 %393)
  %395 = load i64, i64* %7, align 8
  %396 = trunc i64 %395 to i32
  %397 = shl i32 1, %396
  %398 = xor i32 %397, -1
  %399 = load %struct.pm8001_port*, %struct.pm8001_port** %17, align 8
  %400 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = and i32 %401, %398
  store i32 %402, i32* %400, align 4
  br label %403

403:                                              ; preds = %381, %372
  br label %404

404:                                              ; preds = %403
  %405 = load i64, i64* %7, align 8
  %406 = add i64 %405, 1
  store i64 %406, i64* %7, align 8
  br label %364

407:                                              ; preds = %364
  br label %459

408:                                              ; preds = %2
  %409 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %410 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  %411 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %409, i32 %410)
  %412 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %413 = load i8*, i8** %5, align 8
  %414 = call i32 @hw_event_port_recover(%struct.pm8001_hba_info* %412, i8* %413)
  br label %459

415:                                              ; preds = %2
  %416 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %417 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  %418 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %416, i32 %417)
  %419 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %420 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %419, i32 0, i32 0
  %421 = load %struct.pm8001_phy*, %struct.pm8001_phy** %420, align 8
  %422 = load i64, i64* %12, align 8
  %423 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %421, i64 %422
  %424 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %423, i32 0, i32 0
  %425 = load i32*, i32** %424, align 8
  %426 = icmp ne i32* %425, null
  br i1 %426, label %427, label %449

427:                                              ; preds = %415
  %428 = load i32, i32* @PORT_RESET_SUCCESS, align 4
  %429 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %430 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %429, i32 0, i32 0
  %431 = load %struct.pm8001_phy*, %struct.pm8001_phy** %430, align 8
  %432 = load i64, i64* %12, align 8
  %433 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %431, i64 %432
  %434 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %433, i32 0, i32 1
  store i32 %428, i32* %434, align 8
  %435 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %436 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %435, i32 0, i32 0
  %437 = load %struct.pm8001_phy*, %struct.pm8001_phy** %436, align 8
  %438 = load i64, i64* %12, align 8
  %439 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %437, i64 %438
  %440 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %439, i32 0, i32 0
  %441 = load i32*, i32** %440, align 8
  %442 = call i32 @complete(i32* %441)
  %443 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %444 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %443, i32 0, i32 0
  %445 = load %struct.pm8001_phy*, %struct.pm8001_phy** %444, align 8
  %446 = load i64, i64* %12, align 8
  %447 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %445, i64 %446
  %448 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %447, i32 0, i32 0
  store i32* null, i32** %448, align 8
  br label %449

449:                                              ; preds = %427, %415
  br label %459

450:                                              ; preds = %2
  %451 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %452 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %453 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %451, i32 %452)
  br label %459

454:                                              ; preds = %2
  %455 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %456 = load i32, i32* %13, align 4
  %457 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i32 %456)
  %458 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %455, i32 %457)
  br label %459

459:                                              ; preds = %454, %450, %449, %408, %407, %355, %287, %272, %261, %253, %232, %228, %220, %212, %204, %196, %175, %158, %133, %118, %112, %85, %78, %71
  store i32 0, i32* %3, align 4
  br label %460

460:                                              ; preds = %459, %108
  %461 = load i32, i32* %3, align 4
  ret i32 %461
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @hw_event_sas_phy_up(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @hw_event_sata_phy_up(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @hw_event_phy_down(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @sas_phy_disconnected(%struct.asd_sas_phy*) #1

declare dso_local i32 @pm80xx_hw_event_ack_req(%struct.pm8001_hba_info*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @hw_event_port_recover(%struct.pm8001_hba_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
