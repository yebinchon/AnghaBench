; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_prep_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_prep_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.alua_dh_data* }
%struct.alua_dh_data = type { i32 }
%struct.request = type { i32 }
%struct.alua_port_group = type { i8 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@RQF_QUIET = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.request*)* @alua_prep_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_prep_fn(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.alua_dh_data*, align 8
  %7 = alloca %struct.alua_port_group*, align 8
  %8 = alloca i8, align 1
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %9 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 0
  %11 = load %struct.alua_dh_data*, %struct.alua_dh_data** %10, align 8
  store %struct.alua_dh_data* %11, %struct.alua_dh_data** %6, align 8
  store i8 -127, i8* %8, align 1
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %14 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.alua_port_group* @rcu_dereference(i32 %15)
  store %struct.alua_port_group* %16, %struct.alua_port_group** %7, align 8
  %17 = load %struct.alua_port_group*, %struct.alua_port_group** %7, align 8
  %18 = icmp ne %struct.alua_port_group* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.alua_port_group*, %struct.alua_port_group** %7, align 8
  %21 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %8, align 1
  br label %23

23:                                               ; preds = %19, %2
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  switch i32 %26, label %31 [
    i32 129, label %27
    i32 131, label %27
    i32 130, label %27
    i32 128, label %29
  ]

27:                                               ; preds = %23, %23, %23
  %28 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %23
  %32 = load i32, i32* @RQF_QUIET, align 4
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %29, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.alua_port_group* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
