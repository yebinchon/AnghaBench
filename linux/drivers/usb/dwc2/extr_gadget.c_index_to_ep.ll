; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_index_to_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_index_to_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg_ep = type { i32 }
%struct.dwc2_hsotg = type { %struct.dwc2_hsotg_ep**, %struct.dwc2_hsotg_ep** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dwc2_hsotg_ep* (%struct.dwc2_hsotg*, i64, i64)* @index_to_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dwc2_hsotg_ep* @index_to_ep(%struct.dwc2_hsotg* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dwc2_hsotg_ep*, align 8
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 1
  %13 = load %struct.dwc2_hsotg_ep**, %struct.dwc2_hsotg_ep*** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %13, i64 %14
  %16 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %15, align 8
  store %struct.dwc2_hsotg_ep* %16, %struct.dwc2_hsotg_ep** %4, align 8
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %19 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %18, i32 0, i32 0
  %20 = load %struct.dwc2_hsotg_ep**, %struct.dwc2_hsotg_ep*** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %20, i64 %21
  %23 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %22, align 8
  store %struct.dwc2_hsotg_ep* %23, %struct.dwc2_hsotg_ep** %4, align 8
  br label %24

24:                                               ; preds = %17, %10
  %25 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %4, align 8
  ret %struct.dwc2_hsotg_ep* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
