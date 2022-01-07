; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_next_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_iocbq = type { i32 }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_iocbq* (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq**)* @lpfc_sli_next_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_iocbq* @lpfc_sli_next_iocb(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq** %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca %struct.lpfc_iocbq**, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %5, align 8
  store %struct.lpfc_iocbq** %2, %struct.lpfc_iocbq*** %6, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %12 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %13 = call %struct.lpfc_iocbq* @lpfc_sli_ringtx_get(%struct.lpfc_hba* %11, %struct.lpfc_sli_ring* %12)
  store %struct.lpfc_iocbq* %13, %struct.lpfc_iocbq** %7, align 8
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %15 = icmp ne %struct.lpfc_iocbq* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  %18 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %17, align 8
  store %struct.lpfc_iocbq* %18, %struct.lpfc_iocbq** %7, align 8
  %19 = load %struct.lpfc_iocbq**, %struct.lpfc_iocbq*** %6, align 8
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %19, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  ret %struct.lpfc_iocbq* %21
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_ringtx_get(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
