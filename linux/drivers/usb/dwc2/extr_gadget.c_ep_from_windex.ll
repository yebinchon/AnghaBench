; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_ep_from_windex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_ep_from_windex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg_ep = type { i32 }
%struct.dwc2_hsotg = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dwc2_hsotg_ep* (%struct.dwc2_hsotg*, i32)* @ep_from_windex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dwc2_hsotg_ep* @ep_from_windex(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc2_hsotg_ep*, align 8
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc2_hsotg_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @USB_DIR_IN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 127
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 256
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.dwc2_hsotg_ep* null, %struct.dwc2_hsotg_ep** %3, align 8
  br label %43

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store %struct.dwc2_hsotg_ep* null, %struct.dwc2_hsotg_ep** %3, align 8
  br label %43

27:                                               ; preds = %20
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.dwc2_hsotg_ep* @index_to_ep(%struct.dwc2_hsotg* %28, i32 %29, i32 %30)
  store %struct.dwc2_hsotg_ep* %31, %struct.dwc2_hsotg_ep** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  %36 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.dwc2_hsotg_ep* null, %struct.dwc2_hsotg_ep** %3, align 8
  br label %43

41:                                               ; preds = %34, %27
  %42 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %6, align 8
  store %struct.dwc2_hsotg_ep* %42, %struct.dwc2_hsotg_ep** %3, align 8
  br label %43

43:                                               ; preds = %41, %40, %26, %19
  %44 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  ret %struct.dwc2_hsotg_ep* %44
}

declare dso_local %struct.dwc2_hsotg_ep* @index_to_ep(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
