; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_clear_stall_all_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_clear_stall_all_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.dwc3_ep** }
%struct.dwc3_ep = type { i32 }

@DWC3_ENDPOINTS_NUM = common dso_local global i64 0, align 8
@DWC3_EP_STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_clear_stall_all_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_clear_stall_all_ep(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  store i64 1, i64* %3, align 8
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @DWC3_ENDPOINTS_NUM, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 0
  %13 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %13, i64 %14
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %15, align 8
  store %struct.dwc3_ep* %16, %struct.dwc3_ep** %4, align 8
  %17 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %18 = icmp ne %struct.dwc3_ep* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %39

20:                                               ; preds = %10
  %21 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %22 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DWC3_EP_STALL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %39

28:                                               ; preds = %20
  %29 = load i32, i32* @DWC3_EP_STALL, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %32 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %36 = call i32 @dwc3_send_clear_stall_ep_cmd(%struct.dwc3_ep* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @WARN_ON_ONCE(i32 %37)
  br label %39

39:                                               ; preds = %28, %27, %19
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %6

42:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dwc3_send_clear_stall_ep_cmd(%struct.dwc3_ep*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
