; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_ep0_txframe_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_ep0_txframe_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FRAME_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"The EP0 transmit data have error!\0A\00", align 1
@PID_DATA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*)* @ep0_txframe_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_txframe_handle(%struct.qe_ep* %0) #0 {
  %2 = alloca %struct.qe_ep*, align 8
  store %struct.qe_ep* %0, %struct.qe_ep** %2, align 8
  %3 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %4 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @frame_get_status(i32 %5)
  %7 = load i32, i32* @FRAME_ERROR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %12 = call i32 @qe_ep_flushtxfifo(%struct.qe_ep* %11)
  %13 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %14 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_vdbg(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %20 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @frame_get_info(i32 %21)
  %23 = load i32, i32* @PID_DATA0, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %28 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %32

29:                                               ; preds = %10
  %30 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %31 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %34 = call i32 @ep0_txcomplete(%struct.qe_ep* %33, i32 1)
  br label %38

35:                                               ; preds = %1
  %36 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %37 = call i32 @ep0_txcomplete(%struct.qe_ep* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %40 = load %struct.qe_ep*, %struct.qe_ep** %2, align 8
  %41 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @frame_create_tx(%struct.qe_ep* %39, i32 %42)
  ret i32 0
}

declare dso_local i32 @frame_get_status(i32) #1

declare dso_local i32 @qe_ep_flushtxfifo(%struct.qe_ep*) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @frame_get_info(i32) #1

declare dso_local i32 @ep0_txcomplete(%struct.qe_ep*, i32) #1

declare dso_local i32 @frame_create_tx(%struct.qe_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
