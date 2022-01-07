; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_ioctl_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_ioctl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, i32, i32 }
%struct.dasd_device = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DASD_STATE_BASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*)* @dasd_ioctl_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_ioctl_disable(%struct.block_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  %5 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %6 = call i32 @capable(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EACCES, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.block_device*, %struct.block_device** %3, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.dasd_device* @dasd_device_from_gendisk(i32 %14)
  store %struct.dasd_device* %15, %struct.dasd_device** %4, align 8
  %16 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %17 = icmp ne %struct.dasd_device* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %11
  %22 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %23 = load i32, i32* @DASD_STATE_BASIC, align 4
  %24 = call i32 @dasd_set_target_state(%struct.dasd_device* %22, i32 %23)
  %25 = load %struct.block_device*, %struct.block_device** %3, align 8
  %26 = getelementptr inbounds %struct.block_device, %struct.block_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.block_device*, %struct.block_device** %3, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @i_size_write(i32 %30, i32 0)
  %32 = load %struct.block_device*, %struct.block_device** %3, align 8
  %33 = getelementptr inbounds %struct.block_device, %struct.block_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %36 = call i32 @dasd_put_device(%struct.dasd_device* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %21, %18, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.dasd_device* @dasd_device_from_gendisk(i32) #1

declare dso_local i32 @dasd_set_target_state(%struct.dasd_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i_size_write(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
