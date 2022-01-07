; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_hba_unset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_hba_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_14__*, %struct.TYPE_13__, i32, i64, i32, %struct.TYPE_12__, %struct.TYPE_9__, %struct.pci_dev* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.pci_dev = type { i32 }

@LPFC_SLI_ASYNC_MBX_BLK = common dso_local global i32 0, align 4
@LPFC_SLI_MBOX_ACTIVE = common dso_local global i32 0, align 4
@LPFC_ACTIVE_MBOX_WAIT_CNT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_sli4_hba_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_hba_unset(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 7
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %5, align 8
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %10 = call i32 @lpfc_stop_hba_timers(%struct.lpfc_hba* %9)
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 0
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 4
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load i32, i32* @LPFC_SLI_ASYNC_MBX_BLK, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 4
  %31 = call i32 @spin_unlock_irq(i32* %30)
  br label %32

32:                                               ; preds = %47, %19
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = call i32 @msleep(i32 10)
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @LPFC_ACTIVE_MBOX_WAIT_CNT, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %48

47:                                               ; preds = %40
  br label %32

48:                                               ; preds = %46, %32
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %85

56:                                               ; preds = %48
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 4
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %4, align 8
  %64 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = call i32 @__lpfc_mbox_cmpl_put(%struct.lpfc_hba* %69, %struct.TYPE_15__* %70)
  %72 = load i32, i32* @LPFC_SLI_MBOX_ACTIVE, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %73
  store i32 %78, i32* %76, align 8
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %81, align 8
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 4
  %84 = call i32 @spin_unlock_irq(i32* %83)
  br label %85

85:                                               ; preds = %56, %48
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %87 = call i32 @lpfc_sli_hba_iocb_abort(%struct.lpfc_hba* %86)
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %89 = call i32 @lpfc_sli4_xri_exchange_busy_wait(%struct.lpfc_hba* %88)
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %91 = call i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba* %90)
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %85
  %97 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %98 = call i32 @pci_disable_sriov(%struct.pci_dev* %97)
  br label %99

99:                                               ; preds = %96, %85
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @kthread_stop(i32 %102)
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %105 = call i32 @lpfc_ras_stop_fwlog(%struct.lpfc_hba* %104)
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %107 = call i32 @lpfc_sli4_queue_unset(%struct.lpfc_hba* %106)
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %109 = call i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba* %108)
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %111 = call i32 @lpfc_pci_function_reset(%struct.lpfc_hba* %110)
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %99
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %119 = call i32 @lpfc_sli4_ras_dma_free(%struct.lpfc_hba* %118)
  br label %120

120:                                              ; preds = %117, %99
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %122 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %121, i32 0, i32 0
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %127 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %126, i32 0, i32 0
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %125, %120
  ret void
}

declare dso_local i32 @lpfc_stop_hba_timers(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @__lpfc_mbox_cmpl_put(%struct.lpfc_hba*, %struct.TYPE_15__*) #1

declare dso_local i32 @lpfc_sli_hba_iocb_abort(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_xri_exchange_busy_wait(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @lpfc_ras_stop_fwlog(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_queue_unset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_queue_destroy(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_pci_function_reset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_ras_dma_free(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
