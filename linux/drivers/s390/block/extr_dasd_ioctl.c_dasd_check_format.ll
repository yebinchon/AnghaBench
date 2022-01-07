; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_check_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dasd_device*, %struct.format_check_t*, i32)* }
%struct.format_check_t = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*, %struct.format_check_t*)* @dasd_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_check_format(%struct.dasd_block* %0, %struct.format_check_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_block*, align 8
  %5 = alloca %struct.format_check_t*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %4, align 8
  store %struct.format_check_t* %1, %struct.format_check_t** %5, align 8
  %8 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %9 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %8, i32 0, i32 0
  %10 = load %struct.dasd_device*, %struct.dasd_device** %9, align 8
  store %struct.dasd_device* %10, %struct.dasd_device** %6, align 8
  %11 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.dasd_device*, %struct.format_check_t*, i32)*, i32 (%struct.dasd_device*, %struct.format_check_t*, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.dasd_device*, %struct.format_check_t*, i32)* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTTY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.dasd_device*, %struct.format_check_t*, i32)*, i32 (%struct.dasd_device*, %struct.format_check_t*, i32)** %24, align 8
  %26 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %27 = load %struct.format_check_t*, %struct.format_check_t** %5, align 8
  %28 = call i32 %25(%struct.dasd_device* %26, %struct.format_check_t* %27, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %20
  %34 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %35 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dasd_device*, %struct.format_check_t*, i32)*, i32 (%struct.dasd_device*, %struct.format_check_t*, i32)** %37, align 8
  %39 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %40 = load %struct.format_check_t*, %struct.format_check_t** %5, align 8
  %41 = call i32 %38(%struct.dasd_device* %39, %struct.format_check_t* %40, i32 0)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %33, %20
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
