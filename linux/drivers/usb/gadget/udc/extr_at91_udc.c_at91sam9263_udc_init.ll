; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_at91sam9263_udc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_at91sam9263_udc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { %struct.at91_ep* }
%struct.at91_ep = type { i32 }

@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_udc*)* @at91sam9263_udc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91sam9263_udc_init(%struct.at91_udc* %0) #0 {
  %2 = alloca %struct.at91_udc*, align 8
  %3 = alloca %struct.at91_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.at91_udc* %0, %struct.at91_udc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NUM_ENDPOINTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load %struct.at91_udc*, %struct.at91_udc** %2, align 8
  %11 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %10, i32 0, i32 0
  %12 = load %struct.at91_ep*, %struct.at91_ep** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %12, i64 %14
  store %struct.at91_ep* %15, %struct.at91_ep** %3, align 8
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %23 [
    i32 0, label %17
    i32 1, label %17
    i32 2, label %17
    i32 3, label %17
    i32 4, label %20
    i32 5, label %20
  ]

17:                                               ; preds = %9, %9, %9, %9
  %18 = load %struct.at91_ep*, %struct.at91_ep** %3, align 8
  %19 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %18, i32 0, i32 0
  store i32 64, i32* %19, align 4
  br label %23

20:                                               ; preds = %9, %9
  %21 = load %struct.at91_ep*, %struct.at91_ep** %3, align 8
  %22 = getelementptr inbounds %struct.at91_ep, %struct.at91_ep* %21, i32 0, i32 0
  store i32 256, i32* %22, align 4
  br label %23

23:                                               ; preds = %9, %20, %17
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
