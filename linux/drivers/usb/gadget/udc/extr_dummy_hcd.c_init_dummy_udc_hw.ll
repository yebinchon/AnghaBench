; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_init_dummy_udc_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_init_dummy_udc_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.dummy = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.dummy_ep* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.dummy_ep = type { %struct.TYPE_7__, i32, i32*, %struct.TYPE_6__*, i32, i64, i64, i64, i64 }

@DUMMY_ENDPOINTS = common dso_local global i32 0, align 4
@ep_info = common dso_local global %struct.TYPE_8__* null, align 8
@dummy_ep_ops = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dummy*)* @init_dummy_udc_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_dummy_udc_hw(%struct.dummy* %0) #0 {
  %2 = alloca %struct.dummy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dummy_ep*, align 8
  store %struct.dummy* %0, %struct.dummy** %2, align 8
  %5 = load %struct.dummy*, %struct.dummy** %2, align 8
  %6 = getelementptr inbounds %struct.dummy, %struct.dummy* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %83, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DUMMY_ENDPOINTS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %86

13:                                               ; preds = %9
  %14 = load %struct.dummy*, %struct.dummy** %2, align 8
  %15 = getelementptr inbounds %struct.dummy, %struct.dummy* %14, i32 0, i32 2
  %16 = load %struct.dummy_ep*, %struct.dummy_ep** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %16, i64 %18
  store %struct.dummy_ep* %19, %struct.dummy_ep** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ep_info, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  br label %86

28:                                               ; preds = %13
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ep_info, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %36 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  store i64 %34, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ep_info, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %45 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %48 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i32* @dummy_ep_ops, i32** %49, align 8
  %50 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %51 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load %struct.dummy*, %struct.dummy** %2, align 8
  %54 = getelementptr inbounds %struct.dummy, %struct.dummy* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = call i32 @list_add_tail(i32* %52, i32* %55)
  %57 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %58 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %60 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %59, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %62 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %61, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %64 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %63, i32 0, i32 8
  store i64 0, i64* %64, align 8
  %65 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %66 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %65, i32 0, i32 0
  %67 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_7__* %66, i32 -1)
  %68 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %69 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 16, i32* %70, align 8
  %71 = load i32, i32* @jiffies, align 4
  %72 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %73 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.dummy*, %struct.dummy** %2, align 8
  %75 = getelementptr inbounds %struct.dummy, %struct.dummy* %74, i32 0, i32 0
  %76 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %77 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %76, i32 0, i32 3
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %77, align 8
  %78 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %79 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %81 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %80, i32 0, i32 1
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  br label %83

83:                                               ; preds = %28
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %9

86:                                               ; preds = %27, %9
  %87 = load %struct.dummy*, %struct.dummy** %2, align 8
  %88 = getelementptr inbounds %struct.dummy, %struct.dummy* %87, i32 0, i32 2
  %89 = load %struct.dummy_ep*, %struct.dummy_ep** %88, align 8
  %90 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %89, i64 0
  %91 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %90, i32 0, i32 0
  %92 = load %struct.dummy*, %struct.dummy** %2, align 8
  %93 = getelementptr inbounds %struct.dummy, %struct.dummy* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %94, align 8
  %95 = load %struct.dummy*, %struct.dummy** %2, align 8
  %96 = getelementptr inbounds %struct.dummy, %struct.dummy* %95, i32 0, i32 2
  %97 = load %struct.dummy_ep*, %struct.dummy_ep** %96, align 8
  %98 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %97, i64 0
  %99 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = call i32 @list_del_init(i32* %100)
  %102 = load %struct.dummy*, %struct.dummy** %2, align 8
  %103 = getelementptr inbounds %struct.dummy, %struct.dummy* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
