; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c_ulpi_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/common/extr_ulpi.c_ulpi_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.ulpi_driver = type { %struct.ulpi_device_id* }
%struct.ulpi_device_id = type { i64, i64 }
%struct.ulpi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @ulpi_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulpi_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.ulpi_driver*, align 8
  %7 = alloca %struct.ulpi*, align 8
  %8 = alloca %struct.ulpi_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %10 = call %struct.ulpi_driver* @to_ulpi_driver(%struct.device_driver* %9)
  store %struct.ulpi_driver* %10, %struct.ulpi_driver** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.ulpi* @to_ulpi_dev(%struct.device* %11)
  store %struct.ulpi* %12, %struct.ulpi** %7, align 8
  %13 = load %struct.ulpi*, %struct.ulpi** %7, align 8
  %14 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %21 = call i32 @of_driver_match_device(%struct.device* %19, %struct.device_driver* %20)
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load %struct.ulpi_driver*, %struct.ulpi_driver** %6, align 8
  %24 = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %23, i32 0, i32 0
  %25 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %24, align 8
  store %struct.ulpi_device_id* %25, %struct.ulpi_device_id** %8, align 8
  br label %26

26:                                               ; preds = %51, %22
  %27 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %8, align 8
  %28 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %8, align 8
  %33 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ulpi*, %struct.ulpi** %7, align 8
  %36 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %8, align 8
  %42 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ulpi*, %struct.ulpi** %7, align 8
  %45 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %55

50:                                               ; preds = %40, %31
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %8, align 8
  %53 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %52, i32 1
  store %struct.ulpi_device_id* %53, %struct.ulpi_device_id** %8, align 8
  br label %26

54:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %49, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ulpi_driver* @to_ulpi_driver(%struct.device_driver*) #1

declare dso_local %struct.ulpi* @to_ulpi_dev(%struct.device*) #1

declare dso_local i32 @of_driver_match_device(%struct.device*, %struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
