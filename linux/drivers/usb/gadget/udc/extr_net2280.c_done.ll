; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280_ep = type { i32, %struct.TYPE_6__, i32, i64, %struct.net2280* }
%struct.TYPE_6__ = type { i32 }
%struct.net2280 = type { i32, i32 }
%struct.net2280_request = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"complete %s req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280_ep*, %struct.net2280_request*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.net2280_ep* %0, %struct.net2280_request* %1, i32 %2) #0 {
  %4 = alloca %struct.net2280_ep*, align 8
  %5 = alloca %struct.net2280_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net2280*, align 8
  %8 = alloca i32, align 4
  store %struct.net2280_ep* %0, %struct.net2280_ep** %4, align 8
  store %struct.net2280_request* %1, %struct.net2280_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %10 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %13 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %12, i32 0, i32 1
  %14 = call i32 @list_del_init(i32* %13)
  %15 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %16 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %25 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %29 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %34 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %33, i32 0, i32 4
  %35 = load %struct.net2280*, %struct.net2280** %34, align 8
  store %struct.net2280* %35, %struct.net2280** %7, align 8
  %36 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %37 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load %struct.net2280*, %struct.net2280** %7, align 8
  %42 = getelementptr inbounds %struct.net2280, %struct.net2280* %41, i32 0, i32 1
  %43 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %44 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %43, i32 0, i32 0
  %45 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %46 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @usb_gadget_unmap_request(i32* %42, %struct.TYPE_5__* %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %32
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ESHUTDOWN, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.net2280*, %struct.net2280** %7, align 8
  %59 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %60 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %64 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %63, i32 0, i32 0
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %67 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %71 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ep_vdbg(%struct.net2280* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %62, %struct.TYPE_5__* %64, i32 %65, i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %57, %52, %49
  %76 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %77 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.net2280*, %struct.net2280** %7, align 8
  %79 = getelementptr inbounds %struct.net2280, %struct.net2280* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %82 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %81, i32 0, i32 1
  %83 = load %struct.net2280_request*, %struct.net2280_request** %5, align 8
  %84 = getelementptr inbounds %struct.net2280_request, %struct.net2280_request* %83, i32 0, i32 0
  %85 = call i32 @usb_gadget_giveback_request(%struct.TYPE_6__* %82, %struct.TYPE_5__* %84)
  %86 = load %struct.net2280*, %struct.net2280** %7, align 8
  %87 = getelementptr inbounds %struct.net2280, %struct.net2280* %86, i32 0, i32 0
  %88 = call i32 @spin_lock(i32* %87)
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %91 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @usb_gadget_unmap_request(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ep_vdbg(%struct.net2280*, i8*, i32, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
