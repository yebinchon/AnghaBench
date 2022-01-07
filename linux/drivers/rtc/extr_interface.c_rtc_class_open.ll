; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_class_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_interface.c_rtc_class_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_device = type { i32 }
%struct.device = type { i32 }

@rtc_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtc_device* @rtc_class_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.rtc_device* null, %struct.rtc_device** %4, align 8
  %5 = load i32, i32* @rtc_class, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.device* @class_find_device_by_name(i32 %5, i8* %6)
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.rtc_device* @to_rtc_device(%struct.device* %11)
  store %struct.rtc_device* %12, %struct.rtc_device** %4, align 8
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %15 = icmp ne %struct.rtc_device* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %18 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @try_module_get(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @put_device(%struct.device* %23)
  store %struct.rtc_device* null, %struct.rtc_device** %4, align 8
  br label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %13
  %27 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  ret %struct.rtc_device* %27
}

declare dso_local %struct.device* @class_find_device_by_name(i32, i8*) #1

declare dso_local %struct.rtc_device* @to_rtc_device(%struct.device*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
