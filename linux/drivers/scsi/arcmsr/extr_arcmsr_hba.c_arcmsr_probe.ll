; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i64, i64, i32, i32, i64 }
%struct.AdapterControlBlock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.Scsi_Host*, i32, %struct.pci_dev* }

@ENODEV = common dso_local global i32 0, align 4
@arcmsr_scsi_host_template = common dso_local global i32 0, align 4
@wait_q = common dso_local global i32 0, align 4
@ARCMSR_MAX_TARGETLUN = common dso_local global i32 0, align 4
@ARCMSR_MAX_TARGETID = common dso_local global i32 0, align 4
@host_can_queue = common dso_local global i64 0, align 8
@ARCMSR_MIN_OUTSTANDING_CMD = common dso_local global i64 0, align 8
@ARCMSR_MAX_OUTSTANDING_CMD = common dso_local global i64 0, align 8
@ARCMSR_DEFAULT_OUTSTANDING_CMD = common dso_local global i64 0, align 8
@cmd_per_lun = common dso_local global i64 0, align 8
@ARCMSR_MIN_CMD_PERLUN = common dso_local global i64 0, align 8
@ARCMSR_MAX_CMD_PERLUN = common dso_local global i64 0, align 8
@ARCMSR_DEFAULT_CMD_PERLUN = common dso_local global i64 0, align 8
@ARCMSR_SCSI_INITIATOR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"arcmsr\00", align 1
@ACB_F_MESSAGE_WQBUFFER_CLEARED = common dso_local global i32 0, align 4
@ACB_F_MESSAGE_RQBUFFER_CLEARED = common dso_local global i32 0, align 4
@ACB_F_MESSAGE_WQBUFFER_READED = common dso_local global i32 0, align 4
@ACB_F_SCSISTOPADAPTER = common dso_local global i32 0, align 4
@FAILED = common dso_local global i64 0, align 8
@set_date_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @arcmsr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcmsr_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.AdapterControlBlock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %247

18:                                               ; preds = %2
  %19 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @arcmsr_scsi_host_template, i32 72)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %6, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = icmp ne %struct.Scsi_Host* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %242

