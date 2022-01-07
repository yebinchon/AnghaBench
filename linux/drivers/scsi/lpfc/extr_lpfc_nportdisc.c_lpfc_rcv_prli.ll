; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_rcv_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i32, %struct.fc_rport* }
%struct.fc_rport = type { i32 }
%struct.lpfc_iocbq = type { i64 }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@PRLI_FCP_TYPE = common dso_local global i64 0, align 8
@PRLI_NVME_TYPE = common dso_local global i64 0, align 8
@NLP_FCP_INITIATOR = common dso_local global i32 0, align 4
@NLP_NVME_INITIATOR = common dso_local global i32 0, align 4
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_NVME_TARGET = common dso_local global i32 0, align 4
@NLP_FIRSTBURST = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@NLP_NVME_NSLER = common dso_local global i32 0, align 4
@NLP_FC4_NVME = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@NLP_FC4_FCP = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_UNKNOWN = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_RPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"rport rolechg:   role:x%x did:x%x flg:x%x\00", align 1
@LPFC_ENABLE_NVME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq*)* @lpfc_rcv_prli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_rcv_prli(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_dmabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.fc_rport*, align 8
  %12 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 1
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %7, align 8
  %16 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %16, i32 0, i32 6
  %18 = load %struct.fc_rport*, %struct.fc_rport** %17, align 8
  store %struct.fc_rport* %18, %struct.fc_rport** %11, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %22, %struct.lpfc_dmabuf** %8, align 8
  %23 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %8, align 8
  %24 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = bitcast i32* %28 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %10, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PRLI_FCP_TYPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PRLI_NVME_TYPE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %191

41:                                               ; preds = %35, %3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PRLI_FCP_TYPE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %55 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PRLI_NVME_TYPE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @NLP_NVME_INITIATOR, align 4
  %66 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %67 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %41
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %71
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PRLI_FCP_TYPE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* @NLP_FCP_TARGET, align 4
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %85 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PRLI_NVME_TYPE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* @NLP_NVME_TARGET, align 4
  %96 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %97 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* @NLP_FIRSTBURST, align 4
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %100
  br label %112

112:                                              ; preds = %111, %71
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %119 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %122 = load i32, i32* @NLP_FCP_TARGET, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %117
  %127 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %128 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %129 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %117, %112
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %132
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %139 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %137
  %143 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %144 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @NLP_NVME_INITIATOR, align 4
  %147 = load i32, i32* @NLP_NVME_TARGET, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %142
  %152 = load i32, i32* @NLP_NVME_NSLER, align 4
  %153 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %154 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %142, %137, %132
  %158 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %159 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %157
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PRLI_NVME_TYPE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %162
  %169 = load i32, i32* @NLP_FC4_NVME, align 4
  %170 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %171 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %175 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %176 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %177 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %174, %struct.lpfc_nodelist* %175, i32 %176)
  br label %178

178:                                              ; preds = %168, %162, %157
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @PRLI_FCP_TYPE, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i32, i32* @NLP_FC4_FCP, align 4
  %186 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %187 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %184, %178
  br label %191

191:                                              ; preds = %190, %35
  %192 = load %struct.fc_rport*, %struct.fc_rport** %11, align 8
  %193 = icmp ne %struct.fc_rport* %192, null
  br i1 %193, label %194, label %238

194:                                              ; preds = %191
  %195 = load i32, i32* @FC_RPORT_ROLE_UNKNOWN, align 4
  store i32 %195, i32* %12, align 4
  %196 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %197 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %194
  %203 = load i32, i32* @FC_RPORT_ROLE_FCP_INITIATOR, align 4
  %204 = load i32, i32* %12, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %202, %194
  %207 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %208 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @NLP_FCP_TARGET, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %215 = load i32, i32* %12, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %12, align 4
  br label %217

217:                                              ; preds = %213, %206
  %218 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %219 = load i32, i32* @LPFC_DISC_TRC_RPORT, align 4
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %222 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %225 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %218, i32 %219, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %220, i32 %223, i32 %226)
  %228 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %229 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @LPFC_ENABLE_NVME, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %217
  %234 = load %struct.fc_rport*, %struct.fc_rport** %11, align 8
  %235 = load i32, i32* %12, align 4
  %236 = call i32 @fc_remote_port_rolechg(%struct.fc_rport* %234, i32 %235)
  br label %237

237:                                              ; preds = %233, %217
  br label %238

238:                                              ; preds = %237, %191
  ret void
}

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @fc_remote_port_rolechg(%struct.fc_rport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
