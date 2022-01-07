; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_plogi_confirm_nport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_plogi_confirm_nport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i64*, i32, %struct.fc_rport*, %struct.lpfc_nvme_rport*, i32, i32, i32, %struct.lpfc_vport* }
%struct.fc_rport = type { i32, %struct.lpfc_rport_data* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nvme_rport = type { i32 }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32* }
%struct.serv_parm = type { i32 }

@NLP_FABRIC = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@LOG_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"3178 PLOGI confirm: ndlp x%x x%x x%x: new_ndlp x%x x%x x%x\0A\00", align 1
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@FC_FABRIC = common dso_local global i32 0, align 4
@NLP_UNREG_INP = common dso_local global i32 0, align 4
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"3179 PLOGI confirm NEW: %x %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"3180 PLOGI confirm SWAP: %x %x\0A\00", align 1
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i32 0, align 4
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"3173 PLOGI confirm exit: new_ndlp x%x x%x x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_nodelist* (%struct.lpfc_hba*, i32*, %struct.lpfc_nodelist*)* @lpfc_plogi_confirm_nport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_nodelist* @lpfc_plogi_confirm_nport(%struct.lpfc_hba* %0, i32* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca %struct.lpfc_rport_data*, align 8
  %12 = alloca %struct.fc_rport*, align 8
  %13 = alloca %struct.serv_parm*, align 8
  %14 = alloca [4 x i64], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.lpfc_nvme_rport*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %26 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %25, i32 0, i32 10
  %27 = load %struct.lpfc_vport*, %struct.lpfc_vport** %26, align 8
  store %struct.lpfc_vport* %27, %struct.lpfc_vport** %8, align 8
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %29 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %28)
  store %struct.Scsi_Host* %29, %struct.Scsi_Host** %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store %struct.lpfc_nvme_rport* null, %struct.lpfc_nvme_rport** %21, align 8
  store i64* null, i64** %24, align 8
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %31 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NLP_FABRIC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %37, %struct.lpfc_nodelist** %4, align 8
  br label %645

38:                                               ; preds = %3
  %39 = load i32*, i32** %6, align 8
  %40 = bitcast i32* %39 to i64*
  %41 = getelementptr inbounds i64, i64* %40, i64 4
  %42 = bitcast i64* %41 to %struct.serv_parm*
  store %struct.serv_parm* %42, %struct.serv_parm** %13, align 8
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %44 = call i32 @memset(i64* %43, i32 0, i32 4)
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %46 = load %struct.serv_parm*, %struct.serv_parm** %13, align 8
  %47 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %46, i32 0, i32 0
  %48 = call %struct.lpfc_nodelist* @lpfc_findnode_wwpn(%struct.lpfc_vport* %45, i32* %47)
  store %struct.lpfc_nodelist* %48, %struct.lpfc_nodelist** %10, align 8
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %51 = icmp eq %struct.lpfc_nodelist* %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %38
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %54 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %57, %struct.lpfc_nodelist** %4, align 8
  br label %645

58:                                               ; preds = %52, %38
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @LPFC_SLI_REV4, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i64* @mempool_alloc(i32 %67, i32 %68)
  store i64* %69, i64** %24, align 8
  %70 = load i64*, i64** %24, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i64*, i64** %24, align 8
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @memset(i64* %73, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %72, %64
  br label %79

79:                                               ; preds = %78, %58
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %81 = load i32, i32* @KERN_INFO, align 4
  %82 = load i32, i32* @LOG_ELS, align 4
  %83 = load i32, i32* @LOG_NODE, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %86 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %89 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %92 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %95 = icmp ne %struct.lpfc_nodelist* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %79
  %97 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %98 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  br label %101

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i32 [ %99, %96 ], [ 0, %100 ]
  %103 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %104 = icmp ne %struct.lpfc_nodelist* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %107 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  br label %110

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i32 [ %108, %105 ], [ 0, %109 ]
  %112 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %113 = icmp ne %struct.lpfc_nodelist* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %116 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  br label %119

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i32 [ %117, %114 ], [ 0, %118 ]
  %121 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %80, i32 %81, i32 %84, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %90, i32 %93, i32 %102, i32 %111, i32 %120)
  %122 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %123 = icmp ne %struct.lpfc_nodelist* %122, null
  br i1 %123, label %163, label %124

