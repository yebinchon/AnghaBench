; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32, i32 }
%struct.scsi_info = type { i32, i32, i32, %struct.scsi_info*, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"remove (%s)\0A\00", align 1
@UNCONFIGURING = common dso_local global i32 0, align 4
@CFG_SLEEPING = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ibmvscsis_dev_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @ibmvscsis_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsis_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.scsi_info*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %4 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %4, i32 0, i32 0
  %6 = call %struct.scsi_info* @dev_get_drvdata(i32* %5)
  store %struct.scsi_info* %6, %struct.scsi_info** %3, align 8
  %7 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %7, i32 0, i32 10
  %9 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %9, i32 0, i32 9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @dev_name(i32* %12)
  %14 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %15, i32 0, i32 7
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %19 = load i32, i32* @UNCONFIGURING, align 4
  %20 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %18, i32 %19, i32 0)
  %21 = load i32, i32* @CFG_SLEEPING, align 4
  %22 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %26, i32 0, i32 7
  %28 = call i32 @spin_unlock_bh(i32* %27)
  %29 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %29, i32 0, i32 6
  %31 = call i32 @wait_for_completion(i32* %30)
  %32 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %33 = call i32 @vio_disable_interrupts(%struct.vio_dev* %32)
  %34 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %35 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.scsi_info* %37)
  %39 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @destroy_workqueue(i32 %41)
  %43 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %44 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %43, i32 0, i32 0
  %45 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %50 = call i32 @dma_unmap_single(i32* %44, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %51, i32 0, i32 3
  %53 = load %struct.scsi_info*, %struct.scsi_info** %52, align 8
  %54 = call i32 @kfree(%struct.scsi_info* %53)
  %55 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %56 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %55, i32 0, i32 2
  %57 = call i32 @tasklet_kill(i32* %56)
  %58 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %59 = call i32 @ibmvscsis_destroy_command_q(%struct.scsi_info* %58)
  %60 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %61 = call i32 @ibmvscsis_freetimer(%struct.scsi_info* %60)
  %62 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %63 = call i32 @ibmvscsis_free_cmds(%struct.scsi_info* %62)
  %64 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %64, i32 0, i32 1
  %66 = call i32 @srp_target_free(i32* %65)
  %67 = call i32 @spin_lock_bh(i32* @ibmvscsis_dev_lock)
  %68 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %68, i32 0, i32 0
  %70 = call i32 @list_del(i32* %69)
  %71 = call i32 @spin_unlock_bh(i32* @ibmvscsis_dev_lock)
  %72 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %73 = call i32 @kfree(%struct.scsi_info* %72)
  ret i32 0
}

declare dso_local %struct.scsi_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @vio_disable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.scsi_info*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.scsi_info*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ibmvscsis_destroy_command_q(%struct.scsi_info*) #1

declare dso_local i32 @ibmvscsis_freetimer(%struct.scsi_info*) #1

declare dso_local i32 @ibmvscsis_free_cmds(%struct.scsi_info*) #1

declare dso_local i32 @srp_target_free(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
