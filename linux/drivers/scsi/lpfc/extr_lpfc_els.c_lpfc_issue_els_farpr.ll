; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_farpr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_farpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_iocbq = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64 }
%struct.lpfc_nodelist = type { i32, i32, i32 }
%struct.lpfc_dmabuf = type { i64 }

@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@ELS_CMD_RNID = common dso_local global i32 0, align 4
@ELS_CMD_FARPR = common dso_local global i32 0, align 4
@FARP_MATCH_PORT = common dso_local global i32 0, align 4
@FARP_MATCH_NODE = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Issue FARPR:     did:x%x\00", align 1
@lpfc_cmpl_els_cmd = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, i32, i32)* @lpfc_issue_els_farpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_issue_els_farpr(%struct.lpfc_vport* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.lpfc_nodelist*, align 8
  %15 = alloca %struct.lpfc_nodelist*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 3
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %8, align 8
  store i32 36, i32* %13, align 4
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %19, i32 %20)
  store %struct.lpfc_nodelist* %21, %struct.lpfc_nodelist** %15, align 8
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %23 = icmp ne %struct.lpfc_nodelist* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %3
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport* %25, i32 %26)
  store %struct.lpfc_nodelist* %27, %struct.lpfc_nodelist** %15, align 8
  %28 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %29 = icmp ne %struct.lpfc_nodelist* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 1, i32* %4, align 4
  br label %160

31:                                               ; preds = %24
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %33 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %34 = call i32 @lpfc_enqueue_node(%struct.lpfc_vport* %32, %struct.lpfc_nodelist* %33)
  br label %49

35:                                               ; preds = %3
  %36 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %37 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %42 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %43 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %40, %struct.lpfc_nodelist* %41, i32 %42)
  store %struct.lpfc_nodelist* %43, %struct.lpfc_nodelist** %15, align 8
  %44 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %45 = icmp ne %struct.lpfc_nodelist* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %160

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %55 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ELS_CMD_RNID, align 4
  %58 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %50, i32 1, i32 %51, i32 %52, %struct.lpfc_nodelist* %53, i32 %56, i32 %57)
  store %struct.lpfc_iocbq* %58, %struct.lpfc_iocbq** %9, align 8
  %59 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %60 = icmp ne %struct.lpfc_iocbq* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %63 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %62)
  store i32 1, i32* %4, align 4
  br label %160

64:                                               ; preds = %49
  %65 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %66 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.lpfc_dmabuf*
  %69 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %11, align 8
  %72 = load i32, i32* @ELS_CMD_FARPR, align 4
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32* %75, i32** %11, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = bitcast i32* %76 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %10, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = call i32 @memset(%struct.TYPE_5__* %78, i32 0, i32 32)
  %80 = load i32*, i32** %11, align 8
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i8* @be32_to_cpu(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %12, align 8
  store i32 %83, i32* %84, align 4
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @be32_to_cpu(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %12, align 8
  store i32 %90, i32* %91, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* @FARP_MATCH_PORT, align 4
  %96 = load i32, i32* @FARP_MATCH_NODE, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %103 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %102, i32 0, i32 1
  %104 = call i32 @memcpy(i32* %101, i32* %103, i32 4)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 3
  %107 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %108 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %107, i32 0, i32 0
  %109 = call i32 @memcpy(i32* %106, i32* %108, i32 4)
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %110, i32 %111)
  store %struct.lpfc_nodelist* %112, %struct.lpfc_nodelist** %14, align 8
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %114 = icmp ne %struct.lpfc_nodelist* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %64
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %117 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %123 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %122, i32 0, i32 2
  %124 = call i32 @memcpy(i32* %121, i32* %123, i32 4)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %128 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %127, i32 0, i32 1
  %129 = call i32 @memcpy(i32* %126, i32* %128, i32 4)
  br label %130

130:                                              ; preds = %119, %115, %64
  %131 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %132 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %133 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %134 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %131, i32 %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %135, i32 0, i32 0)
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* @lpfc_cmpl_els_cmd, align 4
  %143 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %144 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %146 = load i32, i32* @LPFC_ELS_RING, align 4
  %147 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %148 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %145, i32 %146, %struct.lpfc_iocbq* %147, i32 0)
  %149 = load i64, i64* @IOCB_ERROR, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %130
  %152 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %153 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %152)
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %155 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %156 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %154, %struct.lpfc_iocbq* %155)
  store i32 1, i32* %4, align 4
  br label %160

157:                                              ; preds = %130
  %158 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %15, align 8
  %159 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %158)
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %157, %151, %61, %46, %30
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_nlp_init(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_enqueue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
