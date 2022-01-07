; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_adapter_failed_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_adapter_failed_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ccw_device = type { i32 }
%struct.zfcp_adapter = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"syafai2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @zfcp_sysfs_adapter_failed_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_sysfs_adapter_failed_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ccw_device*, align 8
  %11 = alloca %struct.zfcp_adapter*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.ccw_device* @to_ccwdev(%struct.device* %14)
  store %struct.ccw_device* %15, %struct.ccw_device** %10, align 8
  %16 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  %17 = call %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device* %16)
  store %struct.zfcp_adapter* %17, %struct.zfcp_adapter** %11, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %19 = icmp ne %struct.zfcp_adapter* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @kstrtoul(i8* %24, i32 0, i64* %12)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %13, align 4
  br label %36

33:                                               ; preds = %27
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %35 = call i32 @zfcp_erp_adapter_reset_sync(%struct.zfcp_adapter* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %11, align 8
  %38 = call i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter* %37)
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  br label %46

43:                                               ; preds = %36
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %20
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local %struct.zfcp_adapter* @zfcp_ccw_adapter_by_cdev(%struct.ccw_device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @zfcp_erp_adapter_reset_sync(%struct.zfcp_adapter*, i8*) #1

declare dso_local i32 @zfcp_ccw_adapter_put(%struct.zfcp_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
