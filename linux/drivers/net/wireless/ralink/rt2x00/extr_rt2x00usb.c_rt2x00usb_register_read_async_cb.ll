; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_register_read_async_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_register_read_async_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.rt2x00_async_read_data* }
%struct.rt2x00_async_read_data = type { %struct.TYPE_2__*, i32, i64 (%struct.TYPE_2__*, i32, i32)* }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @rt2x00usb_register_read_async_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00usb_register_read_async_cb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.rt2x00_async_read_data*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 1
  %6 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %5, align 8
  store %struct.rt2x00_async_read_data* %6, %struct.rt2x00_async_read_data** %3, align 8
  %7 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %8 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %7, i32 0, i32 2
  %9 = load i64 (%struct.TYPE_2__*, i32, i32)*, i64 (%struct.TYPE_2__*, i32, i32)** %8, align 8
  %10 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %11 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %17 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = call i64 %9(%struct.TYPE_2__* %12, i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %1
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %25 = getelementptr inbounds %struct.rt2x00_async_read_data, %struct.rt2x00_async_read_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_anchor_urb(%struct.urb* %23, i32 %28)
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i64 @usb_submit_urb(%struct.urb* %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = call i32 @usb_unanchor_urb(%struct.urb* %35)
  %37 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %38 = call i32 @kfree(%struct.rt2x00_async_read_data* %37)
  br label %39

39:                                               ; preds = %34, %22
  br label %43

40:                                               ; preds = %1
  %41 = load %struct.rt2x00_async_read_data*, %struct.rt2x00_async_read_data** %3, align 8
  %42 = call i32 @kfree(%struct.rt2x00_async_read_data* %41)
  br label %43

43:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32) #1

declare dso_local i64 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.rt2x00_async_read_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
