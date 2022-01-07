; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_ap_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_driver = type { %struct.device_driver }
%struct.device_driver = type { i8*, %struct.module*, i32, i32, i32* }
%struct.module = type { i32 }

@initialised = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ap_bus_type = common dso_local global i32 0, align 4
@ap_device_probe = common dso_local global i32 0, align 4
@ap_device_remove = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ap_driver_register(%struct.ap_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ap_driver*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device_driver*, align 8
  store %struct.ap_driver* %0, %struct.ap_driver** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.ap_driver*, %struct.ap_driver** %5, align 8
  %10 = getelementptr inbounds %struct.ap_driver, %struct.ap_driver* %9, i32 0, i32 0
  store %struct.device_driver* %10, %struct.device_driver** %8, align 8
  %11 = load i32, i32* @initialised, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load %struct.device_driver*, %struct.device_driver** %8, align 8
  %18 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %17, i32 0, i32 4
  store i32* @ap_bus_type, i32** %18, align 8
  %19 = load i32, i32* @ap_device_probe, align 4
  %20 = load %struct.device_driver*, %struct.device_driver** %8, align 8
  %21 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ap_device_remove, align 4
  %23 = load %struct.device_driver*, %struct.device_driver** %8, align 8
  %24 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.module*, %struct.module** %6, align 8
  %26 = load %struct.device_driver*, %struct.device_driver** %8, align 8
  %27 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %26, i32 0, i32 1
  store %struct.module* %25, %struct.module** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.device_driver*, %struct.device_driver** %8, align 8
  %30 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.device_driver*, %struct.device_driver** %8, align 8
  %32 = call i32 @driver_register(%struct.device_driver* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %16, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @driver_register(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
