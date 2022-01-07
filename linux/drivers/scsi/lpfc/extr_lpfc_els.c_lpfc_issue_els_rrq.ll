; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_rrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_rrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_node_rrq = type { i64, i32, %struct.lpfc_nodelist* }
%struct.RRQ = type { i8*, i8* }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.lpfc_node_rrq* }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_RRQ = common dso_local global i32 0, align 4
@rrq_oxid = common dso_local global i32 0, align 4
@rrq_rxid = common dso_local global i32 0, align 4
@rrq_did = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Issue RRQ:     did:x%x\00", align 1
@lpfc_cmpl_els_rrq = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32, %struct.lpfc_node_rrq*)* @lpfc_issue_els_rrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_els_rrq(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2, %struct.lpfc_node_rrq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_node_rrq*, align 8
  %10 = alloca %struct.lpfc_hba*, align 8
  %11 = alloca %struct.RRQ*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.lpfc_node_rrq* %3, %struct.lpfc_node_rrq** %9, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 1
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %10, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %20 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %21 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %20, i32 0, i32 2
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %21, align 8
  %23 = icmp ne %struct.lpfc_nodelist* %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %26 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %25, i32 0, i32 2
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %26, align 8
  store %struct.lpfc_nodelist* %27, %struct.lpfc_nodelist** %7, align 8
  br label %28

28:                                               ; preds = %24, %4
  %29 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %30 = icmp ne %struct.lpfc_nodelist* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %33 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %28
  store i32 1, i32* %5, align 4
  br label %125

36:                                               ; preds = %31
  store i32 20, i32* %14, align 4
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ELS_CMD_RRQ, align 4
  %42 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %37, i32 1, i32 %38, i32 0, %struct.lpfc_nodelist* %39, i32 %40, i32 %41)
  store %struct.lpfc_iocbq* %42, %struct.lpfc_iocbq** %12, align 8
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %44 = icmp ne %struct.lpfc_iocbq* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %125

46:                                               ; preds = %36
  %47 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %48 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.lpfc_dmabuf*
  %51 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %13, align 8
  %54 = load i32, i32* @ELS_CMD_RRQ, align 4
  %55 = load i32*, i32** %13, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = bitcast i32* %58 to %struct.RRQ*
  store %struct.RRQ* %59, %struct.RRQ** %11, align 8
  %60 = load i32, i32* @rrq_oxid, align 4
  %61 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %67 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bf_set(i32 %60, %struct.RRQ* %61, i32 %70)
  %72 = load i32, i32* @rrq_rxid, align 4
  %73 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %74 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %75 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bf_set(i32 %72, %struct.RRQ* %73, i32 %76)
  %78 = load i32, i32* @rrq_did, align 4
  %79 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %80 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %81 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bf_set(i32 %78, %struct.RRQ* %79, i32 %82)
  %84 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %85 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @cpu_to_be32(i8* %86)
  %88 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %89 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %91 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @cpu_to_be32(i8* %92)
  %94 = load %struct.RRQ*, %struct.RRQ** %11, align 8
  %95 = getelementptr inbounds %struct.RRQ, %struct.RRQ* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %97 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %100 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %103 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %96, i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %98, i64 %101, i32 %104)
  %106 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %9, align 8
  %107 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %108 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store %struct.lpfc_node_rrq* %106, %struct.lpfc_node_rrq** %109, align 8
  %110 = load i32, i32* @lpfc_cmpl_els_rrq, align 4
  %111 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %112 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %114 = load i32, i32* @LPFC_ELS_RING, align 4
  %115 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %116 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %113, i32 %114, %struct.lpfc_iocbq* %115, i32 0)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @IOCB_ERROR, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %46
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  %122 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %123 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %121, %struct.lpfc_iocbq* %122)
  store i32 1, i32* %5, align 4
  br label %125

124:                                              ; preds = %46
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %124, %120, %45, %35
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @bf_set(i32, %struct.RRQ*, i32) #1

declare dso_local i8* @cpu_to_be32(i8*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
