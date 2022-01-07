; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_ai_handle_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_usbduxfast.c_usbduxfast_ai_handle_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.usbduxfast_private* }
%struct.usbduxfast_private = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }
%struct.urb = type { i64, i32, i32, i32 }

@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"urb resubm failed: %d\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.urb*)* @usbduxfast_ai_handle_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbduxfast_ai_handle_urb(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.urb* %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.usbduxfast_private*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %13, align 8
  store %struct.usbduxfast_private* %14, %struct.usbduxfast_private** %7, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %8, align 8
  %18 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 2
  store %struct.comedi_cmd* %19, %struct.comedi_cmd** %9, align 8
  %20 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %7, align 8
  %21 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.usbduxfast_private*, %struct.usbduxfast_private** %7, align 8
  %26 = getelementptr inbounds %struct.usbduxfast_private, %struct.usbduxfast_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  br label %64

29:                                               ; preds = %3
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %30, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %39 = load %struct.urb*, %struct.urb** %6, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %38, i32 %41, i32 %42)
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %45 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TRIG_COUNT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %29
  %50 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %51 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %54 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i32, i32* @COMEDI_CB_EOA, align 4
  %59 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %60 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %49, %29
  br label %64

64:                                               ; preds = %63, %24
  %65 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %66 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %95, label %71

71:                                               ; preds = %64
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = call i32 @comedi_to_usb_dev(%struct.comedi_device* %72)
  %74 = load %struct.urb*, %struct.urb** %6, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.urb*, %struct.urb** %6, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  %78 = load %struct.urb*, %struct.urb** %6, align 8
  %79 = load i32, i32* @GFP_ATOMIC, align 4
  %80 = call i32 @usb_submit_urb(%struct.urb* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %71
  %84 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %90 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %91 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %83, %71
  br label %95

95:                                               ; preds = %94, %64
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @comedi_to_usb_dev(%struct.comedi_device*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
