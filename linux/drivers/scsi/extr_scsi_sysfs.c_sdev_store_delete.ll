; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_sdev_store_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_sdev_store_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.kernfs_node = type { i32 }
%struct.scsi_device = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sdev_store_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sdev_store_delete(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  %11 = alloca %struct.scsi_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.scsi_device* @to_scsi_device(%struct.device* %12)
  store %struct.scsi_device* %13, %struct.scsi_device** %11, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %15 = call i64 @scsi_device_get(%struct.scsi_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i64, i64* @ENODEV, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %5, align 8
  br label %45

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %24 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %23, i32 0, i32 0
  %25 = call %struct.kernfs_node* @sysfs_break_active_protection(i32* %22, i32* %24)
  store %struct.kernfs_node* %25, %struct.kernfs_node** %10, align 8
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %27 = icmp ne %struct.kernfs_node* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON_ONCE(i32 %29)
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %33 = call i32 @device_remove_file(%struct.device* %31, %struct.device_attribute* %32)
  %34 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %35 = call i32 @scsi_remove_device(%struct.scsi_device* %34)
  %36 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %37 = icmp ne %struct.kernfs_node* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %40 = call i32 @sysfs_unbreak_active_protection(%struct.kernfs_node* %39)
  br label %41

41:                                               ; preds = %38, %20
  %42 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %43 = call i32 @scsi_device_put(%struct.scsi_device* %42)
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %41, %17
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i64 @scsi_device_get(%struct.scsi_device*) #1

declare dso_local %struct.kernfs_node* @sysfs_break_active_protection(i32*, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @device_remove_file(%struct.device*, %struct.device_attribute*) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @sysfs_unbreak_active_protection(%struct.kernfs_node*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
