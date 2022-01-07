; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_generate_uid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_generate_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @dasd_eckd_generate_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_generate_uid(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 1
  %8 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  store %struct.dasd_eckd_private* %8, %struct.dasd_eckd_private** %4, align 8
  %9 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %10 = icmp ne %struct.dasd_eckd_private* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %16 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %21 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %19
  %28 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %29 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @get_ccwdev_lock(i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_lock_irqsave(i32 %31, i64 %32)
  %34 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %35 = call i32 @create_uid(%struct.dasd_eckd_private* %34)
  %36 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %37 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @get_ccwdev_lock(i32 %38)
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32 %39, i64 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %27, %24, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @create_uid(%struct.dasd_eckd_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
