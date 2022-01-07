; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_hw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_hw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, %struct.pm8001_phy*, %struct.sas_ha_struct* }
%struct.pm8001_phy = type { i32, i32, %struct.asd_sas_phy, i32* }
%struct.asd_sas_phy = type { i32, i32 }
%struct.sas_ha_struct = type { i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)*, %struct.asd_sas_phy** }
%struct.asd_sas_phy.0 = type opaque
%struct.asd_sas_phy.1 = type opaque
%struct.hw_event_resp = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"outbound queue HW event & event type : \00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"HW_EVENT_PHY_START_STATUS status = %x\0A\00", align 1
@PM8001F_RUN_TIME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"HW_EVENT_PHY_START_STATUS\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"HW_EVENT_SATA_PHY_UP\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"HW_EVENT_PHY_STOP_STATUS status = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"HW_EVENT_SATA_SPINUP_HOLD\0A\00", align 1
@PHYE_SPINUP_HOLD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"HW_EVENT_PHY_DOWN\0A\00", align 1
@PHYE_LOSS_OF_SIGNAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"HW_EVENT_PORT_INVALID\0A\00", align 1
@PORTE_LINK_RESET_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"HW_EVENT_BROADCAST_CHANGE\0A\00", align 1
@PORTE_BROADCAST_RCVD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"HW_EVENT_PHY_ERROR\0A\00", align 1
@PHYE_OOB_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"HW_EVENT_BROADCAST_EXP\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"HW_EVENT_LINK_ERR_INVALID_DWORD\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"HW_EVENT_LINK_ERR_DISPARITY_ERROR\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"HW_EVENT_LINK_ERR_CODE_VIOLATION\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"HW_EVENT_LINK_ERR_LOSS_OF_DWORD_SYNCH\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"HW_EVENT_MALFUNCTION\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"HW_EVENT_BROADCAST_SES\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"HW_EVENT_INBOUND_CRC_ERROR\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"HW_EVENT_HARD_RESET_RECEIVED\0A\00", align 1
@PORTE_HARD_RESET = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"HW_EVENT_ID_FRAME_TIMEOUT\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"HW_EVENT_LINK_ERR_PHY_RESET_FAILED\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"HW_EVENT_PORT_RESET_TIMER_TMO\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"HW_EVENT_PORT_RECOVERY_TIMER_TMO\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"HW_EVENT_PORT_RECOVER\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"HW_EVENT_PORT_RESET_COMPLETE\0A\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"EVENT_BROADCAST_ASYNCH_EVENT\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"Unknown event type = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, i8*)* @mpi_hw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_hw_event(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hw_event_resp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.sas_ha_struct*, align 8
  %13 = alloca %struct.pm8001_phy*, align 8
  %14 = alloca %struct.asd_sas_phy*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr i8, i8* %15, i64 4
  %17 = bitcast i8* %16 to %struct.hw_event_resp*
  store %struct.hw_event_resp* %17, %struct.hw_event_resp** %6, align 8
  %18 = load %struct.hw_event_resp*, %struct.hw_event_resp** %6, align 8
  %19 = getelementptr inbounds %struct.hw_event_resp, %struct.hw_event_resp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 15
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 240
  %27 = ashr i32 %26, 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 16776960
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 251658240
  %34 = ashr i32 %33, 24
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %11, align 8
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 2
  %38 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %37, align 8
  store %struct.sas_ha_struct* %38, %struct.sas_ha_struct** %12, align 8
  %39 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %40 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %39, i32 0, i32 1
  %41 = load %struct.pm8001_phy*, %struct.pm8001_phy** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %41, i64 %42
  store %struct.pm8001_phy* %43, %struct.pm8001_phy** %13, align 8
  %44 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %45 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %44, i32 0, i32 2
  %46 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %46, i64 %47
  %49 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %48, align 8
  store %struct.asd_sas_phy* %49, %struct.asd_sas_phy** %14, align 8
  %50 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %51 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  switch i32 %53, label %411 [
    i32 137, label %54
    i32 130, label %81
    i32 129, label %88
    i32 136, label %95
    i32 128, label %106
    i32 139, label %118
    i32 135, label %137
    i32 151, label %152
    i32 138, label %177
    i32 150, label %194
    i32 143, label %215
    i32 144, label %234
    i32 145, label %253
    i32 142, label %272
    i32 140, label %291
    i32 149, label %295
    i32 146, label %316
    i32 148, label %324
    i32 147, label %335
    i32 141, label %350
    i32 131, label %369
    i32 133, label %384
    i32 134, label %399
    i32 132, label %403
    i32 152, label %407
  ]

54:                                               ; preds = %2
  %55 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %55, i32 %57)
  %59 = load i64, i64* %11, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %54
  %62 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %63 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %65 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PM8001F_RUN_TIME, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %71 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %76 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @complete(i32* %77)
  br label %79

