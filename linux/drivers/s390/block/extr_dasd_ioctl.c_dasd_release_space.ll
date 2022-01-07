; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_release_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_ioctl.c_dasd_release_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 (%struct.dasd_device*)* }
%struct.format_data_t = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.format_data_t*)* @dasd_release_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_release_space(%struct.dasd_device* %0, %struct.format_data_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.format_data_t*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.format_data_t* %1, %struct.format_data_t** %5, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %9, align 8
  %11 = icmp ne i32 (%struct.dasd_device*)* %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %14 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (%struct.dasd_device*)*, i32 (%struct.dasd_device*)** %16, align 8
  %18 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %19 = call i32 %17(%struct.dasd_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @ENOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %12, %2
  %25 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.dasd_device*, %struct.format_data_t*)**
  %30 = load i32 (%struct.dasd_device*, %struct.format_data_t*)*, i32 (%struct.dasd_device*, %struct.format_data_t*)** %29, align 8
  %31 = icmp ne i32 (%struct.dasd_device*, %struct.format_data_t*)* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %24
  %36 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %37 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.dasd_device*, %struct.format_data_t*)**
  %41 = load i32 (%struct.dasd_device*, %struct.format_data_t*)*, i32 (%struct.dasd_device*, %struct.format_data_t*)** %40, align 8
  %42 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %43 = load %struct.format_data_t*, %struct.format_data_t** %5, align 8
  %44 = call i32 %41(%struct.dasd_device* %42, %struct.format_data_t* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %32, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
