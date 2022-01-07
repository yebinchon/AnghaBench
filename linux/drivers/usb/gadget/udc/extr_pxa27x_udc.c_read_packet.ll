; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@UDCDR = common dso_local global i32 0, align 4
@UDCCSR_PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*, %struct.pxa27x_request*)* @read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet(%struct.pxa_ep* %0, %struct.pxa27x_request* %1) #0 {
  %3 = alloca %struct.pxa_ep*, align 8
  %4 = alloca %struct.pxa27x_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %4, align 8
  %10 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %11 = call i32 @ep_count_bytes_remain(%struct.pxa_ep* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %13 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %17 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %15, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %22 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %26 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @prefetchw(i32* %32)
  %34 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %35 = call i32 @ep_is_empty(%struct.pxa_ep* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @min(i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %46

45:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %57, %46
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %53 = load i32, i32* @UDCDR, align 4
  %54 = call i32 @udc_ep_readl(%struct.pxa_ep* %52, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 4
  store i32 %59, i32* %9, align 4
  br label %48

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %63 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %68 = load i32, i32* @UDCCSR_PC, align 4
  %69 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @ep_count_bytes_remain(%struct.pxa_ep*) #1

declare dso_local i32 @prefetchw(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ep_is_empty(%struct.pxa_ep*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

declare dso_local i32 @ep_write_UDCCSR(%struct.pxa_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
