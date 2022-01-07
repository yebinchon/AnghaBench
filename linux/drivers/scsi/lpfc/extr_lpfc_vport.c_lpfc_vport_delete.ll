; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_vport_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_vport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64 }
%struct.lpfc_nodelist = type { i64 }
%struct.lpfc_vport = type { i64, i32, i32, i64, i32, i32, i32, i64, i32, %struct.lpfc_hba*, i64, i64 }
%struct.lpfc_hba = type { i32, i64, i64, i32, %struct.lpfc_vport*, i32, i32 }
%struct.Scsi_Host = type { i32 }

@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"1812 vport_delete failed: Cannot delete physical host\0A\00", align 1
@VPORT_ERROR = common dso_local global i32 0, align 4
@STATIC_VPORT = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"1837 vport_delete failed: Cannot delete static vport.\0A\00", align 1
@LPFC_VPORT_FAILED = common dso_local global i64 0, align 8
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@VPORT_INVAL = common dso_local global i32 0, align 4
@NameServer_DID = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@SLI_CTNS_DA_ID = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"1829 CT command failed to delete objects on fabric\0A\00", align 1
@LPFC_VPI_REGISTERED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"1828 Vport Deleted.\0A\00", align 1
@VPORT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_vport_delete(%struct.fc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fc_vport* %0, %struct.fc_vport** %3, align 8
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %4, align 8
  %11 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %12 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.lpfc_vport**
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  store %struct.lpfc_vport* %15, %struct.lpfc_vport** %5, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %6, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 9
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %7, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %28 = load i32, i32* @KERN_ERR, align 4
  %29 = load i32, i32* @LOG_VPORT, align 4
  %30 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @VPORT_ERROR, align 4
  store i32 %31, i32* %2, align 4
  br label %457

32:                                               ; preds = %1
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %34 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @STATIC_VPORT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 4
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %41, align 8
  %43 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FC_UNLOADING, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %39
  %49 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load i32, i32* @LOG_VPORT, align 4
  %52 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @VPORT_ERROR, align 4
  store i32 %53, i32* %2, align 4
  br label %457

54:                                               ; preds = %39, %32
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 6
  %57 = call i32 @spin_lock_irq(i32* %56)
  %58 = load i32, i32* @FC_UNLOADING, align 4
  %59 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %60 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 6
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 4
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %67, align 8
  %69 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FC_UNLOADING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %117, label %74

74:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %97, %74
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %79, 3
  %81 = add nsw i32 %80, 3
  %82 = icmp slt i32 %76, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %85 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @LPFC_VPORT_FAILED, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %91 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @LPFC_VPORT_READY, align 8
  %94 = icmp slt i64 %92, %93
  br label %95

95:                                               ; preds = %89, %83, %75
  %96 = phi i1 [ false, %83 ], [ false, %75 ], [ %94, %89 ]
  br i1 %96, label %97, label %101

97:                                               ; preds = %95
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = call i32 @msleep(i32 1000)
  br label %75

101:                                              ; preds = %95
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %103 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LPFC_VPORT_FAILED, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %109 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @LPFC_VPORT_READY, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, i32* @EAGAIN, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %457

116:                                              ; preds = %107, %101
  br label %117

117:                                              ; preds = %116, %54
  %118 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %119 = call i32 @scsi_host_get(%struct.Scsi_Host* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %122, i32* %2, align 4
  br label %457

123:                                              ; preds = %117
  %124 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %125 = call i32 @scsi_host_get(%struct.Scsi_Host* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %129 = call i32 @scsi_host_put(%struct.Scsi_Host* %128)
  %130 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %130, i32* %2, align 4
  br label %457

131:                                              ; preds = %123
  %132 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %133 = call i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport* %132)
  %134 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %135 = call i32 @lpfc_debugfs_terminate(%struct.lpfc_vport* %134)
  %136 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %137 = load i32, i32* @NameServer_DID, align 4
  %138 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %136, i32 %137)
  store %struct.lpfc_nodelist* %138, %struct.lpfc_nodelist** %4, align 8
  %139 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %140 = icmp ne %struct.lpfc_nodelist* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %131
  %142 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %143 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %147 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %146)
  store i32 1, i32* %9, align 4
  br label %148

