; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe_frontend.c_print_device_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenbus/extr_xenbus_probe_frontend.c_print_device_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_driver* }
%struct.device_driver = type { i32 }
%struct.xenbus_device = type { i64, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"Device with no driver: %s\0A\00", align 1
@XenbusStateConnected = common dso_local global i64 0, align 8
@XenbusStateUnknown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Timeout connecting to device: %s (local state %d, remote state %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @print_device_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_device_status(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca %struct.device_driver*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %9)
  store %struct.xenbus_device* %10, %struct.xenbus_device** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.device_driver*
  store %struct.device_driver* %12, %struct.device_driver** %7, align 8
  %13 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %14 = icmp ne %struct.device_driver* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_driver*, %struct.device_driver** %17, align 8
  %19 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %20 = icmp ne %struct.device_driver* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %60

22:                                               ; preds = %15, %2
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.device_driver*, %struct.device_driver** %24, align 8
  %26 = icmp ne %struct.device_driver* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %29 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %59

32:                                               ; preds = %22
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %34 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XenbusStateConnected, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  %39 = load i32, i32* @XenbusStateUnknown, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %41 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %46 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @xenbus_read_driver_state(i64 %47)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %51 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %54 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %32
  br label %59

59:                                               ; preds = %58, %27
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.xenbus_device* @to_xenbus_device(%struct.device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @xenbus_read_driver_state(i64) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
