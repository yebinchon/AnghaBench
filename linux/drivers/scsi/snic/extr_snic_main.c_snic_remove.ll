; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_main.c_snic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.pci_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snic = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"sNIC dev: bus %d slot %d fn %d snic inst is null.\0A\00", align 1
@SNIC_OFFLINE = common dso_local global i32 0, align 4
@snic_glob = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @snic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.snic*, align 8
  %4 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.snic* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.snic* %6, %struct.snic** %3, align 8
  %7 = load %struct.snic*, %struct.snic** %3, align 8
  %8 = icmp ne %struct.snic* %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @PCI_SLOT(i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @PCI_FUNC(i32 %21)
  %23 = call i32 @SNIC_INFO(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22)
  br label %103

24:                                               ; preds = %1
  %25 = load %struct.snic*, %struct.snic** %3, align 8
  %26 = load i32, i32* @SNIC_OFFLINE, align 4
  %27 = call i32 @snic_set_state(%struct.snic* %25, i32 %26)
  %28 = load %struct.snic*, %struct.snic** %3, align 8
  %29 = getelementptr inbounds %struct.snic, %struct.snic* %28, i32 0, i32 5
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.snic*, %struct.snic** %3, align 8
  %33 = getelementptr inbounds %struct.snic, %struct.snic* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.snic*, %struct.snic** %3, align 8
  %35 = getelementptr inbounds %struct.snic, %struct.snic* %34, i32 0, i32 5
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @flush_workqueue(i32 %40)
  %42 = load %struct.snic*, %struct.snic** %3, align 8
  %43 = call i32 @snic_disc_term(%struct.snic* %42)
  %44 = load %struct.snic*, %struct.snic** %3, align 8
  %45 = getelementptr inbounds %struct.snic, %struct.snic* %44, i32 0, i32 5
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.snic*, %struct.snic** %3, align 8
  %49 = getelementptr inbounds %struct.snic, %struct.snic* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.snic*, %struct.snic** %3, align 8
  %51 = getelementptr inbounds %struct.snic, %struct.snic* %50, i32 0, i32 5
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.snic*, %struct.snic** %3, align 8
  %55 = call i32 @snic_cleanup(%struct.snic* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.snic*, %struct.snic** %3, align 8
  %61 = getelementptr inbounds %struct.snic, %struct.snic* %60, i32 0, i32 4
  %62 = call i32 @list_del(i32* %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @snic_glob, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.snic*, %struct.snic** %3, align 8
  %68 = call i32 @snic_tgt_del_all(%struct.snic* %67)
  %69 = load %struct.snic*, %struct.snic** %3, align 8
  %70 = getelementptr inbounds %struct.snic, %struct.snic* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snic_del_host(i32 %71)
  %73 = load %struct.snic*, %struct.snic** %3, align 8
  %74 = getelementptr inbounds %struct.snic, %struct.snic* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @svnic_dev_notify_unset(i32 %75)
  %77 = load %struct.snic*, %struct.snic** %3, align 8
  %78 = call i32 @snic_free_intr(%struct.snic* %77)
  %79 = load %struct.snic*, %struct.snic** %3, align 8
  %80 = call i32 @snic_free_vnic_res(%struct.snic* %79)
  %81 = load %struct.snic*, %struct.snic** %3, align 8
  %82 = call i32 @snic_clear_intr_mode(%struct.snic* %81)
  %83 = load %struct.snic*, %struct.snic** %3, align 8
  %84 = getelementptr inbounds %struct.snic, %struct.snic* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @svnic_dev_close(i32 %85)
  %87 = load %struct.snic*, %struct.snic** %3, align 8
  %88 = getelementptr inbounds %struct.snic, %struct.snic* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @svnic_dev_unregister(i32 %89)
  %91 = load %struct.snic*, %struct.snic** %3, align 8
  %92 = call i32 @snic_iounmap(%struct.snic* %91)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %94 = call i32 @pci_release_regions(%struct.pci_dev* %93)
  %95 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %96 = call i32 @pci_disable_device(%struct.pci_dev* %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %98 = call i32 @pci_set_drvdata(%struct.pci_dev* %97, i32* null)
  %99 = load %struct.snic*, %struct.snic** %3, align 8
  %100 = getelementptr inbounds %struct.snic, %struct.snic* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @scsi_host_put(i32 %101)
  br label %103

103:                                              ; preds = %24, %9
  ret void
}

declare dso_local %struct.snic* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @SNIC_INFO(i8*, i32, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @snic_set_state(%struct.snic*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @snic_disc_term(%struct.snic*) #1

declare dso_local i32 @snic_cleanup(%struct.snic*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @snic_tgt_del_all(%struct.snic*) #1

declare dso_local i32 @snic_del_host(i32) #1

declare dso_local i32 @svnic_dev_notify_unset(i32) #1

declare dso_local i32 @snic_free_intr(%struct.snic*) #1

declare dso_local i32 @snic_free_vnic_res(%struct.snic*) #1

declare dso_local i32 @snic_clear_intr_mode(%struct.snic*) #1

declare dso_local i32 @svnic_dev_close(i32) #1

declare dso_local i32 @svnic_dev_unregister(i32) #1

declare dso_local i32 @snic_iounmap(%struct.snic*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