124:                                              ; preds = %119
  %125 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %126 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %125, i32 0, i32 8
  %127 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %128 = call i64 @memcmp(i32* %126, i64* %127, i32 4)
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %124
  %133 = load i64*, i64** %24, align 8
  %134 = icmp ne i64* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i64*, i64** %24, align 8
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @mempool_free(i64* %136, i32 %139)
  br label %141

141:                                              ; preds = %135, %132
  %142 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %142, %struct.lpfc_nodelist** %4, align 8
  br label %645

143:                                              ; preds = %124
  %144 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %145 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %146 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %144, i32 %147)
  store %struct.lpfc_nodelist* %148, %struct.lpfc_nodelist** %10, align 8
  %149 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %150 = icmp ne %struct.lpfc_nodelist* %149, null
  br i1 %150, label %162, label %151

151:                                              ; preds = %143
  %152 = load i64*, i64** %24, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i64*, i64** %24, align 8
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @mempool_free(i64* %155, i32 %158)
  br label %160

160:                                              ; preds = %154, %151
  %161 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %161, %struct.lpfc_nodelist** %4, align 8
  br label %645

162:                                              ; preds = %143
  br label %249

163:                                              ; preds = %119
  %164 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %165 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %226, label %167

167:                                              ; preds = %163
  %168 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %169 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %168, i32 0, i32 8
  %170 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %171 = call i64 @memcmp(i32* %169, i64* %170, i32 4)
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %167
  %176 = load i64*, i64** %24, align 8
  %177 = icmp ne i64* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i64*, i64** %24, align 8
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @mempool_free(i64* %179, i32 %182)
  br label %184

184:                                              ; preds = %178, %175
  %185 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %185, %struct.lpfc_nodelist** %4, align 8
  br label %645

186:                                              ; preds = %167
  %187 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %188 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %189 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %190 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %187, %struct.lpfc_nodelist* %188, i32 %189)
  store %struct.lpfc_nodelist* %190, %struct.lpfc_nodelist** %10, align 8
  %191 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %192 = icmp ne %struct.lpfc_nodelist* %191, null
  br i1 %192, label %204, label %193

193:                                              ; preds = %186
  %194 = load i64*, i64** %24, align 8
  %195 = icmp ne i64* %194, null
  br i1 %195, label %196, label %202

196:                                              ; preds = %193
  %197 = load i64*, i64** %24, align 8
  %198 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %199 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @mempool_free(i64* %197, i32 %200)
  br label %202

202:                                              ; preds = %196, %193
  %203 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  store %struct.lpfc_nodelist* %203, %struct.lpfc_nodelist** %4, align 8
  br label %645

204:                                              ; preds = %186
  %205 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %206 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %16, align 4
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %209 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @LPFC_SLI_REV4, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %225

213:                                              ; preds = %204
  %214 = load i64*, i64** %24, align 8
  %215 = icmp ne i64* %214, null
  br i1 %215, label %216, label %225

216:                                              ; preds = %213
  %217 = load i64*, i64** %24, align 8
  %218 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %219 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %218, i32 0, i32 3
  %220 = load i64*, i64** %219, align 8
  %221 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %222 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @memcpy(i64* %217, i64* %220, i32 %223)
  br label %225

225:                                              ; preds = %216, %213, %204
  br label %248

226:                                              ; preds = %163
  %227 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %228 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %16, align 4
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @LPFC_SLI_REV4, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %247

