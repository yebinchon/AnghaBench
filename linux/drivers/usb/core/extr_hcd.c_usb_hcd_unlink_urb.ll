; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_unlink_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_unlink_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.usb_device*, i32 }
%struct.usb_device = type { i32, i32 }
%struct.usb_hcd = type { i32 }

@EIDRM = common dso_local global i32 0, align 4
@hcd_urb_unlink_lock = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"hcd_unlink_urb %pK fail %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_unlink_urb(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.urb*, %struct.urb** %3, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load i32, i32* @EIDRM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @hcd_urb_unlink_lock, i64 %14)
  %16 = load %struct.urb*, %struct.urb** %3, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 1
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = call i32 @usb_get_dev(%struct.usb_device* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @hcd_urb_unlink_lock, i64 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %23
  %29 = load %struct.urb*, %struct.urb** %3, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load %struct.usb_device*, %struct.usb_device** %30, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.usb_hcd* @bus_to_hcd(i32 %33)
  store %struct.usb_hcd* %34, %struct.usb_hcd** %5, align 8
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %36 = load %struct.urb*, %struct.urb** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @unlink1(%struct.usb_hcd* %35, %struct.urb* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @EINPROGRESS, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %61

44:                                               ; preds = %28
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @EIDRM, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 0
  %57 = load %struct.urb*, %struct.urb** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.urb* %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %49, %44
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %63 = call i32 @usb_put_dev(%struct.usb_device* %62)
  br label %64

64:                                               ; preds = %61, %23
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local i32 @unlink1(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.urb*, i32) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
