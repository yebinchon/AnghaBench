; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_set_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_set_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.TYPE_8__, i32, %struct.dwc3_ep**, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.dwc3_ep* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.dwc3_ep = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Set SEL should be 6 bytes, got %d\0A\00", align 1
@dwc3_ep0_set_sel_cmpl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, %struct.usb_ctrlrequest*)* @dwc3_ep0_set_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ep0_set_sel(%struct.dwc3* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.dwc3_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %9 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 6
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %68

34:                                               ; preds = %19
  %35 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %36 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %35, i32 0, i32 2
  %37 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %36, align 8
  %38 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %37, i64 0
  %39 = load %struct.dwc3_ep*, %struct.dwc3_ep** %38, align 8
  store %struct.dwc3_ep* %39, %struct.dwc3_ep** %6, align 8
  %40 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %41 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %42 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store %struct.dwc3_ep* %40, %struct.dwc3_ep** %43, align 8
  %44 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %45 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %49 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 8
  %52 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %53 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %56 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @dwc3_ep0_set_sel_cmpl, align 4
  %60 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %61 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %65 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %66 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %65, i32 0, i32 0
  %67 = call i32 @__dwc3_gadget_ep0_queue(%struct.dwc3_ep* %64, %struct.TYPE_8__* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %34, %26, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @__dwc3_gadget_ep0_queue(%struct.dwc3_ep*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