235:                                              ; preds = %226
  %236 = load i64*, i64** %24, align 8
  %237 = icmp ne i64* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load i64*, i64** %24, align 8
  %240 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %241 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %240, i32 0, i32 3
  %242 = load i64*, i64** %241, align 8
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %244 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @memcpy(i64* %239, i64* %242, i32 %245)
  br label %247

247:                                              ; preds = %238, %235, %226
  br label %248

248:                                              ; preds = %247, %225
  br label %249

249:                                              ; preds = %248, %162
  %250 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %251 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @FC_FABRIC, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %249
  %257 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %258 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  store i32 %259, i32* %20, align 4
  %260 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %261 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %264 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 8
  br label %265

265:                                              ; preds = %256, %249
  %266 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %267 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %268 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %266, %struct.lpfc_nodelist* %267)
  %269 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %270 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %273 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %275 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %274, i32 0, i32 9
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %278 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %277, i32 0, i32 9
  store i32 %276, i32* %278, align 8
  %279 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %280 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @LPFC_SLI_REV4, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %295

284:                                              ; preds = %265
  %285 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %286 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %285, i32 0, i32 3
  %287 = load i64*, i64** %286, align 8
  %288 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %289 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %288, i32 0, i32 3
  %290 = load i64*, i64** %289, align 8
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %292 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @memcpy(i64* %287, i64* %290, i32 %293)
  br label %295

295:                                              ; preds = %284, %265
  %296 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %297 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = call i32 @spin_lock_irq(i32* %298)
  %300 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %301 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  store i32 %302, i32* %18, align 4
  %303 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %304 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  store i32 %305, i32* %17, align 4
  %306 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %307 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %310 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 8
  %311 = load i32, i32* %18, align 4
  %312 = load i32, i32* @NLP_UNREG_INP, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %295
  %316 = load i32, i32* @NLP_UNREG_INP, align 4
  %317 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %318 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 8
  br label %328

321:                                              ; preds = %295
  %322 = load i32, i32* @NLP_UNREG_INP, align 4
  %323 = xor i32 %322, -1
  %324 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %325 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = and i32 %326, %323
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %321, %315
  %329 = load i32, i32* %18, align 4
  %330 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %328
  %334 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %335 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %336 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = or i32 %337, %334
  store i32 %338, i32* %336, align 8
  br label %346

339:                                              ; preds = %328
  %340 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %341 = xor i32 %340, -1
  %342 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %343 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %344, %341
  store i32 %345, i32* %343, align 8
  br label %346

346:                                              ; preds = %339, %333
  %347 = load i32, i32* %18, align 4
  %348 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %349 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %348, i32 0, i32 2
  store i32 %347, i32* %349, align 8
  %350 = load i32, i32* %17, align 4
  %351 = load i32, i32* @NLP_UNREG_INP, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %346
  %355 = load i32, i32* @NLP_UNREG_INP, align 4
  %356 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %357 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = or i32 %358, %355
  store i32 %359, i32* %357, align 8
  br label %367

360:                                              ; preds = %346
  %361 = load i32, i32* @NLP_UNREG_INP, align 4
  %362 = xor i32 %361, -1
  %363 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %364 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = and i32 %365, %362
  store i32 %366, i32* %364, align 8
  br label %367

367:                                              ; preds = %360, %354
  %368 = load i32, i32* %17, align 4
  %369 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %367
  %373 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %374 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %375 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = or i32 %376, %373
  store i32 %377, i32* %375, align 8
  br label %385

378:                                              ; preds = %367
  %379 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %380 = xor i32 %379, -1
  %381 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %382 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = and i32 %383, %380
  store i32 %384, i32* %382, align 8
  br label %385

