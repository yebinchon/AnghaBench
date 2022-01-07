; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hid-sensor-time.c_hid_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-hid-sensor-time.c_hid_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.hid_time_state = type { i32, %struct.rtc_time, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@HID_USAGE_SENSOR_TIME = common dso_local global i32 0, align 4
@hid_time_addresses = common dso_local global i32* null, align 8
@SENSOR_HUB_SYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @hid_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hid_time_state*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.hid_time_state* @dev_get_drvdata(%struct.device* %9)
  store %struct.hid_time_state* %10, %struct.hid_time_state** %7, align 8
  %11 = load %struct.hid_time_state*, %struct.hid_time_state** %7, align 8
  %12 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %11, i32 0, i32 2
  %13 = call i32 @reinit_completion(i32* %12)
  %14 = load %struct.hid_time_state*, %struct.hid_time_state** %7, align 8
  %15 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HID_USAGE_SENSOR_TIME, align 4
  %19 = load i32*, i32** @hid_time_addresses, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hid_time_state*, %struct.hid_time_state** %7, align 8
  %23 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SENSOR_HUB_SYNC, align 4
  %29 = call i32 @sensor_hub_input_attr_get_raw_value(i32 %17, i32 %18, i32 %21, i32 %27, i32 %28, i32 0)
  %30 = load %struct.hid_time_state*, %struct.hid_time_state** %7, align 8
  %31 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %30, i32 0, i32 2
  %32 = load i32, i32* @HZ, align 4
  %33 = mul nsw i32 %32, 6
  %34 = call i32 @wait_for_completion_killable_timeout(i32* %31, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %2
  %38 = load %struct.hid_time_state*, %struct.hid_time_state** %7, align 8
  %39 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %43 = load %struct.hid_time_state*, %struct.hid_time_state** %7, align 8
  %44 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %43, i32 0, i32 1
  %45 = bitcast %struct.rtc_time* %42 to i8*
  %46 = bitcast %struct.rtc_time* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.hid_time_state*, %struct.hid_time_state** %7, align 8
  %48 = getelementptr inbounds %struct.hid_time_state, %struct.hid_time_state* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  store i32 0, i32* %3, align 4
  br label %59

51:                                               ; preds = %2
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %54, %37
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.hid_time_state* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @sensor_hub_input_attr_get_raw_value(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_killable_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
