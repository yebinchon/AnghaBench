; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_GADGET_DELAYED_STATUS = common dso_local global i32 0, align 4
@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_ACCEPTU1ENA = common dso_local global i32 0, align 4
@DWC3_DCTL_ACCEPTU2ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, %struct.usb_ctrlrequest*)* @dwc3_ep0_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ep0_set_config(%struct.dwc3* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %10 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %87 [
    i32 128, label %19
    i32 130, label %22
    i32 129, label %73
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %92

22:                                               ; preds = %2
  %23 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %25 = call i32 @dwc3_ep0_delegate_req(%struct.dwc3* %23, %struct.usb_ctrlrequest* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @USB_GADGET_DELAYED_STATUS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %40 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %39, i32 0, i32 0
  %41 = call i32 @usb_gadget_set_state(%struct.TYPE_2__* %40, i32 129)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %44 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DWC3_DCTL, align 4
  %47 = call i32 @dwc3_readl(i32 %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %49 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @DWC3_DCTL_ACCEPTU1ENA, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %58 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @DWC3_DCTL_ACCEPTU2ENA, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %67 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DWC3_DCTL, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @dwc3_writel(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %31, %22
  br label %90

73:                                               ; preds = %2
  %74 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %75 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %76 = call i32 @dwc3_ep0_delegate_req(%struct.dwc3* %74, %struct.usb_ctrlrequest* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %84 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %83, i32 0, i32 0
  %85 = call i32 @usb_gadget_set_state(%struct.TYPE_2__* %84, i32 130)
  br label %86

86:                                               ; preds = %82, %79, %73
  br label %90

87:                                               ; preds = %2
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %87, %86, %72
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dwc3_ep0_delegate_req(%struct.dwc3*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb_gadget_set_state(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
