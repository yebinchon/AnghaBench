; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_disk = type { %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Synchronizing SCSI cache\0A\00", align 1
@system_state = common dso_local global i64 0, align 8
@SYSTEM_RESTART = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Stopping disk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @sd_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scsi_disk*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.scsi_disk* @dev_get_drvdata(%struct.device* %4)
  store %struct.scsi_disk* %5, %struct.scsi_disk** %3, align 8
  %6 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %7 = icmp ne %struct.scsi_disk* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %47

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i64 @pm_runtime_suspended(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %47

14:                                               ; preds = %9
  %15 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @KERN_NOTICE, align 4
  %26 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %27 = call i32 @sd_printk(i32 %25, %struct.scsi_disk* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %29 = call i32 @sd_sync_cache(%struct.scsi_disk* %28, i32* null)
  br label %30

30:                                               ; preds = %24, %19, %14
  %31 = load i64, i64* @system_state, align 8
  %32 = load i64, i64* @SYSTEM_RESTART, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @KERN_NOTICE, align 4
  %43 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %44 = call i32 @sd_printk(i32 %42, %struct.scsi_disk* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %46 = call i32 @sd_start_stop_device(%struct.scsi_disk* %45, i32 0)
  br label %47

47:                                               ; preds = %8, %13, %41, %34, %30
  ret void
}

declare dso_local %struct.scsi_disk* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @pm_runtime_suspended(%struct.device*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_sync_cache(%struct.scsi_disk*, i32*) #1

declare dso_local i32 @sd_start_stop_device(%struct.scsi_disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
