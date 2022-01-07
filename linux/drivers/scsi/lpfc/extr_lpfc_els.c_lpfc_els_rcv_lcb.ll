; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_lcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_lcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.fc_lcb_request_frame = type { i64, i32, i32, i32, i32 }
%struct.lpfc_lcb_context = type { i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.ls_rjt = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"0192 ELS LCB Data x%x x%x x%x x%x sub x%x type x%x frequency %x duration x%x\0A\00", align 1
@LPFC_LCB_ON = common dso_local global i64 0, align 8
@LPFC_LCB_OFF = common dso_local global i64 0, align 8
@LSRJT_CMD_UNSUPPORTED = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@HBA_FCOE_MODE = common dso_local global i32 0, align 4
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"0193 failed to send mail box\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_lcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_lcb(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.fc_lcb_request_frame*, align 8
  %12 = alloca %struct.lpfc_lcb_context*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ls_rjt, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %8, align 8
  %19 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %20 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %22, %struct.lpfc_dmabuf** %9, align 8
  %23 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %24 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %10, align 8
  %27 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %28 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.fc_lcb_request_frame*
  store %struct.fc_lcb_request_frame* %30, %struct.fc_lcb_request_frame** %11, align 8
  %31 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %32 = load i32, i32* @KERN_INFO, align 4
  %33 = load i32, i32* @LOG_ELS, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %44 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %47 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %50 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %53 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %56 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @be16_to_cpu(i32 %57)
  %59 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45, i64 %48, i32 %51, i32 %54, i32 %58)
  %60 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %61 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LPFC_LCB_ON, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %3
  %66 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %67 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LPFC_LCB_OFF, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @LSRJT_CMD_UNSUPPORTED, align 4
  store i32 %72, i32* %14, align 4
  br label %171

73:                                               ; preds = %65, %3
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @LPFC_SLI_REV4, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %94, label %79

79:                                               ; preds = %73
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @HBA_FCOE_MODE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = call i64 @bf_get(i32 %87, i32* %90)
  %92 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86, %79, %73
  %95 = load i32, i32* @LSRJT_CMD_UNSUPPORTED, align 4
  store i32 %95, i32* %14, align 4
  br label %171

96:                                               ; preds = %86
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call %struct.lpfc_lcb_context* @kmalloc(i32 40, i32 %97)
  store %struct.lpfc_lcb_context* %98, %struct.lpfc_lcb_context** %12, align 8
  %99 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %100 = icmp ne %struct.lpfc_lcb_context* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  store i32 %102, i32* %14, align 4
  br label %171

103:                                              ; preds = %96
  %104 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %105 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @LPFC_LCB_ON, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  store i32 %110, i32* %13, align 4
  %111 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %112 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %115 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %117 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %116, i32 0, i32 7
  store i64 0, i64* %117, align 8
  %118 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %119 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %122 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %124 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %127 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.fc_lcb_request_frame*, %struct.fc_lcb_request_frame** %11, align 8
  %129 = getelementptr inbounds %struct.fc_lcb_request_frame, %struct.fc_lcb_request_frame* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %132 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  %133 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %134 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %140 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %142 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %146 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %148 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %147)
  %149 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %150 = getelementptr inbounds %struct.lpfc_lcb_context, %struct.lpfc_lcb_context* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  %151 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %152 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %153 = load i32, i32* %13, align 4
  %154 = call i64 @lpfc_sli4_set_beacon(%struct.lpfc_vport* %151, %struct.lpfc_lcb_context* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %103
  %157 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %158 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = inttoptr i64 %160 to %struct.lpfc_vport*
  %162 = load i32, i32* @KERN_ERR, align 4
  %163 = load i32, i32* @LOG_ELS, align 4
  %164 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %161, i32 %162, i32 %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %165 = load %struct.lpfc_lcb_context*, %struct.lpfc_lcb_context** %12, align 8
  %166 = call i32 @kfree(%struct.lpfc_lcb_context* %165)
  %167 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %168 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %167)
  %169 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  store i32 %169, i32* %14, align 4
  br label %171

170:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %184

171:                                              ; preds = %156, %101, %94, %71
  %172 = call i32 @memset(%struct.ls_rjt* %15, i32 0, i32 8)
  %173 = load i32, i32* %14, align 4
  %174 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %15, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 4
  %177 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %178 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %15, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %182 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %183 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %177, i32 %180, %struct.lpfc_iocbq* %181, %struct.lpfc_nodelist* %182, i32* null)
  store i32 1, i32* %4, align 4
  br label %184

184:                                              ; preds = %171, %170
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local %struct.lpfc_lcb_context* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_sli4_set_beacon(%struct.lpfc_vport*, %struct.lpfc_lcb_context*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_lcb_context*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(%struct.ls_rjt*, i32, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
