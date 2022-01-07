; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.lpfc_sli }
%struct.lpfc_sli = type { i32, %struct.lpfc_sli_ring*, i32, i32 }
%struct.lpfc_sli_ring = type { i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli_queue_init(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_sli*, align 8
  %4 = alloca %struct.lpfc_sli_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 1
  store %struct.lpfc_sli* %7, %struct.lpfc_sli** %3, align 8
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %11, i32 0, i32 3
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %65, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %17
  %24 = load %struct.lpfc_sli*, %struct.lpfc_sli** %3, align 8
  %25 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %24, i32 0, i32 1
  %26 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %26, i64 %28
  store %struct.lpfc_sli_ring* %29, %struct.lpfc_sli_ring** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %34 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %42 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %46 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %45, i32 0, i32 7
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %48, i32 0, i32 6
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %51, i32 0, i32 5
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %55 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %57 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %56, i32 0, i32 3
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %60 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %59, i32 0, i32 2
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %62, i32 0, i32 1
  %64 = call i32 @spin_lock_init(i32* %63)
  br label %65

65:                                               ; preds = %23
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %17

68:                                               ; preds = %17
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_irq(i32* %70)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
