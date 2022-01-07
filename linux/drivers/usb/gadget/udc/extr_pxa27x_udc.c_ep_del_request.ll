; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_ep_del_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_ep_del_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"req:%p, lg=%d, udccsr=0x%03x\0A\00", align 1
@UDCCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_ep*, %struct.pxa27x_request*)* @ep_del_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_del_request(%struct.pxa_ep* %0, %struct.pxa27x_request* %1) #0 {
  %3 = alloca %struct.pxa_ep*, align 8
  %4 = alloca %struct.pxa27x_request*, align 8
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %4, align 8
  %5 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %6 = icmp ne %struct.pxa27x_request* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %14 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %15 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %16 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %20 = load i32, i32* @UDCCSR, align 4
  %21 = call i32 @udc_ep_readl(%struct.pxa_ep* %19, i32 %20)
  %22 = call i32 @ep_vdbg(%struct.pxa_ep* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.pxa27x_request* %14, i32 %18, i32 %21)
  %23 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %24 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %23, i32 0, i32 1
  %25 = call i32 @list_del_init(i32* %24)
  %26 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %27 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %29 = call i32 @is_ep0(%struct.pxa_ep* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %12
  %32 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %33 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %32, i32 0, i32 0
  %34 = call i64 @list_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %38 = call i32 @pio_irq_disable(%struct.pxa_ep* %37)
  br label %39

39:                                               ; preds = %11, %36, %31, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ep_vdbg(%struct.pxa_ep*, i8*, %struct.pxa27x_request*, i32, i32) #1

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @is_ep0(%struct.pxa_ep*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @pio_irq_disable(%struct.pxa_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
