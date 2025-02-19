; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c___usb_hcd_giveback_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c___usb_hcd_giveback_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i64, i64, i32, i32, i32, i32 (%struct.urb*)*, i32*, %struct.usb_anchor*, %struct.TYPE_2__* }
%struct.usb_anchor = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_hcd = type { i32 }

@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@USB_LED_EVENT_HOST = common dso_local global i32 0, align 4
@usb_kill_urb_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @__usb_hcd_giveback_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__usb_hcd_giveback_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_anchor*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 10
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.usb_hcd* @bus_to_hcd(i32 %10)
  store %struct.usb_hcd* %11, %struct.usb_hcd** %3, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 9
  %14 = load %struct.usb_anchor*, %struct.usb_anchor** %13, align 8
  store %struct.usb_anchor* %14, %struct.usb_anchor** %4, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 8
  store i32* null, i32** %19, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.urb*, %struct.urb** %2, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %34, %26, %1
  %39 = phi i1 [ false, %26 ], [ false, %1 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EREMOTEIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %48 = load %struct.urb*, %struct.urb** %2, align 8
  %49 = call i32 @unmap_urb_for_dma(%struct.usb_hcd* %47, %struct.urb* %48)
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 0
  %52 = load %struct.urb*, %struct.urb** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @usbmon_urb_complete(i32* %51, %struct.urb* %52, i32 %53)
  %55 = load %struct.usb_anchor*, %struct.usb_anchor** %4, align 8
  %56 = call i32 @usb_anchor_suspend_wakeups(%struct.usb_anchor* %55)
  %57 = load %struct.urb*, %struct.urb** %2, align 8
  %58 = call i32 @usb_unanchor_urb(%struct.urb* %57)
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %46
  %65 = load i32, i32* @USB_LED_EVENT_HOST, align 4
  %66 = call i32 @usb_led_activity(i32 %65)
  br label %67

67:                                               ; preds = %64, %46
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.urb*, %struct.urb** %2, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.urb*, %struct.urb** %2, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 7
  %73 = load i32 (%struct.urb*)*, i32 (%struct.urb*)** %72, align 8
  %74 = load %struct.urb*, %struct.urb** %2, align 8
  %75 = call i32 %73(%struct.urb* %74)
  %76 = load %struct.usb_anchor*, %struct.usb_anchor** %4, align 8
  %77 = call i32 @usb_anchor_resume_wakeups(%struct.usb_anchor* %76)
  %78 = load %struct.urb*, %struct.urb** %2, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 6
  %80 = call i32 @atomic_dec(i32* %79)
  %81 = load %struct.urb*, %struct.urb** %2, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 5
  %83 = call i32 @atomic_read(i32* %82)
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %67
  %87 = call i32 @wake_up(i32* @usb_kill_urb_queue)
  br label %88

88:                                               ; preds = %86, %67
  %89 = load %struct.urb*, %struct.urb** %2, align 8
  %90 = call i32 @usb_put_urb(%struct.urb* %89)
  ret void
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unmap_urb_for_dma(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usbmon_urb_complete(i32*, %struct.urb*, i32) #1

declare dso_local i32 @usb_anchor_suspend_wakeups(%struct.usb_anchor*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_led_activity(i32) #1

declare dso_local i32 @usb_anchor_resume_wakeups(%struct.usb_anchor*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @usb_put_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
