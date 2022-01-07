; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_bus_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_bus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.alua_dh_data* }
%struct.alua_dh_data = type { i32, i32, i32*, i32 }
%struct.alua_port_group = type { i32, i32 }

@release_port_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*)* @alua_bus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alua_bus_detach(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.alua_dh_data*, align 8
  %4 = alloca %struct.alua_port_group*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 0
  %7 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  store %struct.alua_dh_data* %7, %struct.alua_dh_data** %3, align 8
  %8 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %9 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %12 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %15 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %14, i32 0, i32 1
  %16 = call i32 @lockdep_is_held(i32* %15)
  %17 = call %struct.alua_port_group* @rcu_dereference_protected(i32 %13, i32 %16)
  store %struct.alua_port_group* %17, %struct.alua_port_group** %4, align 8
  %18 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %19 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @rcu_assign_pointer(i32 %20, i32* null)
  %22 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %23 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %25 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.alua_port_group*, %struct.alua_port_group** %4, align 8
  %28 = icmp ne %struct.alua_port_group* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load %struct.alua_port_group*, %struct.alua_port_group** %4, align 8
  %31 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %30, i32 0, i32 1
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %34 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %33, i32 0, i32 0
  %35 = call i32 @list_del_rcu(i32* %34)
  %36 = load %struct.alua_port_group*, %struct.alua_port_group** %4, align 8
  %37 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = load %struct.alua_port_group*, %struct.alua_port_group** %4, align 8
  %40 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %39, i32 0, i32 0
  %41 = load i32, i32* @release_port_group, align 4
  %42 = call i32 @kref_put(i32* %40, i32 %41)
  br label %43

43:                                               ; preds = %29, %1
  %44 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %45 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %44, i32 0, i32 0
  store %struct.alua_dh_data* null, %struct.alua_dh_data** %45, align 8
  %46 = load %struct.alua_dh_data*, %struct.alua_dh_data** %3, align 8
  %47 = call i32 @kfree(%struct.alua_dh_data* %46)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.alua_port_group* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @kfree(%struct.alua_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
