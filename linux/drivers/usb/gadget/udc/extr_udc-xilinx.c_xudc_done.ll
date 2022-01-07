; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_ep = type { %struct.TYPE_5__, i32, i64, %struct.xusb_udc* }
%struct.TYPE_5__ = type { i32 }
%struct.xusb_udc = type { i32, i32, i64, i32 }
%struct.xusb_req = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_5__*, %struct.TYPE_4__*)*, i64 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s done %p, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xusb_ep*, %struct.xusb_req*, i32)* @xudc_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xudc_done(%struct.xusb_ep* %0, %struct.xusb_req* %1, i32 %2) #0 {
  %4 = alloca %struct.xusb_ep*, align 8
  %5 = alloca %struct.xusb_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xusb_udc*, align 8
  store %struct.xusb_ep* %0, %struct.xusb_ep** %4, align 8
  store %struct.xusb_req* %1, %struct.xusb_req** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %9 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %8, i32 0, i32 3
  %10 = load %struct.xusb_udc*, %struct.xusb_udc** %9, align 8
  store %struct.xusb_udc* %10, %struct.xusb_udc** %7, align 8
  %11 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %12 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %11, i32 0, i32 1
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %15 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @EINPROGRESS, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %24 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %28 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ESHUTDOWN, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.xusb_udc*, %struct.xusb_udc** %7, align 8
  %41 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %44 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %46, %struct.xusb_req* %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %34, %31
  %51 = load %struct.xusb_udc*, %struct.xusb_udc** %7, align 8
  %52 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %57 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %62 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.xusb_udc*, %struct.xusb_udc** %7, align 8
  %68 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %67, i32 0, i32 1
  %69 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %70 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %69, i32 0, i32 0
  %71 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %72 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_gadget_unmap_request(i32* %68, %struct.TYPE_4__* %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %60, %55, %50
  %76 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %77 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_5__*, %struct.TYPE_4__*)*, i32 (%struct.TYPE_5__*, %struct.TYPE_4__*)** %78, align 8
  %80 = icmp ne i32 (%struct.TYPE_5__*, %struct.TYPE_4__*)* %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = load %struct.xusb_udc*, %struct.xusb_udc** %7, align 8
  %83 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %86 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32 (%struct.TYPE_5__*, %struct.TYPE_4__*)*, i32 (%struct.TYPE_5__*, %struct.TYPE_4__*)** %87, align 8
  %89 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %90 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %89, i32 0, i32 0
  %91 = load %struct.xusb_req*, %struct.xusb_req** %5, align 8
  %92 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %91, i32 0, i32 0
  %93 = call i32 %88(%struct.TYPE_5__* %90, %struct.TYPE_4__* %92)
  %94 = load %struct.xusb_udc*, %struct.xusb_udc** %7, align 8
  %95 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %94, i32 0, i32 0
  %96 = call i32 @spin_lock(i32* %95)
  br label %97

97:                                               ; preds = %81, %75
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.xusb_req*, i32) #1

declare dso_local i32 @usb_gadget_unmap_request(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
