; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_xmt_disconnect_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_xmt_disconnect_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.fcnvme_ls_disconnect_rqst = type { %struct.TYPE_10__, %struct.TYPE_9__, i8*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i8*, i32, i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.fcnvme_ls_disconnect_acc = type { i32 }
%struct.nvmefc_ls_req_op = type { %struct.nvmefc_ls_req }
%struct.nvmefc_ls_req = type { i32, i32, i32, %struct.fcnvme_ls_disconnect_acc*, %struct.fcnvme_ls_disconnect_rqst*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FCNVME_LS_DISCONNECT = common dso_local global i32 0, align 4
@FCNVME_LSDESC_ASSOC_ID = common dso_local global i32 0, align 4
@FCNVME_LSDESC_DISCONN_CMD = common dso_local global i32 0, align 4
@FCNVME_DISCONN_ASSOCIATION = common dso_local global i32 0, align 4
@NVME_FC_CONNECT_TIMEOUT_SEC = common dso_local global i32 0, align 4
@nvme_fc_disconnect_assoc_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_ctrl*)* @nvme_fc_xmt_disconnect_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_xmt_disconnect_assoc(%struct.nvme_fc_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_fc_ctrl*, align 8
  %3 = alloca %struct.fcnvme_ls_disconnect_rqst*, align 8
  %4 = alloca %struct.fcnvme_ls_disconnect_acc*, align 8
  %5 = alloca %struct.nvmefc_ls_req_op*, align 8
  %6 = alloca %struct.nvmefc_ls_req*, align 8
  %7 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %2, align 8
  %8 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %9 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 40, %15
  %17 = add i64 %16, 72
  %18 = add i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.nvmefc_ls_req_op* @kzalloc(i32 %19, i32 %20)
  store %struct.nvmefc_ls_req_op* %21, %struct.nvmefc_ls_req_op** %5, align 8
  %22 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %23 = icmp ne %struct.nvmefc_ls_req_op* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %119

25:                                               ; preds = %1
  %26 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %27 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %26, i32 0, i32 0
  store %struct.nvmefc_ls_req* %27, %struct.nvmefc_ls_req** %6, align 8
  %28 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %29 = getelementptr inbounds %struct.nvmefc_ls_req_op, %struct.nvmefc_ls_req_op* %28, i64 1
  %30 = bitcast %struct.nvmefc_ls_req_op* %29 to i8*
  %31 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %32 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %34 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %33, i32 0, i32 5
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %37 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %35, i64 %43
  %45 = bitcast i8* %44 to %struct.fcnvme_ls_disconnect_rqst*
  store %struct.fcnvme_ls_disconnect_rqst* %45, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %46 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %47 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %46, i64 1
  %48 = bitcast %struct.fcnvme_ls_disconnect_rqst* %47 to %struct.fcnvme_ls_disconnect_acc*
  store %struct.fcnvme_ls_disconnect_acc* %48, %struct.fcnvme_ls_disconnect_acc** %4, align 8
  %49 = load i32, i32* @FCNVME_LS_DISCONNECT, align 4
  %50 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %51 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = call i8* @cpu_to_be32(i32 8)
  %54 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %55 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @FCNVME_LSDESC_ASSOC_ID, align 4
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %59 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  %61 = call i8* @fcnvme_lsdesc_len(i32 4)
  %62 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %63 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %66 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @cpu_to_be64(i64 %67)
  %69 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %70 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load i32, i32* @FCNVME_LSDESC_DISCONN_CMD, align 4
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %75 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  store i8* %73, i8** %76, align 8
  %77 = call i8* @fcnvme_lsdesc_len(i32 4)
  %78 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %79 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load i32, i32* @FCNVME_DISCONN_ASSOCIATION, align 4
  %82 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %83 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %86 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i8* @cpu_to_be64(i64 %87)
  %89 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %90 = getelementptr inbounds %struct.fcnvme_ls_disconnect_rqst, %struct.fcnvme_ls_disconnect_rqst* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  %92 = load %struct.fcnvme_ls_disconnect_rqst*, %struct.fcnvme_ls_disconnect_rqst** %3, align 8
  %93 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %94 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %93, i32 0, i32 4
  store %struct.fcnvme_ls_disconnect_rqst* %92, %struct.fcnvme_ls_disconnect_rqst** %94, align 8
  %95 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %96 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %95, i32 0, i32 0
  store i32 72, i32* %96, align 8
  %97 = load %struct.fcnvme_ls_disconnect_acc*, %struct.fcnvme_ls_disconnect_acc** %4, align 8
  %98 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %99 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %98, i32 0, i32 3
  store %struct.fcnvme_ls_disconnect_acc* %97, %struct.fcnvme_ls_disconnect_acc** %99, align 8
  %100 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %101 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %100, i32 0, i32 1
  store i32 4, i32* %101, align 4
  %102 = load i32, i32* @NVME_FC_CONNECT_TIMEOUT_SEC, align 4
  %103 = load %struct.nvmefc_ls_req*, %struct.nvmefc_ls_req** %6, align 8
  %104 = getelementptr inbounds %struct.nvmefc_ls_req, %struct.nvmefc_ls_req* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %106 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %109 = load i32, i32* @nvme_fc_disconnect_assoc_done, align 4
  %110 = call i32 @nvme_fc_send_ls_req_async(i32 %107, %struct.nvmefc_ls_req_op* %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %25
  %114 = load %struct.nvmefc_ls_req_op*, %struct.nvmefc_ls_req_op** %5, align 8
  %115 = call i32 @kfree(%struct.nvmefc_ls_req_op* %114)
  br label %116

116:                                              ; preds = %113, %25
  %117 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %118 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %24
  ret void
}

declare dso_local %struct.nvmefc_ls_req_op* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @fcnvme_lsdesc_len(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @nvme_fc_send_ls_req_async(i32, %struct.nvmefc_ls_req_op*, i32) #1

declare dso_local i32 @kfree(%struct.nvmefc_ls_req_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
