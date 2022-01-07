; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dummy = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.dummy* }
%struct.TYPE_5__ = type { %struct.dummy* }

@HCD_USB2 = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@HCD_USB3 = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @dummy_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.dummy*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @dev_get_platdata(i32 %7)
  %9 = inttoptr i64 %8 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.dummy*
  store %struct.dummy* %11, %struct.dummy** %3, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 -1, i32* %14, align 8
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %16 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %20 = call i8* @hcd_to_dummy_hcd(%struct.usb_hcd* %19)
  %21 = bitcast i8* %20 to %struct.TYPE_5__*
  %22 = load %struct.dummy*, %struct.dummy** %3, align 8
  %23 = getelementptr inbounds %struct.dummy, %struct.dummy* %22, i32 0, i32 1
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.dummy*, %struct.dummy** %3, align 8
  %25 = load %struct.dummy*, %struct.dummy** %3, align 8
  %26 = getelementptr inbounds %struct.dummy, %struct.dummy* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.dummy* %24, %struct.dummy** %28, align 8
  %29 = load i32, i32* @HCD_USB2, align 4
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @USB_SPEED_HIGH, align 4
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  br label %58

38:                                               ; preds = %1
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %40 = call i8* @hcd_to_dummy_hcd(%struct.usb_hcd* %39)
  %41 = bitcast i8* %40 to %struct.TYPE_6__*
  %42 = load %struct.dummy*, %struct.dummy** %3, align 8
  %43 = getelementptr inbounds %struct.dummy, %struct.dummy* %42, i32 0, i32 0
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %43, align 8
  %44 = load %struct.dummy*, %struct.dummy** %3, align 8
  %45 = load %struct.dummy*, %struct.dummy** %3, align 8
  %46 = getelementptr inbounds %struct.dummy, %struct.dummy* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store %struct.dummy* %44, %struct.dummy** %48, align 8
  %49 = load i32, i32* @HCD_USB3, align 4
  %50 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %51 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @USB_SPEED_SUPER, align 4
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %38, %18
  ret i32 0
}

declare dso_local i64 @dev_get_platdata(i32) #1

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i8* @hcd_to_dummy_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
