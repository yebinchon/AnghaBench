; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_trytx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_trytx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_hsotg_ep = type { i64, i32, %struct.dwc2_hsotg_req* }
%struct.dwc2_hsotg_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"trying to write more for ep%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*)* @dwc2_hsotg_trytx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_hsotg_trytx(%struct.dwc2_hsotg* %0, %struct.dwc2_hsotg_ep* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_hsotg_ep*, align 8
  %6 = alloca %struct.dwc2_hsotg_req*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_hsotg_ep* %1, %struct.dwc2_hsotg_ep** %5, align 8
  %7 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %7, i32 0, i32 2
  %9 = load %struct.dwc2_hsotg_req*, %struct.dwc2_hsotg_req** %8, align 8
  store %struct.dwc2_hsotg_req* %9, %struct.dwc2_hsotg_req** %6, align 8
  %10 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.dwc2_hsotg_req*, %struct.dwc2_hsotg_req** %6, align 8
  %16 = icmp ne %struct.dwc2_hsotg_req* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %19 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %24 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %28 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dwc2_hsotg_ctrl_epint(%struct.dwc2_hsotg* %23, i64 %26, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %22, %17
  store i32 0, i32* %3, align 4
  br label %55

32:                                               ; preds = %14
  %33 = load %struct.dwc2_hsotg_req*, %struct.dwc2_hsotg_req** %6, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg_req, %struct.dwc2_hsotg_req* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dwc2_hsotg_req*, %struct.dwc2_hsotg_req** %6, align 8
  %38 = getelementptr inbounds %struct.dwc2_hsotg_req, %struct.dwc2_hsotg_req* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %44 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %51 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %5, align 8
  %52 = load %struct.dwc2_hsotg_req*, %struct.dwc2_hsotg_req** %6, align 8
  %53 = call i32 @dwc2_hsotg_write_fifo(%struct.dwc2_hsotg* %50, %struct.dwc2_hsotg_ep* %51, %struct.dwc2_hsotg_req* %52)
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %42, %31
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @dwc2_hsotg_ctrl_epint(%struct.dwc2_hsotg*, i64, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @dwc2_hsotg_write_fifo(%struct.dwc2_hsotg*, %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
