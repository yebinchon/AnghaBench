; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_allow_restart_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_allow_restart_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_disk = type { %struct.scsi_device* }
%struct.scsi_device = type { i64, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@TYPE_DISK = common dso_local global i64 0, align 8
@TYPE_ZBC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @allow_restart_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @allow_restart_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_disk*, align 8
  %12 = alloca %struct.scsi_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.scsi_disk* @to_scsi_disk(%struct.device* %13)
  store %struct.scsi_disk* %14, %struct.scsi_disk** %11, align 8
  %15 = load %struct.scsi_disk*, %struct.scsi_disk** %11, align 8
  %16 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %15, i32 0, i32 0
  %17 = load %struct.scsi_device*, %struct.scsi_device** %16, align 8
  store %struct.scsi_device* %17, %struct.scsi_device** %12, align 8
  %18 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %19 = call i32 @capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @EACCES, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %51

24:                                               ; preds = %4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TYPE_DISK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TYPE_ZBC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, i64* @EINVAL, align 8
  %38 = sub i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %51

39:                                               ; preds = %30, %24
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @kstrtobool(i8* %40, i32* %10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %46, %43, %36, %21
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local %struct.scsi_disk* @to_scsi_disk(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @kstrtobool(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
