; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_rx.c_v_rx_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_rx.c_v_rx_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"v_rx exit with error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_rx_loop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usbip_device*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.usbip_device*
  store %struct.usbip_device* %6, %struct.usbip_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = call i32 (...) @kthread_should_stop()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %13 = call i64 @usbip_event_happened(%struct.usbip_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %25

16:                                               ; preds = %11
  %17 = load %struct.usbip_device*, %struct.usbip_device** %3, align 8
  %18 = call i32 @v_rx_pdu(%struct.usbip_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %25

24:                                               ; preds = %16
  br label %7

25:                                               ; preds = %21, %15, %7
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i64 @usbip_event_happened(%struct.usbip_device*) #1

declare dso_local i32 @v_rx_pdu(%struct.usbip_device*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
