; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_usb_reinit_228x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_usb_reinit_228x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.net2280 = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.net2280_ep*, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.net2280_ep = type { i32, i32, i64, %struct.TYPE_7__, i32*, i32*, i32*, %struct.net2280* }

@ep_info_dft = common dso_local global %struct.TYPE_8__* null, align 8
@EP_DONTUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280*)* @usb_reinit_228x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_reinit_228x(%struct.net2280* %0) #0 {
  %2 = alloca %struct.net2280*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net2280_ep*, align 8
  store %struct.net2280* %0, %struct.net2280** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %81, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 7
  br i1 %7, label %8, label %84

8:                                                ; preds = %5
  %9 = load %struct.net2280*, %struct.net2280** %2, align 8
  %10 = getelementptr inbounds %struct.net2280, %struct.net2280* %9, i32 0, i32 2
  %11 = load %struct.net2280_ep*, %struct.net2280_ep** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %11, i64 %13
  store %struct.net2280_ep* %14, %struct.net2280_ep** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ep_info_dft, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %22 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ep_info_dft, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %31 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.net2280*, %struct.net2280** %2, align 8
  %34 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %35 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %34, i32 0, i32 7
  store %struct.net2280* %33, %struct.net2280** %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %38 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %8
  %42 = load i32, i32* %3, align 4
  %43 = icmp sle i32 %42, 4
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %46 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %45, i32 0, i32 1
  store i32 1024, i32* %46, align 4
  %47 = load %struct.net2280*, %struct.net2280** %2, align 8
  %48 = getelementptr inbounds %struct.net2280, %struct.net2280* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %55 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %54, i32 0, i32 6
  store i32* %53, i32** %55, align 8
  br label %59

56:                                               ; preds = %41, %8
  %57 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %58 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %57, i32 0, i32 1
  store i32 64, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %44
  %60 = load %struct.net2280*, %struct.net2280** %2, align 8
  %61 = getelementptr inbounds %struct.net2280, %struct.net2280* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %67 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %66, i32 0, i32 5
  store i32* %65, i32** %67, align 8
  %68 = load %struct.net2280*, %struct.net2280** %2, align 8
  %69 = getelementptr inbounds %struct.net2280, %struct.net2280* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %75 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %74, i32 0, i32 4
  store i32* %73, i32** %75, align 8
  %76 = load %struct.net2280*, %struct.net2280** %2, align 8
  %77 = getelementptr inbounds %struct.net2280, %struct.net2280* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.net2280_ep*, %struct.net2280_ep** %4, align 8
  %80 = call i32 @ep_reset_228x(i32 %78, %struct.net2280_ep* %79)
  br label %81

81:                                               ; preds = %59
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %5

84:                                               ; preds = %5
  %85 = load %struct.net2280*, %struct.net2280** %2, align 8
  %86 = getelementptr inbounds %struct.net2280, %struct.net2280* %85, i32 0, i32 2
  %87 = load %struct.net2280_ep*, %struct.net2280_ep** %86, align 8
  %88 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %87, i64 0
  %89 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %88, i32 0, i32 3
  %90 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_7__* %89, i32 64)
  %91 = load %struct.net2280*, %struct.net2280** %2, align 8
  %92 = getelementptr inbounds %struct.net2280, %struct.net2280* %91, i32 0, i32 2
  %93 = load %struct.net2280_ep*, %struct.net2280_ep** %92, align 8
  %94 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %93, i64 5
  %95 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %94, i32 0, i32 3
  %96 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_7__* %95, i32 64)
  %97 = load %struct.net2280*, %struct.net2280** %2, align 8
  %98 = getelementptr inbounds %struct.net2280, %struct.net2280* %97, i32 0, i32 2
  %99 = load %struct.net2280_ep*, %struct.net2280_ep** %98, align 8
  %100 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %99, i64 6
  %101 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %100, i32 0, i32 3
  %102 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_7__* %101, i32 64)
  %103 = load %struct.net2280*, %struct.net2280** %2, align 8
  %104 = getelementptr inbounds %struct.net2280, %struct.net2280* %103, i32 0, i32 2
  %105 = load %struct.net2280_ep*, %struct.net2280_ep** %104, align 8
  %106 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %105, i64 0
  %107 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %106, i32 0, i32 3
  %108 = load %struct.net2280*, %struct.net2280** %2, align 8
  %109 = getelementptr inbounds %struct.net2280, %struct.net2280* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %110, align 8
  %111 = load %struct.net2280*, %struct.net2280** %2, align 8
  %112 = getelementptr inbounds %struct.net2280, %struct.net2280* %111, i32 0, i32 2
  %113 = load %struct.net2280_ep*, %struct.net2280_ep** %112, align 8
  %114 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %113, i64 0
  %115 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.net2280*, %struct.net2280** %2, align 8
  %117 = getelementptr inbounds %struct.net2280, %struct.net2280* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %135, %84
  %123 = load i32, i32* %3, align 4
  %124 = icmp slt i32 %123, 5
  br i1 %124, label %125, label %138

125:                                              ; preds = %122
  %126 = load i32, i32* @EP_DONTUSE, align 4
  %127 = load %struct.net2280*, %struct.net2280** %2, align 8
  %128 = getelementptr inbounds %struct.net2280, %struct.net2280* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = call i32 @writel(i32 %126, i32* %133)
  br label %135

135:                                              ; preds = %125
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %122

138:                                              ; preds = %122
  ret void
}

declare dso_local i32 @ep_reset_228x(i32, %struct.net2280_ep*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