23:                                               ; preds = %18
  %24 = call i32 @init_waitqueue_head(i32* @wait_q)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %36, %struct.AdapterControlBlock** %7, align 8
  %37 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %38 = call i32 @memset(%struct.AdapterControlBlock* %37, i32 0, i32 72)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %41 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %40, i32 0, i32 13
  store %struct.pci_dev* %39, %struct.pci_dev** %41, align 8
  %42 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %46 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %45, i32 0, i32 12
  store i32 %44, i32* %46, align 8
  %47 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %48 = call i64 @arcmsr_set_dma_mask(%struct.AdapterControlBlock* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %23
  br label %239

51:                                               ; preds = %23
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %53 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %54 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %53, i32 0, i32 11
  store %struct.Scsi_Host* %52, %struct.Scsi_Host** %54, align 8
  %55 = load i32, i32* @ARCMSR_MAX_TARGETLUN, align 4
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @ARCMSR_MAX_TARGETID, align 4
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %60 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 0
  store i32 16, i32* %62, align 8
  %63 = load i64, i64* @host_can_queue, align 8
  %64 = load i64, i64* @ARCMSR_MIN_OUTSTANDING_CMD, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %51
  %67 = load i64, i64* @host_can_queue, align 8
  %68 = load i64, i64* @ARCMSR_MAX_OUTSTANDING_CMD, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %51
  %71 = load i64, i64* @ARCMSR_DEFAULT_OUTSTANDING_CMD, align 8
  store i64 %71, i64* @host_can_queue, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i64, i64* @host_can_queue, align 8
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 4
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* @cmd_per_lun, align 8
  %77 = load i64, i64* @ARCMSR_MIN_CMD_PERLUN, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = load i64, i64* @cmd_per_lun, align 8
  %81 = load i64, i64* @ARCMSR_MAX_CMD_PERLUN, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79, %72
  %84 = load i64, i64* @ARCMSR_DEFAULT_CMD_PERLUN, align 8
  store i64 %84, i64* @cmd_per_lun, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i64, i64* @cmd_per_lun, align 8
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* @ARCMSR_SCSI_INITIATOR_ID, align 4
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %8, align 4
  %93 = shl i32 %92, 8
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %97 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %100 = call i32 @pci_set_drvdata(%struct.pci_dev* %98, %struct.Scsi_Host* %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = call i32 @pci_set_master(%struct.pci_dev* %101)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %104 = call i32 @pci_request_regions(%struct.pci_dev* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %85
  br label %239

108:                                              ; preds = %85
  %109 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %110 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %109, i32 0, i32 10
  %111 = call i32 @spin_lock_init(i32* %110)
  %112 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %113 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %112, i32 0, i32 9
  %114 = call i32 @spin_lock_init(i32* %113)
  %115 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %116 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %115, i32 0, i32 8
  %117 = call i32 @spin_lock_init(i32* %116)
  %118 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %119 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %118, i32 0, i32 7
  %120 = call i32 @spin_lock_init(i32* %119)
  %121 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %122 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %121, i32 0, i32 6
  %123 = call i32 @spin_lock_init(i32* %122)
  %124 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %125 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %124, i32 0, i32 5
  %126 = call i32 @spin_lock_init(i32* %125)
  %127 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %128 = load i32, i32* @ACB_F_MESSAGE_RQBUFFER_CLEARED, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READED, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %133 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* @ACB_F_SCSISTOPADAPTER, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %139 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %143 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %142, i32 0, i32 4
  %144 = call i32 @INIT_LIST_HEAD(i32* %143)
  %145 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %146 = call i32 @arcmsr_remap_pciregion(%struct.AdapterControlBlock* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %108
  br label %236

150:                                              ; preds = %108
  %151 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %152 = call i32 @arcmsr_alloc_io_queue(%struct.AdapterControlBlock* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  br label %233

156:                                              ; preds = %150
  %157 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %158 = call i32 @arcmsr_get_firmware_spec(%struct.AdapterControlBlock* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  br label %230

162:                                              ; preds = %156
  %163 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %164 = call i32 @arcmsr_free_io_queue(%struct.AdapterControlBlock* %163)
  %165 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %166 = call i32 @arcmsr_alloc_ccb_pool(%struct.AdapterControlBlock* %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %233

170:                                              ; preds = %162
  %171 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %172 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 1
  %174 = call i32 @scsi_add_host(%struct.Scsi_Host* %171, i32* %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %227

178:                                              ; preds = %170
  %179 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %180 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %181 = call i64 @arcmsr_request_irq(%struct.pci_dev* %179, %struct.AdapterControlBlock* %180)
  %182 = load i64, i64* @FAILED, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %224

185:                                              ; preds = %178
  %186 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %187 = call i32 @arcmsr_iop_init(%struct.AdapterControlBlock* %186)
  %188 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %189 = call i32 @arcmsr_init_get_devmap_timer(%struct.AdapterControlBlock* %188)
  %190 = load i64, i64* @set_date_time, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %194 = call i32 @arcmsr_init_set_datetime_timer(%struct.AdapterControlBlock* %193)
  br label %195

195:                                              ; preds = %192, %185
  %196 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %197 = call i64 @arcmsr_alloc_sysfs_attr(%struct.AdapterControlBlock* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %203

200:                                              ; preds = %195
  %201 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %202 = call i32 @scsi_scan_host(%struct.Scsi_Host* %201)
  store i32 0, i32* %3, align 4
  br label %247

203:                                              ; preds = %199
  %204 = load i64, i64* @set_date_time, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %208 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %207, i32 0, i32 3
  %209 = call i32 @del_timer_sync(i32* %208)
  br label %210

210:                                              ; preds = %206, %203
  %211 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %212 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %211, i32 0, i32 2
  %213 = call i32 @del_timer_sync(i32* %212)
  %214 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %215 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %214, i32 0, i32 1
  %216 = call i32 @flush_work(i32* %215)
  %217 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %218 = call i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock* %217)
  %219 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %220 = call i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock* %219)
  %221 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %222 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %223 = call i32 @arcmsr_free_irq(%struct.pci_dev* %221, %struct.AdapterControlBlock* %222)
  br label %224

224:                                              ; preds = %210, %184
  %225 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %226 = call i32 @scsi_remove_host(%struct.Scsi_Host* %225)
  br label %227

227:                                              ; preds = %224, %177
  %228 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %229 = call i32 @arcmsr_free_ccb_pool(%struct.AdapterControlBlock* %228)
  br label %233

230:                                              ; preds = %161
  %231 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %232 = call i32 @arcmsr_free_io_queue(%struct.AdapterControlBlock* %231)
  br label %233

233:                                              ; preds = %230, %227, %169, %155
  %234 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %7, align 8
  %235 = call i32 @arcmsr_unmap_pciregion(%struct.AdapterControlBlock* %234)
  br label %236

236:                                              ; preds = %233, %149
  %237 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %238 = call i32 @pci_release_regions(%struct.pci_dev* %237)
  br label %239

239:                                              ; preds = %236, %107, %50
  %240 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %241 = call i32 @scsi_host_put(%struct.Scsi_Host* %240)
  br label %242

242:                                              ; preds = %239, %22
  %243 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %244 = call i32 @pci_disable_device(%struct.pci_dev* %243)
  %245 = load i32, i32* @ENODEV, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %242, %200, %15
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memset(%struct.AdapterControlBlock*, i32, i32) #1

declare dso_local i64 @arcmsr_set_dma_mask(%struct.AdapterControlBlock*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @arcmsr_remap_pciregion(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_alloc_io_queue(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_get_firmware_spec(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_io_queue(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_alloc_ccb_pool(%struct.AdapterControlBlock*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i64 @arcmsr_request_irq(%struct.pci_dev*, %struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_iop_init(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_init_get_devmap_timer(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_init_set_datetime_timer(%struct.AdapterControlBlock*) #1

declare dso_local i64 @arcmsr_alloc_sysfs_attr(%struct.AdapterControlBlock*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @arcmsr_stop_adapter_bgrb(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_flush_adapter_cache(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_free_irq(%struct.pci_dev*, %struct.AdapterControlBlock*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @arcmsr_free_ccb_pool(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_unmap_pciregion(%struct.AdapterControlBlock*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
