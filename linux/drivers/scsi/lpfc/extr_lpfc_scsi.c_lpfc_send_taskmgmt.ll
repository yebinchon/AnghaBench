; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_send_taskmgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_send_taskmgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.lpfc_io_buf = type { i32, %struct.lpfc_iocbq, %struct.lpfc_nodelist*, %struct.scsi_cmnd*, %struct.lpfc_rport_data* }
%struct.lpfc_iocbq = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.lpfc_nodelist = type { i32, i32 }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }

@FAILED = common dso_local global i32 0, align 4
@lpfc_tskmgmt_def_cmpl = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"0702 Issue %s to TGT %d LUN %llu rpi x%x nlp_flag x%x Data: x%x x%x\0A\00", align 1
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@IOSTAT_SUCCESS = common dso_local global i64 0, align 8
@IOSTAT_FCP_RSP_ERROR = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"0727 TMF %s to TGT %d LUN %llu failed (%d, %d) iocb_flag x%x\0A\00", align 1
@IOCB_TIMEDOUT = common dso_local global i32 0, align 4
@TIMEOUT_ERROR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.scsi_cmnd*, i32, i32, i32)* @lpfc_send_taskmgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_send_taskmgmt(%struct.lpfc_vport* %0, %struct.scsi_cmnd* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca %struct.lpfc_io_buf*, align 8
  %14 = alloca %struct.lpfc_iocbq*, align 8
  %15 = alloca %struct.lpfc_iocbq*, align 8
  %16 = alloca %struct.lpfc_rport_data*, align 8
  %17 = alloca %struct.lpfc_nodelist*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %7, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 0
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %12, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(i32 %25)
  store %struct.lpfc_rport_data* %26, %struct.lpfc_rport_data** %16, align 8
  %27 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %16, align 8
  %28 = icmp ne %struct.lpfc_rport_data* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %5
  %30 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %16, align 8
  %31 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %30, i32 0, i32 0
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %31, align 8
  %33 = icmp ne %struct.lpfc_nodelist* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %16, align 8
  %36 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %35, i32 0, i32 0
  %37 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %36, align 8
  %38 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34, %29, %5
  %41 = load i32, i32* @FAILED, align 4
  store i32 %41, i32* %6, align 4
  br label %212

42:                                               ; preds = %34
  %43 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %16, align 8
  %44 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %43, i32 0, i32 0
  %45 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %44, align 8
  store %struct.lpfc_nodelist* %45, %struct.lpfc_nodelist** %17, align 8
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %47 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %48 = call %struct.lpfc_io_buf* @lpfc_get_scsi_buf(%struct.lpfc_hba* %46, %struct.lpfc_nodelist* %47, i32* null)
  store %struct.lpfc_io_buf* %48, %struct.lpfc_io_buf** %13, align 8
  %49 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %50 = icmp eq %struct.lpfc_io_buf* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @FAILED, align 4
  store i32 %52, i32* %6, align 4
  br label %212

53:                                               ; preds = %42
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %58 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %16, align 8
  %60 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %61 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %60, i32 0, i32 4
  store %struct.lpfc_rport_data* %59, %struct.lpfc_rport_data** %61, align 8
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %63 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %64 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %63, i32 0, i32 3
  store %struct.scsi_cmnd* %62, %struct.scsi_cmnd** %64, align 8
  %65 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %66 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %67 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %66, i32 0, i32 2
  store %struct.lpfc_nodelist* %65, %struct.lpfc_nodelist** %67, align 8
  %68 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %69 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @lpfc_scsi_prep_task_mgmt_cmd(%struct.lpfc_vport* %68, %struct.lpfc_io_buf* %69, i32 %70, i32 %71)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %53
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %77 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %78 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %76, %struct.lpfc_io_buf* %77)
  %79 = load i32, i32* @FAILED, align 4
  store i32 %79, i32* %6, align 4
  br label %212

