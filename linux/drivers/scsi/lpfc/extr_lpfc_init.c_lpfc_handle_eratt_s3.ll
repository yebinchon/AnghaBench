; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_eratt_s3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_eratt_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32*, i32, i32, %struct.lpfc_vport*, i64, i32, i32, %struct.lpfc_sli }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_sli = type { i32 }
%struct.temp_event = type { i64, i32, i32 }
%struct.Scsi_Host = type { i32 }

@DEFER_ERATT = common dso_local global i32 0, align 4
@HS_FFER6 = common dso_local global i32 0, align 4
@HS_FFER8 = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LINK_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"1301 Re-establishing Link Data: x%x x%x x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"2861 Host Authentication device zeroization Data:x%x x%x x%x\0A\00", align 1
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@LPFC_MBX_NO_WAIT = common dso_local global i32 0, align 4
@HS_CRIT_TEMP = common dso_local global i32 0, align 4
@TEMPERATURE_OFFSET = common dso_local global i64 0, align 8
@FC_REG_TEMPERATURE_EVENT = common dso_local global i32 0, align 4
@LPFC_CRIT_TEMP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [93 x i8] c"0406 Adapter maximum temperature exceeded (%ld), taking this port offline Data: x%x x%x x%x\0A\00", align 1
@SCSI_NL_VID_TYPE_PCI = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_EMULEX = common dso_local global i32 0, align 4
@HBA_OVER_TEMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"0457 Adapter Hardware Error Data: x%x x%x x%x\0A\00", align 1
@FC_REG_DUMP_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_handle_eratt_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_handle_eratt_s3(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_sli*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.temp_event, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 5
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %10, align 8
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %3, align 8
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 9
  store %struct.lpfc_sli* %13, %struct.lpfc_sli** %4, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @pci_channel_offline(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 3
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load i32, i32* @DEFER_ERATT, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 3
  %31 = call i32 @spin_unlock_irq(i32* %30)
  br label %238

32:                                               ; preds = %1
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %238

38:                                               ; preds = %32
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = call i32 @lpfc_board_errevt_to_mgmt(%struct.lpfc_hba* %39)
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DEFER_ERATT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %49 = call i32 @lpfc_handle_deferred_eratt(%struct.lpfc_hba* %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HS_FFER6, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %59 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HS_FFER8, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %145

64:                                               ; preds = %57, %50
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @HS_FFER6, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %64
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %73 = load i32, i32* @KERN_INFO, align 4
  %74 = load i32, i32* @LOG_LINK_EVENT, align 4
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %71, %64
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %91 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @HS_FFER8, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %89
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %98 = load i32, i32* @KERN_INFO, align 4
  %99 = load i32, i32* @LOG_LINK_EVENT, align 4
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %107, i32 %112)
  br label %114

114:                                              ; preds = %96, %89
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 3
  %117 = call i32 @spin_lock_irq(i32* %116)
  %118 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %121 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 3
  %126 = call i32 @spin_unlock_irq(i32* %125)
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %128 = call i32 @lpfc_sli_abort_fcp_rings(%struct.lpfc_hba* %127)
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %130 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %131 = call i32 @lpfc_offline_prep(%struct.lpfc_hba* %129, i32 %130)
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %133 = call i32 @lpfc_offline(%struct.lpfc_hba* %132)
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %135 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %134)
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %137 = call i64 @lpfc_online(%struct.lpfc_hba* %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %114
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %141 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %140)
  br label %238

142:                                              ; preds = %114
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %144 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %143)
  br label %237

145:                                              ; preds = %57
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @HS_CRIT_TEMP, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %206

152:                                              ; preds = %145
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @TEMPERATURE_OFFSET, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i64 @readl(i64 %157)
  store i64 %158, i64* %6, align 8
  %159 = load i32, i32* @FC_REG_TEMPERATURE_EVENT, align 4
  %160 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %7, i32 0, i32 2
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @LPFC_CRIT_TEMP, align 4
  %162 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %7, i32 0, i32 1
  store i32 %161, i32* %162, align 8
  %163 = load i64, i64* %6, align 8
  %164 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %7, i32 0, i32 0
  store i64 %163, i64* %164, align 8
  %165 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %166 = load i32, i32* @KERN_ERR, align 4
  %167 = load i32, i32* @LOG_INIT, align 4
  %168 = load i64, i64* %6, align 8
  %169 = trunc i64 %168 to i32
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %174 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %179 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %165, i32 %166, i32 %167, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %169, i32 %172, i32 %177, i32 %182)
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 5
  %186 = load %struct.lpfc_vport*, %struct.lpfc_vport** %185, align 8
  %187 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %186)
  store %struct.Scsi_Host* %187, %struct.Scsi_Host** %8, align 8
  %188 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %189 = call i32 (...) @fc_get_event_number()
  %190 = bitcast %struct.temp_event* %7 to i8*
  %191 = load i32, i32* @SCSI_NL_VID_TYPE_PCI, align 4
  %192 = load i32, i32* @PCI_VENDOR_ID_EMULEX, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %188, i32 %189, i32 16, i8* %190, i32 %193)
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %196 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %195, i32 0, i32 3
  %197 = call i32 @spin_lock_irq(i32* %196)
  %198 = load i32, i32* @HBA_OVER_TEMP, align 4
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 4
  store i32 %198, i32* %200, align 4
  %201 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %202 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %201, i32 0, i32 3
  %203 = call i32 @spin_unlock_irq(i32* %202)
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %205 = call i32 @lpfc_offline_eratt(%struct.lpfc_hba* %204)
  br label %236

206:                                              ; preds = %145
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %208 = load i32, i32* @KERN_ERR, align 4
  %209 = load i32, i32* @LOG_INIT, align 4
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %211 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %219 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %207, i32 %208, i32 %209, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %212, i32 %217, i32 %222)
  %224 = load i64, i64* @FC_REG_DUMP_EVENT, align 8
  store i64 %224, i64* %5, align 8
  %225 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %226 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %225)
  store %struct.Scsi_Host* %226, %struct.Scsi_Host** %8, align 8
  %227 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %228 = call i32 (...) @fc_get_event_number()
  %229 = bitcast i64* %5 to i8*
  %230 = load i32, i32* @SCSI_NL_VID_TYPE_PCI, align 4
  %231 = load i32, i32* @PCI_VENDOR_ID_EMULEX, align 4
  %232 = or i32 %230, %231
  %233 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %227, i32 %228, i32 8, i8* %229, i32 %232)
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %235 = call i32 @lpfc_offline_eratt(%struct.lpfc_hba* %234)
  br label %236

236:                                              ; preds = %206, %152
  br label %237

237:                                              ; preds = %236, %142
  br label %238

238:                                              ; preds = %237, %139, %37, %19
  ret void
}

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_board_errevt_to_mgmt(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_handle_deferred_eratt(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_sli_abort_fcp_rings(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_offline_prep(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_offline(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_online(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

declare dso_local i32 @lpfc_offline_eratt(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
