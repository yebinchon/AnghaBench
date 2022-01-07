; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_ep_is_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_ep_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@UDCCSR = common dso_local global i32 0, align 4
@UDCCSR0_RNE = common dso_local global i32 0, align 4
@UDCCSR_BNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*)* @ep_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_is_empty(%struct.pxa_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pxa_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  %5 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %6 = call i64 @is_ep0(%struct.pxa_ep* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %10 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %8, %1
  %17 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %18 = call i64 @is_ep0(%struct.pxa_ep* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %22 = load i32, i32* @UDCCSR, align 4
  %23 = call i32 @udc_ep_readl(%struct.pxa_ep* %21, i32 %22)
  %24 = load i32, i32* @UDCCSR0_RNE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %38

29:                                               ; preds = %16
  %30 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %31 = load i32, i32* @UDCCSR, align 4
  %32 = call i32 @udc_ep_readl(%struct.pxa_ep* %30, i32 %31)
  %33 = load i32, i32* @UDCCSR_BNE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @is_ep0(%struct.pxa_ep*) #1

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
