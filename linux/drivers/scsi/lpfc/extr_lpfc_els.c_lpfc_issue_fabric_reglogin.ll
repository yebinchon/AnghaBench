; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_fabric_reglogin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_fabric_reglogin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.serv_parm }
%struct.serv_parm = type { i32 }
%struct.TYPE_7__ = type { i64, i32, %struct.lpfc_vport*, i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32 }

@Fabric_DID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_FABRIC_CFG_LINK = common dso_local global i32 0, align 4
@lpfc_sli_def_mbox_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_fabric_reg_login = common dso_local global i32 0, align 4
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"0249 Cannot issue Register Fabric login: Err %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_fabric_reglogin(%struct.lpfc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.serv_parm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 2
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %4, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 1
  store %struct.serv_parm* %15, %struct.serv_parm** %8, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %17 = load i32, i32* @Fabric_DID, align 4
  %18 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %16, i32 %17)
  store %struct.lpfc_nodelist* %18, %struct.lpfc_nodelist** %7, align 8
  %19 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %20 = icmp ne %struct.lpfc_nodelist* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %23 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %1
  store i32 1, i32* %10, align 4
  br label %124

26:                                               ; preds = %21
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.TYPE_7__* @mempool_alloc(i32 %29, i32 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 2, i32* %10, align 4
  br label %124

35:                                               ; preds = %26
  %36 = load i32, i32* @LPFC_FABRIC_CFG_LINK, align 4
  %37 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %38 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = call i32 @lpfc_config_link(%struct.lpfc_hba* %39, %struct.TYPE_7__* %40)
  %42 = load i32, i32* @lpfc_sli_def_mbox_cmpl, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  store %struct.lpfc_vport* %45, %struct.lpfc_vport** %47, align 8
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = load i32, i32* @MBX_NOWAIT, align 4
  %51 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %48, %struct.TYPE_7__* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  store i32 3, i32* %10, align 4
  br label %118

56:                                               ; preds = %35
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.TYPE_7__* @mempool_alloc(i32 %59, i32 %60)
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %5, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = icmp ne %struct.TYPE_7__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  store i32 4, i32* %10, align 4
  br label %124

65:                                               ; preds = %56
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @Fabric_DID, align 4
  %71 = load %struct.serv_parm*, %struct.serv_parm** %8, align 8
  %72 = bitcast %struct.serv_parm* %71 to i32*
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %75 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @lpfc_reg_rpi(%struct.lpfc_hba* %66, i32 %69, i32 %70, i32* %72, %struct.TYPE_7__* %73, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  store i32 5, i32* %10, align 4
  br label %118

81:                                               ; preds = %65
  %82 = load i32, i32* @lpfc_mbx_cmpl_fabric_reg_login, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store %struct.lpfc_vport* %85, %struct.lpfc_vport** %87, align 8
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %89 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = load i32, i32* @MBX_NOWAIT, align 4
  %95 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %92, %struct.TYPE_7__* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  store i32 6, i32* %10, align 4
  br label %101

100:                                              ; preds = %81
  store i32 0, i32* %2, align 4
  br label %135

101:                                              ; preds = %99
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %103 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %107, %struct.lpfc_dmabuf** %6, align 8
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %109 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %110 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %113 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %108, i32 %111, i32 %114)
  %116 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %117 = call i32 @kfree(%struct.lpfc_dmabuf* %116)
  br label %118

118:                                              ; preds = %101, %80, %55
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mempool_free(%struct.TYPE_7__* %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %64, %34, %25
  %125 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %126 = load i32, i32* @FC_VPORT_FAILED, align 4
  %127 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %125, i32 %126)
  %128 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %129 = load i32, i32* @KERN_ERR, align 4
  %130 = load i32, i32* @LOG_ELS, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %128, i32 %129, i32 %130, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @ENXIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %124, %100
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.TYPE_7__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_config_link(%struct.lpfc_hba*, %struct.TYPE_7__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @lpfc_reg_rpi(%struct.lpfc_hba*, i32, i32, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
