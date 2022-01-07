; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_state_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_nlp_state_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.lpfc_nodelist = type { i32, i32, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.Scsi_Host = type { i32 }

@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@NLP_NODEV_REMOVE = common dso_local global i32 0, align 4
@NLP_FC_NODE = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_RCV_PLOGI = common dso_local global i32 0, align 4
@NLP_FC4_NVME = common dso_local global i32 0, align 4
@NLP_NVME_TARGET = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i64 0, align 8
@NameServer_DID = common dso_local global i64 0, align 8
@FDMI_DID = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_MAX_BUCKET_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"0286 lpfc_nlp_state_cleanup failed to allocate statistical data buffer DID 0x%x\0A\00", align 1
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@LPFC_MAX_TARGET = common dso_local global i32 0, align 4
@NLP_TGT_NO_SCSIID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32, i32)* @lpfc_nlp_state_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_nlp_state_cleanup(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %11 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i32, i32* @NLP_NODEV_REMOVE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @NLP_FC_NODE, align 4
  %23 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %15, %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @NLP_NODEV_REMOVE, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %35 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* @NLP_RCV_PLOGI, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %38
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %108

57:                                               ; preds = %53, %49
  %58 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %59 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %70 = call i32 @lpfc_unregister_remote_port(%struct.lpfc_nodelist* %69)
  br label %71

71:                                               ; preds = %62, %57
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %73 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NLP_FC4_NVME, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %71
  %79 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %80 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %86 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %78
  %92 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %93 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NLP_NVME_TARGET, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %101 = call i32 @lpfc_nvme_unregister_port(%struct.lpfc_vport* %99, %struct.lpfc_nodelist* %100)
  br label %102

102:                                              ; preds = %98, %91
  br label %106

103:                                              ; preds = %78
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %105 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %104)
  br label %106

106:                                              ; preds = %103, %102
  br label %107

107:                                              ; preds = %106, %71
  br label %108

108:                                              ; preds = %107, %53
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %194

116:                                              ; preds = %112, %108
  %117 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %118 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %139, label %121

121:                                              ; preds = %116
  %122 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %123 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @Fabric_DID, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %121
  %128 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %129 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NameServer_DID, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %135 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @FDMI_DID, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %133, %127, %121, %116
  %140 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %141 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %140, i32 0, i32 1
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %148 = call i32 @lpfc_register_remote_port(%struct.lpfc_vport* %146, %struct.lpfc_nodelist* %147)
  br label %149

149:                                              ; preds = %139, %133
  %150 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %151 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %150, i32 0, i32 1
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @LPFC_SLI_REV4, align 8
  %156 = icmp sge i64 %154, %155
  br i1 %156, label %157, label %193

157:                                              ; preds = %149
  %158 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %159 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @NLP_FC4_NVME, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %193

164:                                              ; preds = %157
  %165 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %166 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %165, i32 0, i32 1
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %189

171:                                              ; preds = %164
  %172 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %173 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @NLP_NVME_TARGET, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %171
  %179 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %180 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %179, i32 0, i32 1
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %186 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %187 = call i32 @lpfc_nvme_register_port(%struct.lpfc_vport* %185, %struct.lpfc_nodelist* %186)
  br label %188

188:                                              ; preds = %178, %171
  br label %192

189:                                              ; preds = %164
  %190 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %191 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %190)
  br label %192

192:                                              ; preds = %189, %188
  br label %193

193:                                              ; preds = %192, %157, %149
  br label %194

194:                                              ; preds = %193, %112
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %222

198:                                              ; preds = %194
  %199 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %200 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %222

203:                                              ; preds = %198
  %204 = load i32, i32* @LPFC_MAX_BUCKET_COUNT, align 4
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call i32 @kcalloc(i32 %204, i32 4, i32 %205)
  %207 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %208 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %207, i32 0, i32 5
  store i32 %206, i32* %208, align 8
  %209 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %210 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %203
  %214 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %215 = load i32, i32* @KERN_ERR, align 4
  %216 = load i32, i32* @LOG_NODE, align 4
  %217 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %218 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %219)
  br label %221

221:                                              ; preds = %213, %203
  br label %222

222:                                              ; preds = %221, %198, %194
  %223 = load i32, i32* %8, align 4
  %224 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %271

226:                                              ; preds = %222
  %227 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %228 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @NLP_FCP_TARGET, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %271

233:                                              ; preds = %226
  %234 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %235 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %234, i32 0, i32 4
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = icmp ne %struct.TYPE_4__* %236, null
  br i1 %237, label %238, label %253

238:                                              ; preds = %233
  %239 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %240 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %239, i32 0, i32 4
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, -1
  br i1 %244, label %253, label %245

245:                                              ; preds = %238
  %246 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %247 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %246, i32 0, i32 4
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @LPFC_MAX_TARGET, align 4
  %252 = icmp sge i32 %250, %251
  br i1 %252, label %253, label %271

253:                                              ; preds = %245, %238, %233
  %254 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %255 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @spin_lock_irq(i32 %256)
  %258 = load i32, i32* @NLP_TGT_NO_SCSIID, align 4
  %259 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %260 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %261, %258
  store i32 %262, i32* %260, align 8
  %263 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %264 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @spin_unlock_irq(i32 %265)
  %267 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %268 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %269 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %270 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %267, %struct.lpfc_nodelist* %268, i32 %269)
  br label %271

271:                                              ; preds = %253, %245, %226, %222
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_unregister_remote_port(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nvme_unregister_port(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_register_remote_port(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nvme_register_port(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
