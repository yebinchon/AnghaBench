; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_udc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_udc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dummy_hcd = type { %struct.dummy* }
%struct.dummy = type { i64, i32, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @dummy_udc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_udc_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.dummy_hcd*, align 8
  %4 = alloca %struct.dummy*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %6 = call %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.usb_gadget* %5)
  store %struct.dummy_hcd* %6, %struct.dummy_hcd** %3, align 8
  %7 = load %struct.dummy_hcd*, %struct.dummy_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %7, i32 0, i32 0
  %9 = load %struct.dummy*, %struct.dummy** %8, align 8
  store %struct.dummy* %9, %struct.dummy** %4, align 8
  %10 = load %struct.dummy*, %struct.dummy** %4, align 8
  %11 = getelementptr inbounds %struct.dummy, %struct.dummy* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.dummy*, %struct.dummy** %4, align 8
  %14 = getelementptr inbounds %struct.dummy, %struct.dummy* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.dummy*, %struct.dummy** %4, align 8
  %16 = call i32 @stop_activity(%struct.dummy* %15)
  br label %17

17:                                               ; preds = %22, %1
  %18 = load %struct.dummy*, %struct.dummy** %4, align 8
  %19 = getelementptr inbounds %struct.dummy, %struct.dummy* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.dummy*, %struct.dummy** %4, align 8
  %24 = getelementptr inbounds %struct.dummy, %struct.dummy* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock_irq(i32* %24)
  %26 = call i32 @usleep_range(i32 1000, i32 2000)
  %27 = load %struct.dummy*, %struct.dummy** %4, align 8
  %28 = getelementptr inbounds %struct.dummy, %struct.dummy* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_irq(i32* %28)
  br label %17

30:                                               ; preds = %17
  %31 = load %struct.dummy*, %struct.dummy** %4, align 8
  %32 = getelementptr inbounds %struct.dummy, %struct.dummy* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.dummy*, %struct.dummy** %4, align 8
  %34 = getelementptr inbounds %struct.dummy, %struct.dummy* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock_irq(i32* %34)
  ret i32 0
}

declare dso_local %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @stop_activity(%struct.dummy*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
