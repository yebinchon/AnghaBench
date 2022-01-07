; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.dummy_ep = type { i64, i32* }
%struct.dummy = type { i32 }

@ep0name = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"disabled %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @dummy_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.dummy_ep*, align 8
  %5 = alloca %struct.dummy*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = call %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep* %7)
  store %struct.dummy_ep* %8, %struct.dummy_ep** %4, align 8
  %9 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %10 = icmp ne %struct.usb_ep* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %13 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %18 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ep0name, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %11, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %49

25:                                               ; preds = %16
  %26 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %27 = call %struct.dummy* @ep_to_dummy(%struct.dummy_ep* %26)
  store %struct.dummy* %27, %struct.dummy** %5, align 8
  %28 = load %struct.dummy*, %struct.dummy** %5, align 8
  %29 = getelementptr inbounds %struct.dummy, %struct.dummy* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %33 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %35 = getelementptr inbounds %struct.dummy_ep, %struct.dummy_ep* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.dummy*, %struct.dummy** %5, align 8
  %37 = load %struct.dummy_ep*, %struct.dummy_ep** %4, align 8
  %38 = call i32 @nuke(%struct.dummy* %36, %struct.dummy_ep* %37)
  %39 = load %struct.dummy*, %struct.dummy** %5, align 8
  %40 = getelementptr inbounds %struct.dummy, %struct.dummy* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.dummy*, %struct.dummy** %5, align 8
  %44 = call i32 @udc_dev(%struct.dummy* %43)
  %45 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %46 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %25, %22
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.dummy_ep* @usb_ep_to_dummy_ep(%struct.usb_ep*) #1

declare dso_local %struct.dummy* @ep_to_dummy(%struct.dummy_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nuke(%struct.dummy*, %struct.dummy_ep*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @udc_dev(%struct.dummy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
