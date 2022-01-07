; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c_spi_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.spi_device = type { i64, i64 }
%struct.spi_driver = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @spi_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_match_device(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.spi_device* @to_spi_device(%struct.device* %8)
  store %struct.spi_device* %9, %struct.spi_device** %6, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %11 = call %struct.spi_driver* @to_spi_driver(%struct.device_driver* %10)
  store %struct.spi_driver* %11, %struct.spi_driver** %7, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %21 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i64 %19, i32 %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %29 = call i64 @of_driver_match_device(%struct.device* %27, %struct.device_driver* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %63

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %35 = call i64 @acpi_driver_match_device(%struct.device* %33, %struct.device_driver* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %63

38:                                               ; preds = %32
  %39 = load %struct.spi_driver*, %struct.spi_driver** %7, align 8
  %40 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.spi_driver*, %struct.spi_driver** %7, align 8
  %45 = getelementptr inbounds %struct.spi_driver, %struct.spi_driver* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %48 = call i32 @spi_match_id(i64 %46, %struct.spi_device* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %38
  %54 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %58 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @strcmp(i64 %56, i32 %59)
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %53, %43, %37, %31, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local %struct.spi_driver* @to_spi_driver(%struct.device_driver*) #1

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i64 @of_driver_match_device(%struct.device*, %struct.device_driver*) #1

declare dso_local i64 @acpi_driver_match_device(%struct.device*, %struct.device_driver*) #1

declare dso_local i32 @spi_match_id(i64, %struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
