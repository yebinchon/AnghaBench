; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_activate(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %5 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %11 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %13 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %18 = call i32 @usb_gadget_connect(%struct.usb_gadget* %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %9
  br label %20

20:                                               ; preds = %19, %8
  %21 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @trace_usb_gadget_activate(%struct.usb_gadget* %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @usb_gadget_connect(%struct.usb_gadget*) #1

declare dso_local i32 @trace_usb_gadget_activate(%struct.usb_gadget*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
