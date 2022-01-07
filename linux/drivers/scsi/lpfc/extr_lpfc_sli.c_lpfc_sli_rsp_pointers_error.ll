; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_rsp_pointers_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_rsp_pointers_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, %struct.lpfc_pgp* }
%struct.lpfc_pgp = type { i32 }
%struct.lpfc_sli_ring = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"0312 Ring %d handler: portRspPut %d is bigger than rsp ring %d\0A\00", align 1
@LPFC_HBA_ERROR = common dso_local global i32 0, align 4
@HA_ERATT = common dso_local global i32 0, align 4
@HS_FFER3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_sli_ring*)* @lpfc_sli_rsp_pointers_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli_rsp_pointers_error(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  %5 = alloca %struct.lpfc_pgp*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %4, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 3
  %8 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %7, align 8
  %9 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %10 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %8, i64 %11
  store %struct.lpfc_pgp* %12, %struct.lpfc_pgp** %5, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = load i32, i32* @KERN_ERR, align 4
  %15 = load i32, i32* @LOG_SLI, align 4
  %16 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.lpfc_pgp*, %struct.lpfc_pgp** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_pgp, %struct.lpfc_pgp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %24 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %22, i32 %27)
  %29 = load i32, i32* @LPFC_HBA_ERROR, align 4
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @HA_ERATT, align 4
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @HS_FFER3, align 4
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %40)
  ret void
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
