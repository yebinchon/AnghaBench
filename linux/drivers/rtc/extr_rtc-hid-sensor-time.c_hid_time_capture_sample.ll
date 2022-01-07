; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hid-sensor-time.c_hid_time_capture_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hid-sensor-time.c_hid_time_capture_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_time_state = type { %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_hub_device*, i32, i64, i8*, i8*)* @hid_time_capture_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_time_capture_sample(%struct.hid_sensor_hub_device* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_sensor_hub_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.hid_time_state*, align 8
  %13 = alloca %struct.rtc_time*, align 8
  store %struct.hid_sensor_hub_device* %0, %struct.hid_sensor_hub_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = call %struct.hid_time_state* @platform_get_drvdata(i8* %14)
  store %struct.hid_time_state* %15, %struct.hid_time_state** %12, align 8
  %16 = load %struct.hid_time_state*, %struct.hid_time_state** %12, align 8
  %17 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %16, i32 0, i32 0
  store %struct.rtc_time* %17, %struct.rtc_time** %13, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %83 [
    i32 128, label %19
    i32 130, label %47
    i32 133, label %55
    i32 132, label %62
    i32 131, label %69
    i32 129, label %76
  ]

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 1
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rtc_time*, %struct.rtc_time** %13, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rtc_time*, %struct.rtc_time** %13, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 70
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.rtc_time*, %struct.rtc_time** %13, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 100
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32, %22
  br label %46

38:                                               ; preds = %19
  %39 = load i64, i64* %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @hid_time_value(i64 %39, i8* %40)
  %42 = trunc i64 %41 to i32
  %43 = sub nsw i32 %42, 1900
  %44 = load %struct.rtc_time*, %struct.rtc_time** %13, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %37
  br label %86

47:                                               ; preds = %5
  %48 = load i64, i64* %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @hid_time_value(i64 %48, i8* %49)
  %51 = trunc i64 %50 to i32
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.rtc_time*, %struct.rtc_time** %13, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %86

55:                                               ; preds = %5
  %56 = load i64, i64* %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i64 @hid_time_value(i64 %56, i8* %57)
  %59 = trunc i64 %58 to i32
  %60 = load %struct.rtc_time*, %struct.rtc_time** %13, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %86

62:                                               ; preds = %5
  %63 = load i64, i64* %9, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i64 @hid_time_value(i64 %63, i8* %64)
  %66 = trunc i64 %65 to i32
  %67 = load %struct.rtc_time*, %struct.rtc_time** %13, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %86

69:                                               ; preds = %5
  %70 = load i64, i64* %9, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @hid_time_value(i64 %70, i8* %71)
  %73 = trunc i64 %72 to i32
  %74 = load %struct.rtc_time*, %struct.rtc_time** %13, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  br label %86

76:                                               ; preds = %5
  %77 = load i64, i64* %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i64 @hid_time_value(i64 %77, i8* %78)
  %80 = trunc i64 %79 to i32
  %81 = load %struct.rtc_time*, %struct.rtc_time** %13, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  br label %86

83:                                               ; preds = %5
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %87

86:                                               ; preds = %76, %69, %62, %55, %47, %46
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.hid_time_state* @platform_get_drvdata(i8*) #1

declare dso_local i64 @hid_time_value(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
