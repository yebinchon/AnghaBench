; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_drvr_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { i64*, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HFA384x_LINK_NOTCONNECTED = common dso_local global i32 0, align 4
@HFA384x_STATE_INIT = common dso_local global i32 0, align 4
@HFA384x_NUMPORTS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfa384x_drvr_stop(%struct.hfa384x* %0) #0 {
  %2 = alloca %struct.hfa384x*, align 8
  %3 = alloca i32, align 4
  store %struct.hfa384x* %0, %struct.hfa384x** %2, align 8
  %4 = call i32 (...) @might_sleep()
  %5 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %6 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %13 = call i32 @hfa384x_cmd_initialize(%struct.hfa384x* %12)
  %14 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %15 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %14, i32 0, i32 4
  %16 = call i32 @usb_kill_urb(i32* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @HFA384x_LINK_NOTCONNECTED, align 4
  %19 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %20 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @HFA384x_STATE_INIT, align 4
  %22 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %23 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %25 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %24, i32 0, i32 1
  %26 = call i32 @del_timer_sync(i32* %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %38, %17
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @HFA384x_NUMPORTS_MAX, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.hfa384x*, %struct.hfa384x** %2, align 8
  %33 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %27

41:                                               ; preds = %27
  ret i32 0
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @hfa384x_cmd_initialize(%struct.hfa384x*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
