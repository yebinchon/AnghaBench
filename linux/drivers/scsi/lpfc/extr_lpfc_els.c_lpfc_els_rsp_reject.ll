; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rsp_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.lpfc_nodelist = type { i32, i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@ELS_CMD_LS_RJT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"0129 Xmit ELS RJT x%x response tag x%x xri x%x, did x%x, nlp_flag x%x, nlp_state x%x, rpi x%x\0A\00", align 1
@LPFC_DISC_TRC_ELS_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Issue LS_RJT:    did:x%x flg:x%x err:x%x\00", align 1
@lpfc_cmpl_els_rsp = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %0, i32 %1, %struct.lpfc_iocbq* %2, %struct.lpfc_nodelist* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.lpfc_nodelist*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.lpfc_hba*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.lpfc_iocbq*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %9, align 8
  store %struct.lpfc_nodelist* %3, %struct.lpfc_nodelist** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 0
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  store %struct.lpfc_hba* %21, %struct.lpfc_hba** %12, align 8
  store i32 8, i32* %17, align 4
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %23 = load i32, i32* %17, align 4
  %24 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %25 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %29 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ELS_CMD_LS_RJT, align 4
  %32 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %22, i32 0, i32 %23, i32 %26, %struct.lpfc_nodelist* %27, i32 %30, i32 %31)
  store %struct.lpfc_iocbq* %32, %struct.lpfc_iocbq** %15, align 8
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %34 = icmp ne %struct.lpfc_iocbq* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %130

36:                                               ; preds = %5
  %37 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %38 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %37, i32 0, i32 1
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %13, align 8
  %39 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %40 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %39, i32 0, i32 1
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %14, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %56 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.lpfc_dmabuf*
  %59 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %16, align 8
  %62 = load i32, i32* @ELS_CMD_LS_RJT, align 4
  %63 = load i32*, i32** %16, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %16, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %16, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %36
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %73 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32* %71, i32** %74, align 8
  br label %75

75:                                               ; preds = %70, %36
  %76 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %77 = load i32, i32* @KERN_INFO, align 4
  %78 = load i32, i32* @LOG_ELS, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %81 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %84 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %88 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %91 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %94 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %97 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98)
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %101 = load i32, i32* @LPFC_DISC_TRC_ELS_RSP, align 4
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %103 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %10, align 8
  %106 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %100, i32 %101, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %107, i32 %108)
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* @lpfc_cmpl_els_rsp, align 4
  %116 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %117 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %119 = load i32, i32* @LPFC_ELS_RING, align 4
  %120 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %121 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %118, i32 %119, %struct.lpfc_iocbq* %120, i32 0)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* @IOCB_ERROR, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %75
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  %127 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %15, align 8
  %128 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %126, %struct.lpfc_iocbq* %127)
  store i32 1, i32* %6, align 4
  br label %130

129:                                              ; preds = %75
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %125, %35
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
