; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ep = type { i32, i32, %struct.omap_udc*, %struct.TYPE_6__, i64 }
%struct.omap_udc = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.omap_req = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"complete %s req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_ep*, %struct.omap_req*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.omap_ep* %0, %struct.omap_req* %1, i32 %2) #0 {
  %4 = alloca %struct.omap_ep*, align 8
  %5 = alloca %struct.omap_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_udc*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_ep* %0, %struct.omap_ep** %4, align 8
  store %struct.omap_req* %1, %struct.omap_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %10 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %9, i32 0, i32 2
  %11 = load %struct.omap_udc*, %struct.omap_udc** %10, align 8
  store %struct.omap_udc* %11, %struct.omap_udc** %7, align 8
  %12 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %13 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %16 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %15, i32 0, i32 1
  %17 = call i32 @list_del_init(i32* %16)
  %18 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %19 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EINPROGRESS, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %28 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %32 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i64, i64* @use_dma, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %40 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.omap_udc*, %struct.omap_udc** %7, align 8
  %45 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %44, i32 0, i32 1
  %46 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %47 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %46, i32 0, i32 0
  %48 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %49 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @USB_DIR_IN, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @usb_gadget_unmap_request(i32* %45, %struct.TYPE_5__* %47, i32 %52)
  br label %54

54:                                               ; preds = %43, %38, %35
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ESHUTDOWN, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %64 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %68 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %71 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %75 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @VDBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %66, %struct.TYPE_5__* %68, i32 %69, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %62, %57, %54
  %80 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %81 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %83 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %82, i32 0, i32 2
  %84 = load %struct.omap_udc*, %struct.omap_udc** %83, align 8
  %85 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %88 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %87, i32 0, i32 3
  %89 = load %struct.omap_req*, %struct.omap_req** %5, align 8
  %90 = getelementptr inbounds %struct.omap_req, %struct.omap_req* %89, i32 0, i32 0
  %91 = call i32 @usb_gadget_giveback_request(%struct.TYPE_6__* %88, %struct.TYPE_5__* %90)
  %92 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %93 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %92, i32 0, i32 2
  %94 = load %struct.omap_udc*, %struct.omap_udc** %93, align 8
  %95 = getelementptr inbounds %struct.omap_udc, %struct.omap_udc* %94, i32 0, i32 0
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.omap_ep*, %struct.omap_ep** %4, align 8
  %99 = getelementptr inbounds %struct.omap_ep, %struct.omap_ep* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @usb_gadget_unmap_request(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @VDBG(i8*, i32, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
