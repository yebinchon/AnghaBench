; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c_rpipe_clear_feature_stalled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c_rpipe_clear_feature_stalled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32, i32 }
%struct.usb_host_endpoint = type { %struct.wa_rpipe* }
%struct.wa_rpipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@USB_REQ_CLEAR_FEATURE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_RPIPE = common dso_local global i32 0, align 4
@RPIPE_STALL = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpipe_clear_feature_stalled(%struct.wahc* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.wahc*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.wa_rpipe*, align 8
  %6 = alloca i32, align 4
  store %struct.wahc* %0, %struct.wahc** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %7 = load %struct.wahc*, %struct.wahc** %3, align 8
  %8 = getelementptr inbounds %struct.wahc, %struct.wahc* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %11 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %10, i32 0, i32 0
  %12 = load %struct.wa_rpipe*, %struct.wa_rpipe** %11, align 8
  store %struct.wa_rpipe* %12, %struct.wa_rpipe** %5, align 8
  %13 = load %struct.wa_rpipe*, %struct.wa_rpipe** %5, align 8
  %14 = icmp ne %struct.wa_rpipe* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.wa_rpipe*, %struct.wa_rpipe** %5, align 8
  %17 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.wahc*, %struct.wahc** %3, align 8
  %22 = getelementptr inbounds %struct.wahc, %struct.wahc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wahc*, %struct.wahc** %3, align 8
  %25 = getelementptr inbounds %struct.wahc, %struct.wahc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_sndctrlpipe(i32 %26, i32 0)
  %28 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %29 = load i32, i32* @USB_DIR_OUT, align 4
  %30 = load i32, i32* @USB_TYPE_CLASS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_RPIPE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @RPIPE_STALL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %37 = call i32 @usb_control_msg(i32 %23, i32 %27, i32 %28, i32 %33, i32 %34, i32 %35, i32* null, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %15, %2
  %39 = load %struct.wahc*, %struct.wahc** %3, align 8
  %40 = getelementptr inbounds %struct.wahc, %struct.wahc* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
