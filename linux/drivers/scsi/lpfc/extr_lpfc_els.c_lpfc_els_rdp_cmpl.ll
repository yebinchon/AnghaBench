; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rdp_cmpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rdp_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.lpfc_rdp_context = type { i32, i32, i32, i64, i32, %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_iocbq = type { i8*, i64, %struct.TYPE_16__, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.ulp_bde64 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i64 }
%struct.ls_rjt = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.fc_rdp_res_frame = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.fc_rdp_link_service_desc = type { i32 }
%struct.fc_rdp_sfp_desc = type { i32 }
%struct.fc_rdp_port_speed_desc = type { i32 }
%struct.fc_rdp_link_error_status_desc = type { i32 }
%struct.fc_rdp_port_name_desc = type { i32 }
%struct.fc_fec_rdp_desc = type { i32 }
%struct.fc_rdp_bbc_desc = type { i32 }
%struct.fc_rdp_oed_sfp_desc = type { i32 }
%struct.fc_rdp_opd_sfp_desc = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@lpfc_max_els_tries = common dso_local global i32 0, align 4
@ELS_CMD_ACC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"2171 Xmit RDP response tag x%x xri x%x, did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\00", align 1
@SSF_ALARM_FLAGS = common dso_local global i64 0, align 8
@SSF_WARNING_FLAGS = common dso_local global i64 0, align 8
@ELS_CMD_RDP = common dso_local global i32 0, align 4
@lpfc_cmpl_els_rsp = common dso_local global i8* null, align 8
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@ELS_CMD_LS_RJT = common dso_local global i32 0, align 4
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_rdp_context*, i32)* @lpfc_els_rdp_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_els_rdp_cmpl(%struct.lpfc_hba* %0, %struct.lpfc_rdp_context* %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_rdp_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.ulp_bde64*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ls_rjt*, align 8
  %14 = alloca %struct.fc_rdp_res_frame*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_rdp_context* %1, %struct.lpfc_rdp_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %19, i32 0, i32 5
  %21 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %20, align 8
  store %struct.lpfc_nodelist* %21, %struct.lpfc_nodelist** %7, align 8
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %23 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %22, i32 0, i32 4
  %24 = load %struct.lpfc_vport*, %struct.lpfc_vport** %23, align 8
  store %struct.lpfc_vport* %24, %struct.lpfc_vport** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %361

29:                                               ; preds = %3
  store i32 4, i32* %15, align 4
  %30 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @lpfc_max_els_tries, align 4
  %33 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %34 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %33, i32 0, i32 5
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %34, align 8
  %36 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %37 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %36, i32 0, i32 5
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %37, align 8
  %39 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ELS_CMD_ACC, align 4
  %42 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %30, i32 0, i32 %31, i32 %32, %struct.lpfc_nodelist* %35, i32 %40, i32 %41)
  store %struct.lpfc_iocbq* %42, %struct.lpfc_iocbq** %9, align 8
  %43 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %44 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %43)
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %46 = icmp ne %struct.lpfc_iocbq* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %29
  br label %428

