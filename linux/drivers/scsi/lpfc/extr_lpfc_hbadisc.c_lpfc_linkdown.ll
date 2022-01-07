; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i64, %struct.lpfc_vport*, i32, i64, %struct.TYPE_22__, %struct.TYPE_20__, i32, %struct.TYPE_15__ }
%struct.lpfc_vport = type { i32, i64, i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.Scsi_Host = type { i32* }
%struct.TYPE_23__ = type { %struct.lpfc_vport*, i8* }

@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@FCF_AVAILABLE = common dso_local global i32 0, align 4
@FCF_SCAN_DONE = common dso_local global i32 0, align 4
@LPFC_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@FC_LBIT = common dso_local global i32 0, align 4
@LPFC_ENABLE_BOTH = common dso_local global i64 0, align 8
@LPFC_ENABLE_NVME = common dso_local global i64 0, align 8
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_UNREG_ALL_DFLT_RPIS = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i8* null, align 8
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@FC_PT2PT = common dso_local global i32 0, align 4
@FC_PT2PT_PLOGI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_linkdown(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.lpfc_vport**, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %9, i32 0, i32 4
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %10, align 8
  store %struct.lpfc_vport* %11, %struct.lpfc_vport** %4, align 8
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %13 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %5, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %266

20:                                               ; preds = %1
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = call i32 @lpfc_scsi_dev_block(%struct.lpfc_hba* %21)
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 9
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load i32, i32* @FCF_AVAILABLE, align 4
  %29 = load i32, i32* @FCF_SCAN_DONE, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %32, i32 0, i32 10
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 9
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %93

45:                                               ; preds = %20
  %46 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %45
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = load i32, i32* @LPFC_LINK_SPEED_UNKNOWN, align 4
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  br label %76

76:                                               ; preds = %54, %45
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @spin_lock_irq(i32* %79)
  %81 = load i32, i32* @FC_LBIT, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 4
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %84, align 8
  %86 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %82
  store i32 %88, i32* %86, align 8
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @spin_unlock_irq(i32* %91)
  br label %93

93:                                               ; preds = %76, %20
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %94)
  store %struct.lpfc_vport** %95, %struct.lpfc_vport*** %6, align 8
  %96 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %97 = icmp ne %struct.lpfc_vport** %96, null
  br i1 %97, label %98, label %159

98:                                               ; preds = %93
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %155, %98
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %100, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %106, i64 %108
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %109, align 8
  %111 = icmp ne %struct.lpfc_vport* %110, null
  br label %112

112:                                              ; preds = %105, %99
  %113 = phi i1 [ false, %99 ], [ %111, %105 ]
  br i1 %113, label %114, label %158

114:                                              ; preds = %112
  %115 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %115, i64 %117
  %119 = load %struct.lpfc_vport*, %struct.lpfc_vport** %118, align 8
  %120 = call i32 @lpfc_linkdown_port(%struct.lpfc_vport* %119)
  %121 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %121, i64 %123
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %124, align 8
  %126 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %128 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @LPFC_ENABLE_BOTH, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %114
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %134 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @LPFC_ENABLE_NVME, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %132, %114
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %145 = call i32 @lpfc_nvmet_update_targetport(%struct.lpfc_hba* %144)
  br label %153

146:                                              ; preds = %138
  %147 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %147, i64 %149
  %151 = load %struct.lpfc_vport*, %struct.lpfc_vport** %150, align 8
  %152 = call i32 @lpfc_nvme_update_localport(%struct.lpfc_vport* %151)
  br label %153

153:                                              ; preds = %146, %143
  br label %154

154:                                              ; preds = %153, %132
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %99

158:                                              ; preds = %112
  br label %159

159:                                              ; preds = %158, %93
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %161 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %6, align 8
  %162 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %160, %struct.lpfc_vport** %161)
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @LPFC_SLI_REV3, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  br label %202

169:                                              ; preds = %159
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call %struct.TYPE_23__* @mempool_alloc(i32 %172, i32 %173)
  store %struct.TYPE_23__* %174, %struct.TYPE_23__** %7, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %176 = icmp ne %struct.TYPE_23__* %175, null
  br i1 %176, label %177, label %201

177:                                              ; preds = %169
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %179 = load i32, i32* @LPFC_UNREG_ALL_DFLT_RPIS, align 4
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %181 = call i32 @lpfc_unreg_did(%struct.lpfc_hba* %178, i32 65535, i32 %179, %struct.TYPE_23__* %180)
  %182 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  store %struct.lpfc_vport* %182, %struct.lpfc_vport** %184, align 8
  %185 = load i8*, i8** @lpfc_sli_def_mbox_cmpl, align 8
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %190 = load i32, i32* @MBX_NOWAIT, align 4
  %191 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %188, %struct.TYPE_23__* %189, i32 %190)
  %192 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %177
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %197 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @mempool_free(%struct.TYPE_23__* %195, i32 %198)
  br label %200

200:                                              ; preds = %194, %177
  br label %201

201:                                              ; preds = %200, %169
  br label %202

202:                                              ; preds = %201, %168
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %204 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %203, i32 0, i32 4
  %205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %204, align 8
  %206 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @FC_PT2PT, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %265

211:                                              ; preds = %202
  %212 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %213 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @GFP_KERNEL, align 4
  %216 = call %struct.TYPE_23__* @mempool_alloc(i32 %214, i32 %215)
  store %struct.TYPE_23__* %216, %struct.TYPE_23__** %7, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %218 = icmp ne %struct.TYPE_23__* %217, null
  br i1 %218, label %219, label %242

219:                                              ; preds = %211
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %222 = call i32 @lpfc_config_link(%struct.lpfc_hba* %220, %struct.TYPE_23__* %221)
  %223 = load i8*, i8** @lpfc_sli_def_mbox_cmpl, align 8
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 1
  store i8* %223, i8** %225, align 8
  %226 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 0
  store %struct.lpfc_vport* %226, %struct.lpfc_vport** %228, align 8
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %231 = load i32, i32* @MBX_NOWAIT, align 4
  %232 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %229, %struct.TYPE_23__* %230, i32 %231)
  %233 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %219
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %237 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %238 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @mempool_free(%struct.TYPE_23__* %236, i32 %239)
  br label %241

241:                                              ; preds = %235, %219
  br label %242

242:                                              ; preds = %241, %211
  %243 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %244 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @spin_lock_irq(i32* %245)
  %247 = load i32, i32* @FC_PT2PT, align 4
  %248 = load i32, i32* @FC_PT2PT_PLOGI, align 4
  %249 = or i32 %247, %248
  %250 = xor i32 %249, -1
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %252 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %251, i32 0, i32 4
  %253 = load %struct.lpfc_vport*, %struct.lpfc_vport** %252, align 8
  %254 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %250
  store i32 %256, i32* %254, align 8
  %257 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %258 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %257, i32 0, i32 4
  %259 = load %struct.lpfc_vport*, %struct.lpfc_vport** %258, align 8
  %260 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %259, i32 0, i32 2
  store i64 0, i64* %260, align 8
  %261 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %262 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @spin_unlock_irq(i32* %263)
  br label %265

265:                                              ; preds = %242, %202
  store i32 0, i32* %2, align 4
  br label %266

266:                                              ; preds = %265, %19
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_scsi_dev_block(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_linkdown_port(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_nvmet_update_targetport(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_nvme_update_localport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local %struct.TYPE_23__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_unreg_did(%struct.lpfc_hba*, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @lpfc_config_link(%struct.lpfc_hba*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
