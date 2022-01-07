; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.dwc3_ep = type { i32, i32, %struct.dwc3* }
%struct.dwc3 = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"dwc3: invalid parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DWC3_EP_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s is already disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @dwc3_gadget_ep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_ep_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca %struct.dwc3*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  %8 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %9 = icmp ne %struct.usb_ep* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %16 = call %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep* %15)
  store %struct.dwc3_ep* %16, %struct.dwc3_ep** %4, align 8
  %17 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %18 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %17, i32 0, i32 2
  %19 = load %struct.dwc3*, %struct.dwc3** %18, align 8
  store %struct.dwc3* %19, %struct.dwc3** %5, align 8
  %20 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %21 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %24 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %32 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @dev_WARN_ONCE(i32 %22, i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %49

37:                                               ; preds = %14
  %38 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %39 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %43 = call i32 @__dwc3_gadget_ep_disable(%struct.dwc3_ep* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %45 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %37, %36, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep*) #1

declare dso_local i64 @dev_WARN_ONCE(i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__dwc3_gadget_ep_disable(%struct.dwc3_ep*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
