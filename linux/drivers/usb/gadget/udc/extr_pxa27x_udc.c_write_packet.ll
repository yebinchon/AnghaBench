; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_write_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }

@UDCDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"length=%d+%d, udccsr=0x%03x\0A\00", align 1
@UDCCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*, %struct.pxa27x_request*, i32)* @write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_packet(%struct.pxa_ep* %0, %struct.pxa27x_request* %1, i32 %2) #0 {
  %4 = alloca %struct.pxa_ep*, align 8
  %5 = alloca %struct.pxa27x_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.pxa_ep* %0, %struct.pxa_ep** %4, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %14 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %18 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %16, %20
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @prefetch(i32* %23)
  %25 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %26 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %31 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %29, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @min(i64 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.pxa27x_request*, %struct.pxa27x_request** %5, align 8
  %40 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %38
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 3
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, -4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %59, %3
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %54 = load i32, i32* @UDCDR, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  %57 = load i32, i32* %55, align 4
  %58 = call i32 @udc_ep_writel(%struct.pxa_ep* %53, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 4
  store i32 %61, i32* %10, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load i32*, i32** %11, align 8
  store i32* %63, i32** %12, align 8
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %75, %62
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %70 = load i32, i32* @UDCDR, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* %71, align 4
  %74 = call i32 @udc_ep_writeb(%struct.pxa_ep* %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  br label %65

78:                                               ; preds = %65
  %79 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %83 = load i32, i32* @UDCCSR, align 4
  %84 = call i32 @udc_ep_readl(%struct.pxa_ep* %82, i32 %83)
  %85 = call i32 @ep_vdbg(%struct.pxa_ep* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81, i32 %84)
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @udc_ep_writel(%struct.pxa_ep*, i32, i32) #1

declare dso_local i32 @udc_ep_writeb(%struct.pxa_ep*, i32, i32) #1

declare dso_local i32 @ep_vdbg(%struct.pxa_ep*, i8*, i32, i32, i32) #1

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
