; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_be2iscsi_enable_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_be2iscsi_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_affinity = type { i32 }
%struct.beiscsi_hba = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BEISCSI_MAX_NUM_CPUS = common dso_local global i32 0, align 4
@enable_msix = common dso_local global i64 0, align 8
@__const.be2iscsi_enable_msix.desc = private unnamed_addr constant %struct.irq_affinity { i32 1 }, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@PCI_IRQ_AFFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @be2iscsi_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be2iscsi_enable_msix(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_affinity, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %16 [
    i32 130, label %8
    i32 129, label %8
    i32 128, label %11
  ]

8:                                                ; preds = %1, %1
  %9 = load i32, i32* @BEISCSI_MAX_NUM_CPUS, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %13 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  br label %17

16:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %11, %8
  %18 = load i64, i64* @enable_msix, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = bitcast %struct.irq_affinity* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.irq_affinity* @__const.be2iscsi_enable_msix.desc to i8*), i64 4, i1 false)
  %25 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %26 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %30 = load i32, i32* @PCI_IRQ_AFFINITY, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @pci_alloc_irq_vectors_affinity(i32 %27, i32 2, i32 %28, i32 %31, %struct.irq_affinity* %4)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %38 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %20, %17
  %41 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %42 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %34
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pci_alloc_irq_vectors_affinity(i32, i32, i32, i32, %struct.irq_affinity*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
