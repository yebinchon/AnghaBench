; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_fip_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_async_fip_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_acqe_fip = type { i32, i32 }
%struct.lpfc_vport = type { i32, i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.Scsi_Host = type { i32* }

@lpfc_trailer_type = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"2546 New FCF event, evt_tag:x%x, index:x%x\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"2788 FCF param modified event, evt_tag:x%x, index:x%x\0A\00", align 1
@FCF_DISCOVERY = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"2779 Read FCF (x%x) for updating roundrobin FCF failover bmask\0A\00", align 1
@FCF_TS_INPROG = common dso_local global i32 0, align 4
@FCF_REDISC_EVT = common dso_local global i32 0, align 4
@FCF_REDISC_PEND = common dso_local global i32 0, align 4
@FCF_SCAN_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"2770 Start FCF table scan per async FCF event, evt_tag:x%x, index:x%x\0A\00", align 1
@LPFC_FCOE_FCF_GET_FIRST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"2547 Issue FCF scan read FCF mailbox command failed (x%x)\0A\00", align 1
@LOG_SLI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"2548 FCF Table full count 0x%x tag 0x%x\0A\00", align 1
@lpfc_acqe_fip_fcf_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"2549 FCF (x%x) disconnected from network, tag:x%x\0A\00", align 1
@FCF_DEAD_DISC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [89 x i8] c"2771 Start FCF fast failover process due to FCF DEAD event: evt_tag:x%x, fcf_index:x%x \0A\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"2772 Issue FCF rediscover mailbox command failed, fail through to FCF dead event\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"2718 Clear Virtual Link Received for VPI 0x%x tag 0x%x\0A\00", align 1
@FC_VPORT_CVL_RCVD = common dso_local global i32 0, align 4
@LPFC_FDISC = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@ELS_CMD_FDISC = common dso_local global i32 0, align 4
@FCF_ACVL_DISC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"2773 Start FCF failover per CVL, evt_tag:x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [72 x i8] c"2774 Issue FCF rediscover mailbox command failed, through to CVL event\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"0288 Unknown FCoE event type 0x%x event tag 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_acqe_fip*)* @lpfc_sli4_async_fip_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_async_fip_evt(%struct.lpfc_hba* %0, %struct.lpfc_acqe_fip* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_acqe_fip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_nodelist*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_vport**, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_acqe_fip* %1, %struct.lpfc_acqe_fip** %4, align 8
  %13 = load i32, i32* @lpfc_trailer_type, align 4
  %14 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %15 = call i32 @bf_get(i32 %13, %struct.lpfc_acqe_fip* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %460 [
    i32 128, label %27
    i32 130, label %27
    i32 129, label %149
    i32 131, label %160
    i32 132, label %278
  ]

27:                                               ; preds = %2, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load i32, i32* @LOG_FIP, align 4
  %34 = load i32, i32* @LOG_DISCOVERY, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %31, i32 %32, i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  br label %56

43:                                               ; preds = %27
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = load i32, i32* @KERN_WARNING, align 4
  %46 = load i32, i32* @LOG_FIP, align 4
  %47 = load i32, i32* @LOG_DISCOVERY, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %53 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %43, %30
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FCF_DISCOVERY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %56
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %66 = load i32, i32* @KERN_INFO, align 4
  %67 = load i32, i32* @LOG_FIP, align 4
  %68 = load i32, i32* @LOG_DISCOVERY, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %71 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %65, i32 %66, i32 %69, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %76 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @lpfc_sli4_read_fcf_rec(%struct.lpfc_hba* %74, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %64, %56
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 5
  %82 = call i32 @spin_lock_irq(i32* %81)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FCF_TS_INPROG, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 5
  %92 = call i32 @spin_unlock_irq(i32* %91)
  br label %469

93:                                               ; preds = %79
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @FCF_REDISC_EVT, align 4
  %99 = load i32, i32* @FCF_REDISC_PEND, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 5
  %106 = call i32 @spin_unlock_irq(i32* %105)
  br label %469

107:                                              ; preds = %93
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @FCF_SCAN_DONE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %107
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 5
  %118 = call i32 @spin_unlock_irq(i32* %117)
  br label %469

119:                                              ; preds = %107
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 5
  %122 = call i32 @spin_unlock_irq(i32* %121)
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %124 = load i32, i32* @KERN_INFO, align 4
  %125 = load i32, i32* @LOG_FIP, align 4
  %126 = load i32, i32* @LOG_DISCOVERY, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %129 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %132 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %123, i32 %124, i32 %127, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %133)
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %136 = load i32, i32* @LPFC_FCOE_FCF_GET_FIRST, align 4
  %137 = call i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %135, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %119
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %142 = load i32, i32* @KERN_ERR, align 4
  %143 = load i32, i32* @LOG_FIP, align 4
  %144 = load i32, i32* @LOG_DISCOVERY, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %6, align 4
  %147 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %141, i32 %142, i32 %145, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %140, %119
  br label %469

149:                                              ; preds = %2
  %150 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %151 = load i32, i32* @KERN_ERR, align 4
  %152 = load i32, i32* @LOG_SLI, align 4
  %153 = load i32, i32* @lpfc_acqe_fip_fcf_count, align 4
  %154 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %155 = call i32 @bf_get(i32 %153, %struct.lpfc_acqe_fip* %154)
  %156 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %157 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %155, i32 %158)
  br label %469

160:                                              ; preds = %2
  %161 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %162 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %167 = load i32, i32* @KERN_ERR, align 4
  %168 = load i32, i32* @LOG_FIP, align 4
  %169 = load i32, i32* @LOG_DISCOVERY, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %172 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %175 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %166, i32 %167, i32 %170, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %173, i32 %176)
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %179 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %178, i32 0, i32 5
  %180 = call i32 @spin_lock_irq(i32* %179)
  %181 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %182 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @FCF_DISCOVERY, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %160
  %189 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %190 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %195 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %193, %196
  br i1 %197, label %198, label %207

