; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_ep_set_bufsz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_ep_set_bufsz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_udc_ep = type { i32 }

@UDC_BUFIN_FRAMENUM_ADDR = common dso_local global i32 0, align 4
@UDC_BUFOUT_MAXPKT_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_udc_ep*, i32, i32)* @pch_udc_ep_set_bufsz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_udc_ep_set_bufsz(%struct.pch_udc_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pch_udc_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pch_udc_ep* %0, %struct.pch_udc_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %12 = load i32, i32* @UDC_BUFIN_FRAMENUM_ADDR, align 4
  %13 = call i32 @pch_udc_ep_readl(%struct.pch_udc_ep* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, -65536
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 65535
  %18 = or i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @UDC_BUFIN_FRAMENUM_ADDR, align 4
  %22 = call i32 @pch_udc_ep_writel(%struct.pch_udc_ep* %19, i32 %20, i32 %21)
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %25 = load i32, i32* @UDC_BUFOUT_MAXPKT_ADDR, align 4
  %26 = call i32 @pch_udc_ep_readl(%struct.pch_udc_ep* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 65535
  %31 = or i32 %28, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @UDC_BUFOUT_MAXPKT_ADDR, align 4
  %35 = call i32 @pch_udc_ep_writel(%struct.pch_udc_ep* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %23, %10
  ret void
}

declare dso_local i32 @pch_udc_ep_readl(%struct.pch_udc_ep*, i32) #1

declare dso_local i32 @pch_udc_ep_writel(%struct.pch_udc_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
