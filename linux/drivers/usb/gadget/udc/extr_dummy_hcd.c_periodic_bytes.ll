; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_periodic_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_periodic_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dummy_ep = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dummy*, %struct.dummy_ep*)* @periodic_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @periodic_bytes(%struct.dummy* %0, %struct.dummy_ep* %1) #0 {
  %3 = alloca %struct.dummy*, align 8
  %4 = alloca %struct.dummy_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dummy* %0, %struct.dummy** %3, align 8
  store %struct.dummy_ep* %1, %struct.dummy_ep** %4, align 8
  %7 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %8 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.dummy*, %struct.dummy** %3, align 8
  %12 = getelementptr inbounds %struct.dummy, %struct.dummy* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_SPEED_HIGH, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %19 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_endpoint_maxp_mult(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 8
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %17, %2
  %30 = load %struct.dummy*, %struct.dummy** %3, align 8
  %31 = getelementptr inbounds %struct.dummy, %struct.dummy* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_SPEED_SUPER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %38 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usb_endpoint_type(i32 %39)
  switch i32 %40, label %44 [
    i32 128, label %41
    i32 129, label %42
    i32 130, label %43
  ]

41:                                               ; preds = %36
  store i32 393216, i32* %5, align 4
  br label %45

42:                                               ; preds = %36
  store i32 24576, i32* %5, align 4
  br label %45

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %36, %43
  br label %45

45:                                               ; preds = %44, %42, %41
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @usb_endpoint_maxp_mult(i32) #1

declare dso_local i32 @usb_endpoint_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
