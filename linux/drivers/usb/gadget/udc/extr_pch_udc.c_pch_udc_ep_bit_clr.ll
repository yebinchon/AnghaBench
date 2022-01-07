; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_ep_bit_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_ep_bit_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_udc_ep = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_udc_ep*, i64, i64)* @pch_udc_ep_bit_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_udc_ep_bit_clr(%struct.pch_udc_ep* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pch_udc_ep*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pch_udc_ep* %0, %struct.pch_udc_ep** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %8 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @pch_udc_ep_readl(%struct.pch_udc_ep* %8, i64 %9)
  %11 = load i64, i64* %6, align 8
  %12 = xor i64 %11, -1
  %13 = and i64 %10, %12
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @pch_udc_ep_writel(%struct.pch_udc_ep* %7, i64 %13, i64 %14)
  ret void
}

declare dso_local i32 @pch_udc_ep_writel(%struct.pch_udc_ep*, i64, i64) #1

declare dso_local i64 @pch_udc_ep_readl(%struct.pch_udc_ep*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