385:                                              ; preds = %378, %372
  %386 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %387 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = call i32 @spin_unlock_irq(i32* %388)
  %390 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %391 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %390, i32 0, i32 7
  %392 = load i32, i32* %391, align 8
  store i32 %392, i32* %19, align 4
  %393 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %394 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %395 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %396 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %393, %struct.lpfc_nodelist* %394, i32 %397)
  %399 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %400 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %399, i32 0, i32 6
  %401 = load %struct.lpfc_nvme_rport*, %struct.lpfc_nvme_rport** %400, align 8
  store %struct.lpfc_nvme_rport* %401, %struct.lpfc_nvme_rport** %21, align 8
  %402 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %403 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %402, i32 0, i32 6
  %404 = load %struct.lpfc_nvme_rport*, %struct.lpfc_nvme_rport** %403, align 8
  %405 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %406 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %405, i32 0, i32 6
  store %struct.lpfc_nvme_rport* %404, %struct.lpfc_nvme_rport** %406, align 8
  %407 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %408 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %407, i32 0, i32 8
  %409 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %410 = call i64 @memcmp(i32* %408, i64* %409, i32 4)
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %412, label %511

412:                                              ; preds = %385
  %413 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %414 = load i32, i32* @KERN_INFO, align 4
  %415 = load i32, i32* @LOG_ELS, align 4
  %416 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %417 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %16, align 4
  %420 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %413, i32 %414, i32 %415, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %418, i32 %419)
  %421 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %422 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %421, i32 0, i32 5
  %423 = load %struct.fc_rport*, %struct.fc_rport** %422, align 8
  store %struct.fc_rport* %423, %struct.fc_rport** %12, align 8
  %424 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %425 = icmp ne %struct.fc_rport* %424, null
  br i1 %425, label %426, label %453

426:                                              ; preds = %412
  %427 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %428 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %427, i32 0, i32 1
  %429 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %428, align 8
  store %struct.lpfc_rport_data* %429, %struct.lpfc_rport_data** %11, align 8
  %430 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %11, align 8
  %431 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %430, i32 0, i32 0
  %432 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %431, align 8
  %433 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %434 = icmp eq %struct.lpfc_nodelist* %432, %433
  br i1 %434, label %435, label %447

435:                                              ; preds = %426
  %436 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %437 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %436, i32 0, i32 5
  store %struct.fc_rport* null, %struct.fc_rport** %437, align 8
  %438 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %439 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %438)
  %440 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %441 = call %struct.lpfc_nodelist* @lpfc_nlp_get(%struct.lpfc_nodelist* %440)
  %442 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %11, align 8
  %443 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %442, i32 0, i32 0
  store %struct.lpfc_nodelist* %441, %struct.lpfc_nodelist** %443, align 8
  %444 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %445 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %446 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %445, i32 0, i32 5
  store %struct.fc_rport* %444, %struct.fc_rport** %446, align 8
  br label %447

447:                                              ; preds = %435, %426
  %448 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %449 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %452 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %451, i32 0, i32 0
  store i32 %450, i32* %452, align 8
  br label %453

453:                                              ; preds = %447, %412
  %454 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %455 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %454, i32 0, i32 6
  %456 = load %struct.lpfc_nvme_rport*, %struct.lpfc_nvme_rport** %455, align 8
  %457 = icmp ne %struct.lpfc_nvme_rport* %456, null
  br i1 %457, label %458, label %463

458:                                              ; preds = %453
  %459 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %460 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %459, i32 0, i32 6
  store %struct.lpfc_nvme_rport* null, %struct.lpfc_nvme_rport** %460, align 8
  %461 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %462 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %461)
  br label %463

463:                                              ; preds = %458, %453
  %464 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %465 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %477

468:                                              ; preds = %463
  %469 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %470 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %469, i32 0, i32 3
  %471 = call i32 @spin_lock_irq(i32* %470)
  %472 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %473 = call i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist* %472)
  %474 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %475 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %474, i32 0, i32 3
  %476 = call i32 @spin_unlock_irq(i32* %475)
  br label %477

