; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_provisioning_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_provisioning_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_disk = type { %struct.scsi_device* }
%struct.scsi_device = type { i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@SD_LBP_DISABLE = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@lbp_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @provisioning_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @provisioning_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_disk*, align 8
  %11 = alloca %struct.scsi_device*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.scsi_disk* @to_scsi_disk(%struct.device* %13)
  store %struct.scsi_disk* %14, %struct.scsi_disk** %10, align 8
  %15 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %16 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %15, i32 0, i32 0
  %17 = load %struct.scsi_device*, %struct.scsi_device** %16, align 8
  store %struct.scsi_device* %17, %struct.scsi_device** %11, align 8
  %18 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %19 = call i32 @capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @EACCES, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %56

24:                                               ; preds = %4
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %26 = call i64 @sd_is_zoned(%struct.scsi_disk* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %30 = load i32, i32* @SD_LBP_DISABLE, align 4
  %31 = call i32 @sd_config_discard(%struct.scsi_disk* %29, i32 %30)
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %5, align 8
  br label %56

33:                                               ; preds = %24
  %34 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TYPE_DISK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %56

42:                                               ; preds = %33
  %43 = load i32, i32* @lbp_mode, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @sysfs_match_string(i32 %43, i8* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %56

51:                                               ; preds = %42
  %52 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @sd_config_discard(%struct.scsi_disk* %52, i32 %53)
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %51, %48, %39, %28, %21
  %57 = load i64, i64* %5, align 8
  ret i64 %57
}

declare dso_local %struct.scsi_disk* @to_scsi_disk(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @sd_is_zoned(%struct.scsi_disk*) #1

declare dso_local i32 @sd_config_discard(%struct.scsi_disk*, i32) #1

declare dso_local i32 @sysfs_match_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