198:                                              ; preds = %188
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 5
  %201 = call i32 @spin_unlock_irq(i32* %200)
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %203 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %204 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @lpfc_sli4_fcf_rr_index_clear(%struct.lpfc_hba* %202, i32 %205)
  br label %469

207:                                              ; preds = %188, %160
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %209 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %208, i32 0, i32 5
  %210 = call i32 @spin_unlock_irq(i32* %209)
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %212 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %211, i32 0, i32 6
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %217 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %215, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  br label %469

221:                                              ; preds = %207
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %223 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %222, i32 0, i32 5
  %224 = call i32 @spin_lock_irq(i32* %223)
  %225 = load i32, i32* @FCF_DEAD_DISC, align 4
  %226 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %227 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %226, i32 0, i32 6
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %225
  store i32 %230, i32* %228, align 4
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %232 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %231, i32 0, i32 5
  %233 = call i32 @spin_unlock_irq(i32* %232)
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %235 = load i32, i32* @KERN_INFO, align 4
  %236 = load i32, i32* @LOG_FIP, align 4
  %237 = load i32, i32* @LOG_DISCOVERY, align 4
  %238 = or i32 %236, %237
  %239 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %240 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %243 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %234, i32 %235, i32 %238, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0), i32 %241, i32 %244)
  %246 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %247 = call i32 @lpfc_sli4_redisc_fcf_table(%struct.lpfc_hba* %246)
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %272

250:                                              ; preds = %221
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %252 = load i32, i32* @KERN_ERR, align 4
  %253 = load i32, i32* @LOG_FIP, align 4
  %254 = load i32, i32* @LOG_DISCOVERY, align 4
  %255 = or i32 %253, %254
  %256 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %251, i32 %252, i32 %255, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0))
  %257 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %258 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %257, i32 0, i32 5
  %259 = call i32 @spin_lock_irq(i32* %258)
  %260 = load i32, i32* @FCF_DEAD_DISC, align 4
  %261 = xor i32 %260, -1
  %262 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %263 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = and i32 %265, %261
  store i32 %266, i32* %264, align 4
  %267 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %268 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %267, i32 0, i32 5
  %269 = call i32 @spin_unlock_irq(i32* %268)
  %270 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %271 = call i32 @lpfc_sli4_fcf_dead_failthrough(%struct.lpfc_hba* %270)
  br label %277

