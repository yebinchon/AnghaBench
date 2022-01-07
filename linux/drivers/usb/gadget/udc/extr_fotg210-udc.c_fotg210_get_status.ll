; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_udc = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i64 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i64 0, align 8
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_udc*, %struct.usb_ctrlrequest*)* @fotg210_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_get_status(%struct.fotg210_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.fotg210_udc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i64, align 8
  store %struct.fotg210_udc* %0, %struct.fotg210_udc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %6 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %7 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @USB_RECIP_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %43 [
    i32 130, label %11
    i32 128, label %16
    i32 129, label %19
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %13 = shl i32 1, %12
  %14 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %15 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %18 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %46

19:                                               ; preds = %2
  %20 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_ENDPOINT_NUMBER_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %29 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fotg210_is_epnstall(i32 %33)
  %35 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %36 = shl i32 %34, %35
  %37 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %38 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %42

39:                                               ; preds = %19
  %40 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %41 = call i32 @fotg210_request_error(%struct.fotg210_udc* %40)
  br label %42

42:                                               ; preds = %39, %27
  br label %46

43:                                               ; preds = %2
  %44 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %45 = call i32 @fotg210_request_error(%struct.fotg210_udc* %44)
  br label %72

46:                                               ; preds = %42, %16, %11
  %47 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %48 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %47, i32 0, i32 0
  %49 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %50 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32* %48, i32** %52, align 8
  %53 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %54 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 2, i32* %56, align 8
  %57 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %58 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %61 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %65 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call i32 @fotg210_ep_queue(i32 %63, %struct.TYPE_4__* %66, i32 %67)
  %69 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %70 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %69, i32 0, i32 1
  %71 = call i32 @spin_lock(i32* %70)
  br label %72

72:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @fotg210_is_epnstall(i32) #1

declare dso_local i32 @fotg210_request_error(%struct.fotg210_udc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fotg210_ep_queue(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
