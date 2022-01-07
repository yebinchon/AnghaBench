; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.alua_dh_data* }
%struct.alua_dh_data = type { i32 }
%struct.alua_port_group = type { i32 }

@release_port_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, i32)* @alua_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alua_check(%struct.scsi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alua_dh_data*, align 8
  %6 = alloca %struct.alua_port_group*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load %struct.alua_dh_data*, %struct.alua_dh_data** %8, align 8
  store %struct.alua_dh_data* %9, %struct.alua_dh_data** %5, align 8
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.alua_dh_data*, %struct.alua_dh_data** %5, align 8
  %12 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.alua_port_group* @rcu_dereference(i32 %13)
  store %struct.alua_port_group* %14, %struct.alua_port_group** %6, align 8
  %15 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %16 = icmp ne %struct.alua_port_group* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %19 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %18, i32 0, i32 0
  %20 = call i32 @kref_get_unless_zero(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %2
  %23 = call i32 (...) @rcu_read_unlock()
  br label %34

24:                                               ; preds = %17
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @alua_rtpg_queue(%struct.alua_port_group* %26, %struct.scsi_device* %27, i32* null, i32 %28)
  %30 = load %struct.alua_port_group*, %struct.alua_port_group** %6, align 8
  %31 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %30, i32 0, i32 0
  %32 = load i32, i32* @release_port_group, align 4
  %33 = call i32 @kref_put(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %24, %22
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.alua_port_group* @rcu_dereference(i32) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @alua_rtpg_queue(%struct.alua_port_group*, %struct.scsi_device*, i32*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