148:                                              ; preds = %145, %141, %131
  %149 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %150 = call i32 @fc_remove_host(%struct.Scsi_Host* %149)
  %151 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %152 = call i32 @scsi_remove_host(%struct.Scsi_Host* %151)
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 4
  %155 = load %struct.lpfc_vport*, %struct.lpfc_vport** %154, align 8
  %156 = load i32, i32* @Fabric_DID, align 4
  %157 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %155, i32 %156)
  store %struct.lpfc_nodelist* %157, %struct.lpfc_nodelist** %4, align 8
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %159 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %158, i32 0, i32 4
  %160 = load %struct.lpfc_vport*, %struct.lpfc_vport** %159, align 8
  %161 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @FC_UNLOADING, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %221

166:                                              ; preds = %148
  %167 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %168 = icmp ne %struct.lpfc_nodelist* %167, null
  br i1 %168, label %169, label %220

169:                                              ; preds = %166
  %170 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %171 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %220

173:                                              ; preds = %169
  %174 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %175 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %220

179:                                              ; preds = %173
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @LPFC_LINK_UP, align 8
  %184 = icmp sge i64 %182, %183
  br i1 %184, label %185, label %220

185:                                              ; preds = %179
  %186 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %187 = load i32, i32* @Fabric_DID, align 4
  %188 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %186, i32 %187)
  store %struct.lpfc_nodelist* %188, %struct.lpfc_nodelist** %4, align 8
  %189 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %190 = icmp ne %struct.lpfc_nodelist* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  br label %387

192:                                              ; preds = %185
  %193 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %194 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %192
  %197 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %198 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %199 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %200 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %197, %struct.lpfc_nodelist* %198, i32 %199)
  store %struct.lpfc_nodelist* %200, %struct.lpfc_nodelist** %4, align 8
  %201 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %202 = icmp ne %struct.lpfc_nodelist* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %196
  br label %387

204:                                              ; preds = %196
  br label %205

205:                                              ; preds = %204, %192
  br label %206

206:                                              ; preds = %205
  %207 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %208 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %209 = call i32 @lpfc_dequeue_node(%struct.lpfc_vport* %207, %struct.lpfc_nodelist* %208)
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %211 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %210, i32 0, i32 5
  %212 = call i32 @spin_lock_irq(i32* %211)
  %213 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %214 = call i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist* %213)
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %216 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %215, i32 0, i32 5
  %217 = call i32 @spin_unlock_irq(i32* %216)
  %218 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %219 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %218)
  br label %220

220:                                              ; preds = %206, %179, %173, %169, %166
  br label %387

221:                                              ; preds = %148
  %222 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %223 = icmp ne %struct.lpfc_nodelist* %222, null
  br i1 %223, label %224, label %374

224:                                              ; preds = %221
  %225 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %226 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %374

228:                                              ; preds = %224
  %229 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %230 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %374

234:                                              ; preds = %228
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %236 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @LPFC_LINK_UP, align 8
  %239 = icmp sge i64 %237, %238
  br i1 %239, label %240, label %374

240:                                              ; preds = %234
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %242 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %374

246:                                              ; preds = %240
  %247 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %248 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %247, i32 0, i32 11
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %284

251:                                              ; preds = %246
  %252 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %253 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = mul nsw i32 %254, 2000
  %256 = call i64 @msecs_to_jiffies(i32 %255)
  store i64 %256, i64* %8, align 8
  %257 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %258 = load i32, i32* @SLI_CTNS_DA_ID, align 4
  %259 = call i32 @lpfc_ns_cmd(%struct.lpfc_vport* %257, i32 %258, i32 0, i32 0)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %276, label %261

261:                                              ; preds = %251
  br label %262

262:                                              ; preds = %272, %261
  %263 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %264 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %263, i32 0, i32 10
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i64, i64* %8, align 8
  %269 = icmp ne i64 %268, 0
  br label %270

