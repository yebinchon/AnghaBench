; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_prep_io_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_prep_io_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.lpfc_io_buf = type { %struct.nvmefc_fcp_req*, %struct.lpfc_iocbq }
%struct.nvmefc_fcp_req = type { i64, i64, i32, i32, i64 }
%struct.lpfc_iocbq = type { i32, i32, %struct.lpfc_vport*, %union.lpfc_wqe128 }
%union.lpfc_wqe128 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.lpfc_nodelist = type { i32, i64, i32, i64 }
%struct.lpfc_fc4_ctrl_stat = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NVMEFC_FCP_WRITE = common dso_local global i64 0, align 8
@lpfc_iwrite_cmd_template = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@NLP_FIRSTBURST = common dso_local global i32 0, align 4
@lpfc_iread_cmd_template = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@lpfc_icmnd_cmd_template = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@NLP_NVME_NSLER = common dso_local global i32 0, align 4
@wqe_erp = common dso_local global i32 0, align 4
@payload_offset_len = common dso_local global i32 0, align 4
@wqe_ctxt_tag = common dso_local global i32 0, align 4
@wqe_xri_tag = common dso_local global i32 0, align 4
@wqe_reqtag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_io_buf*, %struct.lpfc_nodelist*, %struct.lpfc_fc4_ctrl_stat*)* @lpfc_nvme_prep_io_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nvme_prep_io_cmd(%struct.lpfc_vport* %0, %struct.lpfc_io_buf* %1, %struct.lpfc_nodelist* %2, %struct.lpfc_fc4_ctrl_stat* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_io_buf*, align 8
  %8 = alloca %struct.lpfc_nodelist*, align 8
  %9 = alloca %struct.lpfc_fc4_ctrl_stat*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.nvmefc_fcp_req*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca %union.lpfc_wqe128*, align 8
  %14 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %7, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %8, align 8
  store %struct.lpfc_fc4_ctrl_stat* %3, %struct.lpfc_fc4_ctrl_stat** %9, align 8
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %16 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %15, i32 0, i32 0
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %16, align 8
  store %struct.lpfc_hba* %17, %struct.lpfc_hba** %10, align 8
  %18 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %19 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %18, i32 0, i32 0
  %20 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %19, align 8
  store %struct.nvmefc_fcp_req* %20, %struct.nvmefc_fcp_req** %11, align 8
  %21 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %21, i32 0, i32 1
  store %struct.lpfc_iocbq* %22, %struct.lpfc_iocbq** %12, align 8
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 3
  store %union.lpfc_wqe128* %24, %union.lpfc_wqe128** %13, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %26 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %199

31:                                               ; preds = %4
  %32 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %11, align 8
  %33 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %122

36:                                               ; preds = %31
  %37 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %11, align 8
  %38 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NVMEFC_FCP_WRITE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %36
  %43 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %44 = bitcast %union.lpfc_wqe128* %43 to i32**
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @lpfc_iwrite_cmd_template, i32 0, i32 0), align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = call i32 @memcpy(i32* %46, i32* %48, i32 40)
  %50 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %11, align 8
  %51 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %54 = bitcast %union.lpfc_wqe128* %53 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %42
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NLP_FIRSTBURST, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %60
  %68 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %7, align 8
  %69 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %68, i32 0, i32 0
  %70 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %69, align 8
  %71 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %75 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load i64, i64* %14, align 8
  %80 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %81 = bitcast %union.lpfc_wqe128* %80 to %struct.TYPE_9__*
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  br label %90

83:                                               ; preds = %67
  %84 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %85 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %88 = bitcast %union.lpfc_wqe128* %87 to %struct.TYPE_9__*
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %78
  br label %95

91:                                               ; preds = %60, %42
  %92 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %93 = bitcast %union.lpfc_wqe128* %92 to %struct.TYPE_9__*
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %90
  %96 = load %struct.lpfc_fc4_ctrl_stat*, %struct.lpfc_fc4_ctrl_stat** %9, align 8
  %97 = getelementptr inbounds %struct.lpfc_fc4_ctrl_stat, %struct.lpfc_fc4_ctrl_stat* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %121

100:                                              ; preds = %36
  %101 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %102 = bitcast %union.lpfc_wqe128* %101 to i32**
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @lpfc_iread_cmd_template, i32 0, i32 0), align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = call i32 @memcpy(i32* %104, i32* %106, i32 40)
  %108 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %11, align 8
  %109 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %112 = bitcast %union.lpfc_wqe128* %111 to %struct.TYPE_10__*
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %115 = bitcast %union.lpfc_wqe128* %114 to %struct.TYPE_10__*
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.lpfc_fc4_ctrl_stat*, %struct.lpfc_fc4_ctrl_stat** %9, align 8
  %118 = getelementptr inbounds %struct.lpfc_fc4_ctrl_stat, %struct.lpfc_fc4_ctrl_stat* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %100, %95
  br label %134

122:                                              ; preds = %31
  %123 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %124 = bitcast %union.lpfc_wqe128* %123 to i32**
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @lpfc_icmnd_cmd_template, i32 0, i32 0), align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = call i32 @memcpy(i32* %126, i32* %128, i32 64)
  %130 = load %struct.lpfc_fc4_ctrl_stat*, %struct.lpfc_fc4_ctrl_stat** %9, align 8
  %131 = getelementptr inbounds %struct.lpfc_fc4_ctrl_stat, %struct.lpfc_fc4_ctrl_stat* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %122, %121
  %135 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %136 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @NLP_NVME_NSLER, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load i32, i32* @wqe_erp, align 4
  %143 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %144 = bitcast %union.lpfc_wqe128* %143 to %struct.TYPE_12__*
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = call i32 @bf_set(i32 %142, %struct.TYPE_16__* %145, i32 1)
  br label %147

147:                                              ; preds = %141, %134
  %148 = load i32, i32* @payload_offset_len, align 4
  %149 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %150 = bitcast %union.lpfc_wqe128* %149 to %struct.TYPE_16__*
  %151 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %11, align 8
  %152 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %11, align 8
  %155 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  %158 = call i32 @bf_set(i32 %148, %struct.TYPE_16__* %150, i32 %157)
  %159 = load i32, i32* @wqe_ctxt_tag, align 4
  %160 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %161 = bitcast %union.lpfc_wqe128* %160 to %struct.TYPE_12__*
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %168 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @bf_set(i32 %159, %struct.TYPE_16__* %162, i32 %171)
  %173 = load i32, i32* @wqe_xri_tag, align 4
  %174 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %175 = bitcast %union.lpfc_wqe128* %174 to %struct.TYPE_12__*
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %178 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @bf_set(i32 %173, %struct.TYPE_16__* %176, i32 %179)
  %181 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %182 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %185 = bitcast %union.lpfc_wqe128* %184 to %struct.TYPE_12__*
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 8
  %188 = load i32, i32* @wqe_reqtag, align 4
  %189 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %13, align 8
  %190 = bitcast %union.lpfc_wqe128* %189 to %struct.TYPE_12__*
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %193 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @bf_set(i32 %188, %struct.TYPE_16__* %191, i32 %194)
  %196 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %197 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %198 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %197, i32 0, i32 2
  store %struct.lpfc_vport* %196, %struct.lpfc_vport** %198, align 8
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %147, %28
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bf_set(i32, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
