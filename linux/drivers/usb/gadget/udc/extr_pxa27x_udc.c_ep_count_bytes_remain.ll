; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_ep_count_bytes_remain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_ep_count_bytes_remain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@UDCBCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*)* @ep_count_bytes_remain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_count_bytes_remain(%struct.pxa_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa_ep*, align 8
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  %4 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %5 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %13 = load i32, i32* @UDCBCR, align 4
  %14 = call i32 @udc_ep_readl(%struct.pxa_ep* %12, i32 %13)
  %15 = and i32 %14, 1023
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %11, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