80:                                               ; preds = %53
  %81 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %82 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %81, i32 0, i32 1
  store %struct.lpfc_iocbq* %82, %struct.lpfc_iocbq** %14, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %84 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %83)
  store %struct.lpfc_iocbq* %84, %struct.lpfc_iocbq** %15, align 8
  %85 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %86 = icmp eq %struct.lpfc_iocbq* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %89 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %90 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %88, %struct.lpfc_io_buf* %89)
  %91 = load i32, i32* @FAILED, align 4
  store i32 %91, i32* %6, align 4
  br label %212

92:                                               ; preds = %80
  %93 = load i32, i32* @lpfc_tskmgmt_def_cmpl, align 4
  %94 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %95 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %97 = load i32, i32* @KERN_INFO, align 4
  %98 = load i32, i32* @LOG_FCP, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @lpfc_taskmgmt_name(i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %104 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %17, align 8
  %108 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %111 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %114 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i64, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i64 %106, i32 %109, i32 %112, i32 %115)
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %118 = load i32, i32* @LPFC_FCP_RING, align 4
  %119 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %120 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %121 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %122 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @lpfc_sli_issue_iocb_wait(%struct.lpfc_hba* %117, i32 %118, %struct.lpfc_iocbq* %119, %struct.lpfc_iocbq* %120, i32 %123)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* @IOCB_SUCCESS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %135, label %128

128:                                              ; preds = %92
  %129 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %130 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @IOSTAT_SUCCESS, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %197

135:                                              ; preds = %128, %92
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* @IOCB_SUCCESS, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %141 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IOSTAT_FCP_RSP_ERROR, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %139, %135
  %147 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %148 = load i32, i32* @KERN_ERR, align 4
  %149 = load i32, i32* @LOG_FCP, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @lpfc_taskmgmt_name(i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %155 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %159 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %14, align 8
  %166 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i64, i32, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %152, i32 %153, i64 %157, i32 %164, i32 %167)
  br label %169

169:                                              ; preds = %146, %139
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* @IOCB_SUCCESS, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %169
  %174 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %175 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @IOSTAT_FCP_RSP_ERROR, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %182 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %183 = call i32 @lpfc_check_fcp_rsp(%struct.lpfc_vport* %181, %struct.lpfc_io_buf* %182)
  store i32 %183, i32* %18, align 4
  br label %186

184:                                              ; preds = %173
  %185 = load i32, i32* @FAILED, align 4
  store i32 %185, i32* %18, align 4
  br label %186

186:                                              ; preds = %184, %180
  br label %196

187:                                              ; preds = %169
  %188 = load i32, i32* %19, align 4
  %189 = load i32, i32* @IOCB_TIMEDOUT, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* @TIMEOUT_ERROR, align 4
  store i32 %192, i32* %18, align 4
  br label %195

193:                                              ; preds = %187
  %194 = load i32, i32* @FAILED, align 4
  store i32 %194, i32* %18, align 4
  br label %195

195:                                              ; preds = %193, %191
  br label %196

196:                                              ; preds = %195, %186
  br label %199

197:                                              ; preds = %128
  %198 = load i32, i32* @SUCCESS, align 4
  store i32 %198, i32* %18, align 4
  br label %199

199:                                              ; preds = %197, %196
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %201 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %202 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %200, %struct.lpfc_iocbq* %201)
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* @TIMEOUT_ERROR, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %199
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %208 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %13, align 8
  %209 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %207, %struct.lpfc_io_buf* %208)
  br label %210

210:                                              ; preds = %206, %199
  %211 = load i32, i32* %18, align 4
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %210, %87, %75, %51, %40
  %213 = load i32, i32* %6, align 4
  ret i32 %213
}

declare dso_local %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_io_buf* @lpfc_get_scsi_buf(%struct.lpfc_hba*, %struct.lpfc_nodelist*, i32*) #1

declare dso_local i32 @lpfc_scsi_prep_task_mgmt_cmd(%struct.lpfc_vport*, %struct.lpfc_io_buf*, i32, i32) #1

declare dso_local i32 @lpfc_release_scsi_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i64, i32, i32, ...) #1

declare dso_local i32 @lpfc_taskmgmt_name(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb_wait(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_check_fcp_rsp(%struct.lpfc_vport*, %struct.lpfc_io_buf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
