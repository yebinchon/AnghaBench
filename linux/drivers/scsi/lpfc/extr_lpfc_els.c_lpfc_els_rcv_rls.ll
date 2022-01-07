; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_els_rcv_rls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.lpfc_nodelist = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.lpfc_vport*, i32, i8* }
%struct.ls_rjt = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32, i64 }

@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@NLP_STE_MAPPED_NODE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@lpfc_els_rsp_rls_acc = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i64 0, align 8
@LSRJT_UNABLE_TPC = common dso_local global i32 0, align 4
@LSEXP_CANT_GIVE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*)* @lpfc_els_rcv_rls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_els_rcv_rls(%struct.lpfc_vport* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.ls_rjt, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %6, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %7, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 0
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %8, align 8
  %14 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %15 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %21 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NLP_STE_MAPPED_NODE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %80

26:                                               ; preds = %19, %3
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %28 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.TYPE_16__* @mempool_alloc(i32 %29, i32 %30)
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %9, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = icmp ne %struct.TYPE_16__* %32, null
  br i1 %33, label %34, label %79

34:                                               ; preds = %26
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %37 = call i32 @lpfc_read_lnk_stat(%struct.lpfc_hba* %35, %struct.TYPE_16__* %36)
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %46 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %44, %48
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  store i8* %51, i8** %53, align 8
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %55 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  store %struct.lpfc_vport* %58, %struct.lpfc_vport** %60, align 8
  %61 = load i32, i32* @lpfc_els_rsp_rls_acc, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %66 = load i32, i32* @MBX_NOWAIT, align 4
  %67 = call i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %64, %struct.TYPE_16__* %65, i32 %66)
  %68 = load i64, i64* @MBX_NOT_FINISHED, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %102

71:                                               ; preds = %34
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %73 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mempool_free(%struct.TYPE_16__* %74, i32 %77)
  br label %79

79:                                               ; preds = %71, %26
  br label %80

80:                                               ; preds = %79, %25
  %81 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %10, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @LSRJT_UNABLE_TPC, align 4
  %85 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %10, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @LSEXP_CANT_GIVE_DATA, align 4
  %89 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %10, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %10, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %96 = getelementptr inbounds %struct.ls_rjt, %struct.ls_rjt* %10, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %100 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %101 = call i32 @lpfc_els_rsp_reject(%struct.lpfc_vport* %95, i32 %98, %struct.lpfc_iocbq* %99, %struct.lpfc_nodelist* %100, i32* null)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %80, %70
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.TYPE_16__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_read_lnk_stat(%struct.lpfc_hba*, %struct.TYPE_16__*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @lpfc_els_rsp_reject(%struct.lpfc_vport*, i32, %struct.lpfc_iocbq*, %struct.lpfc_nodelist*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