79:                                               ; preds = %74, %69, %61
  br label %80

80:                                               ; preds = %79, %54
  br label %416

81:                                               ; preds = %2
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %83 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %84 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %82, i32 %83)
  %85 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @hw_event_sas_phy_up(%struct.pm8001_hba_info* %85, i8* %86)
  br label %416

88:                                               ; preds = %2
  %89 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %90 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %89, i32 %90)
  %92 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %93 = load i8*, i8** %4, align 8
  %94 = call i32 @hw_event_sata_phy_up(%struct.pm8001_hba_info* %92, i8* %93)
  br label %416

95:                                               ; preds = %2
  %96 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  %99 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %96, i32 %98)
  %100 = load i64, i64* %11, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %104 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %95
  br label %416

106:                                              ; preds = %2
  %107 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %108 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %109 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %107, i32 %108)
  %110 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %111 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %110, i32 0, i32 1
  %112 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %111, align 8
  %113 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %114 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %113, i32 0, i32 2
  %115 = bitcast %struct.asd_sas_phy* %114 to %struct.asd_sas_phy.1*
  %116 = load i32, i32* @PHYE_SPINUP_HOLD, align 4
  %117 = call i32 %112(%struct.asd_sas_phy.1* %115, i32 %116)
  br label %416

118:                                              ; preds = %2
  %119 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %120 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %121 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %119, i32 %120)
  %122 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %123 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %122, i32 0, i32 1
  %124 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %123, align 8
  %125 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %126 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %125, i32 0, i32 2
  %127 = bitcast %struct.asd_sas_phy* %126 to %struct.asd_sas_phy.1*
  %128 = load i32, i32* @PHYE_LOSS_OF_SIGNAL, align 4
  %129 = call i32 %124(%struct.asd_sas_phy.1* %127, i32 %128)
  %130 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %131 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %130, i32 0, i32 1
  store i32 0, i32* %131, align 4
  %132 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %133 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  %134 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %135 = load i8*, i8** %4, align 8
  %136 = call i32 @hw_event_phy_down(%struct.pm8001_hba_info* %134, i8* %135)
  br label %416

137:                                              ; preds = %2
  %138 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %139 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %140 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %138, i32 %139)
  %141 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %142 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %141)
  %143 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %144 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  %145 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %146 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %145, i32 0, i32 0
  %147 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %146, align 8
  %148 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %149 = bitcast %struct.asd_sas_phy* %148 to %struct.asd_sas_phy.0*
  %150 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %151 = call i32 %147(%struct.asd_sas_phy.0* %149, i32 %150)
  br label %416

152:                                              ; preds = %2
  %153 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %154 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %155 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %153, i32 %154)
  %156 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %156, i32 0, i32 151, i64 %157, i64 %158, i32 1, i32 0)
  %160 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %161 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %160, i32 0, i32 1
  %162 = load i64, i64* %5, align 8
  %163 = call i32 @spin_lock_irqsave(i32* %161, i64 %162)
  %164 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %165 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %164, i32 0, i32 0
  store i32 151, i32* %165, align 4
  %166 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %167 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %166, i32 0, i32 1
  %168 = load i64, i64* %5, align 8
  %169 = call i32 @spin_unlock_irqrestore(i32* %167, i64 %168)
  %170 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %171 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %170, i32 0, i32 0
  %172 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %171, align 8
  %173 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %174 = bitcast %struct.asd_sas_phy* %173 to %struct.asd_sas_phy.0*
  %175 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %176 = call i32 %172(%struct.asd_sas_phy.0* %174, i32 %175)
  br label %416

177:                                              ; preds = %2
  %178 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %179 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %180 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %178, i32 %179)
  %181 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %182 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %181, i32 0, i32 2
  %183 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %182)
  %184 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %185 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  %186 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %187 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %186, i32 0, i32 1
  %188 = load i32 (%struct.asd_sas_phy.1*, i32)*, i32 (%struct.asd_sas_phy.1*, i32)** %187, align 8
  %189 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %190 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %189, i32 0, i32 2
  %191 = bitcast %struct.asd_sas_phy* %190 to %struct.asd_sas_phy.1*
  %192 = load i32, i32* @PHYE_OOB_ERROR, align 4
  %193 = call i32 %188(%struct.asd_sas_phy.1* %191, i32 %192)
  br label %416

