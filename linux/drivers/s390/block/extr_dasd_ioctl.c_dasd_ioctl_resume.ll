; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_ioctl_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_ioctl_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: I/O operations have been resumed on the DASD\0A\00", align 1
@DASD_STOPPED_QUIESCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*)* @dasd_ioctl_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_ioctl_resume(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %6 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %6, i32 0, i32 0
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %5, align 8
  %9 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %10 = call i32 @capable(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EACCES, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %17 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @dev_name(i32* %19)
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @get_ccwdev_lock(%struct.TYPE_2__* %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32 %25, i64 %26)
  %28 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %29 = load i32, i32* @DASD_STOPPED_QUIESCE, align 4
  %30 = call i32 @dasd_device_remove_stop_bits(%struct.dasd_device* %28, i32 %29)
  %31 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = call i32 @get_ccwdev_lock(%struct.TYPE_2__* %33)
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32 %34, i64 %35)
  %37 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %38 = call i32 @dasd_schedule_block_bh(%struct.dasd_block* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %15, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(%struct.TYPE_2__*) #1

declare dso_local i32 @dasd_device_remove_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_schedule_block_bh(%struct.dasd_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
