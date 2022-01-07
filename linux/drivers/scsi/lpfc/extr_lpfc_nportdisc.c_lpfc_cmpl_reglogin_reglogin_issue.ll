; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_reglogin_reglogin_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_reglogin_reglogin_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"0246 RegLogin failed Data: x%x x%x x%x x%x x%x\0A\00", align 1
@MBXERR_RPI_FULL = common dso_local global i64 0, align 8
@NLP_STE_REG_LOGIN_ISSUE = common dso_local global i8* null, align 8
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@NLP_DELAY_TMO = common dso_local global i32 0, align 4
@ELS_CMD_PLOGI = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"3066 RegLogin Complete on x%x x%x x%x\0A\00", align 1
@NLP_FABRIC = common dso_local global i32 0, align 4
@FC_PT2PT = common dso_local global i32 0, align 4
@NLP_FC4_FCP = common dso_local global i32 0, align 4
@LPFC_ENABLE_BOTH = common dso_local global i64 0, align 8
@LPFC_ENABLE_NVME = common dso_local global i64 0, align 8
@NLP_FC4_NVME = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@LPFC_ENABLE_FCP = common dso_local global i64 0, align 8
@SLI_CTNS_GFT_ID = common dso_local global i32 0, align 4
@NLP_STE_PRLI_ISSUE = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_reglogin_reglogin_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_reglogin_reglogin_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_hba*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %16 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %12, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %13, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %110

35:                                               ; preds = %4
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %37 = load i32, i32* @KERN_ERR, align 4
  %38 = load i32, i32* @LOG_DISCOVERY, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43, i32 %46, i32 %51, i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MBXERR_RPI_FULL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %35
  %64 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %69 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %70 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %67, %struct.lpfc_nodelist* %68, i32 %69)
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %72 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  br label %289

74:                                               ; preds = %35
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %76 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %75, i32 0, i32 8
  %77 = load i64, i64* @jiffies, align 8
  %78 = call i64 @msecs_to_jiffies(i32 1000)
  %79 = add nsw i64 %77, %78
  %80 = call i32 @mod_timer(i32* %76, i64 %79)
  %81 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %82 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @spin_lock_irq(i32 %83)
  %85 = load i32, i32* @NLP_DELAY_TMO, align 4
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %87 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @spin_unlock_irq(i32 %92)
  %94 = load i32, i32* @ELS_CMD_PLOGI, align 4
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 8
  %97 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %98 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %99 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %97, %struct.lpfc_nodelist* %98, i32 0)
  %100 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %101 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %102 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %105 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %106 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %103, %struct.lpfc_nodelist* %104, i32 %105)
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %5, align 4
  br label %289

110:                                              ; preds = %4
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LPFC_SLI_REV4, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %124 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %116, %110
  %126 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %127 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %128 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  %131 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %132 = load i32, i32* @KERN_INFO, align 4
  %133 = load i32, i32* @LOG_DISCOVERY, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %136 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %139 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %137, i32 %140)
  %142 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %143 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @NLP_FABRIC, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %249, label %148

148:                                              ; preds = %125
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %249

153:                                              ; preds = %148
  %154 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %155 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @FC_PT2PT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %186

160:                                              ; preds = %153
  %161 = load i32, i32* @NLP_FC4_FCP, align 4
  %162 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %163 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %167 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @LPFC_ENABLE_BOTH, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %177, label %171

171:                                              ; preds = %160
  %172 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %173 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @LPFC_ENABLE_NVME, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %171, %160
  %178 = load i32, i32* @NLP_FC4_NVME, align 4
  %179 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %180 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  %183 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %184 = call i32 @lpfc_nvme_update_localport(%struct.lpfc_vport* %183)
  br label %185

185:                                              ; preds = %177, %171
  br label %225

186:                                              ; preds = %153
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %188 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load i32, i32* @NLP_FC4_FCP, align 4
  %194 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %195 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %224

198:                                              ; preds = %186
  %199 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %200 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %198
  %204 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %205 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @LPFC_ENABLE_FCP, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %203
  %210 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %211 = load i32, i32* @SLI_CTNS_GFT_ID, align 4
  %212 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %213 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @lpfc_ns_cmd(%struct.lpfc_vport* %210, i32 %211, i32 0, i32 %214)
  %216 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %217 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %5, align 4
  br label %289

219:                                              ; preds = %203
  %220 = load i32, i32* @NLP_FC4_FCP, align 4
  %221 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %222 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %219, %198
  br label %224

224:                                              ; preds = %223, %192
  br label %225

225:                                              ; preds = %224, %185
  %226 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %227 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %228 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %227, i32 0, i32 2
  store i8* %226, i8** %228, align 8
  %229 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %230 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %231 = load i32, i32* @NLP_STE_PRLI_ISSUE, align 4
  %232 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %229, %struct.lpfc_nodelist* %230, i32 %231)
  %233 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %234 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %235 = call i64 @lpfc_issue_els_prli(%struct.lpfc_vport* %233, %struct.lpfc_nodelist* %234, i32 0)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %225
  %238 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %239 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %240 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %238, %struct.lpfc_nodelist* %239, i32 0)
  %241 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %242 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %243 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %242, i32 0, i32 2
  store i8* %241, i8** %243, align 8
  %244 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %245 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %246 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %247 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %244, %struct.lpfc_nodelist* %245, i32 %246)
  br label %248

248:                                              ; preds = %237, %225
  br label %285

249:                                              ; preds = %148, %125
  %250 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %251 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @FC_PT2PT, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %249
  %257 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %258 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %256
  %262 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %263 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.lpfc_hba*, %struct.lpfc_hba** %11, align 8
  %266 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %265, i32 0, i32 3
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  store i32 %264, i32* %268, align 4
  br label %269

269:                                              ; preds = %261, %256, %249
  %270 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %271 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @NLP_FABRIC, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %269
  %277 = load i8*, i8** @NLP_STE_REG_LOGIN_ISSUE, align 8
  %278 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %279 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %278, i32 0, i32 2
  store i8* %277, i8** %279, align 8
  %280 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %281 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %282 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %283 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %280, %struct.lpfc_nodelist* %281, i32 %282)
  br label %284

284:                                              ; preds = %276, %269
  br label %285

285:                                              ; preds = %284, %248
  %286 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %287 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %5, align 4
  br label %289

289:                                              ; preds = %285, %209, %74, %63
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nvme_update_localport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local i64 @lpfc_issue_els_prli(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