194:                                              ; preds = %2
  %195 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %196 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %197 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %195, i32 %196)
  %198 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %199 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %198, i32 0, i32 1
  %200 = load i64, i64* %5, align 8
  %201 = call i32 @spin_lock_irqsave(i32* %199, i64 %200)
  %202 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %203 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %202, i32 0, i32 0
  store i32 150, i32* %203, align 4
  %204 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %205 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %204, i32 0, i32 1
  %206 = load i64, i64* %5, align 8
  %207 = call i32 @spin_unlock_irqrestore(i32* %205, i64 %206)
  %208 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %209 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %208, i32 0, i32 0
  %210 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %209, align 8
  %211 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %212 = bitcast %struct.asd_sas_phy* %211 to %struct.asd_sas_phy.0*
  %213 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %214 = call i32 %210(%struct.asd_sas_phy.0* %212, i32 %213)
  br label %416

215:                                              ; preds = %2
  %216 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %217 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %218 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %216, i32 %217)
  %219 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %220 = load i64, i64* %8, align 8
  %221 = load i64, i64* %9, align 8
  %222 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %219, i32 0, i32 143, i64 %220, i64 %221, i32 0, i32 0)
  %223 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %224 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %223)
  %225 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %226 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %225, i32 0, i32 1
  store i32 0, i32* %226, align 4
  %227 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %228 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %227, i32 0, i32 0
  %229 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %228, align 8
  %230 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %231 = bitcast %struct.asd_sas_phy* %230 to %struct.asd_sas_phy.0*
  %232 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %233 = call i32 %229(%struct.asd_sas_phy.0* %231, i32 %232)
  br label %416

234:                                              ; preds = %2
  %235 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %236 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %237 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %235, i32 %236)
  %238 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %239 = load i64, i64* %8, align 8
  %240 = load i64, i64* %9, align 8
  %241 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %238, i32 0, i32 144, i64 %239, i64 %240, i32 0, i32 0)
  %242 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %243 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %242)
  %244 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %245 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %244, i32 0, i32 1
  store i32 0, i32* %245, align 4
  %246 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %247 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %246, i32 0, i32 0
  %248 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %247, align 8
  %249 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %250 = bitcast %struct.asd_sas_phy* %249 to %struct.asd_sas_phy.0*
  %251 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %252 = call i32 %248(%struct.asd_sas_phy.0* %250, i32 %251)
  br label %416

253:                                              ; preds = %2
  %254 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %255 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %256 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %254, i32 %255)
  %257 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %258 = load i64, i64* %8, align 8
  %259 = load i64, i64* %9, align 8
  %260 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %257, i32 0, i32 145, i64 %258, i64 %259, i32 0, i32 0)
  %261 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %262 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %261)
  %263 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %264 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %263, i32 0, i32 1
  store i32 0, i32* %264, align 4
  %265 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %266 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %265, i32 0, i32 0
  %267 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %266, align 8
  %268 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %269 = bitcast %struct.asd_sas_phy* %268 to %struct.asd_sas_phy.0*
  %270 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %271 = call i32 %267(%struct.asd_sas_phy.0* %269, i32 %270)
  br label %416

272:                                              ; preds = %2
  %273 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %274 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %275 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %273, i32 %274)
  %276 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %277 = load i64, i64* %8, align 8
  %278 = load i64, i64* %9, align 8
  %279 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %276, i32 0, i32 142, i64 %277, i64 %278, i32 0, i32 0)
  %280 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %281 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %280)
  %282 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %283 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %282, i32 0, i32 1
  store i32 0, i32* %283, align 4
  %284 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %285 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %284, i32 0, i32 0
  %286 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %285, align 8
  %287 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %288 = bitcast %struct.asd_sas_phy* %287 to %struct.asd_sas_phy.0*
  %289 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %290 = call i32 %286(%struct.asd_sas_phy.0* %288, i32 %289)
  br label %416

291:                                              ; preds = %2
  %292 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %293 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %294 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %292, i32 %293)
  br label %416

295:                                              ; preds = %2
  %296 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %297 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  %298 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %296, i32 %297)
  %299 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %300 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %299, i32 0, i32 1
  %301 = load i64, i64* %5, align 8
  %302 = call i32 @spin_lock_irqsave(i32* %300, i64 %301)
  %303 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %304 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %303, i32 0, i32 0
  store i32 149, i32* %304, align 4
  %305 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %306 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %305, i32 0, i32 1
  %307 = load i64, i64* %5, align 8
  %308 = call i32 @spin_unlock_irqrestore(i32* %306, i64 %307)
  %309 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %310 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %309, i32 0, i32 0
  %311 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %310, align 8
  %312 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %313 = bitcast %struct.asd_sas_phy* %312 to %struct.asd_sas_phy.0*
  %314 = load i32, i32* @PORTE_BROADCAST_RCVD, align 4
  %315 = call i32 %311(%struct.asd_sas_phy.0* %313, i32 %314)
  br label %416

