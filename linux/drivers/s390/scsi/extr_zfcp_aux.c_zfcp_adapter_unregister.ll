; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_adapter_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_adapter_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, i32, i32, i32, i32, %struct.ccw_device* }
%struct.ccw_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@zfcp_sysfs_adapter_attrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_adapter_unregister(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca %struct.zfcp_adapter*, align 8
  %3 = alloca %struct.ccw_device*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %2, align 8
  %4 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %4, i32 0, i32 5
  %6 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  store %struct.ccw_device* %6, %struct.ccw_device** %3, align 8
  %7 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %7, i32 0, i32 4
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %10, i32 0, i32 3
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %13, i32 0, i32 2
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %17 = call i32 @zfcp_destroy_adapter_work_queue(%struct.zfcp_adapter* %16)
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @zfcp_fc_wka_ports_force_offline(i32 %20)
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %23 = call i32 @zfcp_scsi_adapter_unregister(%struct.zfcp_adapter* %22)
  %24 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %25 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @sysfs_remove_group(i32* %26, i32* @zfcp_sysfs_adapter_attrs)
  %28 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %29 = call i32 @zfcp_erp_thread_kill(%struct.zfcp_adapter* %28)
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %31 = call i32 @zfcp_dbf_adapter_unregister(%struct.zfcp_adapter* %30)
  %32 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @zfcp_qdio_destroy(i32 %34)
  %36 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %37 = call i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter* %36)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @zfcp_destroy_adapter_work_queue(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_fc_wka_ports_force_offline(i32) #1

declare dso_local i32 @zfcp_scsi_adapter_unregister(%struct.zfcp_adapter*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @zfcp_erp_thread_kill(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_dbf_adapter_unregister(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_qdio_destroy(i32) #1

declare dso_local i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
