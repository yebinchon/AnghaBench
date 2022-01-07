; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_udc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_udc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i32 }
%struct.dummy_hcd = type { %struct.dummy* }
%struct.dummy = type { i32, i32, %struct.usb_gadget_driver*, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Unsupported driver max speed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @dummy_udc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_udc_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.dummy_hcd*, align 8
  %7 = alloca %struct.dummy*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %8 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %9 = call %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.usb_gadget* %8)
  store %struct.dummy_hcd* %9, %struct.dummy_hcd** %6, align 8
  %10 = load %struct.dummy_hcd*, %struct.dummy_hcd** %6, align 8
  %11 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %10, i32 0, i32 0
  %12 = load %struct.dummy*, %struct.dummy** %11, align 8
  store %struct.dummy* %12, %struct.dummy** %7, align 8
  %13 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %14 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %17 [
    i32 129, label %16
    i32 131, label %16
    i32 130, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %2, %2, %2, %2
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.dummy_hcd*, %struct.dummy_hcd** %6, align 8
  %19 = call i32 @dummy_dev(%struct.dummy_hcd* %18)
  %20 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %21 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %16
  %27 = load %struct.dummy*, %struct.dummy** %7, align 8
  %28 = getelementptr inbounds %struct.dummy, %struct.dummy* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load %struct.dummy*, %struct.dummy** %7, align 8
  %31 = getelementptr inbounds %struct.dummy, %struct.dummy* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %33 = load %struct.dummy*, %struct.dummy** %7, align 8
  %34 = getelementptr inbounds %struct.dummy, %struct.dummy* %33, i32 0, i32 2
  store %struct.usb_gadget_driver* %32, %struct.usb_gadget_driver** %34, align 8
  %35 = load %struct.dummy*, %struct.dummy** %7, align 8
  %36 = getelementptr inbounds %struct.dummy, %struct.dummy* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.dummy*, %struct.dummy** %7, align 8
  %38 = getelementptr inbounds %struct.dummy, %struct.dummy* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock_irq(i32* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %26, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.usb_gadget*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dummy_dev(%struct.dummy_hcd*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
