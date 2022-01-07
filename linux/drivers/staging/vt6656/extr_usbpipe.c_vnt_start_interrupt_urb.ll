; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_usbpipe.c_vnt_start_interrupt_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_usbpipe.c_vnt_start_interrupt_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.TYPE_4__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MAX_INTERRUPT_SIZE = common dso_local global i32 0, align 4
@vnt_start_interrupt_urb_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Submit int URB failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_start_interrupt_urb(%struct.vnt_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %15 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %24 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = call i32 @usb_rcvintpipe(%struct.TYPE_5__* %25, i32 1)
  %27 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAX_INTERRUPT_SIZE, align 4
  %32 = load i32, i32* @vnt_start_interrupt_urb_complete, align 4
  %33 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %34 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %35 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_fill_int_urb(i32 %19, %struct.TYPE_5__* %22, i32 %26, i32 %30, i32 %31, i32 %32, %struct.vnt_private* %33, i32 %36)
  %38 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %39 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call i32 @usb_submit_urb(i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %13
  %46 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %47 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dev_dbg(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %53

52:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %59

53:                                               ; preds = %45
  %54 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %55 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %10
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @usb_fill_int_urb(i32, %struct.TYPE_5__*, i32, i32, i32, i32, %struct.vnt_private*, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
