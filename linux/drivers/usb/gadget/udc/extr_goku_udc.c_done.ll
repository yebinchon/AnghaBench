; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_goku_udc.c_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.goku_ep = type { i32, %struct.TYPE_6__, i32, i64, %struct.goku_udc* }
%struct.TYPE_6__ = type { i32 }
%struct.goku_udc = type { i32, i32 }
%struct.goku_request = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"complete %s req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.goku_ep*, %struct.goku_request*, i32)* @done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @done(%struct.goku_ep* %0, %struct.goku_request* %1, i32 %2) #0 {
  %4 = alloca %struct.goku_ep*, align 8
  %5 = alloca %struct.goku_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.goku_udc*, align 8
  %8 = alloca i32, align 4
  store %struct.goku_ep* %0, %struct.goku_ep** %4, align 8
  store %struct.goku_request* %1, %struct.goku_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %10 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %13 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %12, i32 0, i32 1
  %14 = call i32 @list_del_init(i32* %13)
  %15 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %16 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %28 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %32 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %37 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %36, i32 0, i32 4
  %38 = load %struct.goku_udc*, %struct.goku_udc** %37, align 8
  store %struct.goku_udc* %38, %struct.goku_udc** %7, align 8
  %39 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %40 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.goku_udc*, %struct.goku_udc** %7, align 8
  %45 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %44, i32 0, i32 1
  %46 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %47 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %46, i32 0, i32 0
  %48 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %49 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_gadget_unmap_request(i32* %45, %struct.TYPE_5__* %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %35
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ESHUTDOWN, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.goku_udc*, %struct.goku_udc** %7, align 8
  %62 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %63 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %67 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %66, i32 0, i32 0
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %70 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %74 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @VDBG(%struct.goku_udc* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %65, %struct.TYPE_5__* %67, i32 %68, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %60, %55, %52
  %79 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %80 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.goku_udc*, %struct.goku_udc** %7, align 8
  %82 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %85 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %84, i32 0, i32 1
  %86 = load %struct.goku_request*, %struct.goku_request** %5, align 8
  %87 = getelementptr inbounds %struct.goku_request, %struct.goku_request* %86, i32 0, i32 0
  %88 = call i32 @usb_gadget_giveback_request(%struct.TYPE_6__* %85, %struct.TYPE_5__* %87)
  %89 = load %struct.goku_udc*, %struct.goku_udc** %7, align 8
  %90 = getelementptr inbounds %struct.goku_udc, %struct.goku_udc* %89, i32 0, i32 0
  %91 = call i32 @spin_lock(i32* %90)
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.goku_ep*, %struct.goku_ep** %4, align 8
  %94 = getelementptr inbounds %struct.goku_ep, %struct.goku_ep* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_gadget_unmap_request(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @VDBG(%struct.goku_udc*, i8*, i32, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_giveback_request(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
