; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad.c_bfad_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bfad_s = type { %struct.bfad_s*, i32, i32, %struct.bfad_s*, i32, i32, i32*, i32 }

@BFAD_E_STOP = common dso_local global i32 0, align 4
@bfad_mutex = common dso_local global i32 0, align 4
@bfad_inst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.bfad_s* %6, %struct.bfad_s** %3, align 8
  %7 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %8 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.bfad_s* %7, i32 %10)
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %21, i32 0, i32 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kthread_stop(i32* %27)
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %30, i32 0, i32 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %36 = load i32, i32* @BFAD_E_STOP, align 4
  %37 = call i32 @bfa_sm_send_event(%struct.bfad_s* %35, i32 %36)
  %38 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %38, i32 0, i32 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %42, i32 0, i32 5
  %44 = call i32 @bfa_detach(i32* %43)
  %45 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %45, i32 0, i32 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %50 = call i32 @bfad_hal_mem_release(%struct.bfad_s* %49)
  %51 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %51, i32 0, i32 3
  %53 = load %struct.bfad_s*, %struct.bfad_s** %52, align 8
  %54 = call i32 @kfree(%struct.bfad_s* %53)
  %55 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %55, i32 0, i32 2
  %57 = call i32 @bfad_debugfs_exit(i32* %56)
  %58 = call i32 @mutex_lock(i32* @bfad_mutex)
  %59 = load i32, i32* @bfad_inst, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @bfad_inst, align 4
  %61 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %61, i32 0, i32 1
  %63 = call i32 @list_del(i32* %62)
  %64 = call i32 @mutex_unlock(i32* @bfad_mutex)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %66 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %67 = call i32 @bfad_pci_uninit(%struct.pci_dev* %65, %struct.bfad_s* %66)
  %68 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %69 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %68, i32 0, i32 0
  %70 = load %struct.bfad_s*, %struct.bfad_s** %69, align 8
  %71 = call i32 @kfree(%struct.bfad_s* %70)
  %72 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %73 = call i32 @kfree(%struct.bfad_s* %72)
  ret void
}

declare dso_local %struct.bfad_s* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfad_s*, i32) #1

declare dso_local i32 @bfa_detach(i32*) #1

declare dso_local i32 @bfad_hal_mem_release(%struct.bfad_s*) #1

declare dso_local i32 @kfree(%struct.bfad_s*) #1

declare dso_local i32 @bfad_debugfs_exit(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bfad_pci_uninit(%struct.pci_dev*, %struct.bfad_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
