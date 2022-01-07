; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_bcm63xx_udc.c_bcm63xx_udc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64, i64, i32, i32 }
%struct.bcm63xx_ep = type { %struct.TYPE_2__*, i32, %struct.bcm63xx_udc* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bcm63xx_udc = type { i32, i32, i32, %struct.usb_request*, %struct.bcm63xx_ep* }
%struct.bcm63xx_req = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_request*, i32)* @bcm63xx_udc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_udc_queue(%struct.usb_ep* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm63xx_ep*, align 8
  %9 = alloca %struct.bcm63xx_udc*, align 8
  %10 = alloca %struct.bcm63xx_req*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %14 = call %struct.bcm63xx_ep* @our_ep(%struct.usb_ep* %13)
  store %struct.bcm63xx_ep* %14, %struct.bcm63xx_ep** %8, align 8
  %15 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %8, align 8
  %16 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %15, i32 0, i32 2
  %17 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %16, align 8
  store %struct.bcm63xx_udc* %17, %struct.bcm63xx_udc** %9, align 8
  %18 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %19 = call %struct.bcm63xx_req* @our_req(%struct.usb_request* %18)
  store %struct.bcm63xx_req* %19, %struct.bcm63xx_req** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %21 = icmp ne %struct.usb_request* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %3
  %23 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %24 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %29 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %34 = icmp ne %struct.usb_ep* %33, null
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %27, %22, %3
  %37 = phi i1 [ true, %27 ], [ true, %22 ], [ true, %3 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %123

44:                                               ; preds = %36
  %45 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %46 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %48 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.bcm63xx_req*, %struct.bcm63xx_req** %10, align 8
  %50 = getelementptr inbounds %struct.bcm63xx_req, %struct.bcm63xx_req* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %8, align 8
  %52 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %9, align 8
  %53 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %52, i32 0, i32 4
  %54 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %53, align 8
  %55 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %54, i64 0
  %56 = icmp eq %struct.bcm63xx_ep* %51, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %44
  %58 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %9, align 8
  %59 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %58, i32 0, i32 3
  %60 = load %struct.usb_request*, %struct.usb_request** %59, align 8
  %61 = icmp ne %struct.usb_request* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %123

65:                                               ; preds = %57
  %66 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %67 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %9, align 8
  %68 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %67, i32 0, i32 3
  store %struct.usb_request* %66, %struct.usb_request** %68, align 8
  %69 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %9, align 8
  %70 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %69, i32 0, i32 2
  %71 = call i32 @schedule_work(i32* %70)
  store i32 0, i32* %4, align 4
  br label %123

72:                                               ; preds = %44
  %73 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %9, align 8
  %74 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %73, i32 0, i32 0
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_lock_irqsave(i32* %74, i64 %75)
  %77 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %8, align 8
  %78 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %72
  %84 = load i32, i32* @ESHUTDOWN, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %117

86:                                               ; preds = %72
  %87 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %9, align 8
  %88 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %87, i32 0, i32 1
  %89 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %90 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %8, align 8
  %91 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_gadget_map_request(i32* %88, %struct.usb_request* %89, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %86
  %99 = load %struct.bcm63xx_req*, %struct.bcm63xx_req** %10, align 8
  %100 = getelementptr inbounds %struct.bcm63xx_req, %struct.bcm63xx_req* %99, i32 0, i32 0
  %101 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %8, align 8
  %102 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %101, i32 0, i32 1
  %103 = call i32 @list_add_tail(i32* %100, i32* %102)
  %104 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %8, align 8
  %105 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %104, i32 0, i32 1
  %106 = call i64 @list_is_singular(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %98
  %109 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %9, align 8
  %110 = load %struct.bcm63xx_ep*, %struct.bcm63xx_ep** %8, align 8
  %111 = getelementptr inbounds %struct.bcm63xx_ep, %struct.bcm63xx_ep* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load %struct.bcm63xx_req*, %struct.bcm63xx_req** %10, align 8
  %114 = call i32 @iudma_write(%struct.bcm63xx_udc* %109, %struct.TYPE_2__* %112, %struct.bcm63xx_req* %113)
  br label %115

115:                                              ; preds = %108, %98
  br label %116

116:                                              ; preds = %115, %86
  br label %117

117:                                              ; preds = %116, %83
  %118 = load %struct.bcm63xx_udc*, %struct.bcm63xx_udc** %9, align 8
  %119 = getelementptr inbounds %struct.bcm63xx_udc, %struct.bcm63xx_udc* %118, i32 0, i32 0
  %120 = load i64, i64* %11, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  %122 = load i32, i32* %12, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %117, %65, %62, %41
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.bcm63xx_ep* @our_ep(%struct.usb_ep*) #1

declare dso_local %struct.bcm63xx_req* @our_req(%struct.usb_request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_gadget_map_request(i32*, %struct.usb_request*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @list_is_singular(i32*) #1

declare dso_local i32 @iudma_write(%struct.bcm63xx_udc*, %struct.TYPE_2__*, %struct.bcm63xx_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
