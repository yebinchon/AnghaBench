; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_ep0_setup_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_ep0_setup_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i64, i32, %struct.qe_ep* }
%struct.qe_ep = type { i32, %struct.qe_frame* }
%struct.qe_frame = type { i32 }

@PID_SETUP = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_udc*)* @ep0_setup_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_setup_handle(%struct.qe_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca %struct.qe_ep*, align 8
  %5 = alloca %struct.qe_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.qe_udc* %0, %struct.qe_udc** %3, align 8
  %8 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %9 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %8, i32 0, i32 2
  %10 = load %struct.qe_ep*, %struct.qe_ep** %9, align 8
  %11 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %10, i64 0
  store %struct.qe_ep* %11, %struct.qe_ep** %4, align 8
  %12 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %13 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %12, i32 0, i32 1
  %14 = load %struct.qe_frame*, %struct.qe_frame** %13, align 8
  store %struct.qe_frame* %14, %struct.qe_frame** %5, align 8
  %15 = load %struct.qe_frame*, %struct.qe_frame** %5, align 8
  %16 = call i32 @frame_get_info(%struct.qe_frame* %15)
  %17 = load i32, i32* @PID_SETUP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %1
  %21 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %22 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WAIT_FOR_SETUP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %20
  %27 = load %struct.qe_frame*, %struct.qe_frame** %5, align 8
  %28 = call i32 @frame_get_length(%struct.qe_frame* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 8
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %55

37:                                               ; preds = %26
  %38 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %39 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %38, i32 0, i32 1
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.qe_frame*, %struct.qe_frame** %5, align 8
  %42 = getelementptr inbounds %struct.qe_frame, %struct.qe_frame* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @memcpy(i32* %40, i32 %43, i32 %44)
  %46 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %47 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %49 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %50 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %49, i32 0, i32 1
  %51 = call i32 @setup_received_handle(%struct.qe_udc* %48, i32* %50)
  store i32 0, i32* %2, align 4
  br label %55

52:                                               ; preds = %20, %1
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %37, %34
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @frame_get_info(%struct.qe_frame*) #1

declare dso_local i32 @frame_get_length(%struct.qe_frame*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @setup_received_handle(%struct.qe_udc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
