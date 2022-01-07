; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_work_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_work_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i64, i32, i32, i64, i32, i64, i32, i32, i32, %struct.lpfc_vport*, %struct.TYPE_2__ }
%struct.lpfc_vport = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_sli_ring = type { i32 }

@LPFC_PCI_DEV_OC = common dso_local global i64 0, align 8
@HA_ERATT = common dso_local global i32 0, align 4
@HA_MBATT = common dso_local global i32 0, align 4
@HA_LATT = common dso_local global i32 0, align 4
@HBA_RRQ_ACTIVE = common dso_local global i32 0, align 4
@ELS_XRI_ABORT_EVENT = common dso_local global i32 0, align 4
@ASYNC_EVENT = common dso_local global i32 0, align 4
@HBA_POST_RECEIVE_BUFFER = common dso_local global i32 0, align 4
@LPFC_ELS_HBQ = common dso_local global i32 0, align 4
@FCF_REDISC_EVT = common dso_local global i32 0, align 4
@WORKER_DISC_TMO = common dso_local global i32 0, align 4
@WORKER_ELS_TMO = common dso_local global i32 0, align 4
@WORKER_HB_TMO = common dso_local global i32 0, align 4
@WORKER_MBOX_TMO = common dso_local global i32 0, align 4
@WORKER_FABRIC_BLOCK_TMO = common dso_local global i32 0, align 4
@WORKER_RAMP_DOWN_QUEUE = common dso_local global i32 0, align 4
@WORKER_DELAYED_DISC_TMO = common dso_local global i32 0, align 4
@HA_RXMASK = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@LPFC_DEFERRED_RING_EVENT = common dso_local global i32 0, align 4
@HBA_SP_QUEUE_EVT = common dso_local global i32 0, align 4
@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_DATA_READY = common dso_local global i32 0, align 4
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@LS_MDS_LOOPBACK = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@HC_R0INT_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WRK Enable ring: cntl:x%x hacopy:x%x\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"WRK Ring ok:     cntl:x%x hacopy:x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_work_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_work_done(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_vport**, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 7
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 7
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LPFC_PCI_DEV_OC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = call i32 @lpfc_sli4_post_async_mbox(%struct.lpfc_hba* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @HA_ERATT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %37 = call i32 @lpfc_handle_eratt(%struct.lpfc_hba* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @HA_MBATT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %45 = call i32 @lpfc_sli_handle_mb_event(%struct.lpfc_hba* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HA_LATT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %53 = call i32 @lpfc_handle_latt(%struct.lpfc_hba* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LPFC_PCI_DEV_OC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %125

60:                                               ; preds = %54
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HBA_RRQ_ACTIVE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %69 = call i32 @lpfc_handle_rrq_active(%struct.lpfc_hba* %68)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ELS_XRI_ABORT_EVENT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %79 = call i32 @lpfc_sli4_els_xri_abort_event_proc(%struct.lpfc_hba* %78)
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ASYNC_EVENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %89 = call i32 @lpfc_sli4_async_event_proc(%struct.lpfc_hba* %88)
  br label %90

90:                                               ; preds = %87, %80
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @HBA_POST_RECEIVE_BUFFER, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %90
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 7
  %100 = call i32 @spin_lock_irq(i32* %99)
  %101 = load i32, i32* @HBA_POST_RECEIVE_BUFFER, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 7
  %109 = call i32 @spin_unlock_irq(i32* %108)
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %111 = load i32, i32* @LPFC_ELS_HBQ, align 4
  %112 = call i32 @lpfc_sli_hbqbuf_add_hbqs(%struct.lpfc_hba* %110, i32 %111)
  br label %113

113:                                              ; preds = %97, %90
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 11
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FCF_REDISC_EVT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %123 = call i32 @lpfc_sli4_fcf_redisc_event_proc(%struct.lpfc_hba* %122)
  br label %124

124:                                              ; preds = %121, %113
  br label %125

125:                                              ; preds = %124, %54
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %127 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %126)
  store %struct.lpfc_vport** %127, %struct.lpfc_vport*** %8, align 8
  %128 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %8, align 8
  %129 = icmp ne %struct.lpfc_vport** %128, null
  br i1 %129, label %130, label %237

130:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %233, %130
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %134 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp sle i32 %132, %135
  br i1 %136, label %137, label %236

137:                                              ; preds = %131
  %138 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %8, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %138, i64 %140
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %141, align 8
  %143 = icmp eq %struct.lpfc_vport* %142, null
  br i1 %143, label %144, label %151

144:                                              ; preds = %137
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 10
  %150 = load %struct.lpfc_vport*, %struct.lpfc_vport** %149, align 8
  store %struct.lpfc_vport* %150, %struct.lpfc_vport** %9, align 8
  br label %157

151:                                              ; preds = %144, %137
  %152 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %8, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %152, i64 %154
  %156 = load %struct.lpfc_vport*, %struct.lpfc_vport** %155, align 8
  store %struct.lpfc_vport* %156, %struct.lpfc_vport** %9, align 8
  br label %157

157:                                              ; preds = %151, %147
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %159 = icmp eq %struct.lpfc_vport* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %236

161:                                              ; preds = %157
  %162 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %163 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %162, i32 0, i32 1
  %164 = call i32 @spin_lock_irq(i32* %163)
  %165 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %166 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %171 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %175 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %174, i32 0, i32 1
  %176 = call i32 @spin_unlock_irq(i32* %175)
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @WORKER_DISC_TMO, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %161
  %182 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %183 = call i32 @lpfc_disc_timeout_handler(%struct.lpfc_vport* %182)
  br label %184

184:                                              ; preds = %181, %161
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @WORKER_ELS_TMO, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  %190 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %191 = call i32 @lpfc_els_timeout_handler(%struct.lpfc_vport* %190)
  br label %192

192:                                              ; preds = %189, %184
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @WORKER_HB_TMO, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %199 = call i32 @lpfc_hb_timeout_handler(%struct.lpfc_hba* %198)
  br label %200

200:                                              ; preds = %197, %192
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @WORKER_MBOX_TMO, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %207 = call i32 @lpfc_mbox_timeout_handler(%struct.lpfc_hba* %206)
  br label %208

208:                                              ; preds = %205, %200
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @WORKER_FABRIC_BLOCK_TMO, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %215 = call i32 @lpfc_unblock_fabric_iocbs(%struct.lpfc_hba* %214)
  br label %216

216:                                              ; preds = %213, %208
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @WORKER_RAMP_DOWN_QUEUE, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %223 = call i32 @lpfc_ramp_down_queue_handler(%struct.lpfc_hba* %222)
  br label %224

224:                                              ; preds = %221, %216
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @WORKER_DELAYED_DISC_TMO, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %231 = call i32 @lpfc_delayed_disc_timeout_handler(%struct.lpfc_vport* %230)
  br label %232

232:                                              ; preds = %229, %224
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %10, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %10, align 4
  br label %131

236:                                              ; preds = %160, %131
  br label %237

237:                                              ; preds = %236, %125
  %238 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %239 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %8, align 8
  %240 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %238, %struct.lpfc_vport** %239)
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %242 = call %struct.lpfc_sli_ring* @lpfc_phba_elsring(%struct.lpfc_hba* %241)
  store %struct.lpfc_sli_ring* %242, %struct.lpfc_sli_ring** %3, align 8
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* @HA_RXMASK, align 4
  %245 = load i32, i32* @LPFC_ELS_RING, align 4
  %246 = mul nsw i32 4, %245
  %247 = shl i32 %244, %246
  %248 = and i32 %243, %247
  store i32 %248, i32* %5, align 4
  %249 = load i32, i32* @LPFC_ELS_RING, align 4
  %250 = mul nsw i32 4, %249
  %251 = load i32, i32* %5, align 4
  %252 = ashr i32 %251, %250
  store i32 %252, i32* %5, align 4
  %253 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %254 = icmp ne %struct.lpfc_sli_ring* %253, null
  br i1 %254, label %255, label %384

255:                                              ; preds = %237
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* @HA_RXMASK, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %274, label %260

260:                                              ; preds = %255
  %261 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %262 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @LPFC_DEFERRED_RING_EVENT, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %260
  %268 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %269 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @HBA_SP_QUEUE_EVT, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %384

274:                                              ; preds = %267, %260, %255
  %275 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %276 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %299

281:                                              ; preds = %274
  %282 = load i32, i32* @LPFC_DEFERRED_RING_EVENT, align 4
  %283 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %284 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %282
  store i32 %286, i32* %284, align 4
  %287 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %288 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load i32, i32* @HBA_SP_QUEUE_EVT, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %298, label %293

293:                                              ; preds = %281
  %294 = load i32, i32* @LPFC_DATA_READY, align 4
  %295 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %296 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %295, i32 0, i32 9
  %297 = call i32 @set_bit(i32 %294, i32* %296)
  br label %298

298:                                              ; preds = %293, %281
  br label %326

299:                                              ; preds = %274
  %300 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %301 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %300, i32 0, i32 4
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @LPFC_LINK_UP, align 8
  %304 = icmp sge i64 %302, %303
  br i1 %304, label %312, label %305

305:                                              ; preds = %299
  %306 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %307 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @LS_MDS_LOOPBACK, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %325

312:                                              ; preds = %305, %299
  %313 = load i32, i32* @LPFC_DEFERRED_RING_EVENT, align 4
  %314 = xor i32 %313, -1
  %315 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %316 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, %314
  store i32 %318, i32* %316, align 4
  %319 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %320 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* @HA_RXMASK, align 4
  %323 = and i32 %321, %322
  %324 = call i32 @lpfc_sli_handle_slow_ring_event(%struct.lpfc_hba* %319, %struct.lpfc_sli_ring* %320, i32 %323)
  br label %325

325:                                              ; preds = %312, %305
  br label %326

326:                                              ; preds = %325, %298
  %327 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %328 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %327, i32 0, i32 6
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @LPFC_SLI_REV4, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %326
  %333 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %334 = call i32 @lpfc_drain_txq(%struct.lpfc_hba* %333)
  br label %335

335:                                              ; preds = %332, %326
  %336 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %337 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %336, i32 0, i32 6
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @LPFC_SLI_REV3, align 8
  %340 = icmp sle i64 %338, %339
  br i1 %340, label %341, label %383

341:                                              ; preds = %335
  %342 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %343 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %342, i32 0, i32 7
  %344 = call i32 @spin_lock_irq(i32* %343)
  %345 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %346 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %345, i32 0, i32 8
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @readl(i32 %347)
  store i32 %348, i32* %6, align 4
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* @HC_R0INT_ENA, align 4
  %351 = load i32, i32* @LPFC_ELS_RING, align 4
  %352 = shl i32 %350, %351
  %353 = and i32 %349, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %374, label %355

355:                                              ; preds = %341
  %356 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %357 = load i32, i32* %6, align 4
  %358 = load i32, i32* %4, align 4
  %359 = call i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba* %356, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %357, i32 %358, i32 0)
  %360 = load i32, i32* @HC_R0INT_ENA, align 4
  %361 = load i32, i32* @LPFC_ELS_RING, align 4
  %362 = shl i32 %360, %361
  %363 = load i32, i32* %6, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %6, align 4
  %365 = load i32, i32* %6, align 4
  %366 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %367 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %366, i32 0, i32 8
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @writel(i32 %365, i32 %368)
  %370 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %371 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %370, i32 0, i32 8
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @readl(i32 %372)
  br label %379

374:                                              ; preds = %341
  %375 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %376 = load i32, i32* %6, align 4
  %377 = load i32, i32* %4, align 4
  %378 = call i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba* %375, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %376, i32 %377, i32 0)
  br label %379

379:                                              ; preds = %374, %355
  %380 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %381 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %380, i32 0, i32 7
  %382 = call i32 @spin_unlock_irq(i32* %381)
  br label %383

383:                                              ; preds = %379, %335
  br label %384

384:                                              ; preds = %383, %267, %237
  %385 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %386 = call i32 @lpfc_work_list_done(%struct.lpfc_hba* %385)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli4_post_async_mbox(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_handle_eratt(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_handle_mb_event(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_handle_latt(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_handle_rrq_active(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_els_xri_abort_event_proc(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_async_event_proc(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_hbqbuf_add_hbqs(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_fcf_redisc_event_proc(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_disc_timeout_handler(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_timeout_handler(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_hb_timeout_handler(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_mbox_timeout_handler(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unblock_fabric_iocbs(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_ramp_down_queue_handler(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_delayed_disc_timeout_handler(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local %struct.lpfc_sli_ring* @lpfc_phba_elsring(%struct.lpfc_hba*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lpfc_sli_handle_slow_ring_event(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i32) #1

declare dso_local i32 @lpfc_drain_txq(%struct.lpfc_hba*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_debugfs_slow_ring_trc(%struct.lpfc_hba*, i8*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @lpfc_work_list_done(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
