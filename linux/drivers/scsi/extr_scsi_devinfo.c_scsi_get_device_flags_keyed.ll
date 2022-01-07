; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_devinfo.c_scsi_get_device_flags_keyed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_devinfo.c_scsi_get_device_flags_keyed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64 }
%struct.scsi_dev_info_list = type { i64 }

@SCSI_DEVINFO_GLOBAL = common dso_local global i32 0, align 4
@scsi_default_dev_flags = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scsi_get_device_flags_keyed(%struct.scsi_device* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_dev_info_list*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.scsi_dev_info_list* @scsi_dev_info_list_find(i8* %11, i8* %12, i32 %13)
  store %struct.scsi_dev_info_list* %14, %struct.scsi_dev_info_list** %10, align 8
  %15 = load %struct.scsi_dev_info_list*, %struct.scsi_dev_info_list** %10, align 8
  %16 = call i32 @IS_ERR(%struct.scsi_dev_info_list* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load %struct.scsi_dev_info_list*, %struct.scsi_dev_info_list** %10, align 8
  %20 = getelementptr inbounds %struct.scsi_dev_info_list, %struct.scsi_dev_info_list* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  br label %38

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SCSI_DEVINFO_GLOBAL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 0, i64* %5, align 8
  br label %38

27:                                               ; preds = %22
  %28 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  br label %38

36:                                               ; preds = %27
  %37 = load i64, i64* @scsi_default_dev_flags, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %36, %32, %26, %18
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local %struct.scsi_dev_info_list* @scsi_dev_info_list_find(i8*, i8*, i32) #1

declare dso_local i32 @IS_ERR(%struct.scsi_dev_info_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
