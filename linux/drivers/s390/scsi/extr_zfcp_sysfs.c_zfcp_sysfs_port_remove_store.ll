; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_port_remove_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_port_remove_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccw_device = type { i32 }
%struct.zfcp_adapter = type { i32 }
%struct.zfcp_port = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"syprs_1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @zfcp_sysfs_port_remove_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_sysfs_port_remove_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ccw_device*, align 8
  %11 = alloca %struct.zfcp_adapter*, align 8
  %12 = alloca %struct.zfcp_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.ccw_device* @to_ccwdev(%struct.device* %15)
  store %struct.ccw_device* %16, %struct.ccw_device** %10, align 8
  %17 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %18 = call %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device* %17)
  store %struct.zfcp_adapter* %18, %struct.zfcp_adapter** %11, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %22 = icmp ne %struct.zfcp_adapter* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %80

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i32* %13 to i64*
  %29 = call i64 @kstrtoull(i8* %27, i32 0, i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %68

32:                                               ; preds = %26
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter* %33, i32 %34)
  store %struct.zfcp_port* %35, %struct.zfcp_port** %12, align 8
  %36 = load %struct.zfcp_port*, %struct.zfcp_port** %12, align 8
  %37 = icmp ne %struct.zfcp_port* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %68

39:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.zfcp_port*, %struct.zfcp_port** %12, align 8
  %42 = call i64 @zfcp_sysfs_port_in_use(%struct.zfcp_port* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %14, align 4
  %47 = load %struct.zfcp_port*, %struct.zfcp_port** %12, align 8
  %48 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %47, i32 0, i32 0
  %49 = call i32 @put_device(i32* %48)
  br label %68

50:                                               ; preds = %40
  %51 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %52 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %51, i32 0, i32 0
  %53 = call i32 @write_lock_irq(i32* %52)
  %54 = load %struct.zfcp_port*, %struct.zfcp_port** %12, align 8
  %55 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %54, i32 0, i32 1
  %56 = call i32 @list_del(i32* %55)
  %57 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %58 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %57, i32 0, i32 0
  %59 = call i32 @write_unlock_irq(i32* %58)
  %60 = load %struct.zfcp_port*, %struct.zfcp_port** %12, align 8
  %61 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %60, i32 0, i32 0
  %62 = call i32 @put_device(i32* %61)
  %63 = load %struct.zfcp_port*, %struct.zfcp_port** %12, align 8
  %64 = call i32 @zfcp_erp_port_shutdown(%struct.zfcp_port* %63, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.zfcp_port*, %struct.zfcp_port** %12, align 8
  %66 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %65, i32 0, i32 0
  %67 = call i32 @device_unregister(i32* %66)
  br label %68

68:                                               ; preds = %50, %44, %38, %31
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %70 = call i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter* %69)
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %14, align 4
  br label %78

75:                                               ; preds = %68
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi i32 [ %74, %73 ], [ %77, %75 ]
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %23
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device*) #1

declare dso_local i64 @kstrtoull(i8*, i32, i64*) #1

declare dso_local %struct.zfcp_port* @zfcp_get_port_by_wwpn(%struct.zfcp_adapter*, i32) #1

declare dso_local i64 @zfcp_sysfs_port_in_use(%struct.zfcp_port*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @zfcp_erp_port_shutdown(%struct.zfcp_port*, i32, i8*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
