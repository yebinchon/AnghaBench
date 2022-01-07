; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_deactivate(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %5 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %11 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %16 = call i32 @usb_gadget_disconnect(%struct.usb_gadget* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %14
  %21 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %22 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %9
  %24 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %25 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %19, %8
  %27 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @trace_usb_gadget_deactivate(%struct.usb_gadget* %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @usb_gadget_disconnect(%struct.usb_gadget*) #1

declare dso_local i32 @trace_usb_gadget_deactivate(%struct.usb_gadget*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
