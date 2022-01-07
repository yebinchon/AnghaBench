; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i32, i64 }

@LPFC_MAX_RING_MASK = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REQ = common dso_local global i32 0, align 4
@FC_TYPE_ELS = common dso_local global i8* null, align 8
@lpfc_els_unsol_event = common dso_local global i8* null, align 8
@FC_RCTL_ELS_REP = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CTL = common dso_local global i32 0, align 4
@FC_TYPE_CT = common dso_local global i8* null, align 8
@lpfc_ct_unsol_event = common dso_local global i8* null, align 8
@FC_RCTL_DD_SOL_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli_ring*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  store %struct.lpfc_sli_ring* %9, %struct.lpfc_sli_ring** %3, align 8
  %10 = load i32, i32* @LPFC_MAX_RING_MASK, align 4
  %11 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @FC_RCTL_ELS_REQ, align 4
  %19 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  store i32 %18, i32* %23, align 8
  %24 = load i8*, i8** @FC_TYPE_ELS, align 8
  %25 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8* %24, i8** %29, align 8
  %30 = load i8*, i8** @lpfc_els_unsol_event, align 8
  %31 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i8* %30, i8** %35, align 8
  %36 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %37 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @FC_RCTL_ELS_REP, align 4
  %42 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %43 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %41, i32* %46, align 8
  %47 = load i8*, i8** @FC_TYPE_ELS, align 8
  %48 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i8* %47, i8** %52, align 8
  %53 = load i8*, i8** @lpfc_els_unsol_event, align 8
  %54 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %55 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i8* %53, i8** %58, align 8
  %59 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @FC_RCTL_DD_UNSOL_CTL, align 4
  %65 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %66 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 %64, i32* %69, align 8
  %70 = load i8*, i8** @FC_TYPE_CT, align 8
  %71 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i8* %70, i8** %75, align 8
  %76 = load i8*, i8** @lpfc_ct_unsol_event, align 8
  %77 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %78 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* %76, i8** %81, align 8
  %82 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %83 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @FC_RCTL_DD_SOL_CTL, align 4
  %88 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %89 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store i32 %87, i32* %92, align 8
  %93 = load i8*, i8** @FC_TYPE_CT, align 8
  %94 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i8* %93, i8** %98, align 8
  %99 = load i8*, i8** @lpfc_ct_unsol_event, align 8
  %100 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %3, align 8
  %101 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 3
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i8* %99, i8** %104, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
