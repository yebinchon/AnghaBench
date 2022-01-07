; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_max_write_same_blocks_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_max_write_same_blocks_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_disk = type { i64, %struct.scsi_device* }
%struct.scsi_device = type { i64, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@TYPE_ZBC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SD_MAX_WS16_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max_write_same_blocks_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_write_same_blocks_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_disk*, align 8
  %11 = alloca %struct.scsi_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.scsi_disk* @to_scsi_disk(%struct.device* %14)
  store %struct.scsi_disk* %15, %struct.scsi_disk** %10, align 8
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %17 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %16, i32 0, i32 1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %17, align 8
  store %struct.scsi_device* %18, %struct.scsi_device** %11, align 8
  %19 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %20 = call i32 @capable(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %69

25:                                               ; preds = %4
  %26 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TYPE_DISK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TYPE_ZBC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %69

40:                                               ; preds = %31, %25
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @kstrtoul(i8* %41, i32 10, i64* %12)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %69

47:                                               ; preds = %40
  %48 = load i64, i64* %12, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %52 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  br label %64

53:                                               ; preds = %47
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @SD_MAX_WS16_BLOCKS, align 8
  %56 = icmp ule i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 1
  store i32 0, i32* %59, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %62 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %53
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %66 = call i32 @sd_config_write_same(%struct.scsi_disk* %65)
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %64, %45, %37, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.scsi_disk* @to_scsi_disk(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @sd_config_write_same(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
