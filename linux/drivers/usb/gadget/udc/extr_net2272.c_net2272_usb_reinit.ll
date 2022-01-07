; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_usb_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_usb_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { %struct.TYPE_5__, %struct.net2272_ep* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.net2272_ep = type { i32, i32, i32, i64, %struct.TYPE_6__, i64, %struct.net2272* }

@ep_name = common dso_local global i32* null, align 8
@use_dma = common dso_local global i64 0, align 8
@dma_ep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2272*)* @net2272_usb_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net2272_usb_reinit(%struct.net2272* %0) #0 {
  %2 = alloca %struct.net2272*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net2272_ep*, align 8
  store %struct.net2272* %0, %struct.net2272** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %86, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %89

8:                                                ; preds = %5
  %9 = load %struct.net2272*, %struct.net2272** %2, align 8
  %10 = getelementptr inbounds %struct.net2272, %struct.net2272* %9, i32 0, i32 1
  %11 = load %struct.net2272_ep*, %struct.net2272_ep** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %11, i64 %13
  store %struct.net2272_ep* %14, %struct.net2272_ep** %4, align 8
  %15 = load i32*, i32** @ep_name, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %21 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.net2272*, %struct.net2272** %2, align 8
  %24 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %25 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %24, i32 0, i32 6
  store %struct.net2272* %23, %struct.net2272** %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %28 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %30 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* @use_dma, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %8
  %34 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %35 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @dma_ep, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %41 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %33, %8
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp sle i32 %46, 3
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %50 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %49, i32 0, i32 2
  store i32 512, i32* %50, align 8
  br label %54

51:                                               ; preds = %45, %42
  %52 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %53 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %52, i32 0, i32 2
  store i32 64, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %56 = call i32 @net2272_ep_reset(%struct.net2272_ep* %55)
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %61 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %77

64:                                               ; preds = %54
  %65 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %66 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %70 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %74 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %64, %59
  %78 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %79 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  store i32 1, i32* %81, align 4
  %82 = load %struct.net2272_ep*, %struct.net2272_ep** %4, align 8
  %83 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 5
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %5

89:                                               ; preds = %5
  %90 = load %struct.net2272*, %struct.net2272** %2, align 8
  %91 = getelementptr inbounds %struct.net2272, %struct.net2272* %90, i32 0, i32 1
  %92 = load %struct.net2272_ep*, %struct.net2272_ep** %91, align 8
  %93 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %92, i64 0
  %94 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %93, i32 0, i32 4
  %95 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__* %94, i32 64)
  %96 = load %struct.net2272*, %struct.net2272** %2, align 8
  %97 = getelementptr inbounds %struct.net2272, %struct.net2272* %96, i32 0, i32 1
  %98 = load %struct.net2272_ep*, %struct.net2272_ep** %97, align 8
  %99 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %98, i64 0
  %100 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %99, i32 0, i32 4
  %101 = load %struct.net2272*, %struct.net2272** %2, align 8
  %102 = getelementptr inbounds %struct.net2272, %struct.net2272* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %103, align 8
  %104 = load %struct.net2272*, %struct.net2272** %2, align 8
  %105 = getelementptr inbounds %struct.net2272, %struct.net2272* %104, i32 0, i32 1
  %106 = load %struct.net2272_ep*, %struct.net2272_ep** %105, align 8
  %107 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %106, i64 0
  %108 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.net2272*, %struct.net2272** %2, align 8
  %110 = getelementptr inbounds %struct.net2272, %struct.net2272* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  ret void
}

declare dso_local i32 @net2272_ep_reset(%struct.net2272_ep*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
