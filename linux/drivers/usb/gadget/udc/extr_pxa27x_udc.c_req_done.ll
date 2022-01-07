; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_req_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"complete req %p stat %d len %u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_ep*, %struct.pxa27x_request*, i32, i64*)* @req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @req_done(%struct.pxa_ep* %0, %struct.pxa27x_request* %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.pxa_ep*, align 8
  %6 = alloca %struct.pxa27x_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.pxa_ep* %0, %struct.pxa_ep** %5, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %10 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %11 = load %struct.pxa27x_request*, %struct.pxa27x_request** %6, align 8
  %12 = call i32 @ep_del_request(%struct.pxa_ep* %10, %struct.pxa27x_request* %11)
  %13 = load %struct.pxa27x_request*, %struct.pxa27x_request** %6, align 8
  %14 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @EINPROGRESS, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.pxa27x_request*, %struct.pxa27x_request** %6, align 8
  %26 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  br label %33

28:                                               ; preds = %4
  %29 = load %struct.pxa27x_request*, %struct.pxa27x_request** %6, align 8
  %30 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ESHUTDOWN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %43 = load %struct.pxa27x_request*, %struct.pxa27x_request** %6, align 8
  %44 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.pxa27x_request*, %struct.pxa27x_request** %6, align 8
  %47 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pxa27x_request*, %struct.pxa27x_request** %6, align 8
  %51 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ep_dbg(%struct.pxa_ep* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %44, i32 %45, i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %41, %36, %33
  %56 = load i64*, i64** %8, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %60 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %59, i32 0, i32 0
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %62)
  br label %64

64:                                               ; preds = %58, %55
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @local_irq_save(i64 %65)
  %67 = load %struct.pxa27x_request*, %struct.pxa27x_request** %6, align 8
  %68 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.pxa27x_request*, %struct.pxa27x_request** %6, align 8
  %72 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %71, i32 0, i32 0
  %73 = call i32 @usb_gadget_giveback_request(i32* %70, %struct.TYPE_5__* %72)
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @local_irq_restore(i64 %74)
  %76 = load i64*, i64** %8, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %64
  %79 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %80 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %79, i32 0, i32 0
  %81 = load i64*, i64** %8, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %80, i64 %82)
  br label %84

84:                                               ; preds = %78, %64
  ret void
}

declare dso_local i32 @ep_del_request(%struct.pxa_ep*, %struct.pxa27x_request*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ep_dbg(%struct.pxa_ep*, i8*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @usb_gadget_giveback_request(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
