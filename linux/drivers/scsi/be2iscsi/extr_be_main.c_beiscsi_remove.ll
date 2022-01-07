; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.beiscsi_hba = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"beiscsi_remove called with no phba\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @beiscsi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.beiscsi_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %3, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.beiscsi_hba* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.beiscsi_hba* %5, %struct.beiscsi_hba** %3, align 8
  %6 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %7 = icmp ne %struct.beiscsi_hba* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = call i32 @dev_err(i32* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %79

12:                                               ; preds = %1
  %13 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %14 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %13, i32 0, i32 7
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 6
  %18 = call i32 @cancel_delayed_work_sync(i32* %17)
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %20 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %19, i32 0, i32 5
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = call i32 @beiscsi_iface_destroy_default(%struct.beiscsi_hba* %22)
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %25 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @iscsi_host_remove(i32 %26)
  %28 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %29 = call i32 @beiscsi_disable_port(%struct.beiscsi_hba* %28, i32 1)
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @iscsi_boot_destroy_kset(i32 %33)
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %36 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @destroy_workqueue(i32 %37)
  %39 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %40 = call i32 @beiscsi_free_mem(%struct.beiscsi_hba* %39)
  %41 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %42 = call i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba* %41)
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %44 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %48 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %53 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %58 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dma_free_coherent(i32* %46, i32 %51, i32 %56, i32 %61)
  %63 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %64 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 @pci_dev_put(%struct.TYPE_8__* %65)
  %67 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %68 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @iscsi_host_free(i32 %69)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %72 = call i32 @pci_disable_pcie_error_reporting(%struct.pci_dev* %71)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %74 = call i32 @pci_set_drvdata(%struct.pci_dev* %73, i32* null)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %76 = call i32 @pci_release_regions(%struct.pci_dev* %75)
  %77 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %78 = call i32 @pci_disable_device(%struct.pci_dev* %77)
  br label %79

79:                                               ; preds = %12, %8
  ret void
}

declare dso_local %struct.beiscsi_hba* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @beiscsi_iface_destroy_default(%struct.beiscsi_hba*) #1

declare dso_local i32 @iscsi_host_remove(i32) #1

declare dso_local i32 @beiscsi_disable_port(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @iscsi_boot_destroy_kset(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @beiscsi_free_mem(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_8__*) #1

declare dso_local i32 @iscsi_host_free(i32) #1

declare dso_local i32 @pci_disable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
