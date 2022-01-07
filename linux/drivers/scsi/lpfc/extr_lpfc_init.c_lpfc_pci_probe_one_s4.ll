; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_probe_one_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_probe_one_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.lpfc_hba = type { i64, i64, i32, i32, i64, i32, i64, i64, %struct.lpfc_vport*, i32, i32, %struct.TYPE_2__, i32 }
%struct.lpfc_vport = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LPFC_PCI_DEV_OC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"1410 Failed to set up pci memory space.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"1412 Failed to set up driver resource.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"1414 Failed to set up driver resource.\0A\00", align 1
@LPFC_INTR_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"0426 Failed to enable interrupt.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MSIX = common dso_local global i64 0, align 8
@LPFC_ENABLE_NVME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"1415 Failed to create scsi host.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"1416 Failed to allocate sysfs attr\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"1421 Failed to set up hba\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"6004 NVME registration failed, error x%x\0A\00", align 1
@INT_FW_UPGRADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @lpfc_pci_probe_one_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_pci_probe_one_s4(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.lpfc_vport* null, %struct.lpfc_vport** %7, align 8
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %8, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call %struct.lpfc_hba* @lpfc_hba_alloc(%struct.pci_dev* %12)
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %6, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %15 = icmp ne %struct.lpfc_hba* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %242

19:                                               ; preds = %2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %21 = call i32 @lpfc_enable_pci_dev(%struct.lpfc_hba* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %238

25:                                               ; preds = %19
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %27 = load i32, i32* @LPFC_PCI_DEV_OC, align 4
  %28 = call i32 @lpfc_api_table_setup(%struct.lpfc_hba* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %229

32:                                               ; preds = %25
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %34 = call i32 @lpfc_sli4_pci_mem_setup(%struct.lpfc_hba* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load i32, i32* @LOG_INIT, align 4
  %41 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %229

42:                                               ; preds = %32
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %44 = call i32 @lpfc_sli4_driver_resource_setup(%struct.lpfc_hba* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load i32, i32* @LOG_INIT, align 4
  %51 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %226

52:                                               ; preds = %42
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 12
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 11
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %61 = call i32 @lpfc_setup_driver_resource_phase2(%struct.lpfc_hba* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %66 = load i32, i32* @KERN_ERR, align 4
  %67 = load i32, i32* @LOG_INIT, align 4
  %68 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %223

69:                                               ; preds = %52
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @lpfc_get_hba_model_desc(%struct.lpfc_hba* %70, i32 %73, i32 %76)
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %10, align 8
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 8
  store %struct.lpfc_vport* null, %struct.lpfc_vport** %82, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %84 = call i32 @lpfc_stop_port(%struct.lpfc_hba* %83)
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i64 @lpfc_sli4_enable_intr(%struct.lpfc_hba* %85, i64 %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* @LPFC_INTR_ERROR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %69
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %93 = load i32, i32* @KERN_ERR, align 4
  %94 = load i32, i32* @LOG_INIT, align 4
  %95 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %92, i32 %93, i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %220

98:                                               ; preds = %69
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MSIX, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %106 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %104
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 5
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %113
  br label %122

122:                                              ; preds = %121, %104
  br label %123

123:                                              ; preds = %122, %98
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @lpfc_cpu_affinity_check(%struct.lpfc_hba* %124, i32 %127)
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %130 = call i32 @lpfc_create_shost(%struct.lpfc_hba* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %123
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %135 = load i32, i32* @KERN_ERR, align 4
  %136 = load i32, i32* @LOG_INIT, align 4
  %137 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %134, i32 %135, i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %217

138:                                              ; preds = %123
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 8
  %141 = load %struct.lpfc_vport*, %struct.lpfc_vport** %140, align 8
  store %struct.lpfc_vport* %141, %struct.lpfc_vport** %7, align 8
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %143 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %142)
  store %struct.Scsi_Host* %143, %struct.Scsi_Host** %8, align 8
  %144 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %145 = call i32 @lpfc_alloc_sysfs_attr(%struct.lpfc_vport* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %138
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %150 = load i32, i32* @KERN_ERR, align 4
  %151 = load i32, i32* @LOG_INIT, align 4
  %152 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %214

153:                                              ; preds = %138
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %155 = call i64 @lpfc_sli4_hba_setup(%struct.lpfc_hba* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %159 = load i32, i32* @KERN_ERR, align 4
  %160 = load i32, i32* @LOG_INIT, align 4
  %161 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %158, i32 %159, i32 %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32, i32* @ENODEV, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %9, align 4
  br label %211

164:                                              ; preds = %153
  %165 = load i64, i64* %11, align 8
  %166 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %167 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %166, i32 0, i32 7
  store i64 %165, i64* %167, align 8
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %169 = load i64, i64* %11, align 8
  %170 = call i32 @lpfc_log_intr_mode(%struct.lpfc_hba* %168, i64 %169)
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %172 = call i32 @lpfc_post_init_setup(%struct.lpfc_hba* %171)
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %174 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %164
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %179 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @LPFC_ENABLE_NVME, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %177
  %185 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %186 = call i32 @lpfc_nvme_create_localport(%struct.lpfc_vport* %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %191 = load i32, i32* @KERN_ERR, align 4
  %192 = load i32, i32* @LOG_INIT, align 4
  %193 = load i32, i32* %9, align 4
  %194 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %190, i32 %191, i32 %192, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %189, %184
  br label %196

196:                                              ; preds = %195, %177
  br label %197

197:                                              ; preds = %196, %164
  %198 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %199 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %204 = load i32, i32* @INT_FW_UPGRADE, align 4
  %205 = call i32 @lpfc_sli4_request_firmware_update(%struct.lpfc_hba* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %197
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %208 = call i32 @lpfc_create_static_vport(%struct.lpfc_hba* %207)
  %209 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %210 = call i32 @lpfc_sli4_ras_setup(%struct.lpfc_hba* %209)
  store i32 0, i32* %3, align 4
  br label %242

211:                                              ; preds = %157
  %212 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %213 = call i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport* %212)
  br label %214

214:                                              ; preds = %211, %148
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %216 = call i32 @lpfc_destroy_shost(%struct.lpfc_hba* %215)
  br label %217

217:                                              ; preds = %214, %133
  %218 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %219 = call i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba* %218)
  br label %220

220:                                              ; preds = %217, %91
  %221 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %222 = call i32 @lpfc_unset_driver_resource_phase2(%struct.lpfc_hba* %221)
  br label %223

223:                                              ; preds = %220, %64
  %224 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %225 = call i32 @lpfc_sli4_driver_resource_unset(%struct.lpfc_hba* %224)
  br label %226

226:                                              ; preds = %223, %47
  %227 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %228 = call i32 @lpfc_sli4_pci_mem_unset(%struct.lpfc_hba* %227)
  br label %229

229:                                              ; preds = %226, %37, %31
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %231 = call i32 @lpfc_disable_pci_dev(%struct.lpfc_hba* %230)
  %232 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %233 = icmp ne %struct.Scsi_Host* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %236 = call i32 @scsi_host_put(%struct.Scsi_Host* %235)
  br label %237

237:                                              ; preds = %234, %229
  br label %238

238:                                              ; preds = %237, %24
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %240 = call i32 @lpfc_hba_free(%struct.lpfc_hba* %239)
  %241 = load i32, i32* %9, align 4
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %238, %206, %16
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local %struct.lpfc_hba* @lpfc_hba_alloc(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_enable_pci_dev(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_api_table_setup(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_pci_mem_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_driver_resource_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @lpfc_setup_driver_resource_phase2(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_get_hba_model_desc(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @lpfc_stop_port(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_sli4_enable_intr(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_cpu_affinity_check(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_create_shost(%struct.lpfc_hba*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_alloc_sysfs_attr(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_sli4_hba_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_log_intr_mode(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_post_init_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_nvme_create_localport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_sli4_request_firmware_update(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_create_static_vport(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_ras_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_shost(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unset_driver_resource_phase2(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_driver_resource_unset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_pci_mem_unset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_disable_pci_dev(%struct.lpfc_hba*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_hba_free(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
