; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_set_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_set_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"invalid device address %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"can't SetAddress() from Configured State\0A\00", align 1
@DWC3_DCFG = common dso_local global i32 0, align 4
@DWC3_DCFG_DEVADDR_MASK = common dso_local global i32 0, align 4
@USB_STATE_ADDRESS = common dso_local global i32 0, align 4
@USB_STATE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, %struct.usb_ctrlrequest*)* @dwc3_ep0_set_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ep0_set_address(%struct.dwc3* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %9 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 127
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %21 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %33 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %71

38:                                               ; preds = %27
  %39 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %40 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DWC3_DCFG, align 4
  %43 = call i32 @dwc3_readl(i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @DWC3_DCFG_DEVADDR_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @DWC3_DCFG_DEVADDR(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %53 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DWC3_DCFG, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @dwc3_writel(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %38
  %61 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %62 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %61, i32 0, i32 0
  %63 = load i32, i32* @USB_STATE_ADDRESS, align 4
  %64 = call i32 @usb_gadget_set_state(%struct.TYPE_2__* %62, i32 %63)
  br label %70

65:                                               ; preds = %38
  %66 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %67 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %66, i32 0, i32 0
  %68 = load i32, i32* @USB_STATE_DEFAULT, align 4
  %69 = call i32 @usb_gadget_set_state(%struct.TYPE_2__* %67, i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %31, %19
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_DCFG_DEVADDR(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @usb_gadget_set_state(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
