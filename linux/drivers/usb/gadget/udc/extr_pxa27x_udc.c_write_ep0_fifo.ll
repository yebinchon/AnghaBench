; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_write_ep0_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_write_ep0_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EP0_FIFO_SIZE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@UDCCSR0_IPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"in %d bytes%s%s, %d left, req=%p, udccsr0=0x%03x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/L\00", align 1
@UDCCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*, %struct.pxa27x_request*)* @write_ep0_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ep0_fifo(%struct.pxa_ep* %0, %struct.pxa27x_request* %1) #0 {
  %3 = alloca %struct.pxa_ep*, align 8
  %4 = alloca %struct.pxa27x_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %4, align 8
  %8 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %9 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %10 = load i32, i32* @EP0_FIFO_SIZE, align 4
  %11 = call i32 @write_packet(%struct.pxa_ep* %8, %struct.pxa27x_request* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @USB_DIR_IN, align 4
  %15 = call i32 @inc_ep_stats_bytes(%struct.pxa_ep* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @EP0_FIFO_SIZE, align 4
  %18 = icmp ult i32 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EP0_FIFO_SIZE, align 4
  %25 = icmp ult i32 %23, %24
  br label %26

26:                                               ; preds = %22, %2
  %27 = phi i1 [ true, %2 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %34 = load i32, i32* @UDCCSR0_IPR, align 4
  %35 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %47 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %48 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %52 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %50, %54
  %56 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %57 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %56, i32 0, i32 0
  %58 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %59 = load i32, i32* @UDCCSR, align 4
  %60 = call i32 @udc_ep_readl(%struct.pxa_ep* %58, i32 %59)
  %61 = call i32 @ep_dbg(%struct.pxa_ep* %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %42, i8* %46, i64 %55, %struct.TYPE_2__* %57, i32 %60)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @write_packet(%struct.pxa_ep*, %struct.pxa27x_request*, i32) #1

declare dso_local i32 @inc_ep_stats_bytes(%struct.pxa_ep*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ep_write_UDCCSR(%struct.pxa_ep*, i32) #1

declare dso_local i32 @ep_dbg(%struct.pxa_ep*, i8*, i32, i8*, i8*, i64, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
