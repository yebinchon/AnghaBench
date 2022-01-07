; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_ibmvscsi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.ibmvscsi_host_data = type { %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DID_ERROR = common dso_local global i32 0, align 4
@max_events = common dso_local global i32 0, align 4
@ibmvscsi_driver_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @ibmvscsi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvscsi_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.ibmvscsi_host_data*, align 8
  %4 = alloca i64, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %5 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %6 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %5, i32 0, i32 0
  %7 = call %struct.ibmvscsi_host_data* @dev_get_drvdata(i32* %6)
  store %struct.ibmvscsi_host_data* %7, %struct.ibmvscsi_host_data** %3, align 8
  %8 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %9 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i32 @srp_remove_host(%struct.TYPE_4__* %10)
  %12 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @scsi_remove_host(%struct.TYPE_4__* %14)
  %16 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %17 = load i32, i32* @DID_ERROR, align 4
  %18 = call i32 @purge_requests(%struct.ibmvscsi_host_data* %16, i32 %17)
  %19 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %20 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %27 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %26, i32 0, i32 4
  %28 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %29 = call i32 @release_event_pool(i32* %27, %struct.ibmvscsi_host_data* %28)
  %30 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %31 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32 %34, i64 %35)
  %37 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %38 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %37, i32 0, i32 3
  %39 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %40 = load i32, i32* @max_events, align 4
  %41 = call i32 @ibmvscsi_release_crq_queue(i32* %38, %struct.ibmvscsi_host_data* %39, i32 %40)
  %42 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %43 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kthread_stop(i32 %44)
  %46 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %47 = call i32 @unmap_persist_bufs(%struct.ibmvscsi_host_data* %46)
  %48 = call i32 @spin_lock(i32* @ibmvscsi_driver_lock)
  %49 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %50 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %49, i32 0, i32 1
  %51 = call i32 @list_del(i32* %50)
  %52 = call i32 @spin_unlock(i32* @ibmvscsi_driver_lock)
  %53 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %3, align 8
  %54 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i32 @scsi_host_put(%struct.TYPE_4__* %55)
  ret i32 0
}

declare dso_local %struct.ibmvscsi_host_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @srp_remove_host(%struct.TYPE_4__*) #1

declare dso_local i32 @scsi_remove_host(%struct.TYPE_4__*) #1

declare dso_local i32 @purge_requests(%struct.ibmvscsi_host_data*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @release_event_pool(i32*, %struct.ibmvscsi_host_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ibmvscsi_release_crq_queue(i32*, %struct.ibmvscsi_host_data*, i32) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @unmap_persist_bufs(%struct.ibmvscsi_host_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @scsi_host_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