48:                                               ; preds = %29
  %49 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %50 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %49, i32 0, i32 2
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %11, align 8
  %51 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %52 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %57 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load i32, i32* @LOG_ELS, align 4
  %66 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %67 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %70 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %74 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %77 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %80 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %83 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %72, i32 %75, i32 %78, i32 %81, i32 %84)
  %86 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %87 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.lpfc_dmabuf*
  %90 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.fc_rdp_res_frame*
  store %struct.fc_rdp_res_frame* %92, %struct.fc_rdp_res_frame** %14, align 8
  %93 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %94 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.lpfc_dmabuf*
  %97 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %12, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @memset(i32* %100, i32 0, i32 4)
  %102 = load i32, i32* @ELS_CMD_ACC, align 4
  %103 = load i32*, i32** %12, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %105 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SSF_ALARM_FLAGS, align 8
  %108 = add nsw i64 %106, %107
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %17, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %117 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @SSF_WARNING_FLAGS, align 8
  %120 = add nsw i64 %118, %119
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %17, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %125 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  store i32 8, i32* %16, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32*, i32** %12, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = bitcast i32* %131 to %struct.fc_rdp_link_service_desc*
  %133 = load i32, i32* @ELS_CMD_RDP, align 4
  %134 = call i64 @lpfc_rdp_res_link_service(%struct.fc_rdp_link_service_desc* %132, i32 %133)
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32*, i32** %12, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = bitcast i32* %142 to %struct.fc_rdp_sfp_desc*
  %144 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %145 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %148 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = call i64 @lpfc_rdp_res_sfp_desc(%struct.fc_rdp_sfp_desc* %143, i32 %146, i64 %149)
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %16, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = bitcast i32* %158 to %struct.fc_rdp_port_speed_desc*
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %161 = call i64 @lpfc_rdp_res_speed(%struct.fc_rdp_port_speed_desc* %159, %struct.lpfc_hba* %160)
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %161
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32*, i32** %12, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = bitcast i32* %169 to %struct.fc_rdp_link_error_status_desc*
  %171 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %172 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %171, i32 0, i32 4
  %173 = call i64 @lpfc_rdp_res_link_error(%struct.fc_rdp_link_error_status_desc* %170, i32* %172)
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %173
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = bitcast i32* %181 to %struct.fc_rdp_port_name_desc*
  %183 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %184 = call i64 @lpfc_rdp_res_diag_port_names(%struct.fc_rdp_port_name_desc* %182, %struct.lpfc_vport* %183)
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32*, i32** %12, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  %193 = bitcast i32* %192 to %struct.fc_rdp_port_name_desc*
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %195 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %196 = call i64 @lpfc_rdp_res_attach_port_names(%struct.fc_rdp_port_name_desc* %193, %struct.lpfc_vport* %194, %struct.lpfc_nodelist* %195)
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %196
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = bitcast i32* %204 to %struct.fc_fec_rdp_desc*
  %206 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %207 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %206, i32 0, i32 4
  %208 = call i64 @lpfc_rdp_res_fec_desc(%struct.fc_fec_rdp_desc* %205, i32* %207)
  %209 = load i32, i32* %16, align 4
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %210, %208
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32*, i32** %12, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = bitcast i32* %216 to %struct.fc_rdp_bbc_desc*
  %218 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %219 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %218, i32 0, i32 4
  %220 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %221 = call i64 @lpfc_rdp_res_bbc_desc(%struct.fc_rdp_bbc_desc* %217, i32* %219, %struct.lpfc_vport* %220)
  %222 = load i32, i32* %16, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %16, align 4
  %226 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %227 = load i32, i32* %16, align 4
  %228 = load i32*, i32** %12, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = bitcast i32* %230 to %struct.fc_rdp_oed_sfp_desc*
  %232 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %233 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %232, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = call i64 @lpfc_rdp_res_oed_temp_desc(%struct.lpfc_hba* %226, %struct.fc_rdp_oed_sfp_desc* %231, i64 %234)
  %236 = load i32, i32* %16, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %237, %235
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %16, align 4
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %241 = load i32, i32* %16, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %242, i64 %243
  %245 = bitcast i32* %244 to %struct.fc_rdp_oed_sfp_desc*
  %246 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %247 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %246, i32 0, i32 3
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @lpfc_rdp_res_oed_voltage_desc(%struct.lpfc_hba* %240, %struct.fc_rdp_oed_sfp_desc* %245, i64 %248)
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, %249
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %16, align 4
  %254 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %255 = load i32, i32* %16, align 4
  %256 = load i32*, i32** %12, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = bitcast i32* %258 to %struct.fc_rdp_oed_sfp_desc*
  %260 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %261 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = call i64 @lpfc_rdp_res_oed_txbias_desc(%struct.lpfc_hba* %254, %struct.fc_rdp_oed_sfp_desc* %259, i64 %262)
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %263
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %16, align 4
  %268 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %269 = load i32, i32* %16, align 4
  %270 = load i32*, i32** %12, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  %273 = bitcast i32* %272 to %struct.fc_rdp_oed_sfp_desc*
  %274 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %275 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %274, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = call i64 @lpfc_rdp_res_oed_txpower_desc(%struct.lpfc_hba* %268, %struct.fc_rdp_oed_sfp_desc* %273, i64 %276)
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %279, %277
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %16, align 4
  %282 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %283 = load i32, i32* %16, align 4
  %284 = load i32*, i32** %12, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = bitcast i32* %286 to %struct.fc_rdp_oed_sfp_desc*
  %288 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %289 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = call i64 @lpfc_rdp_res_oed_rxpower_desc(%struct.lpfc_hba* %282, %struct.fc_rdp_oed_sfp_desc* %287, i64 %290)
  %292 = load i32, i32* %16, align 4
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, %291
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %16, align 4
  %296 = load i32, i32* %16, align 4
  %297 = load i32*, i32** %12, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  %300 = bitcast i32* %299 to %struct.fc_rdp_opd_sfp_desc*
  %301 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %302 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %305 = call i64 @lpfc_rdp_res_opd_desc(%struct.fc_rdp_opd_sfp_desc* %300, i32 %303, %struct.lpfc_vport* %304)
  %306 = load i32, i32* %16, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %307, %305
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %16, align 4
  %310 = load i32, i32* %16, align 4
  %311 = sub nsw i32 %310, 8
  %312 = call i32 @cpu_to_be32(i32 %311)
  %313 = load %struct.fc_rdp_res_frame*, %struct.fc_rdp_res_frame** %14, align 8
  %314 = getelementptr inbounds %struct.fc_rdp_res_frame, %struct.fc_rdp_res_frame* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 4
  %315 = load i8*, i8** @lpfc_cmpl_els_rsp, align 8
  %316 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %317 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %316, i32 0, i32 0
  store i8* %315, i8** %317, align 8
  %318 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %319 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %318, i32 0, i32 3
  %320 = load i64, i64* %319, align 8
  %321 = inttoptr i64 %320 to %struct.lpfc_dmabuf*
  %322 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = inttoptr i64 %323 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %324, %struct.ulp_bde64** %10, align 8
  %325 = load i32, i32* %16, align 4
  %326 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %327 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 0
  store i32 %325, i32* %329, align 8
  %330 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %331 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 1
  store i64 0, i64* %333, align 8
  %334 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %335 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @le32_to_cpu(i32 %337)
  %339 = load %struct.ulp_bde64*, %struct.ulp_bde64** %10, align 8
  %340 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 0
  store i32 %338, i32* %341, align 8
  %342 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %343 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 4
  %347 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %348 = load i32, i32* @LPFC_ELS_RING, align 4
  %349 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %350 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %347, i32 %348, %struct.lpfc_iocbq* %349, i32 0)
  store i32 %350, i32* %18, align 4
  %351 = load i32, i32* %18, align 4
  %352 = load i32, i32* @IOCB_ERROR, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %358

