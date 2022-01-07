; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_extra_ring_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_extra_ring_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@LPFC_FCP_RING = common dso_local global i64 0, align 8
@SLI2_IOCB_CMD_R1XTRA_ENTRIES = common dso_local global i64 0, align 8
@SLI2_IOCB_RSP_R1XTRA_ENTRIES = common dso_local global i64 0, align 8
@SLI2_IOCB_CMD_R3XTRA_ENTRIES = common dso_local global i64 0, align 8
@SLI2_IOCB_RSP_R3XTRA_ENTRIES = common dso_local global i64 0, align 8
@LPFC_EXTRA_RING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_extra_ring_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_extra_ring_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %5, i32 0, i32 2
  store %struct.lpfc_sli* %6, %struct.lpfc_sli** %3, align 8
  %7 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %8 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %7, i32 0, i32 0
  %9 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %8, align 8
  %10 = load i64, i64* @LPFC_FCP_RING, align 8
  %11 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %9, i64 %10
  store %struct.lpfc_sli_ring* %11, %struct.lpfc_sli_ring** %4, align 8
  %12 = load i64, i64* @SLI2_IOCB_CMD_R1XTRA_ENTRIES, align 8
  %13 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %18, %12
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %16, align 4
  %21 = load i64, i64* @SLI2_IOCB_RSP_R1XTRA_ENTRIES, align 8
  %22 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %21
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 8
  %30 = load i64, i64* @SLI2_IOCB_CMD_R3XTRA_ENTRIES, align 8
  %31 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %30
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load i64, i64* @SLI2_IOCB_RSP_R3XTRA_ENTRIES, align 8
  %40 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %39
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %48, i32 0, i32 0
  %50 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %49, align 8
  %51 = load i64, i64* @LPFC_EXTRA_RING, align 8
  %52 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %50, i64 %51
  store %struct.lpfc_sli_ring* %52, %struct.lpfc_sli_ring** %4, align 8
  %53 = load i64, i64* @SLI2_IOCB_CMD_R1XTRA_ENTRIES, align 8
  %54 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %55 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %53
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load i64, i64* @SLI2_IOCB_RSP_R1XTRA_ENTRIES, align 8
  %63 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %64 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %62
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 8
  %71 = load i64, i64* @SLI2_IOCB_CMD_R3XTRA_ENTRIES, align 8
  %72 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %73 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %71
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i64, i64* @SLI2_IOCB_RSP_R3XTRA_ENTRIES, align 8
  %81 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %82 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %80
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 8
  %89 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %90 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %89, i32 0, i32 0
  store i32 4096, i32* %90, align 8
  %91 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %92 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %94 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %102 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %101, i32 0, i32 2
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i32 %100, i32* %105, align 4
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %107 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %110 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 8
  %114 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %115 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %114, i32 0, i32 2
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
