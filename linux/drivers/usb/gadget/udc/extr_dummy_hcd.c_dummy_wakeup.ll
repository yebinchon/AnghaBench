; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dummy_hcd = type { i32, i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@USB_DEVICE_B_HNP_ENABLE = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@DUMMY_RH_SUSPENDED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @dummy_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_wakeup(%struct.usb_gadget* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca %struct.dummy_hcd*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %6 = call %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.usb_gadget* %5)
  store %struct.dummy_hcd* %6, %struct.dummy_hcd** %4, align 8
  %7 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %8 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %7, i32 0, i32 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @USB_DEVICE_B_HNP_ENABLE, align 4
  %13 = shl i32 1, %12
  %14 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = and i32 %11, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  %23 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %24 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOLINK, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %63

32:                                               ; preds = %22
  %33 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %34 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %41 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DUMMY_RH_SUSPENDED, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %63

48:                                               ; preds = %39, %32
  %49 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %50 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load i64, i64* @jiffies, align 8
  %52 = call i64 @msecs_to_jiffies(i32 20)
  %53 = add nsw i64 %51, %52
  %54 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %55 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %57 = call %struct.TYPE_4__* @dummy_hcd_to_hcd(%struct.dummy_hcd* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %60 = getelementptr inbounds %struct.dummy_hcd, %struct.dummy_hcd* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @mod_timer(i32* %58, i64 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %48, %45, %29, %19
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.dummy_hcd* @gadget_to_dummy_hcd(%struct.usb_gadget*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @dummy_hcd_to_hcd(%struct.dummy_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
