; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_validate_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_validate_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy_hcd = type { i32 }
%struct.urb = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Stream id %d is out of range.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dummy_hcd*, %struct.urb*)* @dummy_validate_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_validate_stream(%struct.dummy_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dummy_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dummy_hcd* %0, %struct.dummy_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %8 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %9 = load %struct.urb*, %struct.urb** %5, align 8
  %10 = call i32 @dummy_ep_stream_en(%struct.dummy_hcd* %8, %struct.urb* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.urb*, %struct.urb** %5, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %51

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %22
  %29 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_pipeendpoint(i32 %32)
  %34 = call i32 @get_max_streams_for_pipe(%struct.dummy_hcd* %29, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %28
  %41 = load %struct.dummy_hcd*, %struct.dummy_hcd** %4, align 8
  %42 = call i32 @dummy_dev(%struct.dummy_hcd* %41)
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = call i32 (...) @BUG()
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %40, %25, %21, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @dummy_ep_stream_en(%struct.dummy_hcd*, %struct.urb*) #1

declare dso_local i32 @get_max_streams_for_pipe(%struct.dummy_hcd*, i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dummy_dev(%struct.dummy_hcd*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
