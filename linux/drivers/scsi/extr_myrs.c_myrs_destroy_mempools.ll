; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_destroy_mempools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_destroy_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrs_hba*)* @myrs_destroy_mempools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_destroy_mempools(%struct.myrs_hba* %0) #0 {
  %2 = alloca %struct.myrs_hba*, align 8
  store %struct.myrs_hba* %0, %struct.myrs_hba** %2, align 8
  %3 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %4 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %3, i32 0, i32 4
  %5 = call i32 @cancel_delayed_work_sync(i32* %4)
  %6 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %7 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @destroy_workqueue(i32 %8)
  %10 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %11 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dma_pool_destroy(i32 %12)
  %14 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %15 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dma_pool_destroy(i32 %16)
  %18 = load %struct.myrs_hba*, %struct.myrs_hba** %2, align 8
  %19 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dma_pool_destroy(i32 %20)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
