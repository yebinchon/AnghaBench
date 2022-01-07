; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.megasas_instance = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.megasas_instance*)* }

@MR_DCMD_CTRL_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @megasas_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.megasas_instance*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.megasas_instance* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.megasas_instance* %5, %struct.megasas_instance** %3, align 8
  %6 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %7 = icmp ne %struct.megasas_instance* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %11 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %13 = call i64 @megasas_wait_for_adapter_operational(%struct.megasas_instance* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %22

16:                                               ; preds = %9
  %17 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %18 = call i32 @megasas_flush_cache(%struct.megasas_instance* %17)
  %19 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %20 = load i32, i32* @MR_DCMD_CTRL_SHUTDOWN, align 4
  %21 = call i32 @megasas_shutdown_controller(%struct.megasas_instance* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %15
  %23 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %24 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %26, align 8
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %29 = call i32 %27(%struct.megasas_instance* %28)
  %30 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %31 = call i32 @megasas_destroy_irqs(%struct.megasas_instance* %30)
  %32 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %33 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %38 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pci_free_irq_vectors(i32 %39)
  br label %41

41:                                               ; preds = %8, %36, %22
  ret void
}

declare dso_local %struct.megasas_instance* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @megasas_wait_for_adapter_operational(%struct.megasas_instance*) #1

declare dso_local i32 @megasas_flush_cache(%struct.megasas_instance*) #1

declare dso_local i32 @megasas_shutdown_controller(%struct.megasas_instance*, i32) #1

declare dso_local i32 @megasas_destroy_irqs(%struct.megasas_instance*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
