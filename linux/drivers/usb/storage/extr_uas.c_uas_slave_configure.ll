; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i32, i32, i32, i32, i32, %struct.uas_dev_info* }
%struct.uas_dev_info = type { i32, i64 }

@US_FL_NO_REPORT_OPCODES = common dso_local global i32 0, align 4
@US_FL_BROKEN_FUA = common dso_local global i32 0, align 4
@US_FL_ALWAYS_SYNC = common dso_local global i32 0, align 4
@US_FL_FIX_CAPACITY = common dso_local global i32 0, align 4
@US_FL_NO_WP_DETECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @uas_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.uas_dev_info*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %4 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %4, i32 0, i32 6
  %6 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  store %struct.uas_dev_info* %6, %struct.uas_dev_info** %3, align 8
  %7 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %8 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @US_FL_NO_REPORT_OPCODES, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %18 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @US_FL_BROKEN_FUA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %28 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @US_FL_ALWAYS_SYNC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %35 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %34, i32 0, i32 2
  store i32 1, i32* %35, align 8
  %36 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 4
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %42 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @US_FL_FIX_CAPACITY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 5
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %52 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @US_FL_NO_WP_DETECT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %62 = load %struct.uas_dev_info*, %struct.uas_dev_info** %3, align 8
  %63 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 2
  %66 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %61, i64 %65)
  ret i32 0
}

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
