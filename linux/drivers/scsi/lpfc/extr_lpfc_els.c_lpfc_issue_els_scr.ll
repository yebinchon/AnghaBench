; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_scr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_iocbq = type { i32, i64 }
%struct.lpfc_nodelist = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.TYPE_4__ = type { i32 }

@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@ELS_CMD_SCR = common dso_local global i32 0, align 4
@SCR_FUNC_FULL = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue SCR:       did:x%x\00", align 1
@lpfc_cmpl_els_cmd = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8
@FC_PT2PT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_scr(%struct.lpfc_vport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 1
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %8, align 8
  store i32 8, i32* %11, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %16, i32 %17)
  store %struct.lpfc_nodelist* %18, %struct.lpfc_nodelist** %12, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %20 = icmp ne %struct.lpfc_nodelist* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %3
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %22, i32 %23)
  store %struct.lpfc_nodelist* %24, %struct.lpfc_nodelist** %12, align 8
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %26 = icmp ne %struct.lpfc_nodelist* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %116

28:                                               ; preds = %21
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %31 = call i32 @lpfc_enqueue_node(%struct.lpfc_vport* %29, %struct.lpfc_nodelist* %30)
  br label %46

32:                                               ; preds = %3
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %34 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %39 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %40 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %37, %struct.lpfc_nodelist* %38, i32 %39)
  store %struct.lpfc_nodelist* %40, %struct.lpfc_nodelist** %12, align 8
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %42 = icmp ne %struct.lpfc_nodelist* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 1, i32* %4, align 4
  br label %116

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %51 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %52 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ELS_CMD_SCR, align 4
  %55 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %47, i32 1, i32 %48, i32 %49, %struct.lpfc_nodelist* %50, i32 %53, i32 %54)
  store %struct.lpfc_iocbq* %55, %struct.lpfc_iocbq** %9, align 8
  %56 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %57 = icmp ne %struct.lpfc_iocbq* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %60 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %59)
  store i32 1, i32* %4, align 4
  br label %116

61:                                               ; preds = %46
  %62 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %63 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.lpfc_dmabuf*
  %66 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %10, align 8
  %69 = load i32, i32* @ELS_CMD_SCR, align 4
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32* %72, i32** %10, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @memset(i32* %73, i32 0, i32 4)
  %75 = load i32, i32* @SCR_FUNC_FULL, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = bitcast i32* %76 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %80 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %82 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %79, i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %83, i32 0, i32 0)
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @lpfc_cmpl_els_cmd, align 4
  %91 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %92 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %94 = load i32, i32* @LPFC_ELS_RING, align 4
  %95 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %96 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %93, i32 %94, %struct.lpfc_iocbq* %95, i32 0)
  %97 = load i64, i64* @IOCB_ERROR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %61
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %101 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %100)
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %103 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %104 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %102, %struct.lpfc_iocbq* %103)
  store i32 1, i32* %4, align 4
  br label %116

105:                                              ; preds = %61
  %106 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %107 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @FC_PT2PT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %12, align 8
  %114 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %113)
  br label %115

115:                                              ; preds = %112, %105
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %99, %58, %43, %27
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_enqueue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
