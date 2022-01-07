; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272_ep = type { i32, i64, %struct.TYPE_6__, i32, i64, %struct.net2272* }
%struct.TYPE_6__ = type { i32 }
%struct.net2272 = type { i32, i32, i32, i64 }
%struct.net2272_request = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@use_dma = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"complete %s req %p stat %d len %u/%u buf %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2272_ep*, %struct.net2272_request*, i32)* @net2272_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net2272_done(%struct.net2272_ep* %0, %struct.net2272_request* %1, i32 %2) #0 {
  %4 = alloca %struct.net2272_ep*, align 8
  %5 = alloca %struct.net2272_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net2272*, align 8
  %8 = alloca i32, align 4
  store %struct.net2272_ep* %0, %struct.net2272_ep** %4, align 8
  store %struct.net2272_request* %1, %struct.net2272_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %10 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %13 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %18 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %17, i32 0, i32 5
  %19 = load %struct.net2272*, %struct.net2272** %18, align 8
  %20 = getelementptr inbounds %struct.net2272, %struct.net2272* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %25 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %27 = call i32 @set_halt(%struct.net2272_ep* %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %30 = call i32 @allow_status(%struct.net2272_ep* %29)
  br label %31

31:                                               ; preds = %28, %3
  %32 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %33 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %32, i32 0, i32 1
  %34 = call i32 @list_del_init(i32* %33)
  %35 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %36 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EINPROGRESS, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %45 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  br label %52

47:                                               ; preds = %31
  %48 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %49 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %54 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %53, i32 0, i32 5
  %55 = load %struct.net2272*, %struct.net2272** %54, align 8
  store %struct.net2272* %55, %struct.net2272** %7, align 8
  %56 = load i64, i64* @use_dma, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %60 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.net2272*, %struct.net2272** %7, align 8
  %65 = getelementptr inbounds %struct.net2272, %struct.net2272* %64, i32 0, i32 2
  %66 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %67 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %66, i32 0, i32 0
  %68 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %69 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @usb_gadget_unmap_request(i32* %65, %struct.TYPE_5__* %67, i32 %70)
  br label %72

72:                                               ; preds = %63, %58, %52
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ESHUTDOWN, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %75
  %81 = load %struct.net2272*, %struct.net2272** %7, align 8
  %82 = getelementptr inbounds %struct.net2272, %struct.net2272* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %85 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %89 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %92 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %96 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %100 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dev_vdbg(i32 %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %87, %struct.TYPE_5__* %89, i32 %90, i32 %94, i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %80, %75, %72
  %105 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %106 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.net2272*, %struct.net2272** %7, align 8
  %108 = getelementptr inbounds %struct.net2272, %struct.net2272* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock(i32* %108)
  %110 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %111 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %110, i32 0, i32 2
  %112 = load %struct.net2272_request*, %struct.net2272_request** %5, align 8
  %113 = getelementptr inbounds %struct.net2272_request, %struct.net2272_request* %112, i32 0, i32 0
  %114 = call i32 @usb_gadget_giveback_request(%struct.TYPE_6__* %111, %struct.TYPE_5__* %113)
  %115 = load %struct.net2272*, %struct.net2272** %7, align 8
  %116 = getelementptr inbounds %struct.net2272, %struct.net2272* %115, i32 0, i32 0
  %117 = call i32 @spin_lock(i32* %116)
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %120 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  ret void
}

declare dso_local i32 @set_halt(%struct.net2272_ep*) #1

declare dso_local i32 @allow_status(%struct.net2272_ep*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @usb_gadget_unmap_request(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, %struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
