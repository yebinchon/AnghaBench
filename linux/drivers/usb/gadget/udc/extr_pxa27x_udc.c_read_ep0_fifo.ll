; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_read_ep0_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_read_ep0_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@UDCCSR0_OPC = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"read udccsr:%03x, count:%d bytes%s req %p %d/%d\0A\00", align 1
@UDCCSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*, %struct.pxa27x_request*)* @read_ep0_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ep0_fifo(%struct.pxa_ep* %0, %struct.pxa27x_request* %1) #0 {
  %3 = alloca %struct.pxa_ep*, align 8
  %4 = alloca %struct.pxa27x_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %65, %2
  %9 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %10 = call i64 @epout_has_pkt(%struct.pxa_ep* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %66

12:                                               ; preds = %8
  %13 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %14 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %15 = call i32 @read_packet(%struct.pxa_ep* %13, %struct.pxa27x_request* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %17 = load i32, i32* @UDCCSR0_OPC, align 4
  %18 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %16, i32 %17)
  %19 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @USB_DIR_IN, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @inc_ep_stats_bytes(%struct.pxa_ep* %19, i32 %20, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %28 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %33 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %34 = load i32, i32* @UDCCSR, align 4
  %35 = call i32 @udc_ep_readl(%struct.pxa_ep* %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %41 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %42 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %41, i32 0, i32 0
  %43 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %44 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %48 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ep_dbg(%struct.pxa_ep* %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i8* %40, %struct.TYPE_2__* %42, i64 %46, i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %12
  %55 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %56 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %60 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54, %12
  store i32 1, i32* %7, align 4
  br label %66

65:                                               ; preds = %54
  br label %8

66:                                               ; preds = %64, %8
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i64 @epout_has_pkt(%struct.pxa_ep*) #1

declare dso_local i32 @read_packet(%struct.pxa_ep*, %struct.pxa27x_request*) #1

declare dso_local i32 @ep_write_UDCCSR(%struct.pxa_ep*, i32) #1

declare dso_local i32 @inc_ep_stats_bytes(%struct.pxa_ep*, i32, i32) #1

declare dso_local i32 @ep_dbg(%struct.pxa_ep*, i8*, i32, i32, i8*, %struct.TYPE_2__*, i64, i64) #1

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
