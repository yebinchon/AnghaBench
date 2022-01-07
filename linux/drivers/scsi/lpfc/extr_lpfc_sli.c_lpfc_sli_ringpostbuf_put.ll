; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_ringpostbuf_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_ringpostbuf_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_sli_ring = type { i32, i32 }
%struct.lpfc_dmabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_ringpostbuf_put(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_dmabuf* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %5, align 8
  store %struct.lpfc_dmabuf* %2, %struct.lpfc_dmabuf** %6, align 8
  %7 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %8 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %11 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %10, i32 0, i32 0
  %12 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %13 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %12, i32 0, i32 1
  %14 = call i32 @list_add_tail(i32* %11, i32* %13)
  %15 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %16 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock_irq(i32* %20)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
