; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_init_in_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_init_in_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, %struct.TYPE_8__, %struct.dwc3* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.dwc3 = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@dwc3_gadget_ep_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*)* @dwc3_gadget_init_in_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_init_in_endpoint(%struct.dwc3_ep* %0) #0 {
  %2 = alloca %struct.dwc3_ep*, align 8
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %2, align 8
  %7 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %8 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %7, i32 0, i32 2
  %9 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  store %struct.dwc3* %9, %struct.dwc3** %3, align 8
  %10 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DWC3_MDWIDTH(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %18 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %21 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 1
  %24 = call i32 @DWC3_GTXFIFOSIZ(i32 %23)
  %25 = call i32 @dwc3_readl(i32 %19, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %27 = call i64 @dwc3_is_usb31(%struct.dwc3* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DWC31_GTXFIFOSIZ_TXFDEF(i32 %30)
  store i32 %31, i32* %6, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @DWC3_GTXFIFOSIZ_TXFDEF(i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 %39, 1024
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 %45, %47
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sdiv i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %55 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %54, i32 0, i32 1
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %55, i32 %56)
  %58 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %59 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 15, i32* %60, align 8
  %61 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %62 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  store i32* @dwc3_gadget_ep_ops, i32** %63, align 8
  %64 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %65 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %68 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @list_add_tail(i32* %66, i32* %69)
  %71 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %72 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 4
  %75 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %76 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %80 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  store i32 1, i32* %82, align 4
  %83 = load %struct.dwc3_ep*, %struct.dwc3_ep** %2, align 8
  %84 = call i32 @dwc3_alloc_trb_pool(%struct.dwc3_ep* %83)
  ret i32 %84
}

declare dso_local i32 @DWC3_MDWIDTH(i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_GTXFIFOSIZ(i32) #1

declare dso_local i64 @dwc3_is_usb31(%struct.dwc3*) #1

declare dso_local i32 @DWC31_GTXFIFOSIZ_TXFDEF(i32) #1

declare dso_local i32 @DWC3_GTXFIFOSIZ_TXFDEF(i32) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dwc3_alloc_trb_pool(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