272:                                              ; preds = %221
  %273 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %274 = call i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba* %273)
  %275 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %276 = call i32 @lpfc_sli4_perform_all_vport_cvl(%struct.lpfc_hba* %275)
  br label %277

277:                                              ; preds = %272, %250
  br label %469

278:                                              ; preds = %2
  %279 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %280 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %283 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 4
  %284 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %285 = load i32, i32* @KERN_ERR, align 4
  %286 = load i32, i32* @LOG_FIP, align 4
  %287 = load i32, i32* @LOG_DISCOVERY, align 4
  %288 = or i32 %286, %287
  %289 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %290 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %293 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %284, i32 %285, i32 %288, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %291, i32 %294)
  %296 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %297 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %298 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call %struct.lpfc_vport* @lpfc_find_vport_by_vpid(%struct.lpfc_hba* %296, i32 %299)
  store %struct.lpfc_vport* %300, %struct.lpfc_vport** %7, align 8
  %301 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %302 = call %struct.lpfc_nodelist* @lpfc_sli4_perform_vport_cvl(%struct.lpfc_vport* %301)
  store %struct.lpfc_nodelist* %302, %struct.lpfc_nodelist** %8, align 8
  %303 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %304 = icmp ne %struct.lpfc_nodelist* %303, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %278
  br label %469

306:                                              ; preds = %278
  store i32 0, i32* %10, align 4
  %307 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %308 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %307)
  store %struct.lpfc_vport** %308, %struct.lpfc_vport*** %11, align 8
  %309 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %310 = icmp ne %struct.lpfc_vport** %309, null
  br i1 %310, label %311, label %357

311:                                              ; preds = %306
  store i32 0, i32* %12, align 4
  br label %312

312:                                              ; preds = %350, %311
  %313 = load i32, i32* %12, align 4
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %315 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = icmp sle i32 %313, %316
  br i1 %317, label %318, label %325

318:                                              ; preds = %312
  %319 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %320 = load i32, i32* %12, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %319, i64 %321
  %323 = load %struct.lpfc_vport*, %struct.lpfc_vport** %322, align 8
  %324 = icmp ne %struct.lpfc_vport* %323, null
  br label %325

325:                                              ; preds = %318, %312
  %326 = phi i1 [ false, %312 ], [ %324, %318 ]
  br i1 %326, label %327, label %353

327:                                              ; preds = %325
  %328 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %329 = load i32, i32* %12, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %328, i64 %330
  %332 = load %struct.lpfc_vport*, %struct.lpfc_vport** %331, align 8
  %333 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @FC_VPORT_CVL_RCVD, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %349, label %338

338:                                              ; preds = %327
  %339 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %339, i64 %341
  %343 = load %struct.lpfc_vport*, %struct.lpfc_vport** %342, align 8
  %344 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @LPFC_FDISC, align 4
  %347 = icmp sgt i32 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %338
  store i32 1, i32* %10, align 4
  br label %353

349:                                              ; preds = %338, %327
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %12, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %12, align 4
  br label %312

353:                                              ; preds = %348, %325
  %354 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %355 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %11, align 8
  %356 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %354, %struct.lpfc_vport** %355)
  br label %357

357:                                              ; preds = %353, %306
  %358 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %359 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @FC_UNLOADING, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %395, label %364

364:                                              ; preds = %357
  %365 = load i32, i32* %10, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %395

