; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c___rpipe_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c___rpipe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@USB_REQ_RPIPE_RESET = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_RPIPE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"rpipe %u: reset failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wahc*, i32)* @__rpipe_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rpipe_reset(%struct.wahc* %0, i32 %1) #0 {
  %3 = alloca %struct.wahc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  store %struct.wahc* %0, %struct.wahc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wahc*, %struct.wahc** %3, align 8
  %8 = getelementptr inbounds %struct.wahc, %struct.wahc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.wahc*, %struct.wahc** %3, align 8
  %12 = getelementptr inbounds %struct.wahc, %struct.wahc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.wahc*, %struct.wahc** %3, align 8
  %15 = getelementptr inbounds %struct.wahc, %struct.wahc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @usb_sndctrlpipe(i32 %16, i32 0)
  %18 = load i32, i32* @USB_REQ_RPIPE_RESET, align 4
  %19 = load i32, i32* @USB_DIR_OUT, align 4
  %20 = load i32, i32* @USB_TYPE_CLASS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @USB_RECIP_RPIPE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %26 = call i32 @usb_control_msg(i32 %13, i32 %17, i32 %18, i32 %23, i32 0, i32 %24, i32* null, i32 0, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
