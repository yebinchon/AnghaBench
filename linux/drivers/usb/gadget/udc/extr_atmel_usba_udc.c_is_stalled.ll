; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_is_stalled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_is_stalled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32 }
%struct.usba_ep = type { i32 }

@STA = common dso_local global i32 0, align 4
@USBA_FORCE_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_udc*, %struct.usba_ep*)* @is_stalled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_stalled(%struct.usba_udc* %0, %struct.usba_ep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usba_udc*, align 8
  %5 = alloca %struct.usba_ep*, align 8
  store %struct.usba_udc* %0, %struct.usba_udc** %4, align 8
  store %struct.usba_ep* %1, %struct.usba_ep** %5, align 8
  %6 = load %struct.usba_ep*, %struct.usba_ep** %5, align 8
  %7 = load i32, i32* @STA, align 4
  %8 = call i32 @usba_ep_readl(%struct.usba_ep* %6, i32 %7)
  %9 = load i32, i32* @USBA_FORCE_STALL, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @usba_ep_readl(%struct.usba_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
