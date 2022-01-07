; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_adapter_util_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_sysfs.c_zfcp_sysfs_adapter_util_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.fsf_qtcb_bottom_port = type { i32, i32, i32 }
%struct.zfcp_adapter = type { i32, i32 }

@FSF_FEATURE_MEASUREMENT_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%u %u %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @zfcp_sysfs_adapter_util_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_sysfs_adapter_util_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.fsf_qtcb_bottom_port*, align 8
  %10 = alloca %struct.zfcp_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %12)
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %8, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %19, %struct.zfcp_adapter** %10, align 8
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FSF_FEATURE_MEASUREMENT_DATA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %61

29:                                               ; preds = %3
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.fsf_qtcb_bottom_port* @kzalloc(i32 12, i32 %30)
  store %struct.fsf_qtcb_bottom_port* %31, %struct.fsf_qtcb_bottom_port** %9, align 8
  %32 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %9, align 8
  %33 = icmp ne %struct.fsf_qtcb_bottom_port* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %61

37:                                               ; preds = %29
  %38 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %39 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %9, align 8
  %42 = call i32 @zfcp_fsf_exchange_port_data_sync(i32 %40, %struct.fsf_qtcb_bottom_port* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %37
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %9, align 8
  %48 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %9, align 8
  %51 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %9, align 8
  %54 = getelementptr inbounds %struct.fsf_qtcb_bottom_port, %struct.fsf_qtcb_bottom_port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %45, %37
  %58 = load %struct.fsf_qtcb_bottom_port*, %struct.fsf_qtcb_bottom_port** %9, align 8
  %59 = call i32 @kfree(%struct.fsf_qtcb_bottom_port* %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %34, %26
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.fsf_qtcb_bottom_port* @kzalloc(i32, i32) #1

declare dso_local i32 @zfcp_fsf_exchange_port_data_sync(i32, %struct.fsf_qtcb_bottom_port*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.fsf_qtcb_bottom_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
