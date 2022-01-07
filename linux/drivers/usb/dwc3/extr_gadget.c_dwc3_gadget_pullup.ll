; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.dwc3 = type { i64, i32, i32, i32 }

@EP0_SETUP_PHASE = common dso_local global i64 0, align 8
@DWC3_PULL_UP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timed out waiting for SETUP phase\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @dwc3_gadget_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc3*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %10 = call %struct.dwc3* @gadget_to_dwc(%struct.usb_gadget* %9)
  store %struct.dwc3* %10, %struct.dwc3** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %2
  %19 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EP0_SETUP_PHASE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 3
  %27 = call i32 @reinit_completion(i32* %26)
  %28 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %29 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %28, i32 0, i32 3
  %30 = load i32, i32* @DWC3_PULL_UP_TIMEOUT, align 4
  %31 = call i32 @msecs_to_jiffies(i32 %30)
  %32 = call i32 @wait_for_completion_timeout(i32* %29, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %24
  %36 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %37 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ETIMEDOUT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %56

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %18, %2
  %44 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %45 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %44, i32 0, i32 1
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dwc3_gadget_run_stop(%struct.dwc3* %48, i32 %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %52 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %51, i32 0, i32 1
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %43, %35
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.dwc3* @gadget_to_dwc(%struct.usb_gadget*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc3_gadget_run_stop(%struct.dwc3*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