477:                                              ; preds = %468, %463
  %478 = load i32, i32* %16, align 4
  %479 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %480 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %479, i32 0, i32 1
  store i32 %478, i32* %480, align 4
  %481 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %482 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %483 = load i32, i32* %19, align 4
  %484 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %481, %struct.lpfc_nodelist* %482, i32 %483)
  %485 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %486 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = load i64, i64* @LPFC_SLI_REV4, align 8
  %489 = icmp eq i64 %487, %488
  br i1 %489, label %490, label %502

490:                                              ; preds = %477
  %491 = load i64*, i64** %24, align 8
  %492 = icmp ne i64* %491, null
  br i1 %492, label %493, label %502

493:                                              ; preds = %490
  %494 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %495 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %494, i32 0, i32 3
  %496 = load i64*, i64** %495, align 8
  %497 = load i64*, i64** %24, align 8
  %498 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %499 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = call i32 @memcpy(i64* %496, i64* %497, i32 %500)
  br label %502

502:                                              ; preds = %493, %490, %477
  %503 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %504 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %503)
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %510, label %506

506:                                              ; preds = %502
  %507 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %508 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %509 = call i32 @lpfc_drop_node(%struct.lpfc_vport* %507, %struct.lpfc_nodelist* %508)
  br label %510

510:                                              ; preds = %506, %502
  br label %613

511:                                              ; preds = %385
  %512 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %513 = load i32, i32* @KERN_INFO, align 4
  %514 = load i32, i32* @LOG_ELS, align 4
  %515 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %516 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* %16, align 4
  %519 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %512, i32 %513, i32 %514, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %517, i32 %518)
  %520 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %521 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %522 = call i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %520, %struct.lpfc_nodelist* %521)
  %523 = load i32, i32* %16, align 4
  %524 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %525 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %524, i32 0, i32 1
  store i32 %523, i32* %525, align 4
  %526 = load i32, i32* %20, align 4
  %527 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %528 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %527, i32 0, i32 4
  store i32 %526, i32* %528, align 8
  %529 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %530 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @LPFC_SLI_REV4, align 8
  %533 = icmp eq i64 %531, %532
  br i1 %533, label %534, label %546

534:                                              ; preds = %511
  %535 = load i64*, i64** %24, align 8
  %536 = icmp ne i64* %535, null
  br i1 %536, label %537, label %546

537:                                              ; preds = %534
  %538 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %539 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %538, i32 0, i32 3
  %540 = load i64*, i64** %539, align 8
  %541 = load i64*, i64** %24, align 8
  %542 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %543 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 8
  %545 = call i32 @memcpy(i64* %540, i64* %541, i32 %544)
  br label %546

546:                                              ; preds = %537, %534, %511
  %547 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %548 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %547, i32 0, i32 7
  %549 = load i32, i32* %548, align 8
  %550 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %551 = icmp eq i32 %549, %550
  br i1 %551, label %558, label %552

552:                                              ; preds = %546
  %553 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %554 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %553, i32 0, i32 7
  %555 = load i32, i32* %554, align 8
  %556 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %557 = icmp eq i32 %555, %556
  br i1 %557, label %558, label %560

558:                                              ; preds = %552, %546
  %559 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  store i32 %559, i32* %19, align 4
  br label %560

560:                                              ; preds = %558, %552
  %561 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %562 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %563 = load i32, i32* %19, align 4
  %564 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %561, %struct.lpfc_nodelist* %562, i32 %563)
  %565 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %566 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %565, i32 0, i32 6
  %567 = load %struct.lpfc_nvme_rport*, %struct.lpfc_nvme_rport** %566, align 8
  %568 = icmp ne %struct.lpfc_nvme_rport* %567, null
  br i1 %568, label %569, label %572

569:                                              ; preds = %560
  %570 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %571 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %570)
  br label %572