367:                                              ; preds = %364
  %368 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %369 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %368, i32 0, i32 2
  %370 = load i64, i64* @jiffies, align 8
  %371 = call i64 @msecs_to_jiffies(i32 1000)
  %372 = add nsw i64 %370, %371
  %373 = call i32 @mod_timer(i32* %369, i64 %372)
  %374 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %375 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %374)
  store %struct.Scsi_Host* %375, %struct.Scsi_Host** %9, align 8
  %376 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %377 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = call i32 @spin_lock_irq(i32* %378)
  %380 = load i32, i32* @NLP_DELAY_TMO, align 4
  %381 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %382 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %380
  store i32 %384, i32* %382, align 4
  %385 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %386 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = call i32 @spin_unlock_irq(i32* %387)
  %389 = load i32, i32* @ELS_CMD_FDISC, align 4
  %390 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %391 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %390, i32 0, i32 0
  store i32 %389, i32* %391, align 4
  %392 = load i32, i32* @LPFC_FDISC, align 4
  %393 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %394 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %393, i32 0, i32 2
  store i32 %392, i32* %394, align 4
  br label %459

395:                                              ; preds = %364, %357
  %396 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %397 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %396, i32 0, i32 5
  %398 = call i32 @spin_lock_irq(i32* %397)
  %399 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %400 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %399, i32 0, i32 6
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @FCF_DISCOVERY, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %395
  %407 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %408 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %407, i32 0, i32 5
  %409 = call i32 @spin_unlock_irq(i32* %408)
  br label %469

410:                                              ; preds = %395
  %411 = load i32, i32* @FCF_ACVL_DISC, align 4
  %412 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %413 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %412, i32 0, i32 6
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = or i32 %415, %411
  store i32 %416, i32* %414, align 4
  %417 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %418 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %417, i32 0, i32 5
  %419 = call i32 @spin_unlock_irq(i32* %418)
  %420 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %421 = load i32, i32* @KERN_INFO, align 4
  %422 = load i32, i32* @LOG_FIP, align 4
  %423 = load i32, i32* @LOG_DISCOVERY, align 4
  %424 = or i32 %422, %423
  %425 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %426 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %420, i32 %421, i32 %424, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %427)
  %429 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %430 = call i32 @lpfc_sli4_redisc_fcf_table(%struct.lpfc_hba* %429)
  store i32 %430, i32* %6, align 4
  %431 = load i32, i32* %6, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %455

433:                                              ; preds = %410
  %434 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %435 = load i32, i32* @KERN_ERR, align 4
  %436 = load i32, i32* @LOG_FIP, align 4
  %437 = load i32, i32* @LOG_DISCOVERY, align 4
  %438 = or i32 %436, %437
  %439 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %434, i32 %435, i32 %438, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0))
  %440 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %441 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %440, i32 0, i32 5
  %442 = call i32 @spin_lock_irq(i32* %441)
  %443 = load i32, i32* @FCF_ACVL_DISC, align 4
  %444 = xor i32 %443, -1
  %445 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %446 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %445, i32 0, i32 6
  %447 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = and i32 %448, %444
  store i32 %449, i32* %447, align 4
  %450 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %451 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %450, i32 0, i32 5
  %452 = call i32 @spin_unlock_irq(i32* %451)
  %453 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %454 = call i32 @lpfc_retry_pport_discovery(%struct.lpfc_hba* %453)
  br label %458

455:                                              ; preds = %410
  %456 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %457 = call i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba* %456)
  br label %458

458:                                              ; preds = %455, %433
  br label %459

459:                                              ; preds = %458, %367
  br label %469

460:                                              ; preds = %2
  %461 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %462 = load i32, i32* @KERN_ERR, align 4
  %463 = load i32, i32* @LOG_SLI, align 4
  %464 = load i32, i32* %5, align 4
  %465 = load %struct.lpfc_acqe_fip*, %struct.lpfc_acqe_fip** %4, align 8
  %466 = getelementptr inbounds %struct.lpfc_acqe_fip, %struct.lpfc_acqe_fip* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %461, i32 %462, i32 %463, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i32 %464, i32 %467)
  br label %469

469:                                              ; preds = %460, %459, %406, %305, %277, %220, %198, %149, %148, %115, %103, %89
  ret void
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_acqe_fip*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_read_fcf_rec(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_fcf_rr_index_clear(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_redisc_fcf_table(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_fcf_dead_failthrough(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_perform_all_vport_cvl(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_vport* @lpfc_find_vport_by_vpid(%struct.lpfc_hba*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_sli4_perform_vport_cvl(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_retry_pport_discovery(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