354:                                              ; preds = %48
  %355 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %356 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %357 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %355, %struct.lpfc_iocbq* %356)
  br label %358

358:                                              ; preds = %354, %48
  %359 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %360 = call i32 @kfree(%struct.lpfc_rdp_context* %359)
  br label %431

361:                                              ; preds = %28
  store i32 8, i32* %15, align 4
  %362 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %363 = load i32, i32* %15, align 4
  %364 = load i32, i32* @lpfc_max_els_tries, align 4
  %365 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %366 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %367 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* @ELS_CMD_LS_RJT, align 4
  %370 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %362, i32 0, i32 %363, i32 %364, %struct.lpfc_nodelist* %365, i32 %368, i32 %369)
  store %struct.lpfc_iocbq* %370, %struct.lpfc_iocbq** %9, align 8
  %371 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %372 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %371)
  %373 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %374 = icmp ne %struct.lpfc_iocbq* %373, null
  br i1 %374, label %376, label %375

375:                                              ; preds = %361
  br label %428

376:                                              ; preds = %361
  %377 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %378 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %377, i32 0, i32 2
  store %struct.TYPE_16__* %378, %struct.TYPE_16__** %11, align 8
  %379 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %380 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 1
  store i32 %381, i32* %383, align 4
  %384 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %385 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 0
  store i32 %386, i32* %390, align 4
  %391 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %392 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = inttoptr i64 %393 to %struct.lpfc_dmabuf*
  %395 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = inttoptr i64 %396 to i32*
  store i32* %397, i32** %12, align 8
  %398 = load i32, i32* @ELS_CMD_LS_RJT, align 4
  %399 = load i32*, i32** %12, align 8
  store i32 %398, i32* %399, align 4
  %400 = load i32*, i32** %12, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 4
  %402 = bitcast i32* %401 to %struct.ls_rjt*
  store %struct.ls_rjt* %402, %struct.ls_rjt** %13, align 8
  %403 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %404 = load %struct.ls_rjt*, %struct.ls_rjt** %13, align 8
  %405 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 0
  store i32 %403, i32* %407, align 4
  %408 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %409 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %410, align 4
  %413 = load i8*, i8** @lpfc_cmpl_els_rsp, align 8
  %414 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %415 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %414, i32 0, i32 0
  store i8* %413, i8** %415, align 8
  %416 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %417 = load i32, i32* @LPFC_ELS_RING, align 4
  %418 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %419 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %416, i32 %417, %struct.lpfc_iocbq* %418, i32 0)
  store i32 %419, i32* %18, align 4
  %420 = load i32, i32* %18, align 4
  %421 = load i32, i32* @IOCB_ERROR, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %427

