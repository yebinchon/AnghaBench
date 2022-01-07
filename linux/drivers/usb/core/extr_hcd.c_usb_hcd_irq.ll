; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.usb_hcd*)* }

@IRQ_NONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @usb_hcd_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.usb_hcd*
  store %struct.usb_hcd* %8, %struct.usb_hcd** %5, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %10 = call i64 @HCD_DEAD(%struct.usb_hcd* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %14 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ true, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i64, i64* @IRQ_NONE, align 8
  store i64 %23, i64* %6, align 8
  br label %39

24:                                               ; preds = %17
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %26 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64 (%struct.usb_hcd*)*, i64 (%struct.usb_hcd*)** %28, align 8
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %31 = call i64 %29(%struct.usb_hcd* %30)
  %32 = load i64, i64* @IRQ_NONE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i64, i64* @IRQ_NONE, align 8
  store i64 %35, i64* %6, align 8
  br label %38

36:                                               ; preds = %24
  %37 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i64, i64* %6, align 8
  ret i64 %40
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @HCD_DEAD(%struct.usb_hcd*) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
