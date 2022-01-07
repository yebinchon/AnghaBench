; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_bus_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.alua_dh_data* }
%struct.alua_dh_data = type { i32, i32, i32, %struct.scsi_device*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SCSI_DH_NOMEM = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@SCSI_DH_DEV_OFFLINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @alua_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_bus_attach(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.alua_dh_data*, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.alua_dh_data* @kzalloc(i32 32, i32 %6)
  store %struct.alua_dh_data* %7, %struct.alua_dh_data** %4, align 8
  %8 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %9 = icmp ne %struct.alua_dh_data* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @SCSI_DH_NOMEM, align 4
  store i32 %11, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %14 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %13, i32 0, i32 5
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %17 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rcu_assign_pointer(i32 %18, i32* null)
  %20 = load i32, i32* @SCSI_DH_OK, align 4
  %21 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %22 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %24 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %25 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %24, i32 0, i32 3
  store %struct.scsi_device* %23, %struct.scsi_device** %25, align 8
  %26 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %27 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %26, i32 0, i32 2
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %30 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %34 = call i32 @alua_initialize(%struct.scsi_device* %32, %struct.alua_dh_data* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @SCSI_DH_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %12
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SCSI_DH_DEV_OFFLINED, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %48

43:                                               ; preds = %38, %12
  %44 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %45 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 0
  store %struct.alua_dh_data* %44, %struct.alua_dh_data** %46, align 8
  %47 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %42
  %49 = load %struct.alua_dh_data*, %struct.alua_dh_data** %4, align 8
  %50 = call i32 @kfree(%struct.alua_dh_data* %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %43, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.alua_dh_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @alua_initialize(%struct.scsi_device*, %struct.alua_dh_data*) #1

declare dso_local i32 @kfree(%struct.alua_dh_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
