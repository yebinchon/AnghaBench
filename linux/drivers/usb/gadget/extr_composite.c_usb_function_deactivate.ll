; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_function_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_composite.c_usb_function_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_function_deactivate(%struct.usb_function* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.usb_composite_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.usb_function* %0, %struct.usb_function** %2, align 8
  %6 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  %7 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %9, align 8
  store %struct.usb_composite_dev* %10, %struct.usb_composite_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %12 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %16 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %21 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_gadget_deactivate(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %29 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %34 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_gadget_deactivate(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
