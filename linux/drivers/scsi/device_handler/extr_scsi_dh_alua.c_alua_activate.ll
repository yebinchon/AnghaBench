; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.alua_dh_data* }
%struct.alua_dh_data = type { i32, i32, i32 }
%struct.alua_queue_data = type { i8*, i32 (i8*, i32)* }
%struct.alua_port_group = type { i32 }

@SCSI_DH_OK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SCSI_DH_RES_TEMP_UNAVAIL = common dso_local global i32 0, align 4
@SCSI_DH_DEV_OFFLINED = common dso_local global i32 0, align 4
@release_port_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, i32 (i8*, i32)*, i8*)* @alua_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_activate(%struct.scsi_device* %0, i32 (i8*, i32)* %1, i8* %2) #0 {
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i32 (i8*, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.alua_dh_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.alua_queue_data*, align 8
  %10 = alloca %struct.alua_port_group*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store i32 (i8*, i32)* %1, i32 (i8*, i32)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load %struct.alua_dh_data*, %struct.alua_dh_data** %12, align 8
  store %struct.alua_dh_data* %13, %struct.alua_dh_data** %7, align 8
  %14 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.alua_queue_data* @kzalloc(i32 16, i32 %15)
  store %struct.alua_queue_data* %16, %struct.alua_queue_data** %9, align 8
  %17 = load %struct.alua_queue_data*, %struct.alua_queue_data** %9, align 8
  %18 = icmp ne %struct.alua_queue_data* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @SCSI_DH_RES_TEMP_UNAVAIL, align 4
  store i32 %20, i32* %8, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %23 = load %struct.alua_queue_data*, %struct.alua_queue_data** %9, align 8
  %24 = getelementptr inbounds %struct.alua_queue_data, %struct.alua_queue_data* %23, i32 0, i32 1
  store i32 (i8*, i32)* %22, i32 (i8*, i32)** %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.alua_queue_data*, %struct.alua_queue_data** %9, align 8
  %27 = getelementptr inbounds %struct.alua_queue_data, %struct.alua_queue_data* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.alua_dh_data*, %struct.alua_dh_data** %7, align 8
  %29 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.alua_dh_data*, %struct.alua_dh_data** %7, align 8
  %33 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.alua_port_group* @rcu_dereference(i32 %34)
  store %struct.alua_port_group* %35, %struct.alua_port_group** %10, align 8
  %36 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %37 = icmp ne %struct.alua_port_group* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %40 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %39, i32 0, i32 0
  %41 = call i32 @kref_get_unless_zero(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38, %21
  %44 = call i32 (...) @rcu_read_unlock()
  %45 = load %struct.alua_queue_data*, %struct.alua_queue_data** %9, align 8
  %46 = call i32 @kfree(%struct.alua_queue_data* %45)
  %47 = load %struct.alua_dh_data*, %struct.alua_dh_data** %7, align 8
  %48 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.alua_dh_data*, %struct.alua_dh_data** %7, align 8
  %51 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  br label %71

53:                                               ; preds = %38
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load %struct.alua_dh_data*, %struct.alua_dh_data** %7, align 8
  %56 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %59 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %60 = load %struct.alua_queue_data*, %struct.alua_queue_data** %9, align 8
  %61 = call i64 @alua_rtpg_queue(%struct.alua_port_group* %58, %struct.scsi_device* %59, %struct.alua_queue_data* %60, i32 1)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 (i8*, i32)* null, i32 (i8*, i32)** %5, align 8
  br label %66

64:                                               ; preds = %53
  %65 = load i32, i32* @SCSI_DH_DEV_OFFLINED, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %68 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %67, i32 0, i32 0
  %69 = load i32, i32* @release_port_group, align 4
  %70 = call i32 @kref_put(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %43, %19
  %72 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %73 = icmp ne i32 (i8*, i32)* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32 (i8*, i32)*, i32 (i8*, i32)** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 %75(i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %71
  ret i32 0
}

declare dso_local %struct.alua_queue_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.alua_port_group* @rcu_dereference(i32) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree(%struct.alua_queue_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @alua_rtpg_queue(%struct.alua_port_group*, %struct.scsi_device*, %struct.alua_queue_data*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
