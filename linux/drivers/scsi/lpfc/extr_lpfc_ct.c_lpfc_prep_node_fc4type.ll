; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_prep_node_fc4type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_prep_node_fc4type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i32, i32, i32, i32, i32 }
%struct.lpfc_nodelist = type { i32, i64, i32, i32 }

@LPFC_NPIV_PORT = common dso_local global i64 0, align 8
@FC_TYPE_FCP = common dso_local global i64 0, align 8
@FC_CT_RFF_ID = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Parse GID_FTrsp: did:x%x flg:x%x x%x\00", align 1
@NLP_FC4_FCP = common dso_local global i32 0, align 4
@FC_TYPE_NVME = common dso_local global i64 0, align 8
@NLP_FC4_NVME = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"0238 Process x%06x NameServer Rsp Data: x%x x%x x%x x%x x%x\0A\00", align 1
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@NLP_STE_UNUSED_NODE = common dso_local global i64 0, align 8
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Skip1 GID_FTrsp: did:x%x flg:x%x cnt:%d\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"0239 Skip x%06x NameServer Rsp Data: x%x x%x %p\0A\00", align 1
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Query GID_FTrsp: did:x%x flg:x%x cnt:%d\00", align 1
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_NVME_TARGET = common dso_local global i32 0, align 4
@SLI_CTNS_GFF_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Skip2 GID_FTrsp: did:x%x flg:x%x cnt:%d\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"0245 Skip x%06x NameServer Rsp Data: x%x x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, i32, i64)* @lpfc_prep_node_fc4type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_prep_node_fc4type(%struct.lpfc_vport* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LPFC_NPIV_PORT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %29, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @FC_TYPE_FCP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FC_CT_RFF_ID, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %132, label %29

29:                                               ; preds = %24, %17, %13, %3
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport* %30, i32 %31)
  store %struct.lpfc_nodelist* %32, %struct.lpfc_nodelist** %7, align 8
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %34 = icmp ne %struct.lpfc_nodelist* %33, null
  br i1 %34, label %35, label %108

35:                                               ; preds = %29
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %37 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %108

39:                                               ; preds = %35
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %41 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %44 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %40, i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @FC_TYPE_FCP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load i32, i32* @NLP_FC4_FCP, align 4
  %55 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %56 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %39
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @FC_TYPE_NVME, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @NLP_FC4_NVME, align 4
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %71 = load i32, i32* @KERN_INFO, align 4
  %72 = load i32, i32* @LOG_DISCOVERY, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %75 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %78 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %81 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %84 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i64 %82, i32 %85, i32 %88)
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %91 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %69
  %97 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %98 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NLP_STE_UNUSED_NODE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %105 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %106 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %103, %struct.lpfc_nodelist* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %96, %69
  br label %131

108:                                              ; preds = %35, %29
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %110 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %113 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %116 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %109, i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %114, i32 %117)
  %119 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %120 = load i32, i32* @KERN_INFO, align 4
  %121 = load i32, i32* @LOG_DISCOVERY, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %124 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %127 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %130 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %119, i32 %120, i32 %121, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %125, i32 %128, %struct.lpfc_nodelist* %129)
  br label %131

131:                                              ; preds = %108, %107
  br label %237

132:                                              ; preds = %24
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %134 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @FC_RSCN_MODE, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = call i64 @lpfc_rscn_payload_check(%struct.lpfc_vport* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %214

144:                                              ; preds = %139, %132
  %145 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %146 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %149 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %152 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %145, i32 %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %147, i32 %150, i32 %153)
  %155 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %155, i32 %156)
  store %struct.lpfc_nodelist* %157, %struct.lpfc_nodelist** %7, align 8
  %158 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %159 = icmp ne %struct.lpfc_nodelist* %158, null
  br i1 %159, label %160, label %197

160:                                              ; preds = %144
  %161 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %162 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %197

164:                                              ; preds = %160
  %165 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %166 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @NLP_FCP_TARGET, align 4
  %169 = load i32, i32* @NLP_NVME_TARGET, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %197

173:                                              ; preds = %164
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* @FC_TYPE_FCP, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* @NLP_FC4_FCP, align 4
  %179 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %180 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %173
  %184 = load i64, i64* %6, align 8
  %185 = load i64, i64* @FC_TYPE_NVME, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* @NLP_FC4_NVME, align 4
  %189 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %190 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %187, %183
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %195 = load i32, i32* %5, align 4
  %196 = call %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport* %194, i32 %195)
  br label %213

197:                                              ; preds = %164, %160, %144
  %198 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %199 = load i32, i32* @SLI_CTNS_GFF_ID, align 4
  %200 = load i32, i32* %5, align 4
  %201 = call i64 @lpfc_ns_cmd(%struct.lpfc_vport* %198, i32 %199, i32 0, i32 %200)
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %197
  %204 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %205 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  br label %212

208:                                              ; preds = %197
  %209 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %210 = load i32, i32* %5, align 4
  %211 = call %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport* %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %203
  br label %213

213:                                              ; preds = %212, %193
  br label %236

214:                                              ; preds = %139
  %215 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %216 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %219 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %222 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %215, i32 %216, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %217, i32 %220, i32 %223)
  %225 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %226 = load i32, i32* @KERN_INFO, align 4
  %227 = load i32, i32* @LOG_DISCOVERY, align 4
  %228 = load i32, i32* %5, align 4
  %229 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %230 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %233 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %225, i32 %226, i32 %227, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %228, i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %214, %213
  br label %237

237:                                              ; preds = %236, %131
  ret void
}

declare dso_local %struct.lpfc_nodelist* @lpfc_setup_disc_node(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i64 @lpfc_rscn_payload_check(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
