; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_uf_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lport_uf_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { i32 }
%struct.fchs_s = type { i64, i64, i64, i64, i64 }
%struct.bfa_fcs_rport_s = type { i32 }
%struct.fc_els_cmd_s = type { i64 }
%struct.fc_logi_s = type { i32 }
%struct.fc_echo_s = type { i32 }
%struct.fc_rnid_cmd_s = type { i32 }

@uf_recvs = common dso_local global i32 0, align 4
@FC_TYPE_ELS = common dso_local global i64 0, align 8
@FC_ELS_PLOGI = common dso_local global i64 0, align 8
@FC_LS_RJT_RSN_UNABLE_TO_PERF_CMD = common dso_local global i32 0, align 4
@FC_LS_RJT_EXP_NO_ADDL_INFO = common dso_local global i32 0, align 4
@plogi_rcvd = common dso_local global i32 0, align 4
@uf_recv_drops = common dso_local global i32 0, align 4
@FC_ELS_ECHO = common dso_local global i64 0, align 8
@FC_ELS_RNID = common dso_local global i64 0, align 8
@FC_TYPE_BLS = common dso_local global i64 0, align 8
@FC_RTG_BASIC_LINK = common dso_local global i64 0, align 8
@FC_CAT_ABTS = common dso_local global i64 0, align 8
@FC_TYPE_SERVICES = common dso_local global i64 0, align 8
@CT_RSN_NOT_SUPP = common dso_local global i32 0, align 4
@CT_NS_EXP_NOADDITIONAL = common dso_local global i32 0, align 4
@FC_TYPE_FC_FSS = common dso_local global i64 0, align 8
@FC_ELS_RSCN = common dso_local global i64 0, align 8
@FC_ELS_LOGO = common dso_local global i64 0, align 8
@FC_ELS_PRLI = common dso_local global i64 0, align 8
@FC_LS_RJT_RSN_CMD_NOT_SUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_lport_uf_recv(%struct.bfa_fcs_lport_s* %0, %struct.fchs_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_lport_s*, align 8
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.bfa_fcs_rport_s*, align 8
  %9 = alloca %struct.fc_els_cmd_s*, align 8
  store %struct.bfa_fcs_lport_s* %0, %struct.bfa_fcs_lport_s** %4, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %11 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  store %struct.bfa_fcs_rport_s* null, %struct.bfa_fcs_rport_s** %8, align 8
  %13 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %14 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %13, i64 1
  %15 = bitcast %struct.fchs_s* %14 to %struct.fc_els_cmd_s*
  store %struct.fc_els_cmd_s* %15, %struct.fc_els_cmd_s** %9, align 8
  %16 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %17 = load i32, i32* @uf_recvs, align 4
  %18 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %16, i32 %17)
  %19 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %23 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @bfa_trc(i32 %21, i64 %24)
  %26 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %27 = call i32 @bfa_fcs_lport_is_online(%struct.bfa_fcs_lport_s* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %3
  %30 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %31 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FC_TYPE_ELS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %37 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @FC_ELS_PLOGI, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %43 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %44 = load i32, i32* @FC_LS_RJT_RSN_UNABLE_TO_PERF_CMD, align 4
  %45 = load i32, i32* @FC_LS_RJT_EXP_NO_ADDL_INFO, align 4
  %46 = call i32 @bfa_fcs_lport_send_ls_rjt(%struct.bfa_fcs_lport_s* %42, %struct.fchs_s* %43, i32 %44, i32 %45)
  %47 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %48 = load i32, i32* @plogi_rcvd, align 4
  %49 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %47, i32 %48)
  br label %54

