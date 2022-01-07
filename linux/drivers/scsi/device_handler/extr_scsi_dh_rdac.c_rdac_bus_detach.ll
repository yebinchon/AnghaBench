; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_bus_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_rdac.c_rdac_bus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.rdac_dh_data* }
%struct.rdac_dh_data = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@kmpath_rdacd = common dso_local global i32 0, align 4
@list_lock = common dso_local global i32 0, align 4
@release_controller = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @rdac_bus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdac_bus_detach(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.rdac_dh_data*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 0
  %6 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %5, align 8
  store %struct.rdac_dh_data* %6, %struct.rdac_dh_data** %3, align 8
  %7 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %3, align 8
  %8 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %3, align 8
  %13 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @kmpath_rdacd, align 4
  %20 = call i32 @flush_workqueue(i32 %19)
  br label %21

21:                                               ; preds = %18, %11, %1
  %22 = call i32 @spin_lock(i32* @list_lock)
  %23 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %3, align 8
  %24 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %3, align 8
  %29 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %28, i32 0, i32 2
  %30 = call i32 @list_del_rcu(i32* %29)
  %31 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %3, align 8
  %32 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %3, align 8
  %34 = getelementptr inbounds %struct.rdac_dh_data, %struct.rdac_dh_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* @release_controller, align 4
  %38 = call i32 @kref_put(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %27, %21
  %40 = call i32 @spin_unlock(i32* @list_lock)
  %41 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %42 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %41, i32 0, i32 0
  store %struct.rdac_dh_data* null, %struct.rdac_dh_data** %42, align 8
  %43 = load %struct.rdac_dh_data*, %struct.rdac_dh_data** %3, align 8
  %44 = call i32 @kfree(%struct.rdac_dh_data* %43)
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.rdac_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