423:                                              ; preds = %376
  %424 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %425 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %426 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %424, %struct.lpfc_iocbq* %425)
  br label %427

427:                                              ; preds = %423, %376
  br label %428

428:                                              ; preds = %427, %375, %47
  %429 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %5, align 8
  %430 = call i32 @kfree(%struct.lpfc_rdp_context* %429)
  br label %431

431:                                              ; preds = %428, %358
  ret void
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @lpfc_rdp_res_link_service(%struct.fc_rdp_link_service_desc*, i32) #1

declare dso_local i64 @lpfc_rdp_res_sfp_desc(%struct.fc_rdp_sfp_desc*, i32, i64) #1

declare dso_local i64 @lpfc_rdp_res_speed(%struct.fc_rdp_port_speed_desc*, %struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_rdp_res_link_error(%struct.fc_rdp_link_error_status_desc*, i32*) #1

declare dso_local i64 @lpfc_rdp_res_diag_port_names(%struct.fc_rdp_port_name_desc*, %struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_rdp_res_attach_port_names(%struct.fc_rdp_port_name_desc*, %struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_rdp_res_fec_desc(%struct.fc_fec_rdp_desc*, i32*) #1

declare dso_local i64 @lpfc_rdp_res_bbc_desc(%struct.fc_rdp_bbc_desc*, i32*, %struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_rdp_res_oed_temp_desc(%struct.lpfc_hba*, %struct.fc_rdp_oed_sfp_desc*, i64) #1

declare dso_local i64 @lpfc_rdp_res_oed_voltage_desc(%struct.lpfc_hba*, %struct.fc_rdp_oed_sfp_desc*, i64) #1

declare dso_local i64 @lpfc_rdp_res_oed_txbias_desc(%struct.lpfc_hba*, %struct.fc_rdp_oed_sfp_desc*, i64) #1

declare dso_local i64 @lpfc_rdp_res_oed_txpower_desc(%struct.lpfc_hba*, %struct.fc_rdp_oed_sfp_desc*, i64) #1

declare dso_local i64 @lpfc_rdp_res_oed_rxpower_desc(%struct.lpfc_hba*, %struct.fc_rdp_oed_sfp_desc*, i64) #1

declare dso_local i64 @lpfc_rdp_res_opd_desc(%struct.fc_rdp_opd_sfp_desc*, i32, %struct.lpfc_vport*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @kfree(%struct.lpfc_rdp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
