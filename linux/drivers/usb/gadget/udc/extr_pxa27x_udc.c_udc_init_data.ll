; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_udc_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_udc_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.pxa_ep* }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.pxa_ep* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pxa_ep = type { i32, i32, i32 }

@NR_PXA_ENDPOINTS = common dso_local global i32 0, align 4
@NR_USB_ENDPOINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*)* @udc_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_init_data(%struct.pxa_udc* %0) #0 {
  %2 = alloca %struct.pxa_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa_ep*, align 8
  store %struct.pxa_udc* %0, %struct.pxa_udc** %2, align 8
  %5 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %6 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %10 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %16 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %15, i32 0, i32 2
  %17 = load %struct.pxa_ep*, %struct.pxa_ep** %16, align 8
  %18 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %17, i64 0
  %19 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %20 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store %struct.pxa_ep* %18, %struct.pxa_ep** %23, align 8
  %24 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %25 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %28 = call i32 @ep0_idle(%struct.pxa_udc* %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %50, %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @NR_PXA_ENDPOINTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %35 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %34, i32 0, i32 2
  %36 = load %struct.pxa_ep*, %struct.pxa_ep** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %36, i64 %38
  store %struct.pxa_ep* %39, %struct.pxa_ep** %4, align 8
  %40 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %41 = call i32 @is_ep0(%struct.pxa_ep* %40)
  %42 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %43 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %45 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %44, i32 0, i32 1
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %48 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %47, i32 0, i32 0
  %49 = call i32 @spin_lock_init(i32* %48)
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %29

53:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %88, %53
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @NR_USB_ENDPOINTS, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %54
  %59 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %60 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %68 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = call i32 @list_add_tail(i32* %66, i32* %69)
  %71 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %72 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.pxa_udc*, %struct.pxa_udc** %2, align 8
  %79 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__* %77, i32 %86)
  br label %88

88:                                               ; preds = %58
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %54

91:                                               ; preds = %54
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ep0_idle(%struct.pxa_udc*) #1

declare dso_local i32 @is_ep0(%struct.pxa_ep*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