270:                                              ; preds = %267, %262
  %271 = phi i1 [ false, %262 ], [ %269, %267 ]
  br i1 %271, label %272, label %275

272:                                              ; preds = %270
  %273 = load i64, i64* %8, align 8
  %274 = call i64 @schedule_timeout(i64 %273)
  store i64 %274, i64* %8, align 8
  br label %262

275:                                              ; preds = %270
  br label %283

276:                                              ; preds = %251
  %277 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %278 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %277, i32 0, i32 9
  %279 = load %struct.lpfc_hba*, %struct.lpfc_hba** %278, align 8
  %280 = load i32, i32* @KERN_WARNING, align 4
  %281 = load i32, i32* @LOG_VPORT, align 4
  %282 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %279, i32 %280, i32 %281, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %283

283:                                              ; preds = %276, %275
  br label %284

284:                                              ; preds = %283, %246
  %285 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %286 = load i32, i32* @Fabric_DID, align 4
  %287 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %285, i32 %286)
  store %struct.lpfc_nodelist* %287, %struct.lpfc_nodelist** %4, align 8
  %288 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %289 = icmp ne %struct.lpfc_nodelist* %288, null
  br i1 %289, label %300, label %290

290:                                              ; preds = %284
  %291 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %292 = load i32, i32* @Fabric_DID, align 4
  %293 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %291, i32 %292)
  store %struct.lpfc_nodelist* %293, %struct.lpfc_nodelist** %4, align 8
  %294 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %295 = icmp ne %struct.lpfc_nodelist* %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %290
  br label %387

297:                                              ; preds = %290
  %298 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %299 = call i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist* %298)
  br label %334

300:                                              ; preds = %284
  %301 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %302 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %313, label %304

304:                                              ; preds = %300
  %305 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %306 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %307 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %308 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %305, %struct.lpfc_nodelist* %306, i32 %307)
  store %struct.lpfc_nodelist* %308, %struct.lpfc_nodelist** %4, align 8
  %309 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %310 = icmp ne %struct.lpfc_nodelist* %309, null
  br i1 %310, label %312, label %311

311:                                              ; preds = %304
  br label %387

312:                                              ; preds = %304
  br label %313

313:                                              ; preds = %312, %300
  %314 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %315 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %316 = call i32 @lpfc_dequeue_node(%struct.lpfc_vport* %314, %struct.lpfc_nodelist* %315)
  %317 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %318 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %317, i32 0, i32 5
  %319 = call i32 @spin_lock_irq(i32* %318)
  %320 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %321 = call i32 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist* %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %313
  %324 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %325 = call i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist* %324)
  br label %330

326:                                              ; preds = %313
  %327 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %328 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %327, i32 0, i32 5
  %329 = call i32 @spin_unlock_irq(i32* %328)
  br label %387

330:                                              ; preds = %323
  %331 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %332 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %331, i32 0, i32 5
  %333 = call i32 @spin_unlock_irq(i32* %332)
  br label %334

334:                                              ; preds = %330, %297
  %335 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %336 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %344, label %341

341:                                              ; preds = %334
  %342 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %343 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %342)
  br label %387

