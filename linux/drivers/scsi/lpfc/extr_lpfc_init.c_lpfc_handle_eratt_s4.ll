; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_eratt_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_eratt_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i8*, i32, i32, i32, %struct.lpfc_vport*, i32, %struct.TYPE_8__, i32 }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, %struct.lpfc_register }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lpfc_register = type { i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.temp_event = type { i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"3166 pci channel is offline\0A\00", align 1
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HBA_RECOVERABLE_UE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"7623 Checking UE recoverable\00", align 1
@lpfc_port_smphr_port_status = common dso_local global i32 0, align 4
@LPFC_PORT_SEM_MASK = common dso_local global i32 0, align 4
@LPFC_PORT_SEM_UE_RECOVERABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"4827 smphr_port_status x%x : Waited %dSec\00", align 1
@LPFC_POST_STAGE_PORT_READY = common dso_local global i32 0, align 4
@LPFC_MBX_NO_WAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"4215 Failed to recover UE\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"7624 Firmware not ready: Failing UE recovery, waited %dSec\00", align 1
@LPFC_HBA_ERROR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"3151 PCI bus read access failure: x%x\0A\00", align 1
@lpfc_sliport_status_oti = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"2889 Port Overtemperature event, taking port offline Data: x%x x%x\0A\00", align 1
@LPFC_TRANSGRESSION_HIGH_TEMPERATURE = common dso_local global i32 0, align 4
@FC_REG_TEMPERATURE_EVENT = common dso_local global i32 0, align 4
@LPFC_CRIT_TEMP = common dso_local global i32 0, align 4
@SCSI_NL_VID_TYPE_PCI = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_EMULEX = common dso_local global i32 0, align 4
@HBA_OVER_TEMP = common dso_local global i32 0, align 4
@SLIPORT_ERR1_REG_ERR_CODE_2 = common dso_local global i32 0, align 4
@SLIPORT_ERR2_REG_FW_RESTART = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"3143 Port Down: Firmware Update Detected\0A\00", align 1
@SLIPORT_ERR2_REG_FORCED_DUMP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"3144 Port Down: Debug Dump\0A\00", align 1
@SLIPORT_ERR2_REG_FUNC_PROVISON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"3145 Port Down: Provisioning\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"3152 Unrecoverable error\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"3123 Report dump event to upper layer\0A\00", align 1
@FC_REG_DUMP_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_handle_eratt_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_handle_eratt_s4(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_register, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.temp_event, align 4
  %17 = alloca %struct.lpfc_register, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 5
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %21, align 8
  store %struct.lpfc_vport* %22, %struct.lpfc_vport** %3, align 8
  %23 = bitcast %struct.lpfc_register* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  store i32 0, i32* %12, align 4
  store i32 1, i32* %15, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @pci_channel_offline(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @LOG_INIT, align 4
  %33 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %35 = call i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba* %34)
  br label %347

36:                                               ; preds = %1
  %37 = call i32 @memset(%struct.lpfc_register* %17, i32 0, i32 8)
  %38 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = call i32 @bf_get(i32 %38, %struct.lpfc_register* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %329 [
    i32 131, label %44
    i32 129, label %172
    i32 128, label %172
    i32 130, label %328
  ]

44:                                               ; preds = %36
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @lpfc_readl(i32 %50, i32* %10)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lpfc_readl(i32 %57, i32* %11)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %44
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %347

69:                                               ; preds = %63, %44
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HBA_RECOVERABLE_UE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %78 = call i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba* %77)
  br label %347

79:                                               ; preds = %69
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load i32, i32* @LOG_INIT, align 4
  %83 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %84

84:                                               ; preds = %112, %79
  %85 = load i32, i32* %19, align 4
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %87 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 1000
  %91 = icmp slt i32 %85, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %84
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %17, i32 0, i32 0
  %98 = call i32 @lpfc_readl(i32 %96, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %112

101:                                              ; preds = %92
  %102 = load i32, i32* @lpfc_port_smphr_port_status, align 4
  %103 = call i32 @bf_get(i32 %102, %struct.lpfc_register* %17)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @LPFC_PORT_SEM_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @LPFC_PORT_SEM_UE_RECOVERABLE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %115

110:                                              ; preds = %101
  %111 = call i32 @msleep(i32 1000)
  br label %112

112:                                              ; preds = %110, %100
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %84

115:                                              ; preds = %109, %84
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %117 = load i32, i32* @KERN_ERR, align 4
  %118 = load i32, i32* @LOG_INIT, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %19, align 4
  %121 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %116, i32 %117, i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @LPFC_PORT_SEM_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @LPFC_PORT_SEM_UE_RECOVERABLE, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %163

127:                                              ; preds = %115
  store i32 0, i32* %19, align 4
  br label %128

128:                                              ; preds = %159, %127
  %129 = load i32, i32* %19, align 4
  %130 = icmp slt i32 %129, 20
  br i1 %130, label %131, label %162

131:                                              ; preds = %128
  %132 = call i32 @msleep(i32 1000)
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %134 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %17, i32 0, i32 0
  %138 = call i32 @lpfc_readl(i32 %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %131
  %141 = load i32, i32* @LPFC_POST_STAGE_PORT_READY, align 4
  %142 = load i32, i32* @lpfc_port_smphr_port_status, align 4
  %143 = call i32 @bf_get(i32 %142, %struct.lpfc_register* %17)
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %147 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @lpfc_sli4_port_sta_fn_reset(%struct.lpfc_hba* %146, i32 %147, i32 %148)
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %347

153:                                              ; preds = %145
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %155 = load i32, i32* @KERN_ERR, align 4
  %156 = load i32, i32* @LOG_INIT, align 4
  %157 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %154, i32 %155, i32 %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %162

158:                                              ; preds = %140, %131
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %19, align 4
  br label %128

162:                                              ; preds = %153, %128
  br label %163

163:                                              ; preds = %162, %115
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %165 = load i32, i32* @KERN_ERR, align 4
  %166 = load i32, i32* @LOG_INIT, align 4
  %167 = load i32, i32* %19, align 4
  %168 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %164, i32 %165, i32 %166, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  %169 = load i8*, i8** @LPFC_HBA_ERROR, align 8
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  br label %330

172:                                              ; preds = %36, %36
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %174 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  %180 = call i32 @lpfc_readl(i32 %178, i32* %179)
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @EIO, align 4
  %183 = sub nsw i32 0, %182
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %172
  %186 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %187 = load i32, i32* @KERN_ERR, align 4
  %188 = load i32, i32* @LOG_INIT, align 4
  %189 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %190 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @readl(i32 %194)
  %196 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %195)
  %197 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %198 = call i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba* %197)
  br label %347

199:                                              ; preds = %172
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 7
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @readl(i32 %205)
  store i32 %206, i32* %8, align 4
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @readl(i32 %212)
  store i32 %213, i32* %9, align 4
  %214 = load i32, i32* @lpfc_sliport_status_oti, align 4
  %215 = call i32 @bf_get(i32 %214, %struct.lpfc_register* %7)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %256

217:                                              ; preds = %199
  %218 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %219 = load i32, i32* @KERN_ERR, align 4
  %220 = load i32, i32* @LOG_INIT, align 4
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %9, align 4
  %223 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %218, i32 %219, i32 %220, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i32 %221, i32 %222)
  %224 = load i32, i32* @LPFC_TRANSGRESSION_HIGH_TEMPERATURE, align 4
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* @FC_REG_TEMPERATURE_EVENT, align 4
  %230 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %16, i32 0, i32 2
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* @LPFC_CRIT_TEMP, align 4
  %232 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %16, i32 0, i32 1
  store i32 %231, i32* %232, align 4
  %233 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %16, i32 0, i32 0
  store i32 -1, i32* %233, align 4
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %235 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %234, i32 0, i32 5
  %236 = load %struct.lpfc_vport*, %struct.lpfc_vport** %235, align 8
  %237 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %236)
  store %struct.Scsi_Host* %237, %struct.Scsi_Host** %5, align 8
  %238 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %239 = call i32 (...) @fc_get_event_number()
  %240 = bitcast %struct.temp_event* %16 to i8*
  %241 = load i32, i32* @SCSI_NL_VID_TYPE_PCI, align 4
  %242 = load i32, i32* @PCI_VENDOR_ID_EMULEX, align 4
  %243 = or i32 %241, %242
  %244 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %238, i32 %239, i32 12, i8* %240, i32 %243)
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 3
  %247 = call i32 @spin_lock_irq(i32* %246)
  %248 = load i32, i32* @HBA_OVER_TEMP, align 4
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 4
  store i32 %248, i32* %250, align 8
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %252 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %251, i32 0, i32 3
  %253 = call i32 @spin_unlock_irq(i32* %252)
  %254 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %255 = call i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba* %254)
  br label %347

