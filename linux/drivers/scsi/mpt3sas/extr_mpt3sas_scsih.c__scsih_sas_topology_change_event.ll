; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_topology_change_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_topology_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i64, i32, i64, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.fw_event_work = type { i64, i64 }
%struct._sas_node = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@MPT_DEBUG_EVENT_WORK_TASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ignoring expander event\0A\00", align 1
@MPI2_EVENT_SAS_TOPO_ES_ADDED = common dso_local global i64 0, align 8
@MPI2_EVENT_SAS_TOPO_RC_MASK = common dso_local global i64 0, align 8
@MPI2_EVENT_SAS_TOPO_PHYSTATUS_VACANT = common dso_local global i32 0, align 4
@MPI2_SAS_NEG_LINK_RATE_1_5 = common dso_local global i64 0, align 8
@MPI2_EVENT_SAS_TOPO_ES_NOT_RESPONDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*)* @_scsih_sas_topology_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_scsih_sas_topology_change_event(%struct.MPT3SAS_ADAPTER* %0, %struct.fw_event_work* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %5 = alloca %struct.fw_event_work*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct._sas_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %4, align 8
  store %struct.fw_event_work* %1, %struct.fw_event_work** %5, align 8
  %18 = load %struct.fw_event_work*, %struct.fw_event_work** %5, align 8
  %19 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %17, align 8
  %22 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %23 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MPT_DEBUG_EVENT_WORK_TASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %31 = call i32 @_scsih_sas_topology_change_event_debug(%struct.MPT3SAS_ADAPTER* %29, %struct.TYPE_7__* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %34 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %39 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %44 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37, %32
  store i32 0, i32* %3, align 4
  br label %307

48:                                               ; preds = %42
  %49 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %50 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %56 = call i32 @_scsih_sas_host_add(%struct.MPT3SAS_ADAPTER* %55)
  br label %60

57:                                               ; preds = %48
  %58 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %59 = call i32 @_scsih_sas_host_refresh(%struct.MPT3SAS_ADAPTER* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.fw_event_work*, %struct.fw_event_work** %5, align 8
  %62 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %67 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %68 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %69 = call i32 @dewtprintk(%struct.MPT3SAS_ADAPTER* %66, i32 %68)
  store i32 0, i32* %3, align 4
  br label %307

70:                                               ; preds = %60
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @le16_to_cpu(i32 %73)
  store i64 %74, i64* %7, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MPI2_EVENT_SAS_TOPO_ES_ADDED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i64 @_scsih_expander_add(%struct.MPT3SAS_ADAPTER* %81, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %307

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %70
  %88 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %89 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %88, i32 0, i32 5
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call %struct._sas_node* @mpt3sas_scsih_expander_find_by_handle(%struct.MPT3SAS_ADAPTER* %92, i64 %93)
  store %struct._sas_node* %94, %struct._sas_node** %12, align 8
  %95 = load %struct._sas_node*, %struct._sas_node** %12, align 8
  %96 = icmp ne %struct._sas_node* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %87
  %98 = load %struct._sas_node*, %struct._sas_node** %12, align 8
  %99 = getelementptr inbounds %struct._sas_node, %struct._sas_node* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %13, align 4
  %101 = load %struct._sas_node*, %struct._sas_node** %12, align 8
  %102 = getelementptr inbounds %struct._sas_node, %struct._sas_node* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %11, align 8
  br label %126

104:                                              ; preds = %87
  %105 = load i64, i64* %7, align 8
  %106 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %107 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %105, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %113 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %13, align 4
  %116 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %117 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %11, align 8
  br label %125

120:                                              ; preds = %104
  %121 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %122 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %121, i32 0, i32 5
  %123 = load i64, i64* %14, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  store i32 0, i32* %3, align 4
  br label %307

125:                                              ; preds = %111
  br label %126

126:                                              ; preds = %125, %97
  %127 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %128 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %127, i32 0, i32 5
  %129 = load i64, i64* %14, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %290, %126
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %293

137:                                              ; preds = %131
  %138 = load %struct.fw_event_work*, %struct.fw_event_work** %5, align 8
  %139 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %144 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %145 = call i32 @ioc_info(%struct.MPT3SAS_ADAPTER* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %146 = call i32 @dewtprintk(%struct.MPT3SAS_ADAPTER* %143, i32 %145)
  store i32 0, i32* %3, align 4
  br label %307

147:                                              ; preds = %137
  %148 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %149 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %154 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152, %147
  store i32 0, i32* %3, align 4
  br label %307

158:                                              ; preds = %152
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  store i64 %164, i64* %10, align 8
  %165 = load i64, i64* %10, align 8
  %166 = load i64, i64* %11, align 8
  %167 = icmp sge i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %290

169:                                              ; preds = %158
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @MPI2_EVENT_SAS_TOPO_RC_MASK, align 8
  %179 = and i64 %177, %178
  store i64 %179, i64* %9, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @MPI2_EVENT_SAS_TOPO_PHYSTATUS_VACANT, align 4
  %189 = sext i32 %188 to i64
  %190 = and i64 %187, %189
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %169
  %193 = load i64, i64* %9, align 8
  %194 = icmp ne i64 %193, 128
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %290

196:                                              ; preds = %192, %169
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @le16_to_cpu(i32 %204)
  store i64 %205, i64* %8, align 8
  %206 = load i64, i64* %8, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %196
  br label %290

209:                                              ; preds = %196
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = ashr i32 %217, 4
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %15, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, 15
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %16, align 8
  %230 = load i64, i64* %9, align 8
  switch i64 %230, label %289 [
    i64 130, label %231
    i64 129, label %268
    i64 128, label %285
  ]

231:                                              ; preds = %209
  %232 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %233 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  br label %289

237:                                              ; preds = %231
  %238 = load i64, i64* %15, align 8
  %239 = load i64, i64* %16, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %289

242:                                              ; preds = %237
  %243 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %244 = load i32, i32* %13, align 4
  %245 = load i64, i64* %8, align 8
  %246 = load i64, i64* %10, align 8
  %247 = load i64, i64* %15, align 8
  %248 = call i32 @mpt3sas_transport_update_links(%struct.MPT3SAS_ADAPTER* %243, i32 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64, i64* %15, align 8
  %250 = load i64, i64* @MPI2_SAS_NEG_LINK_RATE_1_5, align 8
  %251 = icmp slt i64 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %242
  br label %289

253:                                              ; preds = %242
  %254 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %255 = load i32, i32* %13, align 4
  %256 = load i64, i64* %8, align 8
  %257 = load i64, i64* %10, align 8
  %258 = load i64, i64* %15, align 8
  %259 = call i32 @_scsih_check_device(%struct.MPT3SAS_ADAPTER* %254, i32 %255, i64 %256, i64 %257, i64 %258)
  %260 = load i64, i64* %8, align 8
  %261 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %262 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @test_bit(i64 %260, i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %253
  br label %289

267:                                              ; preds = %253
  br label %268

268:                                              ; preds = %209, %267
  %269 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %270 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  br label %289

274:                                              ; preds = %268
  %275 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %276 = load i32, i32* %13, align 4
  %277 = load i64, i64* %8, align 8
  %278 = load i64, i64* %10, align 8
  %279 = load i64, i64* %15, align 8
  %280 = call i32 @mpt3sas_transport_update_links(%struct.MPT3SAS_ADAPTER* %275, i32 %276, i64 %277, i64 %278, i64 %279)
  %281 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %282 = load i64, i64* %8, align 8
  %283 = load i64, i64* %10, align 8
  %284 = call i32 @_scsih_add_device(%struct.MPT3SAS_ADAPTER* %281, i64 %282, i64 %283, i32 0)
  br label %289

285:                                              ; preds = %209
  %286 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %287 = load i64, i64* %8, align 8
  %288 = call i32 @_scsih_device_remove_by_handle(%struct.MPT3SAS_ADAPTER* %286, i64 %287)
  br label %289

289:                                              ; preds = %209, %285, %274, %273, %266, %252, %241, %236
  br label %290

290:                                              ; preds = %289, %208, %195, %168
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %6, align 4
  br label %131

293:                                              ; preds = %131
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @MPI2_EVENT_SAS_TOPO_ES_NOT_RESPONDING, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %293
  %300 = load %struct._sas_node*, %struct._sas_node** %12, align 8
  %301 = icmp ne %struct._sas_node* %300, null
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %4, align 8
  %304 = load i32, i32* %13, align 4
  %305 = call i32 @mpt3sas_expander_remove(%struct.MPT3SAS_ADAPTER* %303, i32 %304)
  br label %306

306:                                              ; preds = %302, %299, %293
  store i32 0, i32* %3, align 4
  br label %307

307:                                              ; preds = %306, %157, %142, %120, %85, %65, %47
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local i32 @_scsih_sas_topology_change_event_debug(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_7__*) #1

declare dso_local i32 @_scsih_sas_host_add(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @_scsih_sas_host_refresh(%struct.MPT3SAS_ADAPTER*) #1

declare dso_local i32 @dewtprintk(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @ioc_info(%struct.MPT3SAS_ADAPTER*, i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @_scsih_expander_add(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_node* @mpt3sas_scsih_expander_find_by_handle(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mpt3sas_transport_update_links(%struct.MPT3SAS_ADAPTER*, i32, i64, i64, i64) #1

declare dso_local i32 @_scsih_check_device(%struct.MPT3SAS_ADAPTER*, i32, i64, i64, i64) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @_scsih_add_device(%struct.MPT3SAS_ADAPTER*, i64, i64, i32) #1

declare dso_local i32 @_scsih_device_remove_by_handle(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @mpt3sas_expander_remove(%struct.MPT3SAS_ADAPTER*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