316:                                              ; preds = %2
  %317 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %318 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %319 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %317, i32 %318)
  %320 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %321 = load i64, i64* %8, align 8
  %322 = load i64, i64* %9, align 8
  %323 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %320, i32 0, i32 146, i64 %321, i64 %322, i32 0, i32 0)
  br label %416

324:                                              ; preds = %2
  %325 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %326 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %327 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %325, i32 %326)
  %328 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %329 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %328, i32 0, i32 0
  %330 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %329, align 8
  %331 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %332 = bitcast %struct.asd_sas_phy* %331 to %struct.asd_sas_phy.0*
  %333 = load i32, i32* @PORTE_HARD_RESET, align 4
  %334 = call i32 %330(%struct.asd_sas_phy.0* %332, i32 %333)
  br label %416

335:                                              ; preds = %2
  %336 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %337 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %338 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %336, i32 %337)
  %339 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %340 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %339)
  %341 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %342 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %341, i32 0, i32 1
  store i32 0, i32* %342, align 4
  %343 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %344 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %343, i32 0, i32 0
  %345 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %344, align 8
  %346 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %347 = bitcast %struct.asd_sas_phy* %346 to %struct.asd_sas_phy.0*
  %348 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %349 = call i32 %345(%struct.asd_sas_phy.0* %347, i32 %348)
  br label %416

350:                                              ; preds = %2
  %351 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %352 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0))
  %353 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %351, i32 %352)
  %354 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %355 = load i64, i64* %8, align 8
  %356 = load i64, i64* %9, align 8
  %357 = call i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info* %354, i32 0, i32 141, i64 %355, i64 %356, i32 0, i32 0)
  %358 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %359 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %358)
  %360 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %361 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %360, i32 0, i32 1
  store i32 0, i32* %361, align 4
  %362 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %363 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %362, i32 0, i32 0
  %364 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %363, align 8
  %365 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %366 = bitcast %struct.asd_sas_phy* %365 to %struct.asd_sas_phy.0*
  %367 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %368 = call i32 %364(%struct.asd_sas_phy.0* %366, i32 %367)
  br label %416

369:                                              ; preds = %2
  %370 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %371 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0))
  %372 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %370, i32 %371)
  %373 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %374 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %373)
  %375 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %376 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %375, i32 0, i32 1
  store i32 0, i32* %376, align 4
  %377 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %378 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %377, i32 0, i32 0
  %379 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %378, align 8
  %380 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %381 = bitcast %struct.asd_sas_phy* %380 to %struct.asd_sas_phy.0*
  %382 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %383 = call i32 %379(%struct.asd_sas_phy.0* %381, i32 %382)
  br label %416

384:                                              ; preds = %2
  %385 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %386 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0))
  %387 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %385, i32 %386)
  %388 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %389 = call i32 @sas_phy_disconnected(%struct.asd_sas_phy* %388)
  %390 = load %struct.pm8001_phy*, %struct.pm8001_phy** %13, align 8
  %391 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %390, i32 0, i32 1
  store i32 0, i32* %391, align 4
  %392 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %12, align 8
  %393 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %392, i32 0, i32 0
  %394 = load i32 (%struct.asd_sas_phy.0*, i32)*, i32 (%struct.asd_sas_phy.0*, i32)** %393, align 8
  %395 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %14, align 8
  %396 = bitcast %struct.asd_sas_phy* %395 to %struct.asd_sas_phy.0*
  %397 = load i32, i32* @PORTE_LINK_RESET_ERR, align 4
  %398 = call i32 %394(%struct.asd_sas_phy.0* %396, i32 %397)
  br label %416

399:                                              ; preds = %2
  %400 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %401 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %402 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %400, i32 %401)
  br label %416

403:                                              ; preds = %2
  %404 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %405 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  %406 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %404, i32 %405)
  br label %416

407:                                              ; preds = %2
  %408 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %409 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %410 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %408, i32 %409)
  br label %416

411:                                              ; preds = %2
  %412 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %413 = load i32, i32* %10, align 4
  %414 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %413)
  %415 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %412, i32 %414)
  br label %416

416:                                              ; preds = %411, %407, %403, %399, %384, %369, %350, %335, %324, %316, %295, %291, %272, %253, %234, %215, %194, %177, %152, %137, %118, %106, %105, %88, %81, %80
  ret i32 0
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @hw_event_sas_phy_up(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @hw_event_sata_phy_up(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @hw_event_phy_down(%struct.pm8001_hba_info*, i8*) #1

declare dso_local i32 @sas_phy_disconnected(%struct.asd_sas_phy*) #1

declare dso_local i32 @pm8001_hw_event_ack_req(%struct.pm8001_hba_info*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