256:                                              ; preds = %199
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @SLIPORT_ERR1_REG_ERR_CODE_2, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %269

260:                                              ; preds = %256
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* @SLIPORT_ERR2_REG_FW_RESTART, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %266 = load i32, i32* @KERN_ERR, align 4
  %267 = load i32, i32* @LOG_INIT, align 4
  %268 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %265, i32 %266, i32 %267, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %297

269:                                              ; preds = %260, %256
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* @SLIPORT_ERR1_REG_ERR_CODE_2, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %269
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @SLIPORT_ERR2_REG_FORCED_DUMP, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %273
  %278 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %279 = load i32, i32* @KERN_ERR, align 4
  %280 = load i32, i32* @LOG_INIT, align 4
  %281 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %278, i32 %279, i32 %280, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %296

282:                                              ; preds = %273, %269
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* @SLIPORT_ERR1_REG_ERR_CODE_2, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %295

286:                                              ; preds = %282
  %287 = load i32, i32* %9, align 4
  %288 = load i32, i32* @SLIPORT_ERR2_REG_FUNC_PROVISON, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %286
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %292 = load i32, i32* @KERN_ERR, align 4
  %293 = load i32, i32* @LOG_INIT, align 4
  %294 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %291, i32 %292, i32 %293, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %295

295:                                              ; preds = %290, %286, %282
  br label %296

