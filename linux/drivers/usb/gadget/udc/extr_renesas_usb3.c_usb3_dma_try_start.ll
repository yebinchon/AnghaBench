; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_dma_try_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_dma_try_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i32 }
%struct.renesas_usb3_request = type { i32 }
%struct.renesas_usb3 = type { i32 }

@use_dma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*)* @usb3_dma_try_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_dma_try_start(%struct.renesas_usb3_ep* %0, %struct.renesas_usb3_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.renesas_usb3_ep*, align 8
  %5 = alloca %struct.renesas_usb3_request*, align 8
  %6 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %4, align 8
  store %struct.renesas_usb3_request* %1, %struct.renesas_usb3_request** %5, align 8
  %7 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %8 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %7)
  store %struct.renesas_usb3* %8, %struct.renesas_usb3** %6, align 8
  %9 = load i32, i32* @use_dma, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %14 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %5, align 8
  %15 = call i64 @usb3_dma_get_setting_area(%struct.renesas_usb3_ep* %13, %struct.renesas_usb3_request* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.renesas_usb3*, %struct.renesas_usb3** %6, align 8
  %19 = call i32 @usb3_pn_stop(%struct.renesas_usb3* %18)
  %20 = load %struct.renesas_usb3*, %struct.renesas_usb3** %6, align 8
  %21 = call i32 @usb3_enable_dma_pipen(%struct.renesas_usb3* %20)
  %22 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %23 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %5, align 8
  %24 = call i32 @usb3_dma_fill_prd(%struct.renesas_usb3_ep* %22, %struct.renesas_usb3_request* %23)
  %25 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %26 = call i32 @usb3_dma_kick_prd(%struct.renesas_usb3_ep* %25)
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %6, align 8
  %28 = call i32 @usb3_pn_start(%struct.renesas_usb3* %27)
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %17, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i64 @usb3_dma_get_setting_area(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

declare dso_local i32 @usb3_pn_stop(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_enable_dma_pipen(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_dma_fill_prd(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

declare dso_local i32 @usb3_dma_kick_prd(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb3_pn_start(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
