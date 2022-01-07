; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_sl811h_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_sl811h_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sl811 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @sl811h_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sl811h_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.sl811*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.sl811* @hcd_to_sl811(%struct.usb_hcd* %4)
  store %struct.sl811* %5, %struct.sl811** %3, align 8
  %6 = load i32, i32* @HC_STATE_RUNNING, align 4
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load %struct.sl811*, %struct.sl811** %3, align 8
  %10 = getelementptr inbounds %struct.sl811, %struct.sl811* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %1
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_can_wakeup(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sl811*, %struct.sl811** %3, align 8
  %26 = getelementptr inbounds %struct.sl811, %struct.sl811* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_init_wakeup(i32 %24, i32 %29)
  br label %31

31:                                               ; preds = %20, %13
  %32 = load %struct.sl811*, %struct.sl811** %3, align 8
  %33 = getelementptr inbounds %struct.sl811, %struct.sl811* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 2
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %39 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.sl811*, %struct.sl811** %3, align 8
  %42 = call i32 @port_power(%struct.sl811* %41, i32 1)
  ret i32 0
}

declare dso_local %struct.sl811* @hcd_to_sl811(%struct.usb_hcd*) #1

declare dso_local i32 @device_can_wakeup(i32) #1

declare dso_local i32 @device_init_wakeup(i32, i32) #1

declare dso_local i32 @port_power(%struct.sl811*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
