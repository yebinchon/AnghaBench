; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_core.c_usb_gadget_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_6__ = type { i32 (%struct.usb_gadget*, i32)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_gadget_disconnect(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %5 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %4, i32 0, i32 2
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)** %7, align 8
  %9 = icmp ne i32 (%struct.usb_gadget*, i32)* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %15 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %20 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %45

21:                                               ; preds = %13
  %22 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %23 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32 (%struct.usb_gadget*, i32)*, i32 (%struct.usb_gadget*, i32)** %25, align 8
  %27 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %28 = call i32 %26(%struct.usb_gadget* %27, i32 0)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %21
  %32 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %33 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %35 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.usb_gadget*)**
  %41 = load i32 (%struct.usb_gadget*)*, i32 (%struct.usb_gadget*)** %40, align 8
  %42 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %43 = call i32 %41(%struct.usb_gadget* %42)
  br label %44

44:                                               ; preds = %31, %21
  br label %45

45:                                               ; preds = %44, %18, %10
  %46 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @trace_usb_gadget_disconnect(%struct.usb_gadget* %46, i32 %47)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @trace_usb_gadget_disconnect(%struct.usb_gadget*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
