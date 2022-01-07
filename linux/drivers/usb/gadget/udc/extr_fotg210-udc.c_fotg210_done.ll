; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_ep = type { %struct.TYPE_6__*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.fotg210_request = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_ep*, %struct.fotg210_request*, i32)* @fotg210_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_done(%struct.fotg210_ep* %0, %struct.fotg210_request* %1, i32 %2) #0 {
  %4 = alloca %struct.fotg210_ep*, align 8
  %5 = alloca %struct.fotg210_request*, align 8
  %6 = alloca i32, align 4
  store %struct.fotg210_ep* %0, %struct.fotg210_ep** %4, align 8
  store %struct.fotg210_request* %1, %struct.fotg210_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fotg210_request*, %struct.fotg210_request** %5, align 8
  %8 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %7, i32 0, i32 1
  %9 = call i32 @list_del_init(i32* %8)
  %10 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %11 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @ESHUTDOWN, align 4
  %20 = sub nsw i32 0, %19
  %21 = load %struct.fotg210_request*, %struct.fotg210_request** %5, align 8
  %22 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.fotg210_request*, %struct.fotg210_request** %5, align 8
  %27 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %31 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %36 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %35, i32 0, i32 3
  %37 = load %struct.fotg210_request*, %struct.fotg210_request** %5, align 8
  %38 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %37, i32 0, i32 0
  %39 = call i32 @usb_gadget_giveback_request(i32* %36, %struct.TYPE_5__* %38)
  %40 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %41 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %46 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %29
  %50 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %51 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %50, i32 0, i32 1
  %52 = call i64 @list_empty(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %56 = call i32 @fotg210_disable_fifo_int(%struct.fotg210_ep* %55)
  br label %57

57:                                               ; preds = %54, %49
  br label %63

58:                                               ; preds = %29
  %59 = load %struct.fotg210_ep*, %struct.fotg210_ep** %4, align 8
  %60 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call i32 @fotg210_set_cxdone(%struct.TYPE_6__* %61)
  br label %63

63:                                               ; preds = %58, %57
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @fotg210_disable_fifo_int(%struct.fotg210_ep*) #1

declare dso_local i32 @fotg210_set_cxdone(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
