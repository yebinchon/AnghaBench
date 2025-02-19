; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_free_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_free_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.dwc3_ep** }
%struct.dwc3_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DWC3_ENDPOINTS_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_gadget_free_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_gadget_free_endpoints(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca i64, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @DWC3_ENDPOINTS_NUM, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 0
  %12 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %12, i64 %13
  %15 = load %struct.dwc3_ep*, %struct.dwc3_ep** %14, align 8
  store %struct.dwc3_ep* %15, %struct.dwc3_ep** %3, align 8
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %17 = icmp ne %struct.dwc3_ep* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %35

19:                                               ; preds = %9
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %27 = call i32 @dwc3_free_trb_pool(%struct.dwc3_ep* %26)
  %28 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %29 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @list_del(i32* %30)
  br label %32

32:                                               ; preds = %25, %22, %19
  %33 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %34 = call i32 @kfree(%struct.dwc3_ep* %33)
  br label %35

35:                                               ; preds = %32, %18
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %5

38:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dwc3_free_trb_pool(%struct.dwc3_ep*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
