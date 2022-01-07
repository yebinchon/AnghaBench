; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unreg_rpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_unreg_rpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i32 }
%struct.lpfc_nodelist = type { i32, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, %struct.lpfc_nodelist*, %struct.lpfc_vport* }

@NLP_RPI_REGISTERED = common dso_local global i32 0, align 4
@NLP_REG_LOGIN_SEND = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"3366 RPI x%x needs to be unregistered nlp_flag x%x did x%x\0A\00", align 1
@NLP_UNREG_INP = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"1436 unreg_rpi SKIP UNREG x%x on NPort x%x deferred x%x  flg x%x Data: x%px\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@NLP_ISSUE_LOGO = common dso_local global i32 0, align 4
@lpfc_nlp_logo_unreg = common dso_local global i8* null, align 8
@FC_UNLOADING = common dso_local global i32 0, align 4
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@lpfc_sli4_unreg_rpi_cmpl_clr = common dso_local global i8* null, align 8
@lpfc_sli_def_mbox_cmpl = common dso_local global i8* null, align 8
@Fabric_DID_MASK = common dso_local global i32 0, align 4
@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"1433 unreg_rpi UNREG x%x on NPort x%x deferred flg x%x Data:x%px\0A\00", align 1
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@NLP_NPR_ADISC = common dso_local global i32 0, align 4
@NLP_LOGO_ACC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_unreg_rpi(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 3
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %6, align 8
  store i32 1, i32* %9, align 4
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @NLP_REG_LOGIN_SEND, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %266

27:                                               ; preds = %20, %2
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NLP_REG_LOGIN_SEND, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %36 = load i32, i32* @KERN_INFO, align 4
  %37 = load i32, i32* @LOG_SLI, align 4
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %42 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %34, %27
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %50 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NLP_UNREG_INP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %48
  %56 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %57 = load i32, i32* @KERN_INFO, align 4
  %58 = load i32, i32* @LOG_DISCOVERY, align 4
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %63 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %66 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %69 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %72 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %61, i32 %64, i32 %67, i32 %70, %struct.lpfc_nodelist* %71)
  br label %234

73:                                               ; preds = %48
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.TYPE_8__* @mempool_alloc(i32 %76, i32 %77)
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %7, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = icmp ne %struct.TYPE_8__* %79, null
  br i1 %80, label %81, label %230

81:                                               ; preds = %73
  %82 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %83 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LPFC_SLI_REV4, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %81
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %10, align 8
  br label %100

100:                                              ; preds = %90, %81
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %103 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = call i32 @lpfc_unreg_login(%struct.lpfc_hba* %101, i32 %104, i64 %105, %struct.TYPE_8__* %106)
  %108 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  store %struct.lpfc_vport* %108, %struct.lpfc_vport** %110, align 8
  %111 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %112 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @NLP_ISSUE_LOGO, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %100
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store %struct.lpfc_nodelist* %118, %struct.lpfc_nodelist** %120, align 8
  %121 = load i8*, i8** @lpfc_nlp_logo_unreg, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  br label %180

124:                                              ; preds = %100
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @LPFC_SLI_REV4, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %124
  %131 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %132 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @FC_UNLOADING, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %158, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = call i64 @bf_get(i32 %138, i32* %141)
  %143 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %144 = icmp sge i64 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %137
  %146 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %147 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %146, i32 0, i32 3
  %148 = call i64 @kref_read(i32* %147)
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %152 = call %struct.lpfc_nodelist* @lpfc_nlp_get(%struct.lpfc_nodelist* %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  store %struct.lpfc_nodelist* %152, %struct.lpfc_nodelist** %154, align 8
  %155 = load i8*, i8** @lpfc_sli4_unreg_rpi_cmpl_clr, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  store i32 0, i32* %9, align 4
  br label %179

158:                                              ; preds = %145, %137, %130, %124
  %159 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %160 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @FC_UNLOADING, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %167, align 8
  %168 = load i8*, i8** @lpfc_sli_def_mbox_cmpl, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  br label %178

171:                                              ; preds = %158
  %172 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store %struct.lpfc_nodelist* %172, %struct.lpfc_nodelist** %174, align 8
  %175 = load i8*, i8** @lpfc_sli_def_mbox_cmpl, align 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  br label %178

178:                                              ; preds = %171, %165
  br label %179

179:                                              ; preds = %178, %150
  br label %180

180:                                              ; preds = %179, %117
  %181 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %182 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @Fabric_DID_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* @Fabric_DID_MASK, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %180
  %189 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %190 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %188
  %196 = load i32, i32* @NLP_UNREG_INP, align 4
  %197 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %198 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %195, %188, %180
  %202 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %203 = load i32, i32* @KERN_INFO, align 4
  %204 = load i32, i32* @LOG_DISCOVERY, align 4
  %205 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %206 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %209 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %212 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %215 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %202, i32 %203, i32 %204, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %207, i32 %210, i32 %213, %struct.lpfc_nodelist* %214)
  %216 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %218 = load i32, i32* @MBX_NOWAIT, align 4
  %219 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %216, %struct.TYPE_8__* %217, i32 %218)
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %201
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @mempool_free(%struct.TYPE_8__* %224, i32 %227)
  store i32 1, i32* %9, align 4
  br label %229

229:                                              ; preds = %223, %201
  br label %230

230:                                              ; preds = %229, %73
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %232 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %233 = call i32 @lpfc_no_rpi(%struct.lpfc_hba* %231, %struct.lpfc_nodelist* %232)
  br label %234

234:                                              ; preds = %230, %55
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %236 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @LPFC_SLI_REV4, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %242 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %241, i32 0, i32 1
  store i64 0, i64* %242, align 8
  br label %243

243:                                              ; preds = %240, %234
  %244 = load i32, i32* @NLP_RPI_REGISTERED, align 4
  %245 = xor i32 %244, -1
  %246 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %247 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load i32, i32* @NLP_NPR_ADISC, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %253 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 8
  %256 = load i32, i32* %9, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %243
  %259 = load i32, i32* @NLP_LOGO_ACC, align 4
  %260 = xor i32 %259, -1
  %261 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %262 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = and i32 %263, %260
  store i32 %264, i32* %262, align 8
  br label %265

265:                                              ; preds = %258, %243
  store i32 1, i32* %3, align 4
  br label %273

266:                                              ; preds = %20
  %267 = load i32, i32* @NLP_LOGO_ACC, align 4
  %268 = xor i32 %267, -1
  %269 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %270 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = and i32 %271, %268
  store i32 %272, i32* %270, align 8
  store i32 0, i32* %3, align 4
  br label %273

273:                                              ; preds = %266, %265
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i32, ...) #1

declare dso_local %struct.TYPE_8__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_unreg_login(%struct.lpfc_hba*, i32, i64, %struct.TYPE_8__*) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i64 @kref_read(i32*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lpfc_no_rpi(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
