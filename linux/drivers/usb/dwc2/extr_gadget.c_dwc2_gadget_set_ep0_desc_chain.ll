; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_set_ep0_desc_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_set_ep0_desc_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.dwc2_hsotg_ep = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"invalid EP 0 state in queue %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*)* @dwc2_gadget_set_ep0_desc_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_gadget_set_ep0_desc_chain(%struct.dwc2_hsotg* %0, %struct.dwc2_hsotg_ep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_hsotg_ep*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_hsotg_ep* %1, %struct.dwc2_hsotg_ep** %5, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %46 [
    i32 130, label %9
    i32 128, label %9
    i32 132, label %24
    i32 129, label %24
    i32 131, label %35
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %16 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %56

24:                                               ; preds = %2, %2
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %31 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %56

35:                                               ; preds = %2
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %40 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %42 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %56

46:                                               ; preds = %2
  %47 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %48 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %51 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %35, %24, %9
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