296:                                              ; preds = %295, %277
  br label %297

297:                                              ; preds = %296, %264
  %298 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %299 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %297
  br label %347

303:                                              ; preds = %297
  %304 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %305 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %306 = load i32, i32* %15, align 4
  %307 = call i32 @lpfc_sli4_port_sta_fn_reset(%struct.lpfc_hba* %304, i32 %305, i32 %306)
  store i32 %307, i32* %18, align 4
  %308 = load i32, i32* %18, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %303
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* @SLIPORT_ERR1_REG_ERR_CODE_2, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %319

314:                                              ; preds = %310
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* @SLIPORT_ERR2_REG_FORCED_DUMP, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %314
  br label %347

319:                                              ; preds = %314, %310
  br label %330

320:                                              ; preds = %303
  %321 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %322 = load i32, i32* @KERN_ERR, align 4
  %323 = load i32, i32* @LOG_INIT, align 4
  %324 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %321, i32 %322, i32 %323, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %325 = load i8*, i8** @LPFC_HBA_ERROR, align 8
  %326 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %327 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %326, i32 0, i32 1
  store i8* %325, i8** %327, align 8
  br label %330

328:                                              ; preds = %36
  br label %329

329:                                              ; preds = %36, %328
  br label %330

330:                                              ; preds = %329, %320, %319, %163
  %331 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %332 = load i32, i32* @KERN_WARNING, align 4
  %333 = load i32, i32* @LOG_INIT, align 4
  %334 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %331, i32 %332, i32 %333, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %335 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %336 = call i32 @lpfc_board_errevt_to_mgmt(%struct.lpfc_hba* %335)
  %337 = load i32, i32* @FC_REG_DUMP_EVENT, align 4
  store i32 %337, i32* %4, align 4
  %338 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %339 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %338)
  store %struct.Scsi_Host* %339, %struct.Scsi_Host** %5, align 8
  %340 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %341 = call i32 (...) @fc_get_event_number()
  %342 = bitcast i32* %4 to i8*
  %343 = load i32, i32* @SCSI_NL_VID_TYPE_PCI, align 4
  %344 = load i32, i32* @PCI_VENDOR_ID_EMULEX, align 4
  %345 = or i32 %343, %344
  %346 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %340, i32 %341, i32 4, i8* %342, i32 %345)
  br label %347

347:                                              ; preds = %330, %318, %302, %217, %185, %152, %76, %68, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pci_channel_offline(i32) #2

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #2

declare dso_local i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba*) #2

declare dso_local i32 @memset(%struct.lpfc_register*, i32, i32) #2

declare dso_local i32 @bf_get(i32, %struct.lpfc_register*) #2

declare dso_local i32 @lpfc_readl(i32, i32*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @lpfc_sli4_port_sta_fn_reset(%struct.lpfc_hba*, i32, i32) #2

declare dso_local i32 @readl(i32) #2

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #2

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #2

declare dso_local i32 @fc_get_event_number(...) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @lpfc_board_errevt_to_mgmt(%struct.lpfc_hba*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
