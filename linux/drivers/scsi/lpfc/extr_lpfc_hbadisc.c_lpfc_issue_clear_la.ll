; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_clear_la.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_issue_clear_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }
%struct.lpfc_vport = type { i64 }
%struct.TYPE_6__ = type { %struct.lpfc_vport*, i32 }

@LPFC_EXTRA_RING = common dso_local global i64 0, align 8
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@LPFC_CLEAR_LA = common dso_local global i64 0, align 8
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_clear_la = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@LPFC_STOP_IOCB_EVENT = common dso_local global i32 0, align 4
@LPFC_HBA_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_issue_clear_la(%struct.lpfc_hba* %0, %struct.lpfc_vport* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.lpfc_sli*, align 8
  %7 = alloca %struct.lpfc_sli_ring*, align 8
  %8 = alloca %struct.lpfc_sli_ring*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_vport* %1, %struct.lpfc_vport** %4, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 3
  store %struct.lpfc_sli* %11, %struct.lpfc_sli** %6, align 8
  %12 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %13 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %12, i32 0, i32 0
  %14 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %13, align 8
  %15 = load i64, i64* @LPFC_EXTRA_RING, align 8
  %16 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %14, i64 %15
  store %struct.lpfc_sli_ring* %16, %struct.lpfc_sli_ring** %7, align 8
  %17 = load %struct.lpfc_sli*, %struct.lpfc_sli** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %17, i32 0, i32 0
  %19 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %18, align 8
  %20 = load i64, i64* @LPFC_FCP_RING, align 8
  %21 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %19, i64 %20
  store %struct.lpfc_sli_ring* %21, %struct.lpfc_sli_ring** %8, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LPFC_CLEAR_LA, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %2
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @LPFC_SLI_REV4, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27, %2
  br label %91

40:                                               ; preds = %33
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.TYPE_6__* @mempool_alloc(i32 %43, i32 %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %5, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %91

47:                                               ; preds = %40
  %48 = load i64, i64* @LPFC_CLEAR_LA, align 8
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = call i32 @lpfc_clear_la(%struct.lpfc_hba* %51, %struct.TYPE_6__* %52)
  %54 = load i32, i32* @lpfc_mbx_cmpl_clear_la, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store %struct.lpfc_vport* %57, %struct.lpfc_vport** %59, align 8
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i32, i32* @MBX_NOWAIT, align 4
  %63 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %60, %struct.TYPE_6__* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %47
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mempool_free(%struct.TYPE_6__* %68, i32 %71)
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %74 = call i32 @lpfc_disc_flush_list(%struct.lpfc_vport* %73)
  %75 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %78 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @LPFC_STOP_IOCB_EVENT, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %84 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i64, i64* @LPFC_HBA_ERROR, align 8
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %67, %47
  br label %91

91:                                               ; preds = %39, %90, %40
  ret void
}

declare dso_local %struct.TYPE_6__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_clear_la(%struct.lpfc_hba*, %struct.TYPE_6__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @lpfc_disc_flush_list(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