344:                                              ; preds = %334
  %345 = load i32, i32* @VPORT_INVAL, align 4
  %346 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %347 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %346, i32 0, i32 5
  store i32 %345, i32* %347, align 4
  %348 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %349 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = mul nsw i32 %350, 2000
  %352 = call i64 @msecs_to_jiffies(i32 %351)
  store i64 %352, i64* %8, align 8
  %353 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %354 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %355 = call i32 @lpfc_issue_els_npiv_logo(%struct.lpfc_vport* %353, %struct.lpfc_nodelist* %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %373, label %357

357:                                              ; preds = %344
  br label %358

358:                                              ; preds = %369, %357
  %359 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %360 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @VPORT_INVAL, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %358
  %365 = load i64, i64* %8, align 8
  %366 = icmp ne i64 %365, 0
  br label %367

367:                                              ; preds = %364, %358
  %368 = phi i1 [ false, %358 ], [ %366, %364 ]
  br i1 %368, label %369, label %372

369:                                              ; preds = %367
  %370 = load i64, i64* %8, align 8
  %371 = call i64 @schedule_timeout(i64 %370)
  store i64 %371, i64* %8, align 8
  br label %358

372:                                              ; preds = %367
  br label %373

373:                                              ; preds = %372, %344
  br label %374

374:                                              ; preds = %373, %240, %234, %228, %224, %221
  %375 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %376 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %375, i32 0, i32 4
  %377 = load %struct.lpfc_vport*, %struct.lpfc_vport** %376, align 8
  %378 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @FC_UNLOADING, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %374
  %384 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %385 = call i32 @lpfc_discovery_wait(%struct.lpfc_vport* %384)
  br label %386

386:                                              ; preds = %383, %374
  br label %387

387:                                              ; preds = %386, %341, %326, %311, %296, %220, %203, %191
  %388 = load i32, i32* %9, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %387
  %391 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %392 = load i32, i32* @NameServer_DID, align 4
  %393 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %391, i32 %392)
  store %struct.lpfc_nodelist* %393, %struct.lpfc_nodelist** %4, align 8
  %394 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %395 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %394)
  br label %396

396:                                              ; preds = %390, %387
  %397 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %398 = call i32 @lpfc_cleanup(%struct.lpfc_vport* %397)
  %399 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %400 = call i32 @lpfc_sli_host_down(%struct.lpfc_vport* %399)
  %401 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %402 = call i32 @lpfc_stop_vport_timers(%struct.lpfc_vport* %401)
  %403 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %404 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %403, i32 0, i32 4
  %405 = load %struct.lpfc_vport*, %struct.lpfc_vport** %404, align 8
  %406 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %405, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @FC_UNLOADING, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %430, label %411

411:                                              ; preds = %396
  %412 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %413 = call i32 @lpfc_unreg_all_rpis(%struct.lpfc_vport* %412)
  %414 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %415 = call i32 @lpfc_unreg_default_rpis(%struct.lpfc_vport* %414)
  %416 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %417 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %416, i32 0, i32 4
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %411
  %423 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %424 = call i64 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport* %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %422, %411
  %427 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %428 = call i32 @scsi_host_put(%struct.Scsi_Host* %427)
  br label %429

429:                                              ; preds = %426, %422
  br label %433

430:                                              ; preds = %396
  %431 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %432 = call i32 @scsi_host_put(%struct.Scsi_Host* %431)
  br label %433

433:                                              ; preds = %430, %429
  %434 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %435 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %436 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %435, i32 0, i32 8
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %434, i32 %437)
  %439 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %440 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %439, i32 0, i32 7
  store i64 0, i64* %440, align 8
  %441 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %442 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %441, i32 0, i32 3
  %443 = call i32 @spin_lock_irq(i32* %442)
  %444 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %445 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %444, i32 0, i32 6
  %446 = call i32 @list_del_init(i32* %445)
  %447 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %448 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %447, i32 0, i32 3
  %449 = call i32 @spin_unlock_irq(i32* %448)
  %450 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %451 = load i32, i32* @KERN_ERR, align 4
  %452 = load i32, i32* @LOG_VPORT, align 4
  %453 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %450, i32 %451, i32 %452, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %454 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %455 = call i32 @scsi_host_put(%struct.Scsi_Host* %454)
  %456 = load i32, i32* @VPORT_OK, align 4
  store i32 %456, i32* %2, align 4
  br label %457

457:                                              ; preds = %433, %127, %121, %113, %48, %26
  %458 = load i32, i32* %2, align 4
  ret i32 %458
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @scsi_host_get(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_terminate(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @fc_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_dequeue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_issue_els_npiv_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_discovery_wait(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_cleanup(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_sli_host_down(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_stop_vport_timers(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_unreg_all_rpis(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_unreg_default_rpis(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_free_vpi(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
