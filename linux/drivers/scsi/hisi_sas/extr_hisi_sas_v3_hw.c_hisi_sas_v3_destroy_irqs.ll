; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_destroy_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_destroy_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.hisi_hba = type { i32, %struct.hisi_hba* }
%struct.hisi_sas_cq = type { i32, %struct.hisi_sas_cq* }

@hisi_sas_intr_conv = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.hisi_hba*)* @hisi_sas_v3_destroy_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_v3_destroy_irqs(%struct.pci_dev* %0, %struct.hisi_hba* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_sas_cq*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.hisi_hba* %1, %struct.hisi_hba** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call i32 @pci_irq_vector(%struct.pci_dev* %8, i32 1)
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %11 = bitcast %struct.hisi_hba* %10 to %struct.hisi_sas_cq*
  %12 = call i32 @free_irq(i32 %9, %struct.hisi_sas_cq* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = call i32 @pci_irq_vector(%struct.pci_dev* %13, i32 2)
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %16 = bitcast %struct.hisi_hba* %15 to %struct.hisi_sas_cq*
  %17 = call i32 @free_irq(i32 %14, %struct.hisi_sas_cq* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = call i32 @pci_irq_vector(%struct.pci_dev* %18, i32 11)
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %21 = bitcast %struct.hisi_hba* %20 to %struct.hisi_sas_cq*
  %22 = call i32 @free_irq(i32 %19, %struct.hisi_sas_cq* %21)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %50, %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %26 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %31 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %30, i32 0, i32 1
  %32 = load %struct.hisi_hba*, %struct.hisi_hba** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %32, i64 %34
  %36 = bitcast %struct.hisi_hba* %35 to %struct.hisi_sas_cq*
  store %struct.hisi_sas_cq* %36, %struct.hisi_sas_cq** %6, align 8
  %37 = load i64, i64* @hisi_sas_intr_conv, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %43

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 16, %41
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ 16, %39 ], [ %42, %40 ]
  store i32 %44, i32* %7, align 4
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @pci_irq_vector(%struct.pci_dev* %45, i32 %46)
  %48 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %6, align 8
  %49 = call i32 @free_irq(i32 %47, %struct.hisi_sas_cq* %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %23

53:                                               ; preds = %23
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %54)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.hisi_sas_cq*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
