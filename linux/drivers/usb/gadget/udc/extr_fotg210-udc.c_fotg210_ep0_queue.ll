; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_ep0_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_ep0_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_ep = type { %struct.TYPE_5__*, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.fotg210_request = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@FOTG210_DMISGR0 = common dso_local global i64 0, align 8
@DMISGR0_MCX_OUT_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_ep*, %struct.fotg210_request*)* @fotg210_ep0_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_ep0_queue(%struct.fotg210_ep* %0, %struct.fotg210_request* %1) #0 {
  %3 = alloca %struct.fotg210_ep*, align 8
  %4 = alloca %struct.fotg210_request*, align 8
  %5 = alloca i32, align 4
  store %struct.fotg210_ep* %0, %struct.fotg210_ep** %3, align 8
  store %struct.fotg210_request* %1, %struct.fotg210_request** %4, align 8
  %6 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %7 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %13 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %14 = call i32 @fotg210_done(%struct.fotg210_ep* %12, %struct.fotg210_request* %13, i32 0)
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %17 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %22 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %23 = call i32 @fotg210_start_dma(%struct.fotg210_ep* %21, %struct.fotg210_request* %22)
  %24 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %25 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %29 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %20
  %34 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %35 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %39 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %33, %20
  %44 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %45 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %46 = call i32 @fotg210_done(%struct.fotg210_ep* %44, %struct.fotg210_request* %45, i32 0)
  br label %47

47:                                               ; preds = %43, %33
  br label %70

48:                                               ; preds = %15
  %49 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %50 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FOTG210_DMISGR0, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @ioread32(i64 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* @DMISGR0_MCX_OUT_INT, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %63 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FOTG210_DMISGR0, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @iowrite32(i32 %61, i64 %68)
  br label %70

70:                                               ; preds = %11, %48, %47
  ret void
}

declare dso_local i32 @fotg210_done(%struct.fotg210_ep*, %struct.fotg210_request*, i32) #1

declare dso_local i32 @fotg210_start_dma(%struct.fotg210_ep*, %struct.fotg210_request*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
