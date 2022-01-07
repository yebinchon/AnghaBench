; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_ep = type { %struct.TYPE_5__, i64, i32, i64, %struct.lpc32xx_udc* }
%struct.TYPE_5__ = type { i32 }
%struct.lpc32xx_udc = type { i32, i32 }
%struct.lpc32xx_request = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s done %p, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_ep*, %struct.lpc32xx_request*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.lpc32xx_ep* %0, %struct.lpc32xx_request* %1, i32 %2) #0 {
  %4 = alloca %struct.lpc32xx_ep*, align 8
  %5 = alloca %struct.lpc32xx_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpc32xx_udc*, align 8
  store %struct.lpc32xx_ep* %0, %struct.lpc32xx_ep** %4, align 8
  store %struct.lpc32xx_request* %1, %struct.lpc32xx_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %9 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %8, i32 0, i32 4
  %10 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %9, align 8
  store %struct.lpc32xx_udc* %10, %struct.lpc32xx_udc** %7, align 8
  %11 = load %struct.lpc32xx_request*, %struct.lpc32xx_request** %5, align 8
  %12 = getelementptr inbounds %struct.lpc32xx_request, %struct.lpc32xx_request* %11, i32 0, i32 2
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.lpc32xx_request*, %struct.lpc32xx_request** %5, align 8
  %15 = getelementptr inbounds %struct.lpc32xx_request, %struct.lpc32xx_request* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EINPROGRESS, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.lpc32xx_request*, %struct.lpc32xx_request** %5, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_request, %struct.lpc32xx_request* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.lpc32xx_request*, %struct.lpc32xx_request** %5, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_request, %struct.lpc32xx_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %33 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %38 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %37, i32 0, i32 1
  %39 = load %struct.lpc32xx_request*, %struct.lpc32xx_request** %5, align 8
  %40 = getelementptr inbounds %struct.lpc32xx_request, %struct.lpc32xx_request* %39, i32 0, i32 0
  %41 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %42 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @usb_gadget_unmap_request(i32* %38, %struct.TYPE_4__* %40, i32 %43)
  %45 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %46 = load %struct.lpc32xx_request*, %struct.lpc32xx_request** %5, align 8
  %47 = getelementptr inbounds %struct.lpc32xx_request, %struct.lpc32xx_request* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @udc_dd_free(%struct.lpc32xx_udc* %45, i32 %48)
  br label %50

50:                                               ; preds = %36, %31
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ESHUTDOWN, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %60 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %61 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.lpc32xx_request*, %struct.lpc32xx_request** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ep_dbg(%struct.lpc32xx_ep* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %63, %struct.lpc32xx_request* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %53, %50
  %68 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %69 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %71 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.lpc32xx_ep*, %struct.lpc32xx_ep** %4, align 8
  %74 = getelementptr inbounds %struct.lpc32xx_ep, %struct.lpc32xx_ep* %73, i32 0, i32 0
  %75 = load %struct.lpc32xx_request*, %struct.lpc32xx_request** %5, align 8
  %76 = getelementptr inbounds %struct.lpc32xx_request, %struct.lpc32xx_request* %75, i32 0, i32 0
  %77 = call i32 @usb_gadget_giveback_request(%struct.TYPE_5__* %74, %struct.TYPE_4__* %76)
  %78 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %7, align 8
  %79 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %78, i32 0, i32 0
  %80 = call i32 @spin_lock(i32* %79)
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @usb_gadget_unmap_request(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @udc_dd_free(%struct.lpc32xx_udc*, i32) #1

declare dso_local i32 @ep_dbg(%struct.lpc32xx_ep*, i8*, i32, %struct.lpc32xx_request*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(%struct.TYPE_5__*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
