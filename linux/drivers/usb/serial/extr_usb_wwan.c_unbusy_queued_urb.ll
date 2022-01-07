; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_unbusy_queued_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_usb_wwan.c_unbusy_queued_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.usb_wwan_port_private = type { i32, %struct.urb** }

@N_OUT_URB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.usb_wwan_port_private*)* @unbusy_queued_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unbusy_queued_urb(%struct.urb* %0, %struct.usb_wwan_port_private* %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usb_wwan_port_private*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %3, align 8
  store %struct.usb_wwan_port_private* %1, %struct.usb_wwan_port_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %26, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @N_OUT_URB, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.urb*, %struct.urb** %3, align 8
  %12 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %13 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %12, i32 0, i32 1
  %14 = load %struct.urb**, %struct.urb*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.urb*, %struct.urb** %14, i64 %16
  %18 = load %struct.urb*, %struct.urb** %17, align 8
  %19 = icmp eq %struct.urb* %11, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.usb_wwan_port_private*, %struct.usb_wwan_port_private** %4, align 8
  %23 = getelementptr inbounds %struct.usb_wwan_port_private, %struct.usb_wwan_port_private* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  br label %29

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %6

29:                                               ; preds = %20, %6
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
