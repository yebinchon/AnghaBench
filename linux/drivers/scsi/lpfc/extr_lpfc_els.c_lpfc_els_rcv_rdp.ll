; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.fc_rdp_req_frame = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.lpfc_rdp_context = type { i32, i32, i32, i32 }
%struct.ls_rjt = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8* }

@LSEXP_NOTHING_MORE = common dso_local global i8* null, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@LSRJT_UNABLE_TPC = common dso_local global i8* null, align 8
@LSEXP_REQ_UNSUPPORTED = common dso_local global i8* null, align 8
@HBA_FCOE_MODE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"2422 ELS RDP Request dec len %d tag x%x port_id %d len %d\0A\00", align 1
@RDP_N_PORT_DESC_TAG = common dso_local global i32 0, align 4
@RDP_NPORT_ID_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_els_rdp_cmpl = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"2423 Unable to send mailbox\00", align 1
@LSRJT_LOGICAL_ERR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_rdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_rdp(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.fc_rdp_req_frame*, align 8
  %13 = alloca %struct.lpfc_rdp_context*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.ls_rjt, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %8, align 8
  %19 = load i8*, i8** @LSEXP_NOTHING_MORE, align 8
  store i8* %19, i8** %11, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LPFC_SLI_REV4, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i64 @bf_get(i32 %26, i32* %29)
  %31 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25, %3
  %34 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** @LSEXP_REQ_UNSUPPORTED, align 8
  store i8* %35, i8** %11, align 8
  br label %159

36:                                               ; preds = %25
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %38 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LPFC_SLI_REV4, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @HBA_FCOE_MODE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42, %36
  %50 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** @LSEXP_REQ_UNSUPPORTED, align 8
  store i8* %51, i8** %11, align 8
  br label %159

52:                                               ; preds = %42
  %53 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %54 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %56, %struct.lpfc_dmabuf** %9, align 8
  %57 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %58 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.fc_rdp_req_frame*
  store %struct.fc_rdp_req_frame* %60, %struct.fc_rdp_req_frame** %12, align 8
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %62 = load i32, i32* @KERN_INFO, align 4
  %63 = load i32, i32* @LOG_ELS, align 4
  %64 = load %struct.fc_rdp_req_frame*, %struct.fc_rdp_req_frame** %12, align 8
  %65 = getelementptr inbounds %struct.fc_rdp_req_frame, %struct.fc_rdp_req_frame* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = load %struct.fc_rdp_req_frame*, %struct.fc_rdp_req_frame** %12, align 8
  %69 = getelementptr inbounds %struct.fc_rdp_req_frame, %struct.fc_rdp_req_frame* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32_to_cpu(i32 %71)
  %73 = load %struct.fc_rdp_req_frame*, %struct.fc_rdp_req_frame** %12, align 8
  %74 = getelementptr inbounds %struct.fc_rdp_req_frame, %struct.fc_rdp_req_frame* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be32_to_cpu(i32 %76)
  %78 = load %struct.fc_rdp_req_frame*, %struct.fc_rdp_req_frame** %12, align 8
  %79 = getelementptr inbounds %struct.fc_rdp_req_frame, %struct.fc_rdp_req_frame* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %72, i32 %77, i32 %82)
  %84 = load %struct.fc_rdp_req_frame*, %struct.fc_rdp_req_frame** %12, align 8
  %85 = getelementptr inbounds %struct.fc_rdp_req_frame, %struct.fc_rdp_req_frame* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @be32_to_cpu(i32 %86)
  %88 = sext i32 %87 to i64
  %89 = icmp ne i64 4, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %52
  br label %157

91:                                               ; preds = %52
  %92 = load i32, i32* @RDP_N_PORT_DESC_TAG, align 4
  %93 = load %struct.fc_rdp_req_frame*, %struct.fc_rdp_req_frame** %12, align 8
  %94 = getelementptr inbounds %struct.fc_rdp_req_frame, %struct.fc_rdp_req_frame* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @be32_to_cpu(i32 %96)
  %98 = icmp ne i32 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %157

100:                                              ; preds = %91
  %101 = load i32, i32* @RDP_NPORT_ID_SIZE, align 4
  %102 = load %struct.fc_rdp_req_frame*, %struct.fc_rdp_req_frame** %12, align 8
  %103 = getelementptr inbounds %struct.fc_rdp_req_frame, %struct.fc_rdp_req_frame* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be32_to_cpu(i32 %105)
  %107 = icmp ne i32 %101, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %157

109:                                              ; preds = %100
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.lpfc_rdp_context* @kzalloc(i32 16, i32 %110)
  store %struct.lpfc_rdp_context* %111, %struct.lpfc_rdp_context** %13, align 8
  %112 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %13, align 8
  %113 = icmp ne %struct.lpfc_rdp_context* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %115, i8** %10, align 8
  br label %159

116:                                              ; preds = %109
  %117 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %118 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %117, i32 0, i32 0
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %14, align 8
  %119 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %120 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %119)
  %121 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %13, align 8
  %122 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %13, align 8
  %129 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %13, align 8
  %134 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @lpfc_els_rdp_cmpl, align 4
  %136 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %13, align 8
  %137 = getelementptr inbounds %struct.lpfc_rdp_context, %struct.lpfc_rdp_context* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 4
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %139 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %13, align 8
  %140 = call i64 @lpfc_get_rdp_info(%struct.lpfc_hba* %138, %struct.lpfc_rdp_context* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %116
  %143 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %144 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to %struct.lpfc_vport*
  %148 = load i32, i32* @KERN_WARNING, align 4
  %149 = load i32, i32* @LOG_ELS, align 4
  %150 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %151 = load %struct.lpfc_rdp_context*, %struct.lpfc_rdp_context** %13, align 8
  %152 = call i32 @kfree(%struct.lpfc_rdp_context* %151)
  %153 = load i8*, i8** @LSRJT_UNABLE_TPC, align 8
  store i8* %153, i8** %10, align 8
  %154 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %155 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %154)
  br label %159

156:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %176

157:                                              ; preds = %108, %99, %90
  %158 = load i8*, i8** @LSRJT_LOGICAL_ERR, align 8
  store i8* %158, i8** %10, align 8
  br label %159

159:                                              ; preds = %157, %142, %114, %49, %33
  %160 = call i32 @memset(%struct.ls_rjt* %15, i32 0, i32 24)
  %161 = load i8*, i8** %10, align 8
  %162 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %15, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  store i8* %161, i8** %164, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %15, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i8* %165, i8** %168, align 8
  %169 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %170 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %15, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %174 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %175 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %169, i32 %172, %struct.lpfc_iocbq* %173, %struct.lpfc_nodelist* %174, i32* null)
  store i32 1, i32* %4, align 4
  br label %176

176:                                              ; preds = %159, %156
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.lpfc_rdp_context* @kzalloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_get_rdp_info(%struct.lpfc_hba*, %struct.lpfc_rdp_context*) #1

declare dso_local i32 @kfree(%struct.lpfc_rdp_context*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(%struct.ls_rjt*, i32, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