572:                                              ; preds = %569, %560
  %573 = load %struct.lpfc_nvme_rport*, %struct.lpfc_nvme_rport** %21, align 8
  %574 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %575 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %574, i32 0, i32 6
  store %struct.lpfc_nvme_rport* %573, %struct.lpfc_nvme_rport** %575, align 8
  %576 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %577 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %576, i32 0, i32 5
  %578 = load %struct.fc_rport*, %struct.fc_rport** %577, align 8
  store %struct.fc_rport* %578, %struct.fc_rport** %12, align 8
  %579 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %580 = icmp ne %struct.fc_rport* %579, null
  br i1 %580, label %581, label %612

581:                                              ; preds = %572
  %582 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %583 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %582, i32 0, i32 1
  %584 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %583, align 8
  store %struct.lpfc_rport_data* %584, %struct.lpfc_rport_data** %11, align 8
  %585 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %11, align 8
  %586 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %585, i32 0, i32 0
  %587 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %586, align 8
  %588 = icmp ne %struct.lpfc_nodelist* %587, null
  %589 = zext i1 %588 to i32
  store i32 %589, i32* %22, align 4
  %590 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %591 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %590, i32 0, i32 5
  %592 = load %struct.fc_rport*, %struct.fc_rport** %591, align 8
  %593 = icmp ne %struct.fc_rport* %592, null
  %594 = zext i1 %593 to i32
  store i32 %594, i32* %23, align 4
  %595 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %11, align 8
  %596 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %595, i32 0, i32 0
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %596, align 8
  %597 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %598 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %597, i32 0, i32 5
  store %struct.fc_rport* null, %struct.fc_rport** %598, align 8
  %599 = load i32, i32* %22, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %604

601:                                              ; preds = %581
  %602 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %603 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %602)
  br label %604

604:                                              ; preds = %601, %581
  %605 = load i32, i32* %23, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %611

607:                                              ; preds = %604
  %608 = load %struct.fc_rport*, %struct.fc_rport** %12, align 8
  %609 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %608, i32 0, i32 0
  %610 = call i32 @put_device(i32* %609)
  br label %611

611:                                              ; preds = %607, %604
  br label %612

612:                                              ; preds = %611, %572
  br label %613

613:                                              ; preds = %612, %510
  %614 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %615 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = load i64, i64* @LPFC_SLI_REV4, align 8
  %618 = icmp eq i64 %616, %617
  br i1 %618, label %619, label %628

619:                                              ; preds = %613
  %620 = load i64*, i64** %24, align 8
  %621 = icmp ne i64* %620, null
  br i1 %621, label %622, label %628

622:                                              ; preds = %619
  %623 = load i64*, i64** %24, align 8
  %624 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %625 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %624, i32 0, i32 2
  %626 = load i32, i32* %625, align 4
  %627 = call i32 @mempool_free(i64* %623, i32 %626)
  br label %628

628:                                              ; preds = %622, %619, %613
  %629 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %630 = load i32, i32* @KERN_INFO, align 4
  %631 = load i32, i32* @LOG_ELS, align 4
  %632 = load i32, i32* @LOG_NODE, align 4
  %633 = or i32 %631, %632
  %634 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %635 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  %637 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %638 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %637, i32 0, i32 2
  %639 = load i32, i32* %638, align 8
  %640 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %641 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %640, i32 0, i32 4
  %642 = load i32, i32* %641, align 8
  %643 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %629, i32 %630, i32 %633, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %636, i32 %639, i32 %642)
  %644 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  store %struct.lpfc_nodelist* %644, %struct.lpfc_nodelist** %4, align 8
  br label %645

645:                                              ; preds = %628, %202, %184, %160, %141, %56, %36
  %646 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  ret %struct.lpfc_nodelist* %646
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_wwpn(%struct.lpfc_vport*, i32*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, ...) #1

declare dso_local i64 @memcmp(i32*, i64*, i32) #1

declare dso_local i32 @mempool_free(i64*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_drop_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