50:                                               ; preds = %35, %29
  %51 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %52 = load i32, i32* @uf_recv_drops, align 4
  %53 = call i32 @bfa_stats(%struct.bfa_fcs_lport_s* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %41
  br label %251

55:                                               ; preds = %3
  %56 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %57 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @FC_TYPE_ELS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %63 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FC_ELS_PLOGI, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %69 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %70 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %71 = bitcast %struct.fc_els_cmd_s* %70 to %struct.fc_logi_s*
  %72 = call i32 @bfa_fcs_lport_plogi(%struct.bfa_fcs_lport_s* %68, %struct.fchs_s* %69, %struct.fc_logi_s* %71)
  br label %251

73:                                               ; preds = %61, %55
  %74 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %75 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @FC_TYPE_ELS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %81 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @FC_ELS_ECHO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %87 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %88 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %89 = bitcast %struct.fc_els_cmd_s* %88 to %struct.fc_echo_s*
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @bfa_fcs_lport_echo(%struct.bfa_fcs_lport_s* %86, %struct.fchs_s* %87, %struct.fc_echo_s* %89, i32 %90)
  br label %251

92:                                               ; preds = %79, %73
  %93 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %94 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @FC_TYPE_ELS, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %100 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @FC_ELS_RNID, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %106 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %107 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %108 = bitcast %struct.fc_els_cmd_s* %107 to %struct.fc_rnid_cmd_s*
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @bfa_fcs_lport_rnid(%struct.bfa_fcs_lport_s* %105, %struct.fchs_s* %106, %struct.fc_rnid_cmd_s* %108, i32 %109)
  br label %251

111:                                              ; preds = %98, %92
  %112 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %113 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FC_TYPE_BLS, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %111
  %118 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %119 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @FC_RTG_BASIC_LINK, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %117
  %124 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %125 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @FC_CAT_ABTS, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %131 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %132 = call i32 @bfa_fcs_lport_abts_acc(%struct.bfa_fcs_lport_s* %130, %struct.fchs_s* %131)
  br label %133

133:                                              ; preds = %129, %123, %117
  br label %251

134:                                              ; preds = %111
  %135 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %136 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @FC_TYPE_SERVICES, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %142 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %143 = load i32, i32* @CT_RSN_NOT_SUPP, align 4
  %144 = load i32, i32* @CT_NS_EXP_NOADDITIONAL, align 4
  %145 = call i32 @bfa_fcs_lport_send_fcgs_rjt(%struct.bfa_fcs_lport_s* %141, %struct.fchs_s* %142, i32 %143, i32 %144)
  br label %251

146:                                              ; preds = %134
  %147 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %148 = load i64, i64* %7, align 8
  %149 = call %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pid(%struct.bfa_fcs_lport_s* %147, i64 %148)
  store %struct.bfa_fcs_rport_s* %149, %struct.bfa_fcs_rport_s** %8, align 8
  %150 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %151 = icmp ne %struct.bfa_fcs_rport_s* %150, null
  br i1 %151, label %152, label %178

152:                                              ; preds = %146
  %153 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %154 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %157 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @bfa_trc(i32 %155, i64 %158)
  %160 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %161 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %164 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @bfa_trc(i32 %162, i64 %165)
  %167 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %168 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %171 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @bfa_trc(i32 %169, i64 %172)
  %174 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %8, align 8
  %175 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @bfa_fcs_rport_uf_recv(%struct.bfa_fcs_rport_s* %174, %struct.fchs_s* %175, i32 %176)
  br label %251

178:                                              ; preds = %146
  %179 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %180 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @FC_TYPE_ELS, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %213

184:                                              ; preds = %178
  %185 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %186 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %189 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @bfa_trc(i32 %187, i64 %190)
  %192 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %193 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %196 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @bfa_trc(i32 %194, i64 %197)
  %199 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %200 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @FC_TYPE_FC_FSS, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %184
  %205 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %206 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %209 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @bfa_sm_fault(i32 %207, i64 %210)
  br label %212

212:                                              ; preds = %204, %184
  br label %251

213:                                              ; preds = %178
  %214 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %215 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %218 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @bfa_trc(i32 %216, i64 %219)
  %221 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %222 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @FC_ELS_RSCN, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %213
  %227 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %228 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @bfa_fcs_lport_scn_process_rscn(%struct.bfa_fcs_lport_s* %227, %struct.fchs_s* %228, i32 %229)
  br label %251

231:                                              ; preds = %213
  %232 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %233 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @FC_ELS_LOGO, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  br label %251

238:                                              ; preds = %231
  %239 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %9, align 8
  %240 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @FC_ELS_PRLI, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  br label %251

245:                                              ; preds = %238
  %246 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %247 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %248 = load i32, i32* @FC_LS_RJT_RSN_CMD_NOT_SUPP, align 4
  %249 = load i32, i32* @FC_LS_RJT_EXP_NO_ADDL_INFO, align 4
  %250 = call i32 @bfa_fcs_lport_send_ls_rjt(%struct.bfa_fcs_lport_s* %246, %struct.fchs_s* %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %245, %244, %237, %226, %212, %152, %140, %133, %104, %85, %67, %54
  ret void
}

declare dso_local i32 @bfa_stats(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local i32 @bfa_fcs_lport_is_online(%struct.bfa_fcs_lport_s*) #1

declare dso_local i32 @bfa_fcs_lport_send_ls_rjt(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, i32, i32) #1

declare dso_local i32 @bfa_fcs_lport_plogi(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, %struct.fc_logi_s*) #1

declare dso_local i32 @bfa_fcs_lport_echo(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, %struct.fc_echo_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_rnid(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, %struct.fc_rnid_cmd_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_abts_acc(%struct.bfa_fcs_lport_s*, %struct.fchs_s*) #1

declare dso_local i32 @bfa_fcs_lport_send_fcgs_rjt(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, i32, i32) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_lport_get_rport_by_pid(%struct.bfa_fcs_lport_s*, i64) #1

declare dso_local i32 @bfa_fcs_rport_uf_recv(%struct.bfa_fcs_rport_s*, %struct.fchs_s*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32, i64) #1

declare dso_local i32 @bfa_fcs_lport_scn_process_rscn(%struct.bfa_fcs_lport_s*, %struct.fchs_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
