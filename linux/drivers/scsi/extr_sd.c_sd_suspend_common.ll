; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_suspend_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_suspend_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_disk = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_sense_hdr = type { i64 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Synchronizing SCSI cache\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Stopping disk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sd_suspend_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_suspend_common(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca %struct.scsi_sense_hdr, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.scsi_disk* @dev_get_drvdata(%struct.device* %9)
  store %struct.scsi_disk* %10, %struct.scsi_disk** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %12 = icmp ne %struct.scsi_disk* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %16 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %21 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  %25 = load i32, i32* @KERN_NOTICE, align 4
  %26 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %27 = call i32 @sd_printk(i32 %25, %struct.scsi_disk* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %29 = call i32 @sd_sync_cache(%struct.scsi_disk* %28, %struct.scsi_sense_hdr* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %69

38:                                               ; preds = %32
  %39 = call i32 @scsi_sense_valid(%struct.scsi_sense_hdr* %7)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ILLEGAL_REQUEST, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %69

48:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %49, %19, %14
  %51 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %52 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load i32, i32* @KERN_NOTICE, align 4
  %59 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %60 = call i32 @sd_printk(i32 %58, %struct.scsi_disk* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %62 = call i32 @sd_start_stop_device(%struct.scsi_disk* %61, i32 0)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %57
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %46, %37, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.scsi_disk* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_sync_cache(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sd_start_stop_device(%struct.scsi_disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
