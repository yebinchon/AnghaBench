; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_dev_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_rpmsg_core.c_rpmsg_dev_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.rpmsg_device = type { i64 }
%struct.rpmsg_driver = type { %struct.rpmsg_device_id* }
%struct.rpmsg_device_id = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @rpmsg_dev_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmsg_dev_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.rpmsg_device*, align 8
  %7 = alloca %struct.rpmsg_driver*, align 8
  %8 = alloca %struct.rpmsg_device_id*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.rpmsg_device* @to_rpmsg_device(%struct.device* %10)
  store %struct.rpmsg_device* %11, %struct.rpmsg_device** %6, align 8
  %12 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %13 = call %struct.rpmsg_driver* @to_rpmsg_driver(%struct.device_driver* %12)
  store %struct.rpmsg_driver* %13, %struct.rpmsg_driver** %7, align 8
  %14 = load %struct.rpmsg_driver*, %struct.rpmsg_driver** %7, align 8
  %15 = getelementptr inbounds %struct.rpmsg_driver, %struct.rpmsg_driver* %14, i32 0, i32 0
  %16 = load %struct.rpmsg_device_id*, %struct.rpmsg_device_id** %15, align 8
  store %struct.rpmsg_device_id* %16, %struct.rpmsg_device_id** %8, align 8
  %17 = load %struct.rpmsg_device*, %struct.rpmsg_device** %6, align 8
  %18 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.rpmsg_device*, %struct.rpmsg_device** %6, align 8
  %23 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %26 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcmp(i64 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %2
  %33 = load %struct.rpmsg_device_id*, %struct.rpmsg_device_id** %8, align 8
  %34 = icmp ne %struct.rpmsg_device_id* %33, null
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load %struct.rpmsg_device_id*, %struct.rpmsg_device_id** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rpmsg_device_id, %struct.rpmsg_device_id* %37, i64 %39
  %41 = getelementptr inbounds %struct.rpmsg_device_id, %struct.rpmsg_device_id* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %36
  %47 = load %struct.rpmsg_device*, %struct.rpmsg_device** %6, align 8
  %48 = load %struct.rpmsg_device_id*, %struct.rpmsg_device_id** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.rpmsg_device_id, %struct.rpmsg_device_id* %48, i64 %50
  %52 = call i64 @rpmsg_id_match(%struct.rpmsg_device* %47, %struct.rpmsg_device_id* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %64

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %36

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %63 = call i32 @of_driver_match_device(%struct.device* %61, %struct.device_driver* %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %54, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.rpmsg_device* @to_rpmsg_device(%struct.device*) #1

declare dso_local %struct.rpmsg_driver* @to_rpmsg_driver(%struct.device_driver*) #1

declare dso_local i32 @strcmp(i64, i32) #1

declare dso_local i64 @rpmsg_id_match(%struct.rpmsg_device*, %struct.rpmsg_device_id*) #1

declare dso_local i32 @of_driver_match_device(%struct.device*, %struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
