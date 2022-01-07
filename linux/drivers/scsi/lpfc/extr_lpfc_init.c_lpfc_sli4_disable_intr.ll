; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_disable_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.lpfc_hba* }

@MSIX = common dso_local global i64 0, align 8
@NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_sli4_disable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_disable_intr(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %4 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %5 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MSIX, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %36, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %13 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @pci_irq_vector(%struct.TYPE_9__* %19, i32 %20)
  %22 = call i32 @irq_set_affinity_hint(i32 %21, i32* null)
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %24 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @pci_irq_vector(%struct.TYPE_9__* %25, i32 %26)
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %29 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i64 %33
  %35 = call i32 @free_irq(i32 %27, %struct.lpfc_hba* %34)
  br label %36

36:                                               ; preds = %16
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %10

39:                                               ; preds = %10
  br label %48

40:                                               ; preds = %1
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 3
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %47 = call i32 @free_irq(i32 %45, %struct.lpfc_hba* %46)
  br label %48

48:                                               ; preds = %40, %39
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = call i32 @pci_free_irq_vectors(%struct.TYPE_9__* %51)
  %53 = load i64, i64* @NONE, align 8
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  ret void
}

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @pci_irq_vector(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.lpfc_hba*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
