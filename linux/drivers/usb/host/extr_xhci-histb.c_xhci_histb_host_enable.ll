; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_host_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_host_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd_histb = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to enable bus clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable utmi clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to enable pipe clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to enable suspend clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd_histb*)* @xhci_histb_host_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_histb_host_enable(%struct.xhci_hcd_histb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xhci_hcd_histb*, align 8
  %4 = alloca i32, align 4
  store %struct.xhci_hcd_histb* %0, %struct.xhci_hcd_histb** %3, align 8
  %5 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %6 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %13 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %19 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_prepare_enable(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %68

29:                                               ; preds = %17
  %30 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %31 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_prepare_enable(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %38 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %63

41:                                               ; preds = %29
  %42 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %43 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_prepare_enable(i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %50 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %58

53:                                               ; preds = %41
  %54 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %55 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @reset_control_deassert(i32 %56)
  store i32 0, i32* %2, align 4
  br label %74

58:                                               ; preds = %48
  %59 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %60 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clk_disable_unprepare(i32 %61)
  br label %63

63:                                               ; preds = %58, %36
  %64 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %65 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_disable_unprepare(i32 %66)
  br label %68

68:                                               ; preds = %63, %24
  %69 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %3, align 8
  %70 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clk_disable_unprepare(i32 %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %53, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
