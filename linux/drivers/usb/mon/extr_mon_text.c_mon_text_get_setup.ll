; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_get_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_text.c_mon_text_get_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_event_text = type { i64, i32 }
%struct.urb = type { i32* }
%struct.mon_bus = type { i32 }

@USB_ENDPOINT_XFER_CONTROL = common dso_local global i64 0, align 8
@SETUP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mon_event_text*, %struct.urb*, i8, %struct.mon_bus*)* @mon_text_get_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @mon_text_get_setup(%struct.mon_event_text* %0, %struct.urb* %1, i8 signext %2, %struct.mon_bus* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.mon_event_text*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.mon_bus*, align 8
  store %struct.mon_event_text* %0, %struct.mon_event_text** %6, align 8
  store %struct.urb* %1, %struct.urb** %7, align 8
  store i8 %2, i8* %8, align 1
  store %struct.mon_bus* %3, %struct.mon_bus** %9, align 8
  %10 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %11 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_ENDPOINT_XFER_CONTROL, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i8, i8* %8, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 83
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i8 45, i8* %5, align 1
  br label %35

20:                                               ; preds = %15
  %21 = load %struct.urb*, %struct.urb** %7, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8 90, i8* %5, align 1
  br label %35

26:                                               ; preds = %20
  %27 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %28 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.urb*, %struct.urb** %7, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @SETUP_MAX, align 4
  %34 = call i32 @memcpy(i32 %29, i32* %32, i32 %33)
  store i8 0, i8* %5, align 1
  br label %35

35:                                               ; preds = %26, %25, %19
  %36 = load i8, i8* %5, align 1
  ret i8 %36
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
